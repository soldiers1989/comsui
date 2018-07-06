SET FOREIGN_KEY_CHECKS = 0;

DELETE FROM financial_contract;

INSERT INTO `financial_contract` (`id`, `asset_package_format`, `adva_matuterm`, `adva_start_date`, `contract_no`, `contract_name`, `app_id`, `company_id`, `adva_repo_term`, `thru_date`, `capital_account_id`, `financial_contract_type`, `loan_overdue_start_day`, `loan_overdue_end_day`, `payment_channel_id`, `ledger_book_no`, `financial_contract_uuid`, `sys_normal_deduct_flag`, `sys_overdue_deduct_flag`, `sys_create_penalty_flag`, `sys_create_guarantee_flag`, `unusual_modify_flag`, `sys_create_statement_flag`, `transaction_limit_per_transcation`, `transaction_limit_per_day`, `remittance_strategy_mode`, `app_account_uuids`, `allow_online_repayment`, `allow_offline_repayment`, `allow_advance_deduct_flag`, `adva_repayment_term`, `penalty`, `overdue_default_fee`, `overdue_service_fee`, `overdue_other_fee`, `create_time`, `last_modified_time`, `repurchase_approach`, `repurchase_rule`, `repurchase_algorithm`, `day_of_month`, `pay_for_go`, `repurchase_principal_algorithm`, `repurchase_interest_algorithm`, `repurchase_penalty_algorithm`, `repurchase_other_charges_algorithm`,`allow_freewheeling_repayment`) VALUES ('39', '1', '3', '2016-09-01 00:00:00', 'G26700', '通善测试1', '1', '1', '60', '2017-12-01 00:00:00', '103', '0', '1', '60', '1', 'c3875e9b-6af2-49ed-b029-c45bd826de12', '8ed6eefe-13d9-4532-8389-8f8c7692b891', '0', '0', '0', '0', '1', '0', NULL, NULL, NULL, NULL, '0', '0', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL,'0');

SET FOREIGN_KEY_CHECKS = 1;