SET FOREIGN_KEY_CHECKS=0;

delete from `ledger_book`;
delete from `financial_contract`;
delete from `ledger_book_shelf`;
delete from `clearing_exec_log`;
delete from `asset_set`;
delete from `contract`;
delete from `special_account`;
delete from `journal_voucher`;
delete from `special_account_flow`;
delete from `account`;

INSERT INTO `ledger_book` (`id`, `ledger_book_no`, `ledger_book_orgnization_id`, `book_master_id`, `party_concerned_ids`, `ledger_book_version`) VALUES 
('1', 'ledger_book_no_1', '1', NULL, NULL, NULL);

INSERT INTO `asset_set` (`id`, `guarantee_status`, `settlement_status`, `asset_fair_value`, `asset_principal_value`, `asset_interest_value`, `asset_initial_value`, `asset_recycle_date`, `confirm_recycle_date`, `refund_amount`, `asset_status`, `on_account_status`, `repayment_plan_type`, `last_valuation_time`, `asset_uuid`, `create_time`, `last_modified_time`, `comment`, `single_loan_contract_no`, `contract_id`, `actual_recycle_date`, `current_period`, `overdue_status`, `overdue_date`, `version_no`, `active_status`, `sync_status`, `active_deduct_application_uuid`, `repurchase_status`, `financial_contract_uuid`, `asset_finger_print`, `asset_extra_fee_finger_print`, `asset_finger_print_update_time`, `asset_extra_fee_finger_print_update_time`, `plan_type`, `write_off_reason`, `can_be_rollbacked`, `time_interval`, `deduction_status`, `executing_status`, `executing_status_bak`, `customer_uuid`, `contract_uuid`, `contract_funding_status`, `version_lock`, `order_payment_status`, `repay_schedule_no`, `outer_repayment_plan_no`) VALUES
('1', '0', '0', '1000.00', '900.00', '100.00', '1000.00', '2016-05-01', NULL, NULL, '0', '1', '0', NULL, 'asset_uuid_1', '2016-05-16 14:26:50', NULL, NULL, 'repayment_plan_no_1', '1', NULL, '1', '0', NULL, '1', '0', '0', 'empty_deduct_uuid', NULL, 'financial_contract_uuid_1', NULL, NULL, NULL, NULL, '0', '0', '0', '0', '0', '0', NULL, NULL, NULL, NULL, 'EMPTY_UUID', '0', NULL, NULL);

INSERT INTO `contract` (`id`, `uuid`, `unique_id`, `begin_date`, `contract_no`, `end_date`, `asset_type`, `month_fee`, `app_id`, `customer_id`, `house_id`, `actual_end_date`, `create_time`, `interest_rate`, `payment_day_in_month`, `payment_frequency`, `periods`, `repayment_way`, `total_amount`, `penalty_interest`, `active_version_no`, `repayment_plan_operate_logs`, `state`, `financial_contract_uuid`, `interest_rate_cycle`, `customer_uuid`, `repaymented_periods`, `completion_status`, `date_field_one`, `long_field_one`, `long_field_two`, `string_field_one`, `string_field_two`, `string_field_three`, `decimal_field_one`, `decimal_field_two`) VALUES
('1', 'contract_uuid', 'unique_id', '2016-01-02', 'G00003(zht36853461685090410)', '2018-01-01', NULL, '0.00', '1', '1', '1', NULL, '2016-08-27 16:06:53', '0.1200000000', '0', '0', '2', '2', '0.02', '11.0000000000', '1', NULL, '2', 'financial_contract_uuid', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `financial_contract` (`id`, `asset_package_format`, `adva_matuterm`, `adva_start_date`, `contract_no`, `contract_name`, `app_id`, `company_id`, `adva_repo_term`, `thru_date`, `capital_account_id`, `financial_contract_type`, `loan_overdue_start_day`, `loan_overdue_end_day`, `payment_channel_id`, `ledger_book_no`, `financial_contract_uuid`, `sys_normal_deduct_flag`, `sys_overdue_deduct_flag`, `sys_create_penalty_flag`, `sys_create_guarantee_flag`, `unusual_modify_flag`, `sys_create_statement_flag`, `transaction_limit_per_transcation`, `transaction_limit_per_day`, `remittance_strategy_mode`, `app_account_uuids`, `allow_online_repayment`, `allow_offline_repayment`, `allow_advance_deduct_flag`, `adva_repayment_term`, `penalty`, `overdue_default_fee`, `overdue_service_fee`, `overdue_other_fee`, `create_time`, `last_modified_time`, `repurchase_approach`, `repurchase_rule`, `repurchase_algorithm`, `day_of_month`, `pay_for_go`, `repurchase_principal_algorithm`, `repurchase_interest_algorithm`, `repurchase_penalty_algorithm`, `repurchase_other_charges_algorithm`, `temporary_repurchases`, `repurchase_cycle`, `allow_freewheeling_repayment`, `days_of_cycle`, `repayment_check_days`, `capital_party`, `other_party`, `contract_short_name`, `financial_type`, `remittance_object`, `asset_party`, `channel_party`, `supplier`) VALUES
('1', '0', '3', '2016-09-01 00:00:00', 'G32000', '用钱宝测试', '2', '1', '60', '2017-12-01 00:00:00', '101', '0', '1', '2', '1', 'ledger_book_no_1', 'financial_contract_uuid_1', '0', '0', '0', '0', '1', '0', NULL, NULL, NULL, NULL, '0', '0', '0', '7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `account` (`id`, `account_name`, `account_no`, `bank_name`, `alias`, `attr`, `scan_cash_flow_switch`, `usb_key_configured`, `uuid`, `bank_code`, `cash_flow_config`)
VALUES
	(101, '云南信托国际有限公司', '600000000001', '平安银行深圳分行', NULL, '', 0, 0, 'bd7dd5b1-aa53-4faf-9647-00ddb8ab4b42', 'PAB', NULL);


INSERT INTO `journal_voucher` (`id`, `account_side`, `bank_identity`, `billing_plan_uuid`, `booking_amount`, `business_voucher_type_uuid`, `business_voucher_uuid`, `cash_flow_amount`, `cash_flow_breif`, `cash_flow_channel_type`, `cash_flow_serial_no`, `cash_flow_uuid`, `checking_level`, `company_id`, `completeness`, `counter_party_account`, `counter_party_name`, `journal_voucher_uuid`, `notification_identity`, `notification_memo`, `notification_record_uuid`, `notified_date`, `settlement_modes`, `source_document_amount`, `source_document_breif`, `source_document_cash_flow_serial_no`, `source_document_counter_party_uuid`, `source_document_identity`, `source_document_uuid`, `status`, `trade_time`, `batch_uuid`, `created_date`, `source_document_counter_party_account`, `source_document_counter_party_name`, `issued_time`, `journal_voucher_type`, `counter_account_type`, `related_bill_contract_info_lv_1`, `related_bill_contract_info_lv_2`, `related_bill_contract_info_lv_3`, `cash_flow_account_info`, `journal_voucher_no`, `related_bill_contract_no_lv_1`, `related_bill_contract_no_lv_2`, `related_bill_contract_no_lv_3`, `related_bill_contract_no_lv_4`, `source_document_no`, `appendix`, `last_modified_time`, `local_party_account`, `local_party_name`, `source_document_local_party_account`, `source_document_local_party_name`, `second_journal_voucher_type`, `third_journal_voucher_type`, `is_has_data_sync_log`, `cash_flow_time`) VALUES 
('189', '0', '10320102939202010', '4867c46c-4df5-486c-83b0-f90122fd7ee8', '1000.00', '2fbc0014-32ae-4054-9707-450280a63f69', '', '1000.00', '凭证重构', '0', '5e172404-d4ed-11e7-a3df-525400dbb013', 'cash_flow_uuid1', '0', '41', NULL, '10320102939202010', '杭州随地付', 'journal_voucher_uuid1', '5e172404-d4ed-11e7-a3df-525400dbb013', NULL, NULL, '2017-11-29 18:09:20', '3', '100080.00', '凭证重构', '5e172404-d4ed-11e7-a3df-525400dbb013', NULL, '5e172381-d4ed-11e7-a3df-525400dbb013', '372e33b4-19fe-4b5a-a812-d9dda68a7f20', '1', '2017-11-29 18:09:20', '52bd00cd-6633-4e35-8a06-7c7eabfe7522', '2017-11-29 18:12:20', '10320102939202010', '杭州随地付', '2017-11-29 18:12:20', '13', '0', '9495f5f2-d306-461a-8b03-5896923dc1b3', NULL, '', 'cbf70764-ca28-11e7-b26b-525400dbb013', '8d0a7b38-c5e8-466c-a96a-5bd84841bdb9', 'VAN测试', '', NULL, NULL, 'CZ133311233296486400', NULL, '2017-11-29 18:12:20', NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL),
('190', '0', '10320102939202011', '4867c46c-4df5-486c-83b0-f90122fd7ee8', '2000.00', '2fbc0014-32ae-4054-9707-450280a63f69', '', '2000.00', '凭证重构', '0', '5e172404-d4ed-11e7-a3df-525400dbb013', 'cash_flow_uuid2', '0', '41', NULL, '10320102939202010', '杭州随地付', 'journal_voucher_uuid2', '5e172404-d4ed-11e7-a3df-525400dbb013', NULL, NULL, '2017-11-29 18:09:20', '3', '100080.00', '凭证重构', '5e172404-d4ed-11e7-a3df-525400dbb013', NULL, '5e172381-d4ed-11e7-a3df-525400dbb013', '372e33b4-19fe-4b5a-a812-d9dda68a7f20', '1', '2017-11-29 18:09:20', '52bd00cd-6633-4e35-8a06-7c7eabfe7522', '2017-11-29 18:12:20', '10320102939202010', '杭州随地付', '2017-11-29 18:12:20', '13', '0', '9495f5f2-d306-461a-8b03-5896923dc1b3', NULL, '', 'cbf70764-ca28-11e7-b26b-525400dbb013', '8d0a7b38-c5e8-466c-a96a-5bd84841bdb9', 'VAN测试', '', NULL, NULL, 'CZ133311233296486400', NULL, '2017-11-29 18:12:20', NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL),
('191', '0', '10320102939202012', '4867c46c-4df5-486c-83b0-f90122fd7ee8', '3000.00', '2fbc0014-32ae-4054-9707-450280a63f69', '', '3000.00', '凭证重构', '0', '5e172404-d4ed-11e7-a3df-525400dbb013', 'cash_flow_uuid3', '0', '41', NULL, '10320102939202010', '杭州随地付', 'journal_voucher_uuid3', '5e172404-d4ed-11e7-a3df-525400dbb013', NULL, NULL, '2017-11-29 18:09:20', '3', '100080.00', '凭证重构', '5e172404-d4ed-11e7-a3df-525400dbb013', NULL, '5e172381-d4ed-11e7-a3df-525400dbb013', '372e33b4-19fe-4b5a-a812-d9dda68a7f20', '1', '2017-11-29 18:09:20', '52bd00cd-6633-4e35-8a06-7c7eabfe7522', '2017-11-29 18:12:20', '10320102939202010', '杭州随地付', '2017-11-29 18:12:20', '13', '0', '9495f5f2-d306-461a-8b03-5896923dc1b3', NULL, '', 'cbf70764-ca28-11e7-b26b-525400dbb013', '8d0a7b38-c5e8-466c-a96a-5bd84841bdb9', 'VAN测试', '', NULL, NULL, 'CZ133311233296486400', NULL, '2017-11-29 18:12:20', NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL),
('192', '0', '10320102939202013', '4867c46c-4df5-486c-83b0-f90122fd7ee8', '4000.00', '2fbc0014-32ae-4054-9707-450280a63f69', '', '4000.00', '凭证重构', '0', '5e172404-d4ed-11e7-a3df-525400dbb013', 'cash_flow_uuid4', '0', '41', NULL, '10320102939202010', '杭州随地付', 'journal_voucher_uuid4', '5e172404-d4ed-11e7-a3df-525400dbb013', NULL, NULL, '2017-11-29 18:09:20', '3', '100080.00', '凭证重构', '5e172404-d4ed-11e7-a3df-525400dbb013', NULL, '5e172381-d4ed-11e7-a3df-525400dbb013', '372e33b4-19fe-4b5a-a812-d9dda68a7f20', '1', '2017-11-29 18:09:20', '52bd00cd-6633-4e35-8a06-7c7eabfe7522', '2017-11-29 18:12:20', '10320102939202010', '杭州随地付', '2017-11-29 18:12:20', '13', '0', '9495f5f2-d306-461a-8b03-5896923dc1b3', NULL, '', 'cbf70764-ca28-11e7-b26b-525400dbb013', '8d0a7b38-c5e8-466c-a96a-5bd84841bdb9', 'VAN测试', '', NULL, NULL, 'CZ133311233296486400', NULL, '2017-11-29 18:12:20', NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL),
('193', '0', '10320102939202014', '4867c46c-4df5-486c-83b0-f90122fd7ee8', '5000.00', '2fbc0014-32ae-4054-9707-450280a63f69', '', '5000.00', '凭证重构', '0', '5e172404-d4ed-11e7-a3df-525400dbb013', 'cash_flow_uuid5', '0', '41', NULL, '10320102939202010', '杭州随地付', 'journal_voucher_uuid5', '5e172404-d4ed-11e7-a3df-525400dbb013', NULL, NULL, '2017-11-29 18:09:20', '3', '100080.00', '凭证重构', '5e172404-d4ed-11e7-a3df-525400dbb013', NULL, '5e172381-d4ed-11e7-a3df-525400dbb013', '372e33b4-19fe-4b5a-a812-d9dda68a7f20', '1', '2017-11-29 18:09:20', '52bd00cd-6633-4e35-8a06-7c7eabfe7522', '2017-11-29 18:12:20', '10320102939202010', '杭州随地付', '2017-11-29 18:12:20', '13', '0', '9495f5f2-d306-461a-8b03-5896923dc1b3', NULL, '', 'cbf70764-ca28-11e7-b26b-525400dbb013', '8d0a7b38-c5e8-466c-a96a-5bd84841bdb9', 'VAN测试', '', NULL, NULL, 'CZ133311233296486400', NULL, '2017-11-29 18:12:20', NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL);

INSERT INTO `special_account` (`id`, `uuid`, `balance`, `basic_account_type`, `account_type_code`, `account_name`, `level`, `parent_account_uuid`, `fst_level_contract_uuid`, `snd_level_contract_uuid`, `trd_level_contract_uuid`, `create_time`, `last_update_time`, `version`) VALUES
('174', '9e2b5c30-bc10-4d49-a285-370cc8fdedfc', '0.00', '4', '70000', '还款户', '1', '971b02e6-79fe-4449-aefa-1845f53672d7', 'financial_contract_uuid_1', '', '', '2017-12-25 19:23:38', '2017-12-25 19:23:38', '2640c7b1-5e99-4515-a24d-aef23347899b'),
('175', '088aa3f9-d89c-4103-90ae-b78734c0030b', '0.00', '4', '40000.04', '还款本金', '2', '9e2b5c30-bc10-4d49-a285-370cc8fdedfc', 'financial_contract_uuid_1', '', '', '2017-12-25 19:23:38', '2017-12-25 19:23:38', 'dd0c8f1f-4df0-42f7-871c-e26b5abf39fa'),
('176', 'ccc73391-6adf-4fcc-94f4-5feefa6a867f', '0.00', '4', '70000.03', '还款利息', '2', '9e2b5c30-bc10-4d49-a285-370cc8fdedfc', 'financial_contract_uuid_1', '', '', '2017-12-25 19:23:38', '2017-12-25 19:23:38', 'c881ed12-3dcb-4764-ba84-d48edf1c1cf1'),
('177', '5194f910-cfe4-4ec1-9fbd-f724470dd556', '0.00', '4', '70000.05.01', '贷款服务费', '2', '9e2b5c30-bc10-4d49-a285-370cc8fdedfc', 'financial_contract_uuid_1', '', '', '2017-12-25 19:23:38', '2017-12-25 19:23:38', '4ee2c662-4446-48cb-a371-30757c1bd043'),
('178', 'e5b00999-b492-43a4-8c40-0514ec582133', '0.00', '4', '70000.05.02', '技术维护费', '2', '9e2b5c30-bc10-4d49-a285-370cc8fdedfc', 'financial_contract_uuid_1', '', '', '2017-12-25 19:23:38', '2017-12-25 19:23:38', '2f943b18-8bf2-45bf-8365-3985c9cd931c'),
('179', '02f681b3-f7a9-443f-97a1-0a10fd06dfb9', '0.00', '4', '70000.05.03', '其他费用', '2', '9e2b5c30-bc10-4d49-a285-370cc8fdedfc', 'financial_contract_uuid_1', '', '', '2017-12-25 19:23:38', '2017-12-25 19:23:38', 'db77f0c2-b69b-48ff-b6b0-447f5bdf1b15'),
('180', '465cb899-929b-4373-9846-7d10a88d21c8', '0.00', '4', '70000.01', '逾期罚息', '2', '9e2b5c30-bc10-4d49-a285-370cc8fdedfc', 'financial_contract_uuid_1', '', '', '2017-12-25 19:23:38', '2017-12-25 19:23:38', 'ed332e41-94d3-4371-bf2a-f37044724ece'),
('181', '1a825052-7132-4529-a251-74a75ba02c91', '0.00', '4', '70000.06.01', '逾期违约金', '2', '9e2b5c30-bc10-4d49-a285-370cc8fdedfc', 'financial_contract_uuid_1', '', '', '2017-12-25 19:23:38', '2017-12-25 19:23:38', 'bbce4e1f-d3d7-4137-aa88-4d359ec3666b'),
('182', '59fb0368-9cca-4843-ba6e-daf532dd7f6b', '0.00', '4', '70000.06.02', '逾期服务费', '2', '9e2b5c30-bc10-4d49-a285-370cc8fdedfc', 'financial_contract_uuid_1', '', '', '2017-12-25 19:23:38', '2017-12-25 19:23:38', 'f7518655-d078-44f5-b92b-a4d56ac8647d'),
('183', '0c88a54d-816d-49e5-9705-0ba908177113', '0.00', '4', '70000.06.03', '逾期其他费用', '2', '9e2b5c30-bc10-4d49-a285-370cc8fdedfc', 'financial_contract_uuid_1', '', '', '2017-12-25 19:23:38', '2017-12-25 19:23:38', 'ab490f5f-8dcd-41c8-ac4f-d1b34c07f505'),
('172', 'abe9385e-36e1-4781-9cac-83b2afe3ea06', '0.00', '3', '50000', '客户账户', '1', '971b02e6-79fe-4449-aefa-1845f53672d7', 'financial_contract_uuid_1', '', '', '2017-12-25 19:23:38', '2017-12-25 19:23:38', '47711819-f685-4bba-b676-66b67fabb2a2'),
('173', 'b901c09b-ac99-490f-ba59-b6edab5c2775', '0.00', '3', '50000.1000', '客户账户金额', '2', 'abe9385e-36e1-4781-9cac-83b2afe3ea06', 'financial_contract_uuid_1', '', '', '2017-12-25 19:23:38', '2017-12-25 19:23:38', 'd119e5d6-df2d-4b2b-a92f-f9ecc3b5126a');


INSERT INTO `clearing_exec_log` (id, `uuid`, `repayment_business_uuid`, `contract_uuid`, `financial_contract_uuid`, `clearing_status`, `create_time`, `clearing_complete_time`, `last_modified_time`, `amount`, `detail_amount`, `batch_uuid`, `journal_voucher_type`, `journal_voucher_uuid`, `principal`, `interest`, `service_charge`, `maintenance_charge`, `other_charge`, `penalty_fee`, `late_penalty`, `late_fee`, `late_other_cost`, `clearing_voucher_uuid`,`appendix`) VALUES
('1', 'clearing_exec_log_uuid1', 'asset_uuid_1', 'contract_uuid', 'financial_contract_uuid_1', 1, '2016-08-27 16:06:53', NULL, '2016-08-27 16:06:53', 1000.00, '{SND_UNEARNED_LOAN_ASSET_PRINCIPLE=800.00, SND_UNEARNED_LOAN_ASSET_TECH_FEE=50.00, TRD_RECIEVABLE_OVERDUE_FEE_OBLIGATION=null, TRD_RECIEVABLE_OVERDUE_FEE_SERVICE_FEE=null, SND_UNEARNED_LOAN_ASSET_OTHER_FEE=null, SND_RECIEVABLE_LOAN_PENALTY=null, SND_UNEARNED_LOAN_ASSET_INTEREST=100.00, TRD_RECIEVABLE_OVERDUE_FEE_OTHER_FEE=null, SND_UNEARNED_LOAN_ASSET_LOAN_SERVICE_FEE=50.00}', 'batch_uuid', 5, 'journal_voucher_uuid1', '800.00', '100.00', '50.00', '50.00', NULL, NULL, NULL, NULL, NULL, NULL,'{"contract_id":1l}'),
('2', 'clearing_exec_log_uuid2', 'asset_uuid_1', 'contract_uuid', 'financial_contract_uuid_1', 1, '2016-08-27 16:06:53', NULL, '2016-08-27 16:06:53', 2000.00, '{SND_UNEARNED_LOAN_ASSET_PRINCIPLE=1800.00, SND_UNEARNED_LOAN_ASSET_TECH_FEE=null, TRD_RECIEVABLE_OVERDUE_FEE_OBLIGATION=null, TRD_RECIEVABLE_OVERDUE_FEE_SERVICE_FEE=null, SND_UNEARNED_LOAN_ASSET_OTHER_FEE=null, SND_RECIEVABLE_LOAN_PENALTY=null, SND_UNEARNED_LOAN_ASSET_INTEREST=100.00, TRD_RECIEVABLE_OVERDUE_FEE_OTHER_FEE=null, SND_UNEARNED_LOAN_ASSET_LOAN_SERVICE_FEE=100.00}', 'batch_uuid', 9, 'journal_voucher_uuid2', '1800.00', '100.00', '100.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL,'{"contract_id":1l}'),
('3', 'clearing_exec_log_uuid3', 'asset_uuid_1', 'contract_uuid', 'financial_contract_uuid_1', 1, '2016-08-27 16:06:53', NULL, '2016-08-27 16:06:53', 3000.00, '{SND_UNEARNED_LOAN_ASSET_PRINCIPLE=2700.00, SND_UNEARNED_LOAN_ASSET_TECH_FEE=50.00, TRD_RECIEVABLE_OVERDUE_FEE_OBLIGATION=null, TRD_RECIEVABLE_OVERDUE_FEE_SERVICE_FEE=null, SND_UNEARNED_LOAN_ASSET_OTHER_FEE=null, SND_RECIEVABLE_LOAN_PENALTY=null, SND_UNEARNED_LOAN_ASSET_INTEREST=150.00, TRD_RECIEVABLE_OVERDUE_FEE_OTHER_FEE=null, SND_UNEARNED_LOAN_ASSET_LOAN_SERVICE_FEE=100.00}', 'batch_uuid', 11, 'journal_voucher_uuid3', '2700.00', '150.00', '100.00', '50.00', NULL, NULL, NULL, NULL, NULL, NULL,'{"contract_id":1l}'),
('4', 'clearing_exec_log_uuid4', 'asset_uuid_1', 'contract_uuid', 'financial_contract_uuid_1', 1, '2016-08-27 16:06:53', NULL, '2016-08-27 16:06:53', 4000.00, '{SND_UNEARNED_LOAN_ASSET_PRINCIPLE=3800.00, SND_UNEARNED_LOAN_ASSET_TECH_FEE=null, TRD_RECIEVABLE_OVERDUE_FEE_OBLIGATION=null, TRD_RECIEVABLE_OVERDUE_FEE_SERVICE_FEE=null, SND_UNEARNED_LOAN_ASSET_OTHER_FEE=null, SND_RECIEVABLE_LOAN_PENALTY=null, SND_UNEARNED_LOAN_ASSET_INTEREST=150.00, TRD_RECIEVABLE_OVERDUE_FEE_OTHER_FEE=null, SND_UNEARNED_LOAN_ASSET_LOAN_SERVICE_FEE=50.00}', 'batch_uuid', 14, 'journal_voucher_uuid4', '3800.00', '150.00', '50.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL,'{"contract_id":1l}'),
('5', 'clearing_exec_log_uuid5', 'asset_uuid_1', 'contract_uuid', 'financial_contract_uuid_1', 1, '2016-08-27 16:06:53', NULL, '2016-08-27 16:06:53', 5000.00, NULL, 'batch_uuid', 15, 'journal_voucher_uuid5', '4500.00', '400.00', '100.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL,'{"contract_id":1l}');

SET FOREIGN_KEY_CHECKS=1;

