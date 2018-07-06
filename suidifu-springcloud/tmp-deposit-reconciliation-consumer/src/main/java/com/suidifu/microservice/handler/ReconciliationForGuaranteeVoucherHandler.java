package com.suidifu.microservice.handler;

import com.suidifu.microservice.entity.JournalVoucher;
import com.suidifu.owlman.microservice.enumation.CounterAccountType;
import com.suidifu.owlman.microservice.enumation.JournalVoucherCheckingLevel;
import com.suidifu.owlman.microservice.enumation.JournalVoucherStatus;
import com.suidifu.owlman.microservice.enumation.JournalVoucherType;
import com.suidifu.owlman.microservice.enumation.ReconciliationType;
import com.suidifu.owlman.microservice.exception.AlreadyProcessedException;
import com.suidifu.owlman.microservice.exception.MisMatchedConditionException;
import com.suidifu.owlman.microservice.exception.ReconciliationException;
import com.zufangbao.sun.entity.account.AccountSide;
import com.zufangbao.sun.entity.customer.Customer;
import com.zufangbao.sun.entity.order.Order;
import com.zufangbao.sun.ledgerbook.stat.LedgerBookStatHandler;
import com.zufangbao.sun.service.OrderService;
import com.zufangbao.sun.yunxin.entity.AssetRecoverType;
import com.zufangbao.sun.yunxin.entity.AssetSet;
import com.zufangbao.sun.yunxin.service.RepaymentPlanService;
import java.math.BigDecimal;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component("reconciliationForGuaranteeVoucherHandler")
public class ReconciliationForGuaranteeVoucherHandler extends ReconciliationForSourceDocument {

  @Autowired
  private OrderService orderService;

  @Autowired
  private OrderHandler orderHandler;

  @Autowired
  private LedgerBookVirtualAccountHandler ledgerBookVirtualAccountHandler;

  @Autowired
  private LedgerBookStatHandler ledgerBookStatHandler;

  @Autowired
  private RepaymentPlanService repaymentPlanService;

  @Override
  public ReconciliationContext preAccountReconciliation(Map<String, Object> inputParams) throws AlreadyProcessedException {
    ReconciliationContext context = super.preAccountReconciliation(inputParams);
    context.setRecoverType(AssetRecoverType.GUARANTEE_ASSET);
    AssetSet assetSet = repaymentPlanService.getRepaymentPlanByRepaymentPlanNo(context.getSourceDocumentDetail().getRepaymentPlanNo());
    super.extractReconciliationContextFromAssetSet(context, assetSet);
    context.setJournalVoucherType(JournalVoucherType.TRANSFER_BILL_BY_GUARANTEE_VOUCHER);
    context.resovleJournalVoucher(AccountSide.DEBIT, CounterAccountType.VirtualAccount, context.getAssetSet().getAssetUuid());
    context.setReconciliationType(ReconciliationType.RECONCILIATION_GUARANTEE_VOUCHER);
    String oldVersion = context.getRemittanceFinancialVirtualAccount().getVersion();
    context.setVirutalAccountVersionLock(oldVersion);
    Order order = orderService.getGuranteeOrder(context.getAssetSet());
    if (order == null) {
      throw new ReconciliationException("gurantee order is null");
    }
    context.setOrder(order);
    context.setBookingAmount(context.getOrder().getTotalRent());

    return context;
  }

  @Override
  public void extractRelatedBalnaceFromLedgerBook(ReconciliationContext context) {
    String ledgerBookNo = context.getFinancialContract().getLedgerBookNo();
    Customer companyCustomer = context.getCompanyCustomer();

    AssetSet assetSet = context.getAssetSet();
    if (assetSet != null) {
      BigDecimal guranteeAmount = ledgerBookStatHandler.get_gurantee_amount(ledgerBookNo, assetSet.getAssetUuid());
      context.setGuranteeAmount(guranteeAmount);
    }

    String customerUuid = companyCustomer.getCustomerUuid();
    BigDecimal financialAppBalance = ledgerBookVirtualAccountHandler.getBalanceOfCustomer(ledgerBookNo, customerUuid);
    context.setFinancialAppBalance(financialAppBalance);
  }

  @Override
  public void refreshVirtualAccount(ReconciliationContext context) {
    super.refreshVirtualAccount(context);
  }

  @Override
  public void relatedDocumentsProcessing(ReconciliationContext context) {

  }

  @Override
  public void issueJournalVoucher(ReconciliationContext context) throws AlreadyProcessedException {
    JournalVoucher journalVoucher = new JournalVoucher();
    journalVoucher.createFromContext(context);
    journalVoucher.fill_voucher_and_booking_amount(context.getOrder().getRepaymentBillId(), "",
        "", context.getOrder().getTotalRent(), JournalVoucherStatus.VOUCHER_ISSUED,
        JournalVoucherCheckingLevel.AUTO_BOOKING, context.getJournalVoucherType());

    context.setIssuedJournalVoucher(journalVoucher);
    super.issueJournalVoucher(context);
  }

  @Override
  public boolean accountReconciliation(Map<String, Object> params) {
    return super.accountReconciliation(params);
  }

  @Override
  public void refreshAsset(ReconciliationContext context) {

  }

  @Override
  public void postAccountReconciliation(ReconciliationContext context) {
    orderHandler.updateOrderStatusAsset(context.getOrder(), context.getActualRecycleTime());
    super.postAccountReconciliation(context);
  }

  @Override
  public void validateReconciliationContext(ReconciliationContext context)
      throws ReconciliationException {

    if (context.getFinancialContract() == null) {
      throw new ReconciliationException("financialContract is null");
    }

    if (context.getFinancialAppBalance().compareTo(context.getOrder().getTotalRent()) < 0) {
      throw new MisMatchedConditionException("balance less than totalRent");
    }
  }

  @Override
  public void ledgerBookReconciliation(ReconciliationContext context) {
    super.recoverEachFrozenCapitalAmount(context);
    super.ledgerBookReconciliation(context);
  }

}
