SET FOREIGN_KEY_CHECKS=0;


delete from journal_voucher;
delete from financial_contract;
delete from  asset_set;
delete from  source_document;
delete from  `contract`;
delete from  asset_set_extra_charge;
delete from  ledger_book_shelf;




	
INSERT INTO `contract` (`id`, `uuid`, `unique_id`, `begin_date`, `contract_no`, `end_date`, `asset_type`, `month_fee`, `app_id`, `customer_id`, `house_id`, `actual_end_date`, `create_time`, `interest_rate`, `payment_day_in_month`, `payment_frequency`, `periods`, `repayment_way`, `total_amount`, `penalty_interest`, `active_version_no`, `repayment_plan_operate_logs`, `state`, `financial_contract_uuid`, `interest_rate_cycle`, `customer_uuid`)
VALUES
	(124, 'c4821535-7757-4eb0-9220-a81ae84e2f21', '8a056722-456e-4760-bd49-4f9ffb241bcc', '2016-09-02', '2016-236-DK(143275553729444822ht)号', '2019-01-01', NULL, 0.00, 3, 99766, 99921, NULL, '2016-12-01 10:15:48', 1.0000000000, 0, 0, 3, 2, 6666.00, 0.2240000000, 1, NULL, 2, 'd2812bc5-5057-4a91-b3fd-9019506f0499', 2, '3971586d-815a-4161-87e7-e9d3251ce924');

INSERT INTO `journal_voucher` (`id`, `account_side`, `bank_identity`, `billing_plan_uuid`, `booking_amount`, `business_voucher_type_uuid`, `business_voucher_uuid`, `cash_flow_amount`, `cash_flow_breif`, `cash_flow_channel_type`, `cash_flow_serial_no`, `cash_flow_uuid`, `checking_level`, `company_id`, `completeness`, `counter_party_account`, `counter_party_name`, `journal_voucher_uuid`, `notification_identity`, `notification_memo`, `notification_record_uuid`, `notified_date`, `settlement_modes`, `source_document_amount`, `source_document_breif`, `source_document_cash_flow_serial_no`, `source_document_counter_party_uuid`, `source_document_identity`, `source_document_uuid`, `status`, `trade_time`, `batch_uuid`, `created_date`, `source_document_counter_party_account`, `source_document_counter_party_name`, `issued_time`, `journal_voucher_type`, `counter_account_type`, `related_bill_contract_info_lv_1`, `related_bill_contract_info_lv_2`, `related_bill_contract_info_lv_3`, `cash_flow_account_info`, `journal_voucher_no`, `related_bill_contract_no_lv_1`, `related_bill_contract_no_lv_2`, `related_bill_contract_no_lv_3`, `related_bill_contract_no_lv_4`, `source_document_no`, `appendix`, `last_modified_time`, `local_party_account`, `local_party_name`, `source_document_local_party_account`, `source_document_local_party_name`, `second_journal_voucher_type`, `third_journal_voucher_type`)
VALUES
	(109645, 1, '中国农业银行 ', '1e59c5d1-89ea-459b-a094-636fb1fbe17b', 9.00, '2b784ef2-a1ab-41fa-b315-8e1bf8cfa2ba', '', 9.00, NULL, 2, NULL, NULL, 0, 1, 3, '6228480444455553330', '王林广', '463126e4-e6c6-40c1-a4d3-3cb751108dc3', NULL, NULL, NULL, NULL, NULL, 9.00, NULL, NULL, NULL, '5b1c561e-8ebc-4b82-8c97-8c12679fae12', 'e95b39b7-65e6-4611-bfa7-696e16ab9a4f', 1, NULL, NULL, '2016-12-28 15:20:29', '6228480444455553330', '王林广', NULL, 7, 0, 'd2812bc5-5057-4a91-b3fd-9019506f0499', 'c4821535-7757-4eb0-9220-a81ae84e2f21', '1e59c5d1-89ea-459b-a094-636fb1fbe17b', '', 'e2ed8b52-e02b-4065-aa60-da9dce1ec7ab', '拍拍贷测试', '2016-236-DK(143275553729444822ht)号', 'ZC275B160D81BCF6BD', 'JS275CC90FF757D593', 'KK275CC90FC8E597AD', NULL, '2016-12-28 15:20:41', '600000000001', '云南信托国际有限公司', '600000000001', '云南信托国际有限公司', 1, 2);


	INSERT INTO `financial_contract` (`id`, `asset_package_format`, `adva_matuterm`, `adva_start_date`, `contract_no`, `contract_name`, `app_id`, `company_id`, `adva_repo_term`, `thru_date`, `capital_account_id`, `financial_contract_type`, `loan_overdue_start_day`, `loan_overdue_end_day`, `payment_channel_id`, `ledger_book_no`, `financial_contract_uuid`, `sys_normal_deduct_flag`, `sys_overdue_deduct_flag`, `sys_create_penalty_flag`, `sys_create_guarantee_flag`, `unusual_modify_flag`, `sys_create_statement_flag`, `transaction_limit_per_transcation`, `transaction_limit_per_day`, `remittance_strategy_mode`, `app_account_uuids`, `allow_online_repayment`, `allow_offline_repayment`, `allow_advance_deduct_flag`, `adva_repayment_term`, `penalty`, `overdue_default_fee`, `overdue_service_fee`, `overdue_other_fee`, `create_time`, `last_modified_time`)
VALUES
	(38, 0, 1, '2016-09-01 00:00:00', 'G31700', '拍拍贷测试', 3, 1, 60, '2017-08-31 00:00:00', 102, 0, 1, 2, 1, '7dd4ee73-8dcf-4dbc-94ee-932ff9f48b58', 'd2812bc5-5057-4a91-b3fd-9019506f0499', 0, 0, 0, 0, 1, 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL);

	
	INSERT INTO `asset_set` (`id`, `guarantee_status`, `settlement_status`, `asset_fair_value`, `asset_principal_value`, `asset_interest_value`, `asset_initial_value`, `asset_recycle_date`, `confirm_recycle_date`, `refund_amount`, `asset_status`, `on_account_status`, `repayment_plan_type`, `last_valuation_time`, `asset_uuid`, `create_time`, `last_modified_time`, `comment`, `single_loan_contract_no`, `contract_id`, `actual_recycle_date`, `current_period`, `overdue_status`, `overdue_date`, `version_no`, `active_status`, `sync_status`, `active_deduct_application_uuid`, `repurchase_status`, `financial_contract_uuid`, `asset_finger_print`, `asset_extra_fee_finger_print`, `asset_finger_print_update_time`, `asset_extra_fee_finger_print_update_time`, `plan_type`, `write_off_reason`, `can_be_rollbacked`, `time_interval`, `deduction_status`, `executing_status`, `executing_status_bak`, `customer_uuid`, `contract_uuid`, `contract_funding_status`)
VALUES
	(337156, 0, 0, 1121.00, 1111.00, 1.00, 1112.00, '2016-11-27', NULL, 0.00, 0, 1, 0, '2016-12-28 03:59:38', '44f3e974-7246-487e-b496-54cb44e2801d', '2016-12-01 10:15:48', '2016-12-28 03:59:38', NULL, 'ZC275B160D81A923ED', 124, NULL, 1, 1, NULL, 1, 0, 0, 'empty_deduct_uuid', NULL, 'd2812bc5-5057-4a91-b3fd-9019506f0499', '9bec1ea975aa9365bb0c3ac896350507', 'cbbaaad2f883a6da3e6d6f77ec41c211', '2016-12-01 10:15:48', '2016-12-01 10:15:48', 0, 0, 0, 1, 0, 0, NULL, '3971586d-815a-4161-87e7-e9d3251ce924', 'c4821535-7757-4eb0-9220-a81ae84e2f21', 0),
	(337157, 0, 0, 2232.00, 2222.00, 1.00, 2223.00, '2016-11-28', NULL, 0.00, 0, 1, 0, '2016-12-28 03:59:38', '326baf48-f3f5-49f2-a203-85f9eed2e6b2', '2016-12-01 10:15:48', '2016-12-28 03:59:38', NULL, 'ZC275B160D81AFBE8D', 124, NULL, 2, 1, NULL, 1, 0, 0, 'empty_deduct_uuid', NULL, 'd2812bc5-5057-4a91-b3fd-9019506f0499', '71e0d861e4717172e868c61cf3143307', 'cbbaaad2f883a6da3e6d6f77ec41c211', '2016-12-01 10:15:48', '2016-12-01 10:15:48', 0, 0, 0, 1, 0, 0, NULL, '3971586d-815a-4161-87e7-e9d3251ce924', 'c4821535-7757-4eb0-9220-a81ae84e2f21', 0),
	(337158, 0, 0, 3353.00, 3333.00, 1.00, 3334.00, '2016-11-29', NULL, 0.00, 0, 3, 0, '2016-12-28 15:08:43', '1e59c5d1-89ea-459b-a094-636fb1fbe17b', '2016-12-01 10:15:48', '2016-12-28 15:20:41', NULL, 'ZC275B160D81BCF6BD', 124, NULL, 3, 1, NULL, 1, 0, 0, 'empty_deduct_uuid', NULL, 'd2812bc5-5057-4a91-b3fd-9019506f0499', '408cd4e3f581b3051d10ac75c558b6fb', 'cbbaaad2f883a6da3e6d6f77ec41c211', '2016-12-01 10:15:48', '2016-12-01 10:15:48', 0, 0, 0, 1, 3, 1, NULL, '3971586d-815a-4161-87e7-e9d3251ce924', 'c4821535-7757-4eb0-9220-a81ae84e2f21', NULL);

	INSERT INTO `source_document` (`id`, `company_id`, `source_document_uuid`, `source_document_type`, `create_time`, `issued_time`, `source_document_status`, `source_account_side`, `booking_amount`, `outlier_document_uuid`, `outlier_trade_time`, `outlier_counter_party_account`, `outlier_counter_party_name`, `outlier_account`, `outlie_account_name`, `outlier_account_id`, `outlier_company_id`, `outlier_serial_global_identity`, `outlier_memo`, `outlier_amount`, `outlier_settlement_modes`, `outlier_breif`, `outlier_account_side`, `appendix`, `first_outlier_doc_type`, `second_outlier_doc_type`, `third_outlier_doc_type`, `currency_type`, `audit_status`, `first_party_id`, `second_party_id`, `virtual_account_uuid`, `first_account_id`, `second_account_id`, `third_account_id`, `excute_status`, `excute_result`, `related_contract_uuid`, `financial_contract_uuid`, `source_document_no`, `first_party_type`, `first_party_name`, `virtual_account_no`, `last_modified_time`)
VALUES
	(48478, 1, '5b1c561e-8ebc-4b82-8c97-8c12679fae12', 1, '2016-12-28 15:20:29', NULL, 1, 1, 9.00, '9dca1fe9-5c4e-4b66-940a-87d717bbc4d9', '2016-12-28 15:18:13', '6228480444455553330', '王林广', '600000000001', '云南信托国际有限公司', 102, 1, '1fc2a490-5761-4691-8b80-2bc674df742f', '交易成功', 9.00, 3, '[\"ZC275B160D81BCF6BD\"]', 1, NULL, 'deduct_application', 'interface_on_line_payment', NULL, NULL, 0, 'a02c02b9-6f98-11e6-bf08-00163e002839', '3971586d-815a-4161-87e7-e9d3251ce924', NULL, '9dca1fe9-5c4e-4b66-940a-87d717bbc4d9', '3dcd1109-1441-4cb4-bd9c-178aa8c26dc5', NULL, NULL, NULL, 'c4821535-7757-4eb0-9220-a81ae84e2f21', 'd2812bc5-5057-4a91-b3fd-9019506f0499', 'KK275CC90FC8E597AD', NULL, '测试金融', NULL, '2016-12-28 15:20:41');


INSERT INTO `asset_set_extra_charge` (`id`, `asset_set_extra_charge_uuid`, `asset_set_uuid`, `create_time`, `last_modify_time`, `first_account_name`, `first_account_uuid`, `second_account_name`, `second_account_uuid`, `third_account_name`, `third_account_uuid`, `account_amount`)
VALUES
	(557170, 'd7e672ca-b079-4e6e-9e6d-544aac143f6d', '1e59c5d1-89ea-459b-a094-636fb1fbe17b', '2016-12-01 10:15:48', '2016-12-01 10:15:48', 'FST_UNEARNED_LOAN_ASSET', '10000', 'SND_UNEARNED_LOAN_ASSET_OTHER_FEE', '10000.05', NULL, NULL, 3.00),
	(557171, '14a0ca6a-6651-4c10-b8e6-a5fcc9b6d4f4', '1e59c5d1-89ea-459b-a094-636fb1fbe17b', '2016-12-01 10:15:48', '2016-12-01 10:15:48', 'FST_UNEARNED_LOAN_ASSET', '10000', 'SND_UNEARNED_LOAN_ASSET_LOAN_SERVICE_FEE', '10000.03', NULL, NULL, 4.00),
	(557172, 'ceef8950-de8c-4375-a295-0658d63090d4', '1e59c5d1-89ea-459b-a094-636fb1fbe17b', '2016-12-01 10:15:48', '2016-12-01 10:15:48', 'FST_UNEARNED_LOAN_ASSET', '10000', 'SND_UNEARNED_LOAN_ASSET_TECH_FEE', '10000.04', NULL, NULL, 2.00),
	(568799, 'e3e442b4-c913-4b38-96c8-9a0a8f4a8721', '1e59c5d1-89ea-459b-a094-636fb1fbe17b', '2016-12-28 15:08:43', '2016-12-28 15:08:43', 'FST_RECIEVABLE_ASSET', '20000', 'SND_RECIEVABLE_LOAN_PENALTY', '20000.03', NULL, NULL, 1.00),
	(568800, 'bdc796d6-dd08-4c3c-91b4-e8205a57d146', '1e59c5d1-89ea-459b-a094-636fb1fbe17b', '2016-12-28 15:08:43', '2016-12-28 15:08:43', 'FST_RECIEVABLE_ASSET', '20000', 'SND_RECIEVABLE_OVERDUE_FEE', '20000.06', 'TRD_RECIEVABLE_OVERDUE_FEE_OBLIGATION', '20000.06.01', 2.00),
	(568801, '22ce9aa8-4cbf-4233-8697-6dbc983d840a', '1e59c5d1-89ea-459b-a094-636fb1fbe17b', '2016-12-28 15:08:43', '2016-12-28 15:08:43', 'FST_RECIEVABLE_ASSET', '20000', 'SND_RECIEVABLE_OVERDUE_FEE', '20000.06', 'TRD_RECIEVABLE_OVERDUE_FEE_SERVICE_FEE', '20000.06.02', 3.00),
	(568802, '684a37c0-9601-4291-85cf-e204d4986795', '1e59c5d1-89ea-459b-a094-636fb1fbe17b', '2016-12-28 15:08:43', '2016-12-28 15:08:43', 'FST_RECIEVABLE_ASSET', '20000', 'SND_RECIEVABLE_OVERDUE_FEE', '20000.06', 'TRD_RECIEVABLE_OVERDUE_FEE_OTHER_FEE', '20000.06.03', 4.00);

INSERT INTO `ledger_book_shelf` (`id`, `ledger_uuid`, `debit_balance`, `credit_balance`, `first_account_name`, `first_account_uuid`, `account_side`, `second_account_name`, `second_account_uuid`, `third_account_name`, `third_account_uuid`, `first_party_id`, `second_party_id`, `third_party_id`, `forward_ledger_uuid`, `backward_ledger_uuid`, `batch_serial_uuid`, `amortized_date`, `book_in_date`, `business_voucher_uuid`, `carried_over_date`, `contract_id`, `contract_uuid`, `default_date`, `journal_voucher_uuid`, `ledger_book_no`, `ledger_book_owner_id`, `life_cycle`, `related_lv_1_asset_outer_idenity`, `related_lv_1_asset_uuid`, `related_lv_2_asset_outer_idenity`, `related_lv_2_asset_uuid`, `related_lv_3_asset_outer_idenity`, `related_lv_3_asset_uuid`, `source_document_uuid`)
VALUES
	(13331357, 'eaea2c89-ddfd-45f1-9477-619f0c6a7833', 1.00, 0.00, 'FST_RECIEVABLE_ASSET', '20000', 1, 'SND_RECIEVABLE_OVERDUE_LOAN_ASSET', '20000.05', 'TRD_RECIEVABLE_OVERDUE_LOAN_ASSET_INTEREST', '20000.05.02', 'a02c02b9-6f98-11e6-bf08-00163e002839', '3971586d-815a-4161-87e7-e9d3251ce924', NULL, NULL, NULL, 'fc540bb0-a749-4af0-a2e8-c66b0dcd1908', '2016-11-29', '2016-12-28 15:08:43', NULL, NULL, 124, 'c4821535-7757-4eb0-9220-a81ae84e2f21', '2016-11-29 00:00:00', NULL, '7dd4ee73-8dcf-4dbc-94ee-932ff9f48b58', '1', 1, 'ZC275B160D81BCF6BD', '1e59c5d1-89ea-459b-a094-636fb1fbe17b', NULL, NULL, NULL, NULL, NULL),
	(13331359, 'd07df522-334f-4aad-970a-9fde739005aa', 4.00, 0.00, 'FST_RECIEVABLE_ASSET', '20000', 1, 'SND_RECIEVABLE_OVERDUE_LOAN_ASSET', '20000.05', 'TRD_RECIEVABLE_OVERDUE_LOAN_ASSET_LOAN_SERVICE_FEE', '20000.05.03', 'a02c02b9-6f98-11e6-bf08-00163e002839', '3971586d-815a-4161-87e7-e9d3251ce924', NULL, NULL, NULL, '7264c7c3-86f5-4818-b015-25dcf9dd56ac', '2016-11-29', '2016-12-28 15:08:43', NULL, NULL, 124, 'c4821535-7757-4eb0-9220-a81ae84e2f21', '2016-11-29 00:00:00', NULL, '7dd4ee73-8dcf-4dbc-94ee-932ff9f48b58', '1', 1, 'ZC275B160D81BCF6BD', '1e59c5d1-89ea-459b-a094-636fb1fbe17b', NULL, NULL, NULL, NULL, NULL),
	(13331361, '5e234448-4f3d-4be8-8015-41911365c075', 3.00, 0.00, 'FST_RECIEVABLE_ASSET', '20000', 1, 'SND_RECIEVABLE_OVERDUE_LOAN_ASSET', '20000.05', 'TRD_RECIEVABLE_OVERDUE_LOAN_ASSET_OTHER_FEE', '20000.05.05', 'a02c02b9-6f98-11e6-bf08-00163e002839', '3971586d-815a-4161-87e7-e9d3251ce924', NULL, NULL, NULL, 'a06cb3a8-8c51-4566-952e-b89d8f50cfb9', '2016-11-29', '2016-12-28 15:08:43', NULL, NULL, 124, 'c4821535-7757-4eb0-9220-a81ae84e2f21', '2016-11-29 00:00:00', NULL, '7dd4ee73-8dcf-4dbc-94ee-932ff9f48b58', '1', 1, 'ZC275B160D81BCF6BD', '1e59c5d1-89ea-459b-a094-636fb1fbe17b', NULL, NULL, NULL, NULL, NULL),
	(13331363, 'fbf5a044-ae1f-4cb0-9cbb-c25b33019e1a', 3333.00, 0.00, 'FST_RECIEVABLE_ASSET', '20000', 1, 'SND_RECIEVABLE_OVERDUE_LOAN_ASSET', '20000.05', 'TRD_RECIEVABLE_OVERDUE_LOAN_ASSET_PRINCIPLE', '20000.05.01', 'a02c02b9-6f98-11e6-bf08-00163e002839', '3971586d-815a-4161-87e7-e9d3251ce924', NULL, NULL, NULL, '4b7cc2eb-0b0e-4fd2-b4d3-2d82544f392a', '2016-11-29', '2016-12-28 15:08:43', NULL, NULL, 124, 'c4821535-7757-4eb0-9220-a81ae84e2f21', '2016-11-29 00:00:00', NULL, '7dd4ee73-8dcf-4dbc-94ee-932ff9f48b58', '1', 1, 'ZC275B160D81BCF6BD', '1e59c5d1-89ea-459b-a094-636fb1fbe17b', NULL, NULL, NULL, NULL, NULL),
	(13331365, '0331c6cb-816e-4696-a3cc-c404134e4a4a', 2.00, 0.00, 'FST_RECIEVABLE_ASSET', '20000', 1, 'SND_RECIEVABLE_OVERDUE_LOAN_ASSET', '20000.05', 'TRD_RECIEVABLE_OVERDUE_LOAN_ASSET_TECH_FEE', '20000.05.04', 'a02c02b9-6f98-11e6-bf08-00163e002839', '3971586d-815a-4161-87e7-e9d3251ce924', NULL, NULL, NULL, 'e65d5213-36cb-4839-a16a-b9aac05b2991', '2016-11-29', '2016-12-28 15:08:43', NULL, NULL, 124, 'c4821535-7757-4eb0-9220-a81ae84e2f21', '2016-11-29 00:00:00', NULL, '7dd4ee73-8dcf-4dbc-94ee-932ff9f48b58', '1', 1, 'ZC275B160D81BCF6BD', '1e59c5d1-89ea-459b-a094-636fb1fbe17b', NULL, NULL, NULL, NULL, NULL),
	(13331366, '7ca262b7-db06-4924-842f-731c04d736ba', 0.00, 0.00, 'FST_RECIEVABLE_ASSET', '20000', 1, 'SND_RECIEVABLE_OVERDUE_LOAN_ASSET', '20000.05', 'TRD_RECIEVABLE_OVERDUE_LOAN_ASSET_PRINCIPLE', '20000.05.01', 'a02c02b9-6f98-11e6-bf08-00163e002839', '3971586d-815a-4161-87e7-e9d3251ce924', NULL, '031d8cee-b22c-4fe0-b771-1829b9567686', '031d8cee-b22c-4fe0-b771-1829b9567686', 'd7d19b71-ff49-4b9f-b6f4-6c4c37fdcfab', '2016-11-29', '2016-12-28 15:20:41', '', NULL, 124, 'c4821535-7757-4eb0-9220-a81ae84e2f21', '2016-11-29 00:00:00', '463126e4-e6c6-40c1-a4d3-3cb751108dc3', '7dd4ee73-8dcf-4dbc-94ee-932ff9f48b58', '1', 1, 'ZC275B160D81BCF6BD', '1e59c5d1-89ea-459b-a094-636fb1fbe17b', NULL, NULL, NULL, NULL, 'e95b39b7-65e6-4611-bfa7-696e16ab9a4f'),
	(13331367, 'c67d4f71-d583-4ba3-a515-fa5312d9b020', 0.00, 0.00, 'FST_RECIEVABLE_ASSET', '20000', 1, 'SND_RECIEVABLE_OVERDUE_LOAN_ASSET', '20000.05', 'TRD_RECIEVABLE_OVERDUE_LOAN_ASSET_INTEREST', '20000.05.02', 'a02c02b9-6f98-11e6-bf08-00163e002839', '3971586d-815a-4161-87e7-e9d3251ce924', NULL, '53de2b83-371d-43ef-8ead-4da4ff038a1c', '53de2b83-371d-43ef-8ead-4da4ff038a1c', 'ef2a03d0-36d6-417c-b8f7-ee3efa7de0a8', '2016-11-29', '2016-12-28 15:20:41', '', NULL, 124, 'c4821535-7757-4eb0-9220-a81ae84e2f21', '2016-11-29 00:00:00', '463126e4-e6c6-40c1-a4d3-3cb751108dc3', '7dd4ee73-8dcf-4dbc-94ee-932ff9f48b58', '1', 1, 'ZC275B160D81BCF6BD', '1e59c5d1-89ea-459b-a094-636fb1fbe17b', NULL, NULL, NULL, NULL, 'e95b39b7-65e6-4611-bfa7-696e16ab9a4f'),
	(13331368, 'fe014345-9601-4dcf-ba28-5993e1f4f090', 0.00, 0.00, 'FST_RECIEVABLE_ASSET', '20000', 1, 'SND_RECIEVABLE_OVERDUE_LOAN_ASSET', '20000.05', 'TRD_RECIEVABLE_OVERDUE_LOAN_ASSET_TECH_FEE', '20000.05.04', 'a02c02b9-6f98-11e6-bf08-00163e002839', '3971586d-815a-4161-87e7-e9d3251ce924', NULL, 'f53e5801-d8dc-4ac1-b267-cc4a9d74a530', 'f53e5801-d8dc-4ac1-b267-cc4a9d74a530', '450a532a-0ab2-4406-8127-175cbe987e12', '2016-11-29', '2016-12-28 15:20:41', '', NULL, 124, 'c4821535-7757-4eb0-9220-a81ae84e2f21', '2016-11-29 00:00:00', '463126e4-e6c6-40c1-a4d3-3cb751108dc3', '7dd4ee73-8dcf-4dbc-94ee-932ff9f48b58', '1', 1, 'ZC275B160D81BCF6BD', '1e59c5d1-89ea-459b-a094-636fb1fbe17b', NULL, NULL, NULL, NULL, 'e95b39b7-65e6-4611-bfa7-696e16ab9a4f'),
	(13331369, '5bf8aeee-bf63-4a10-a55d-07197bbe8848', 0.00, 0.00, 'FST_RECIEVABLE_ASSET', '20000', 1, 'SND_RECIEVABLE_OVERDUE_LOAN_ASSET', '20000.05', 'TRD_RECIEVABLE_OVERDUE_LOAN_ASSET_OTHER_FEE', '20000.05.05', 'a02c02b9-6f98-11e6-bf08-00163e002839', '3971586d-815a-4161-87e7-e9d3251ce924', NULL, 'c46955c7-eded-4397-9a34-629c6bd0ee0a', 'c46955c7-eded-4397-9a34-629c6bd0ee0a', '3b6780a4-fa5d-4ac1-a129-edb65d4af1ac', '2016-11-29', '2016-12-28 15:20:41', '', NULL, 124, 'c4821535-7757-4eb0-9220-a81ae84e2f21', '2016-11-29 00:00:00', '463126e4-e6c6-40c1-a4d3-3cb751108dc3', '7dd4ee73-8dcf-4dbc-94ee-932ff9f48b58', '1', 1, 'ZC275B160D81BCF6BD', '1e59c5d1-89ea-459b-a094-636fb1fbe17b', NULL, NULL, NULL, NULL, 'e95b39b7-65e6-4611-bfa7-696e16ab9a4f'),
	(13331370, 'e67af0f2-b33e-4dca-98b3-0e7aa3a0beed', 0.00, 2.00, 'FST_RECIEVABLE_ASSET', '20000', 1, 'SND_RECIEVABLE_OVERDUE_FEE', '20000.06', 'TRD_RECIEVABLE_OVERDUE_FEE_OBLIGATION', '20000.06.01', 'a02c02b9-6f98-11e6-bf08-00163e002839', '3971586d-815a-4161-87e7-e9d3251ce924', NULL, '2b78a0a6-ad6f-4573-9a29-f17daf5da411', '2b78a0a6-ad6f-4573-9a29-f17daf5da411', 'a1c74615-6832-4539-87d7-9c1b2ae777fc', '2016-11-29', '2016-12-28 15:20:41', '', NULL, 124, 'c4821535-7757-4eb0-9220-a81ae84e2f21', '2016-11-29 00:00:00', '463126e4-e6c6-40c1-a4d3-3cb751108dc3', '7dd4ee73-8dcf-4dbc-94ee-932ff9f48b58', '1', 1, 'ZC275B160D81BCF6BD', '1e59c5d1-89ea-459b-a094-636fb1fbe17b', NULL, NULL, NULL, NULL, 'e95b39b7-65e6-4611-bfa7-696e16ab9a4f'),
	(13331371, '47b8345d-2c2f-4224-b022-fe4750886f12', 0.00, 3.00, 'FST_RECIEVABLE_ASSET', '20000', 1, 'SND_RECIEVABLE_OVERDUE_FEE', '20000.06', 'TRD_RECIEVABLE_OVERDUE_FEE_SERVICE_FEE', '20000.06.02', 'a02c02b9-6f98-11e6-bf08-00163e002839', '3971586d-815a-4161-87e7-e9d3251ce924', NULL, '7d9cf5cf-18fc-45b5-b83f-81a5cf699319', '7d9cf5cf-18fc-45b5-b83f-81a5cf699319', '4574b85d-0dc0-45d9-b173-c60aa07c72aa', '2016-11-29', '2016-12-28 15:20:41', '', NULL, 124, 'c4821535-7757-4eb0-9220-a81ae84e2f21', '2016-11-29 00:00:00', '463126e4-e6c6-40c1-a4d3-3cb751108dc3', '7dd4ee73-8dcf-4dbc-94ee-932ff9f48b58', '1', 1, 'ZC275B160D81BCF6BD', '1e59c5d1-89ea-459b-a094-636fb1fbe17b', NULL, NULL, NULL, NULL, 'e95b39b7-65e6-4611-bfa7-696e16ab9a4f'),
	(13331372, '62db366b-8c36-4a45-a8ac-e897f8fcc36d', 0.00, 0.00, 'FST_RECIEVABLE_ASSET', '20000', 1, 'SND_RECIEVABLE_LOAN_PENALTY', '20000.03', NULL, NULL, 'a02c02b9-6f98-11e6-bf08-00163e002839', '3971586d-815a-4161-87e7-e9d3251ce924', NULL, '62a43445-b4dd-4520-8599-0fa5ebbc50b7', '62a43445-b4dd-4520-8599-0fa5ebbc50b7', '93204cb8-2636-4027-94bc-30f24344d458', '2016-11-29', '2016-12-28 15:20:41', '', NULL, 124, 'c4821535-7757-4eb0-9220-a81ae84e2f21', '2016-11-29 00:00:00', '463126e4-e6c6-40c1-a4d3-3cb751108dc3', '7dd4ee73-8dcf-4dbc-94ee-932ff9f48b58', '1', 1, 'ZC275B160D81BCF6BD', '1e59c5d1-89ea-459b-a094-636fb1fbe17b', NULL, NULL, NULL, NULL, 'e95b39b7-65e6-4611-bfa7-696e16ab9a4f'),
	(13331373, '04f2e7d8-70c1-40c3-a60a-f107fd6944d5', 0.00, 4.00, 'FST_RECIEVABLE_ASSET', '20000', 1, 'SND_RECIEVABLE_OVERDUE_FEE', '20000.06', 'TRD_RECIEVABLE_OVERDUE_FEE_OTHER_FEE', '20000.06.03', 'a02c02b9-6f98-11e6-bf08-00163e002839', '3971586d-815a-4161-87e7-e9d3251ce924', NULL, 'a00174f8-6195-4a79-8ff4-0969a8466208', 'a00174f8-6195-4a79-8ff4-0969a8466208', 'abcda064-6cd3-4112-9ef2-f8b08571828e', '2016-11-29', '2016-12-28 15:20:41', '', NULL, 124, 'c4821535-7757-4eb0-9220-a81ae84e2f21', '2016-11-29 00:00:00', '463126e4-e6c6-40c1-a4d3-3cb751108dc3', '7dd4ee73-8dcf-4dbc-94ee-932ff9f48b58', '1', 1, 'ZC275B160D81BCF6BD', '1e59c5d1-89ea-459b-a094-636fb1fbe17b', NULL, NULL, NULL, NULL, 'e95b39b7-65e6-4611-bfa7-696e16ab9a4f'),
	(13331374, 'a3cc234b-c9be-4f90-8dc1-9683bb87bea2', 0.00, 0.00, 'FST_RECIEVABLE_ASSET', '20000', 1, 'SND_RECIEVABLE_OVERDUE_LOAN_ASSET', '20000.05', 'TRD_RECIEVABLE_OVERDUE_LOAN_ASSET_LOAN_SERVICE_FEE', '20000.05.03', 'a02c02b9-6f98-11e6-bf08-00163e002839', '3971586d-815a-4161-87e7-e9d3251ce924', NULL, 'fc4ea975-c1b0-49fa-a444-672a2ab185eb', 'fc4ea975-c1b0-49fa-a444-672a2ab185eb', 'b952bc9e-21df-4ac8-96e1-b7c28ac422fe', '2016-11-29', '2016-12-28 15:20:41', '', NULL, 124, 'c4821535-7757-4eb0-9220-a81ae84e2f21', '2016-11-29 00:00:00', '463126e4-e6c6-40c1-a4d3-3cb751108dc3', '7dd4ee73-8dcf-4dbc-94ee-932ff9f48b58', '1', 1, 'ZC275B160D81BCF6BD', '1e59c5d1-89ea-459b-a094-636fb1fbe17b', NULL, NULL, NULL, NULL, 'e95b39b7-65e6-4611-bfa7-696e16ab9a4f'),
	
	(13331375, '031d8cee-b22c-4fe0-b771-1829b9567686', 0.00, 0.00, 'FST_BANK_SAVING', '60000', 1, '001053110000001', '60000.99', 'TRD_BANK_SAVING_GENERAL_PRINCIPAL', '60000.1000.01', 'a02c02b9-6f98-11e6-bf08-00163e002839', '', NULL, NULL, NULL, 'd7d19b71-ff49-4b9f-b6f4-6c4c37fdcfab', '2016-11-29', '2016-12-28 15:20:41', '', NULL, 124, 'c4821535-7757-4eb0-9220-a81ae84e2f21', '2016-11-29 00:00:00', '463126e4-e6c6-40c1-a4d3-3cb751108dc3', '7dd4ee73-8dcf-4dbc-94ee-932ff9f48b58', '1', 1, 'ZC275B160D81BCF6BD', '1e59c5d1-89ea-459b-a094-636fb1fbe17b', NULL, NULL, NULL, NULL, 'e95b39b7-65e6-4611-bfa7-696e16ab9a4f'),
	(13331376, '53de2b83-371d-43ef-8ead-4da4ff038a1c', 0.00, 0.00, 'FST_BANK_SAVING', '60000', 1, '001053110000001', '60000.99', 'TRD_BANK_SAVING_GENERAL_INTEREST', '60000.1000.02', 'a02c02b9-6f98-11e6-bf08-00163e002839', '', NULL, NULL, NULL, 'ef2a03d0-36d6-417c-b8f7-ee3efa7de0a8', '2016-11-29', '2016-12-28 15:20:41', '', NULL, 124, 'c4821535-7757-4eb0-9220-a81ae84e2f21', '2016-11-29 00:00:00', '463126e4-e6c6-40c1-a4d3-3cb751108dc3', '7dd4ee73-8dcf-4dbc-94ee-932ff9f48b58', '1', 1, 'ZC275B160D81BCF6BD', '1e59c5d1-89ea-459b-a094-636fb1fbe17b', NULL, NULL, NULL, NULL, 'e95b39b7-65e6-4611-bfa7-696e16ab9a4f'),
	(13331377, 'f53e5801-d8dc-4ac1-b267-cc4a9d74a530', 0.00, 0.00, 'FST_BANK_SAVING', '60000', 1, '001053110000001', '60000.99', 'TRD_BANK_SAVING_GENERAL_LOAN_ASSET_TECH_FEE', '60000.1000.04', 'a02c02b9-6f98-11e6-bf08-00163e002839', '', NULL, NULL, NULL, '450a532a-0ab2-4406-8127-175cbe987e12', '2016-11-29', '2016-12-28 15:20:41', '', NULL, 124, 'c4821535-7757-4eb0-9220-a81ae84e2f21', '2016-11-29 00:00:00', '463126e4-e6c6-40c1-a4d3-3cb751108dc3', '7dd4ee73-8dcf-4dbc-94ee-932ff9f48b58', '1', 1, 'ZC275B160D81BCF6BD', '1e59c5d1-89ea-459b-a094-636fb1fbe17b', NULL, NULL, NULL, NULL, 'e95b39b7-65e6-4611-bfa7-696e16ab9a4f'),
	(13331378, 'c46955c7-eded-4397-9a34-629c6bd0ee0a', 0.00, 0.00, 'FST_BANK_SAVING', '60000', 1, '001053110000001', '60000.99', 'TRD_BANK_SAVING_GENERAL_LOAN_ASSET_OTHER_FEE', '60000.1000.05', 'a02c02b9-6f98-11e6-bf08-00163e002839', '', NULL, NULL, NULL, '3b6780a4-fa5d-4ac1-a129-edb65d4af1ac', '2016-11-29', '2016-12-28 15:20:41', '', NULL, 124, 'c4821535-7757-4eb0-9220-a81ae84e2f21', '2016-11-29 00:00:00', '463126e4-e6c6-40c1-a4d3-3cb751108dc3', '7dd4ee73-8dcf-4dbc-94ee-932ff9f48b58', '1', 1, 'ZC275B160D81BCF6BD', '1e59c5d1-89ea-459b-a094-636fb1fbe17b', NULL, NULL, NULL, NULL, 'e95b39b7-65e6-4611-bfa7-696e16ab9a4f'),
	(13331379, '2b78a0a6-ad6f-4573-9a29-f17daf5da411', 2.00, 0.00, 'FST_BANK_SAVING', '60000', 1, '001053110000001', '60000.99', 'TRD_BANK_SAVING_GENERAL_LOAN_ASSET_OVERDUE_FEE_OBLIGATION', '60000.1000.07', 'a02c02b9-6f98-11e6-bf08-00163e002839', '', NULL, NULL, NULL, 'a1c74615-6832-4539-87d7-9c1b2ae777fc', '2016-11-29', '2016-12-28 15:20:41', '', NULL, 124, 'c4821535-7757-4eb0-9220-a81ae84e2f21', '2016-11-29 00:00:00', '463126e4-e6c6-40c1-a4d3-3cb751108dc3', '7dd4ee73-8dcf-4dbc-94ee-932ff9f48b58', '1', 1, 'ZC275B160D81BCF6BD', '1e59c5d1-89ea-459b-a094-636fb1fbe17b', NULL, NULL, NULL, NULL, 'e95b39b7-65e6-4611-bfa7-696e16ab9a4f'),
	(13331380, '7d9cf5cf-18fc-45b5-b83f-81a5cf699319', 3.00, 0.00, 'FST_BANK_SAVING', '60000', 1, '001053110000001', '60000.99', 'TRD_BANK_SAVING_GENERAL_LOAN_ASSET_OVERDUE_FEE_SERVICE_FEE', '60000.1000.08', 'a02c02b9-6f98-11e6-bf08-00163e002839', '', NULL, NULL, NULL, '4574b85d-0dc0-45d9-b173-c60aa07c72aa', '2016-11-29', '2016-12-28 15:20:41', '', NULL, 124, 'c4821535-7757-4eb0-9220-a81ae84e2f21', '2016-11-29 00:00:00', '463126e4-e6c6-40c1-a4d3-3cb751108dc3', '7dd4ee73-8dcf-4dbc-94ee-932ff9f48b58', '1', 1, 'ZC275B160D81BCF6BD', '1e59c5d1-89ea-459b-a094-636fb1fbe17b', NULL, NULL, NULL, NULL, 'e95b39b7-65e6-4611-bfa7-696e16ab9a4f'),
	(13331381, '62a43445-b4dd-4520-8599-0fa5ebbc50b7', 0.00, 0.00, 'FST_BANK_SAVING', '60000', 1, '001053110000001', '60000.99', 'TRD_BANK_SAVING_GENERAL_LOAN_ASSET_PENALTY', '60000.1000.06', 'a02c02b9-6f98-11e6-bf08-00163e002839', '', NULL, NULL, NULL, '93204cb8-2636-4027-94bc-30f24344d458', '2016-11-29', '2016-12-28 15:20:41', '', NULL, 124, 'c4821535-7757-4eb0-9220-a81ae84e2f21', '2016-11-29 00:00:00', '463126e4-e6c6-40c1-a4d3-3cb751108dc3', '7dd4ee73-8dcf-4dbc-94ee-932ff9f48b58', '1', 1, 'ZC275B160D81BCF6BD', '1e59c5d1-89ea-459b-a094-636fb1fbe17b', NULL, NULL, NULL, NULL, 'e95b39b7-65e6-4611-bfa7-696e16ab9a4f'),
	(13331382, 'a00174f8-6195-4a79-8ff4-0969a8466208', 4.00, 0.00, 'FST_BANK_SAVING', '60000', 1, '001053110000001', '60000.99', 'TRD_BANK_SAVING_GENERAL_LOAN_ASSET_OVERDUE_FEE_OTHER_FEE', '60000.1000.09', 'a02c02b9-6f98-11e6-bf08-00163e002839', '', NULL, NULL, NULL, 'abcda064-6cd3-4112-9ef2-f8b08571828e', '2016-11-29', '2016-12-28 15:20:41', '', NULL, 124, 'c4821535-7757-4eb0-9220-a81ae84e2f21', '2016-11-29 00:00:00', '463126e4-e6c6-40c1-a4d3-3cb751108dc3', '7dd4ee73-8dcf-4dbc-94ee-932ff9f48b58', '1', 1, 'ZC275B160D81BCF6BD', '1e59c5d1-89ea-459b-a094-636fb1fbe17b', NULL, NULL, NULL, NULL, 'e95b39b7-65e6-4611-bfa7-696e16ab9a4f'),
	(13331383, 'fc4ea975-c1b0-49fa-a444-672a2ab185eb', 0.00, 0.00, 'FST_BANK_SAVING', '60000', 1, '001053110000001', '60000.99', 'TRD_BANK_SAVING_GENERAL_LOAN_ASSET_LOAN_SERVICE_FEE', '60000.1000.03', 'a02c02b9-6f98-11e6-bf08-00163e002839', '', NULL, NULL, NULL, 'b952bc9e-21df-4ac8-96e1-b7c28ac422fe', '2016-11-29', '2016-12-28 15:20:41', '', NULL, 124, 'c4821535-7757-4eb0-9220-a81ae84e2f21', '2016-11-29 00:00:00', '463126e4-e6c6-40c1-a4d3-3cb751108dc3', '7dd4ee73-8dcf-4dbc-94ee-932ff9f48b58', '1', 1, 'ZC275B160D81BCF6BD', '1e59c5d1-89ea-459b-a094-636fb1fbe17b', NULL, NULL, NULL, NULL, 'e95b39b7-65e6-4611-bfa7-696e16ab9a4f');

	
SET FOREIGN_KEY_CHECKS=1;