DELETE FROM `t_inside_account`;

INSERT INTO `t_inside_account` (`id`, `account_name`, `account_code`, `account_alias`, `parent_account_id`, `level`, `account_side`)
VALUES
	(1, 'TRD_RECIEVABLE_OVERDUE_LOAN_ASSET_TECH_FEE', '20000.05.04', '逾期贷款技术服务费', 59, 2, 1),
	(3, 'TRD_DEFERRED_INCOME_LOAN_SERVICE_FEE', '100000.02.01', '递延收入贷款服务费', 52, 2, 0),
	(4, 'FST_DEFERRED_INCOME', '100000', '递延收入', NULL, 0, 0),
	(5, 'FST_COST', '90000', '成本', NULL, 0, 1),
	(6, 'TRD_LIABILITIES_INDEPENDENT_REIMBURSE_LOAN_GUARANTEE', '50000.06.11', '独立账户偿付担保金', 84, 2, 0),
	(7, 'TRD_LIABILITIES_INDEPENDENT_REIMBURSEL_PRINCIPAL', '50000.06.01', '独立账户偿付本金', 84, 2, 0),
	(8, 'TRD_BANK_SAVING_GENERAL_LOAN_ASSET_OVERDUE_FEE_OTHER_FEE', '60000.1000.09', '银行存款逾期其他费用', 56, 2, 1),
	(9, 'SND_LIABILITIES_INDEPENDENT_INTER_ACCOUNT_REMITTANCE', '50000.02', '独立账户帐内往来(支付)', 26, 1, 0),
	(10, 'TRD_LIABILITIES_INDEPENDENT_REIMBURSE_LOAN_ASSET_OVERDUE_FEE_OBLIGATION', '50000.06.07', '独立账户偿付逾期违约金', 84, 2, 0),
	(11, 'TRD_RECIEVABLE_LOAN_ASSET_LOAN_SERVICE_FEE', '20000.01.03', '应收贷款服务费', 92, 2, 1),
	(12, 'SND_OTHER_PAYABLE_CUSTODY_SAVING', '30000.03', '应付其他托管资金', 76, 1, 0),
	(13, 'SND_UNEARNED_LOAN_ASSET_PRINCIPLE', '10000.02', '未到期贷款本金', 67, 1, 1),
	(14, 'SND_UNEARNED_LOAN_ASSET_TECH_FEE', '10000.04', '未到期贷款技术费', 67, 1, 1),
	(15, 'TRD_RECIEVABLE_OVERDUE_FEE_SERVICE_FEE', '20000.06.02', '应收逾期服务费', 86, 2, 1),
	(16, 'SND_PAYABLE_CUSTODY_LOAN_PENALTY', '30000.02', '应付托管罚息', 76, 1, 0),
	(17, 'TRD_BANK_SAVING_GENERAL_PRINCIPAL', '60000.1000.01', '银行存款本金', 56, 2, 1),
	(18, 'TRD_REVENUE_OVERDUE_FEE_SERVICE_FEE', '70000.06.02', '收入逾期服务费', 97, 2, 0),
	(19, 'TRD_RECIEVABLE_OVERDUE_FEE_OTHER_FEE', '20000.06.03', '应收逾期其他费用', 86, 2, 1),
	(20, 'FST_LONGTERM_LIABILITY', '40000', '长期负债', NULL, 0, 0),
	(21, 'SND_UNFROZEN_CAPITAL_VOUCHER', '130000.02', '解冻凭证资金', 79, 1, 0),
	(22, 'TRD_BANK_SAVING_GENERAL_CUSTODY_LOAN_PENALTY', '60000.1000.12', '银行存款托管罚息', 56, 2, 1),
	(23, 'TRD_LIABILITIES_INDEPENDENT_REIMBURSE_LOAN_ASSET_TECH_FEE', '50000.06.04', '独立账户偿付贷款技术费', 84, 2, 0),
	(24, 'TRD_BANK_SAVING_GENERAL_LOAN_ASSET_OVERDUE_FEE_OBLIGATION', '60000.1000.07', '银行存款逾期违约金', 56, 2, 1),
	(25, 'FST_BANK_SAVING', '60000', '银行存款', NULL, 0, 1),
	(26, 'FST_LIABILITIES_OF_INDEPENDENT_ACCOUNTS', '50000', '独立账户', NULL, 0, 0),
	(27, 'TRD_RECIEVABLE_OVERDUE_LOAN_ASSET_LOAN_SERVICE_FEE', '20000.05.03', '应收逾期资产贷款服务费', 59, 2, 1),
	(28, 'FST_REVENUE', '70000', '收入', NULL, 0, 0),
	(29, 'TRD_LIABILITIES_INDEPENDENT_REIMBURSE_PAYABLE_REPURCHASE', '50000.06.13', '独立账户应付回购款', 84, 2, 0),
	(31, 'FST_ACCOUNT_RECEIVED_IN_ADVANCE', '110000', '预收款', NULL, 0, 0),
	(32, 'TRD_RECIEVABLE_LOAN_ASSET_TECH_FEE', '20000.01.04', '应收贷款技术费', 92, 2, 1),
	(33, 'SND_DEFERRED_INCOME_INTEREST_ESTIMATE', '100000.01', '递延收入利息预估', 4, 1, 0),
	(34, 'TRD_LIABILITIES_INDEPENDENT_REIMBURSE_LOAN_ASSET_LOAN_SERVICE_FEE', '50000.06.03', '独立账户偿付贷款服务费', 84, 2, 0),
	(35, 'SND_REVENUE_INCOME_FEE', '70000.05', '收入费用收益', 28, 1, 0),
	(37, 'TRD_LIABILITIES_INDEPENDENT_REIMBURSE_LOAN_ASSET_OTHER_FEE', '50000.06.05', '独立账户偿付贷款其他费用', 84, 2, 0),
	(38, 'TRD_BANK_SAVING_GENERAL_PAYABLE_REPURCHASE', '60000.1000.13', '银行存款应付回购', 56, 2, 1),
	(39, 'SND_COST_REFUND', '90000.02', '成本退款', 5, 1, 1),
	(40, 'SND_RECIEVABLE_LOAN_PENALTY', '20000.03', '应收贷款罚息', 94, 1, 1),
	(41, 'TRD_BANK_SAVING_GENERAL_LOAN_ASSET_OVERDUE_FEE_SERVICE_FEE', '60000.1000.08', '银行存款逾期服务费', 56, 2, 1),
	(42, 'FST_FINANCIAL_ASSETS_SOLD_FOR_REPURCHASE', '80000', '固定金融回购资产', NULL, 0, 0),
	(44, 'TRD_LIABILITIES_INDEPENDENT_REIMBURSE_LOAN_ASSET_OVERDUE_FEE_SERVICE_FEE', '50000.06.08', '独立账户偿付逾期服务费', 84, 2, 0),
	(45, 'TRD_RECIEVABLE_LOAN_ASSET_PRINCIPLE', '20000.01.01', '应收贷款本金', 92, 2, 1),
	(46, 'TRD_REVENUE_INCOME_LOAN_TECH_FEE', '70000.05.02', '收入贷款技术费', 35, 2, 0),
	(47, 'SND_UNEARNED_LOAN_ASSET_LOAN_SERVICE_FEE', '10000.03', '未到期贷款服务费', 67, 1, 1),
	(48, 'TRD_BANK_SAVING_GENERAL_LOAN_ASSET_PENALTY', '60000.1000.06', '银行存款贷款罚息', 56, 2, 1),
	(49, 'SND_REVENUE_INTEREST', '70000.03', '收入利息', 28, 1, 0),
	(50, 'TRD_RECIEVABLE_LOAN_ASSET_INTEREST', '20000.01.02', '应收贷款服务费', 92, 2, 1),
	(51, 'TRD_RECIEVABLE_OVERDUE_FEE_OBLIGATION', '20000.06.01', '应收逾期违约金', 86, 2, 1),
	(52, 'SND_DEFERRED_INCOME_FEE', '100000.02', '递延收入费用收益', 4, 1, 0),
	(53, 'SND_UNEARNED_LOAN_ASSET_INTEREST', '10000.01', '未到期贷款利息', 67, 1, 1),
	(54, 'SND_REVENUE_INVESTMENT_INCOMING', '70000.01', '收入投资收益', 28, 1, 0),
	(55, 'TRD_BANK_SAVING_GENERAL_LOAN_ASSET_TECH_FEE', '60000.1000.04', '银行存款贷款技术费', 56, 2, 1),
	(56, 'SND_BANK_SAVING_GENERAL', '60000.1000', '银行存款通用账户', 25, 1, 1),
	(57, 'TRD_DEFERRED_INCOME_LOAN_OTHER_FEE', '100000.02.03', '递延收入贷款其他费用', 52, 2, 0),
	(59, 'SND_RECIEVABLE_OVERDUE_LOAN_ASSET', '20000.05', '应收逾期贷款资产', 94, 1, 1),
	(60, 'TRD_REVENUE_INCOME_LOAN_OTHER_FEE', '70000.05.03', '收入贷款其他费用', 35, 2, 0),
	(61, 'TRD_REVENUE_INCOME_LOAN_SERVICE_FEE', '70000.05.01', '收入贷款服务费', 35, 2, 0),
	(62, 'SND_LONGTERM_LIABILITY_ABSORB_SAVING', '40000.01', '长期负债吸收存款', 20, 1, 0),
	(63, 'TRD_REVENUE_OVERDUE_FEE_OTHER_FEE', '70000.06.03', '收入逾期其他费', 97, 2, 0),
	(64, 'TRD_LIABILITIES_INDEPENDENT_REIMBURSE_LOAN_ASSET_OVERDUE_FEE_OTHER_FEE', '50000.06.09', '独立账户偿付逾期其他费用', 84, 2, 0),
	(65, 'SND_COST_COMMISSION', '90000.03', '成本佣金', 5, 1, 1),
	(66, 'SND_LIABILITIES_INDEPENDENT_CUSTOMER_DEPOSIT', '50000.01', '独立账户提现', 26, 1, 0),
	(67, 'FST_UNEARNED_LOAN_ASSET', '10000', '未到期资产', NULL, 0, 1),
	(68, 'TRD_RECIEVABLE_LOAN_ASSET_OTHER_FEE', '20000.01.05', '应收贷款其他费用', 92, 2, 1),
	(69, 'SND_COST_REMITTANCE_FEE', '90000.01', '成本费用', 5, 1, 1),
	(70, 'TRD_BANK_SAVING_GENERAL_LOAN_ASSET_OTHER_FEE', '60000.1000.05', '银行存款贷款其他费用', 56, 2, 1),
	(72, 'TRD_LIABILITIES_INDEPENDENT_REIMBURSE_LOAN_ASSET_TOTAL', '50000.06.10', '独立账户偿付贷款总和', 84, 2, 0),
	(73, 'TRD_RECIEVABLE_OVERDUE_LOAN_ASSET_PRINCIPLE', '20000.05.01', '逾期贷款本金', 59, 2, 1),
	(74, 'TRD_LIABILITIES_INDEPENDENT_REIMBURSE_INTEREST', '50000.06.02', '独立账户偿付贷款利息', 84, 2, 0),
	(75, 'TRD_LIABILITIES_INDEPENDENT_REIMBURSE_LOAN_ASSET_PENALTY', '50000.06.06', '独立账户偿付贷款罚息', 84, 2, 0),
	(76, 'FST_PAYABLE_ASSET', '30000', '应付资产', NULL, 0, 0),
	(77, 'TRD_BANK_SAVING_GENERAL_LOAN_GUARANTEE', '60000.1000.11', '银行存款担保', 56, 2, 1),
	(78, 'SND_LIABILITIES_INDEPENDENT_WITHDRAW_DEPOSIT', '50000.04', '独立账户存款', 26, 1, 0),
	(79, 'FST_FROZEN_CAPITAL', '130000', '冻结资金', NULL, 0, 0),
	(80, 'SND_RECIEVABLE_LOAN_GUARANTEE', '20000.02', '应收贷款担保金', 94, 1, 1),
	(81, 'SND_PAYABLE_REPURCHASE', '30000.05', '应付回购', 76, 1, 0),
	(82, 'TRD_BANK_SAVING_GENERAL_LOAN_ASSET_TOTAL', '60000.1000.10', '银行存款贷款总和', 56, 2, 1),
	(83, 'TRD_REVENUE_OVERDUE_FEE_OBLIGATION', '70000.06.01', '收入逾期违约金', 97, 2, 0),
	(84, 'SND_LIABILITIES_INDEPENDENT_REIMBURSE', '50000.06', '独立账户偿付', 26, 1, 0),
	(85, 'TRD_RECIEVABLE_OVERDUE_LOAN_ASSET_INTEREST', '20000.05.02', '逾期贷款利息', 59, 2, 1),
	(86, 'SND_RECIEVABLE_OVERDUE_FEE', '20000.06', '应收逾期费用', 94, 1, 1),
	(87, 'TRD_RECIEVABLE_OVERDUE_LOAN_ASSET_OTHER_FEE', '20000.05.05', '逾期贷款其他费用', 59, 2, 1),
	(88, 'SND_FROZEN_CAPITAL_VOUCHER', '130000.01', '冻结凭证资金', 79, 1, 0),
	(89, 'SND_UNEARNED_LOAN_ASSET_OTHER_FEE', '10000.05', '未到期贷款其他费用', 67, 1, 1),
	(90, 'FST_REPURCHASE_ASSET', '120000', '回购资产', NULL, 0, 1),
	(91, 'SND_PAYABLE_COMMISSION', '30000.06', '应付佣金', 76, 1, 0),
	(92, 'SND_RECIEVABLE_LOAN_ASSET', '20000.01', '应收贷款资产', 94, 1, 1),
	(93, 'SND_PAYABLE_REMITTANCE_FEE', '30000.08', '应付费用', 76, 1, 0),
	(94, 'FST_RECIEVABLE_ASSET', '20000', '应收资产', NULL, 0, 1),
	(95, 'TRD_BANK_SAVING_GENERAL_INTEREST', '60000.1000.02', '银行存款贷款利息', 56, 2, 1),
	(96, 'TRD_BANK_SAVING_GENERAL_LOAN_ASSET_LOAN_SERVICE_FEE', '60000.1000.03', '银行存款贷款服务费', 56, 2, 1),
	(97, 'SND_REVENUE_OVERDUE_FEE', '70000.06', '收入逾期费用', 28, 1, 0),
	(98, 'SND_PAYABLE_CUSTODY_INTEREST', '30000.04', '应付利息', 76, 1, 0),
	(99, 'SND_LIABILITIES_INDEPENDENT_CUSTOMER_REVOKE', '50000.05', '独立账户客户退款', 26, 1, 0),
	(101, 'SND_LIABILITIES_INDEPENDENT_INTER_ACCOUNT_BENEFICIARY', '50000.03', '独立账户收款', 26, 1, 0),
	(102, 'TRD_LIABILITIES_INDEPENDENT_REIMBURSE_CUSTODY_LOAN_PENALTY', '50000.06.12', '独立账户偿付托管罚息', 84, 2, 0),
	(103, 'SND_PAYABLE_REFUND', '30000.07', '应付退款', 76, 1, 0),
	(104, 'TRD_DEFERRED_INCOME_LOAN_TECH_FEE', '100000.02.02', '递延收入贷款技术费', 52, 2, 0),
	(105, 'SND_RECIEVABLE_REPURCHASE_ASSET_PRINCIPLE', '120000.01', '回购本金', 90, 1, 1),
	(106, 'SND_RECIEVABLE_REPURCHASE_ASSET_INTEREST', '120000.02', '回购利息', 90, 1, 1),
	(107, 'SND_RECIEVABLE_REPURCHASE_ASSET_PENALTY', '120000.03', '回购罚息', 90, 1, 1),
	(108, 'SND_RECIEVABLE_REPURCHASE_ASSET_OTHER_FEE', '120000.04', '回购其他费用', 90, 1, 1),
	(109, 'TRD_BANK_SAVING_GENERAL_REPURCHASE_ASSET_PRINCIPLE', '60000.1000.14', '银行存款回购本金', 56, 2, 1),
	(110, 'TRD_BANK_SAVING_GENERAL_REPURCHASE_ASSET_INTEREST', '60000.1000.15', '银行存款回购利息', 56, 2, 1),
	(111, 'TRD_BANK_SAVING_GENERAL_REPURCHASE_ASSET_PENALTY', '60000.1000.16', '银行存款回购罚息', 56, 2, 1),
	(112, 'TRD_BANK_SAVING_GENERAL_REPURCHASE_ASSET_OTHER_FEE', '60000.1000.17', '银行存款回购其他费用', 56, 2, 1),
	--新加 author  ---ZJ
	(113,'SND_RECIEVABLE_ASSET_PENDING', '20000.07', '应收贷款待处理', 94, 1, 1),
	(114,'SND_LONGTERM_LIABILITY_PENDING', '40000.02', '长期负债待处理', 20, 1, 0),
	(115,'TRD_BANK_SAVING_GENERAL_LOAN_REMITTANCE', '60000.1000.18', '专户放款', 56, 2, 1),
	(116,'TRD_BANK_SAVING_GENERAL_FINANCIAL_CONTRACT_FOUND','60000.1000.19','信托成立',56,2,1),
	(117,'SND_PAYABLE_ASSET_PEDING','30000.09','应付资产待处理',76,1,0),
	(118,'TRD_BANK_SAVING_GENERAL_PENDING','60000.1000.20','专户待处理',56,2,1),
	(119,'SND_REVENUE_PENDING','70000.07','收入待处理',28,1,0);
	