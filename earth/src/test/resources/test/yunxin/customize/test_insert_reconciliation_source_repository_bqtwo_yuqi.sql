set foreign_key_checks=0;
DELETE from `t_source_repository`;

INSERT INTO t_source_repository (business_type, source_code, signature, source_file_path, add_time, last_modify_time, author,compile_import) VALUES ('delay_task_config_uuid_01', 'public boolean evaluate(Result processedResult, DelayProcessingTaskCacheHandler delayProcessingTaskHandler, SandboxDataSetHandler sandboxDataSetHandler, Map<String, Object> inputMap, Map<String, Object> resultMap,Log log) {

log.info("start delay task");
        Date now = new Date();
        String contractUniqueId = (String)inputMap.get("uniqueId");
        String contractNo = (String) inputMap.get("contractNo");

        SandboxDataSet sandboxDataSet = sandboxDataSetHandler.get_sandbox_by_contract_uniqueId_contractNo(contractUniqueId, contractNo);
        log.info("sandboxDataSet:" + com.zufangbao.sun.utils.JsonUtils.toJSONString(sandboxDataSet));
        ContractSnapshot contractSnapshot = sandboxDataSet.getContractSnapshot();
        DelayProcessingTask task = new DelayProcessingTask();

        task.setTaskExecuteDate(DateUtils.addDays(now, 1));

        task.setFinancialContractUuid(contractSnapshot.getFinancialContractUuid());
        task.setContractUuid(contractSnapshot.getUuid());
        task.setCustomerUuid(contractSnapshot.getCustomerUuid());
        task.setRepaymentPlanUuid((String)inputMap.get("repaymentPlanUuid"));
        task.setRepurchaseDocUuid((String)inputMap.get("repurchaseDocUuid"));
        task.setConfigUuid((String)inputMap.get("configUuid"));
        task.setCreateTime(now);
        task.setLastModifyTime(now);

        Map<String,String> workParams = new HashMap<String,String>();
        int repayType = getRepayType((RepaymentPlanModifyReason)inputMap.get("repaymentPlanModifyReason"), (com.zufangbao.sun.yunxin.entity.AssetRecoverType)inputMap.get("assetRecoverType"));
        int currentPeriod = getCurrentPeriod(repayType, (Integer) inputMap.get("assetSetCurrentPeriod"));
        com.zufangbao.sun.yunxin.entity.model.RepaymentChargesDetail detailAmount = (com.zufangbao.sun.yunxin.entity.model.RepaymentChargesDetail)inputMap.get("detailAmount");
        workParams.put("tradeNo", "BQ"+ contractSnapshot.getUniqueId());
        workParams.put("loanNo", contractSnapshot.getUniqueId());
        byte[] encode_byte = Base64.getEncoder().encode(sandboxDataSet.getIdCardNo().getBytes());
        String idCardNo = new String(encode_byte);
        workParams.put("thirdUserNo", idCardNo);
        workParams.put("installmentNo", currentPeriod+"");
        workParams.put("repayAmount", AmountUtil.transToAmount(detailAmount.getLoanAssetPrincipal())+"");
        workParams.put("repayInterest", AmountUtil.transToAmount(detailAmount.getLoanAssetInterest())+"");
        workParams.put("repayPenalty", AmountUtil.transToAmount(detailAmount.getOverdueFeeObligation())+"");//逾期违约金
        workParams.put("repayFine", AmountUtil.transToAmount(detailAmount.getOverdueFeePenalty())+"");//逾期法系
        workParams.put("repayCost", AmountUtil.transToAmount(detailAmount.get_total_fee_except_principal_interest_Penalty_Obligation())+"");
        workParams.put("repayTotalAmount", AmountUtil.transToAmount(detailAmount.getTotalOverdueFee())+"");
        workParams.put("repayDateTime", DateUtils.format((Date)inputMap.get("tradeTime"),com.zufangbao.sun.utils.DateUtils.LONG_DATE_FORMAT));

        task.setWorkParams(com.zufangbao.sun.utils.JsonUtils.toJsonString(workParams));

        delayProcessingTaskHandler.save_to_db_cache(task);
        resultMap.put("delayProcessingTaskUuid", task.getUuid());
        return true;
    }
    private int getRepayType(RepaymentPlanModifyReason repaymentPlanModifyReason, com.zufangbao.sun.yunxin.entity.AssetRecoverType assetRecoverType){
        //1. 提前结清还款
        //2. 退货还款
        //3. 回购还款
        //4. 正常还款
        if(assetRecoverType.isRepurchaseAsset()){
            return 3;
        }

        if(repaymentPlanModifyReason==RepaymentPlanModifyReason.REASON_6
                ||repaymentPlanModifyReason==RepaymentPlanModifyReason.REASON_8 || repaymentPlanModifyReason==RepaymentPlanModifyReason.REASON_1){
            return 1;
        }
        if(repaymentPlanModifyReason==RepaymentPlanModifyReason.REASON_9){
            return 2;
        }

        return 4;
    }

    private int getCurrentPeriod(int repayType, Integer assetSetCurrentPeriod){
        if(repayType==3){
            return 0;
        }
        return assetSetCurrentPeriod==null?0:assetSetCurrentPeriod;
    }', 'execute_code_version_01', null, '2017-05-11 19:05:20', '2017-05-11 19:05:25', 'sys', 'java.util.*,com.suidifu.matryoshka.delayTask.*,com.demo2do.core.entity.*,com.zufangbao.sun.yunxin.entity.model.api.modify.*,com.suidifu.matryoshka.snapshot.*,com.zufangbao.sun.utils.*');

set foreign_key_checks=1;
