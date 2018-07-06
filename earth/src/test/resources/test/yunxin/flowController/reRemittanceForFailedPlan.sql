INSERT INTO `t_remittance_plan` (`remittance_plan_uuid`, `remittance_application_uuid`, `remittance_application_detail_uuid`, `business_record_no`, `financial_contract_uuid`, `financial_contract_id`, `contract_unique_id`, `contract_no`, `payment_gateway`, `payment_channel_uuid`, `payment_channel_name`, `pg_account_name`, `pg_account_no`, `pg_clearing_account`, `transaction_type`, `transaction_remark`, `priority_level`, `cp_bank_code`, `cp_bank_card_no`, `cp_bank_account_holder`, `cp_id_type`, `cp_id_number`, `cp_bank_province`, `cp_bank_city`, `cp_bank_name`, `planned_payment_date`, `complete_payment_date`, `planned_total_amount`, `actual_total_amount`, `execution_precond`, `execution_status`, `execution_remark`, `transaction_serial_no`, `create_time`, `creator_name`, `last_modified_time`)
VALUES
	('0d334092-dffc-4f9f-bb46-d53bb2490ef0', 'd6097bb7-c1cd-4c23-bd34-e6998e11bc67', 'a10d18c7-a5c4-4be9-83d2-8ewwc1423cd1', 'detailNo1', 'd2812bc5-5057-4a91-b3fd-9019506f0499', 38, 'FANT2010', 'FANT2010', 2, 'f8bb9956-1952-4893-98c8-66683d25d7ce', 'G31700平安银企直联', '', '', NULL, 0, NULL, 1, 'C10102', '6214855712106520', '测试用户1', 0, 'idNumber1', 'bankProvince1', 'bankCity1', 'bankName1', '2016-08-20 00:00:00', NULL, 1500.00, 1500.00, NULL, 2, '仅失败的放款单允许人工处理！', NULL, '2017-03-23 15:42:25', 't_test_zfb', '2017-03-23 15:42:57');
	
	INSERT INTO `t_remittance_plan` (`remittance_plan_uuid`, `remittance_application_uuid`, `remittance_application_detail_uuid`, `business_record_no`, `financial_contract_uuid`, `financial_contract_id`, `contract_unique_id`, `contract_no`, `payment_gateway`, `payment_channel_uuid`, `payment_channel_name`, `pg_account_name`, `pg_account_no`, `pg_clearing_account`, `transaction_type`, `transaction_remark`, `priority_level`, `cp_bank_code`, `cp_bank_card_no`, `cp_bank_account_holder`, `cp_id_type`, `cp_id_number`, `cp_bank_province`, `cp_bank_city`, `cp_bank_name`, `planned_payment_date`, `complete_payment_date`, `planned_total_amount`, `actual_total_amount`, `execution_precond`, `execution_status`, `execution_remark`, `transaction_serial_no`, `create_time`, `creator_name`, `last_modified_time`)
VALUES
	('334092-dffc-4f9f-bb46-d53bb24ef0', 'd6097bb7-c1cd-4c23-bd34-e6998e11bc67', 'a10d18c7-a5c4-4be9-83d2-8ewwc1423cd1', 'detailNo1', 'd2812bc5-5057-4a91-b3fd-9019506f0499', 38, 'FANT2010', 'FANT2010', 2, 'f8bb9956-1952-4893-98c8-66683d25d7ce', 'G31700平安银企直联', '', '', NULL, 0, NULL, 1, 'C10102', '6214855712106520', '测试用户1', 0, 'idNumber1', 'bankProvince1', 'bankCity1', 'bankName1', '2016-08-20 00:00:00', NULL, 1500.00, 1500.00, NULL, 3, '仅异常的放款计划订单允许人工处理！', NULL, '2017-03-23 15:42:25', 't_test_zfb', '2017-03-23 15:42:57');

	INSERT INTO `t_remittance_application` (`remittance_application_uuid`, `request_no`, `financial_contract_uuid`, `financial_contract_id`, `financial_product_code`, `contract_unique_id`, `contract_no`, `planned_total_amount`, `actual_total_amount`, `auditor_name`, `audit_time`, `notify_url`, `plan_notify_number`, `actual_notify_number`, `remittance_strategy`, `remark`, `transaction_recipient`, `execution_status`, `execution_remark`, `create_time`, `creator_name`, `ip`, `last_modified_time`, `opposite_receive_date`)
VALUES
	('d6097bb7-c1cd-4c23-bd34-e6998e11bc67', 'a433c252-4a42-473e-ae50-990cf817', 'd2812bc5-5057-4a91-b3fd-9019506f0499', 38, 'G31700', 'FANT2010', 'FANT2010', 1500.00, 1500.00, 'auditorName1', '2016-08-20 00:00:00', 'http://hello369.tunnel.qydev.com/loan/paidnotic', 1, 0, 0, '交易备注', 1, 3, NULL, '2017-03-23 15:42:25', 't_test_zfb', '192.168.0.33', '2017-03-23 15:42:57', '2017-01-01 00:00:00');
	
	INSERT INTO `t_remittance_plan` (`remittance_plan_uuid`, `remittance_application_uuid`, `remittance_application_detail_uuid`, `business_record_no`, `financial_contract_uuid`, `financial_contract_id`, `contract_unique_id`, `contract_no`, `payment_gateway`, `payment_channel_uuid`, `payment_channel_name`, `pg_account_name`, `pg_account_no`, `pg_clearing_account`, `transaction_type`, `transaction_remark`, `priority_level`, `cp_bank_code`, `cp_bank_card_no`, `cp_bank_account_holder`, `cp_id_type`, `cp_id_number`, `cp_bank_province`, `cp_bank_city`, `cp_bank_name`, `planned_payment_date`, `complete_payment_date`, `planned_total_amount`, `actual_total_amount`, `execution_precond`, `execution_status`, `execution_remark`, `transaction_serial_no`, `create_time`, `creator_name`, `last_modified_time`)
VALUES
	('rff4092-dffc-4f9f-bb46-d53bb24ef0', '097bb7-c1cd-4c23-bd34-e6998e11bc67', 'a10d18c7-a5c4-4be9-83d2-8ewwc1423cd1', 'detailNo1', 'd2812bc5-5057-4a91-b3fd-9019506f0499', 38, 'FANT2010', 'FANT2010', 2, 'f8bb9956-1952-4893-98c8-66683d25d7ce', 'G31700平安银企直联', '', '', NULL, 0, NULL, 1, 'C10102', '6214855712106520', '测试用户1', 0, 'idNumber1', 'bankProvince1', 'bankCity1', 'bankName1', '2016-08-20 00:00:00', NULL, 1500.00, 1500.00, NULL, 3, '人工处理失败，放款单下不存在相关线上代付单！', NULL, '2017-03-23 15:42:25', 't_test_zfb', '2017-03-23 15:42:57');

	INSERT INTO `t_remittance_application` (`remittance_application_uuid`, `request_no`, `financial_contract_uuid`, `financial_contract_id`, `financial_product_code`, `contract_unique_id`, `contract_no`, `planned_total_amount`, `actual_total_amount`, `auditor_name`, `audit_time`, `notify_url`, `plan_notify_number`, `actual_notify_number`, `remittance_strategy`, `remark`, `transaction_recipient`, `execution_status`, `execution_remark`, `create_time`, `creator_name`, `ip`, `last_modified_time`, `opposite_receive_date`)
VALUES
	('097bb7-c1cd-4c23-bd34-e6998e11bc67', 'a3c252-4fra42-473e-ae50-99f817', 'd2812bc5-5057-4a91-b3fd-9019506f0499', 38, 'G31700', 'FANT2010', 'FANT2010', 1500.00, 1500.00, 'auditorName1', '2016-08-20 00:00:00', 'http://hello369.tunnel.qydev.com/loan/paidnotic', 1, 0, 0, '交易备注', 1, 4, NULL, '2017-03-23 15:42:25', 't_test_zfb', '192.168.0.33', '2017-03-23 15:42:57', '2017-01-01 00:00:00');
	
	
	
	INSERT INTO `t_remittance_plan` (`remittance_plan_uuid`, `remittance_application_uuid`, `remittance_application_detail_uuid`, `business_record_no`, `financial_contract_uuid`, `financial_contract_id`, `contract_unique_id`, `contract_no`, `payment_gateway`, `payment_channel_uuid`, `payment_channel_name`, `pg_account_name`, `pg_account_no`, `pg_clearing_account`, `transaction_type`, `transaction_remark`, `priority_level`, `cp_bank_code`, `cp_bank_card_no`, `cp_bank_account_holder`, `cp_id_type`, `cp_id_number`, `cp_bank_province`, `cp_bank_city`, `cp_bank_name`, `planned_payment_date`, `complete_payment_date`, `planned_total_amount`, `actual_total_amount`, `execution_precond`, `execution_status`, `execution_remark`, `transaction_serial_no`, `create_time`, `creator_name`, `last_modified_time`)
VALUES
	('rs6092-dffc-4f9f-bb46-d53bfref0', '097bb7-c1cd-4c23-bd34-e6998e11bc67', 'a10d18c7-a5c4-4be9-83d2-8ewwc1423cd1', 'detailNo1', 'd2812bc5-5057-4a91-b3fd-9019506f0499', 38, 'FANT2010', 'FANT2010', 2, 'f8bb9956-1952-4893-98c8-66683d25d7ce', 'G31700平安银企直联', '', '', NULL, 0, NULL, 1, 'C10102', '6214855712106520', '测试用户1', 0, 'idNumber1', 'bankProvince1', 'bankCity1', 'bankName1', '2016-08-20 00:00:00', NULL, 1500.00, 1500.00, NULL, 3, '仅相关线上代付单为失败和已退票时，允许人工处理！', NULL, '2017-03-23 15:42:25', 't_test_zfb', '2017-03-23 15:42:57');
INSERT INTO `t_remittance_plan_exec_log` (`remittance_application_uuid`, `remittance_plan_uuid`, `financial_contract_uuid`, `financial_contract_id`, `payment_gateway`, `payment_channel_uuid`, `payment_channel_name`, `pg_account_name`, `pg_account_no`, `pg_clearing_account`, `planned_amount`, `actual_total_amount`, `cp_bank_code`, `cp_bank_card_no`, `cp_bank_account_holder`, `cp_id_type`, `cp_id_number`, `cp_bank_province`, `cp_bank_city`, `cp_bank_name`, `transaction_type`, `transaction_remark`, `exec_req_no`, `exec_rsp_no`, `execution_status`, `execution_remark`, `transaction_serial_no`, `complete_payment_date`, `create_time`, `last_modified_time`, `plan_credit_cash_flow_check_number`, `actual_credit_cash_flow_check_number`, `reverse_status`, `credit_cash_flow_uuid`, `debit_cash_flow_uuid`, `transaction_recipient`, `opposite_receive_date`)
VALUES
	('097bb7-c1cd-4c23-bd34-e6998e11bc67', 'rs6092-dffc-4f9f-bb46-d53bfref0', 'd2812bc5-5057-4a91-b3fd-9019506f0499', 1, 2, 'f8bb9956-1952-4893-98c8-66683d25d7ce', 'paymentChannelName', NULL, NULL, 'pgClearingAccount_1', 1.00, NULL, 'cpBankCode', 'cpBankCardNo', '01c39e79-ea38-4435-9447-6bba10b32eca', 0, 'cpIdNumber', 'cpBankProvince', 'cpBankCity', 'cpBankName', 0, 'transactionRemark', '2de950b7-a630-4d0b-8952-e661c4071461', '0b327a15-b1d9-419d-a5de-8052d9c80f56-5.1', 2, '代付单，执行状态成功', NULL, NULL, '2017-01-18 18:44:50', '2017-01-18 18:44:50', 0, 0, 0, NULL, NULL, 0, NULL);
	
	INSERT INTO `t_remittance_plan` (`remittance_plan_uuid`, `remittance_application_uuid`, `remittance_application_detail_uuid`, `business_record_no`, `financial_contract_uuid`, `financial_contract_id`, `contract_unique_id`, `contract_no`, `payment_gateway`, `payment_channel_uuid`, `payment_channel_name`, `pg_account_name`, `pg_account_no`, `pg_clearing_account`, `transaction_type`, `transaction_remark`, `priority_level`, `cp_bank_code`, `cp_bank_card_no`, `cp_bank_account_holder`, `cp_id_type`, `cp_id_number`, `cp_bank_province`, `cp_bank_city`, `cp_bank_name`, `planned_payment_date`, `complete_payment_date`, `planned_total_amount`, `actual_total_amount`, `execution_precond`, `execution_status`, `execution_remark`, `transaction_serial_no`, `create_time`, `creator_name`, `last_modified_time`)
VALUES
	('s6092-dffc-4f9f-bb46-d53bfref01', '097bb7-c1cd-4c23-bd34-e6998e11bc67', 'a10d18c7-a5c4-4be9-83d2-8ewwc1423cd1', 'detailNo1', 'd2812bc5-5057-4a91-b3fd-9019506f0499', 38, 'FANT2010', 'FANT2010', 2, 'f8bb9956-1952-4893-98c8-66683d25d7ce', 'G31700平安银企直联', '', '', NULL, 0, NULL, 1, 'C10102', '6214855712106520', '测试用户1', 0, 'idNumber1', 'bankProvince1', 'bankCity1', 'bankName1', '2016-08-20 00:00:00', NULL, 1500.00, 1500.00, NULL, 3, '仅相关线上代付单为失败和已退票时，允许人工处理！', NULL, '2017-03-23 15:42:25', 't_test_zfb', '2017-03-23 15:42:57');
INSERT INTO `t_remittance_plan_exec_log` (`remittance_application_uuid`, `remittance_plan_uuid`, `financial_contract_uuid`, `financial_contract_id`, `payment_gateway`, `payment_channel_uuid`, `payment_channel_name`, `pg_account_name`, `pg_account_no`, `pg_clearing_account`, `planned_amount`, `actual_total_amount`, `cp_bank_code`, `cp_bank_card_no`, `cp_bank_account_holder`, `cp_id_type`, `cp_id_number`, `cp_bank_province`, `cp_bank_city`, `cp_bank_name`, `transaction_type`, `transaction_remark`, `exec_req_no`, `exec_rsp_no`, `execution_status`, `execution_remark`, `transaction_serial_no`, `complete_payment_date`, `create_time`, `last_modified_time`, `plan_credit_cash_flow_check_number`, `actual_credit_cash_flow_check_number`, `reverse_status`, `credit_cash_flow_uuid`, `debit_cash_flow_uuid`, `transaction_recipient`, `opposite_receive_date`)
VALUES
	('097bb7-c1cd-4c23-bd34-e6998e11bc67', 's6092-dffc-4f9f-bb46-d53bfref01', 'd2812bc5-5057-4a91-b3fd-9019506f0499', 1, 2, 'f8bb9956-1952-4893-98c8-66683d25d7ce', 'paymentChannelName', NULL, NULL, 'pgClearingAccount_1', 1.00, NULL, 'cpBankCode', 'cpBankCardNo', '01c39e79-ea38-4435-9447-6bba10b32eca', 0, 'cpIdNumber', 'cpBankProvince', 'cpBankCity', 'cpBankName', 0, 'transactionRemark', '2de950b7-a630-4d0b-8952-e661c4071461', '0b327a15-b1d9-419d-a5de-8052d9c80f56-5.1', 4, '代付单，执行状态异常', NULL, NULL, '2017-01-18 18:44:50', '2017-01-18 18:44:50', 0, 0, 0, NULL, NULL, 0, NULL);
	
	INSERT INTO `t_remittance_plan` (`remittance_plan_uuid`, `remittance_application_uuid`, `remittance_application_detail_uuid`, `business_record_no`, `financial_contract_uuid`, `financial_contract_id`, `contract_unique_id`, `contract_no`, `payment_gateway`, `payment_channel_uuid`, `payment_channel_name`, `pg_account_name`, `pg_account_no`, `pg_clearing_account`, `transaction_type`, `transaction_remark`, `priority_level`, `cp_bank_code`, `cp_bank_card_no`, `cp_bank_account_holder`, `cp_id_type`, `cp_id_number`, `cp_bank_province`, `cp_bank_city`, `cp_bank_name`, `planned_payment_date`, `complete_payment_date`, `planned_total_amount`, `actual_total_amount`, `execution_precond`, `execution_status`, `execution_remark`, `transaction_serial_no`, `create_time`, `creator_name`, `last_modified_time`)
VALUES
	('64092-dffc-4f9f-bb46-d53bfref0', '097bb7-c1cd-4c23-bd34-e6998e11bc67', 'a10d18c7-a5c4-4be9-83d2-8ewwc1423cd1', 'detailNo1', 'd2812bc5-5057-4a91-b3fd-9019506f0499', 38, 'FANT2010', 'FANT2010', 2, 'f8bb9956-1952-4893-98c8-66683d25d7ce', 'G31700平安银企直联', '', '', NULL, 0, NULL, 1, 'C10102', '6214855712106520', '测试用户1', 0, 'idNumber1', 'bankProvince1', 'bankCity1', 'bankName1', '2016-08-20 00:00:00', NULL, 1500.00, 1500.00, NULL, 3, '放款单失败，代付单已退票', NULL, '2017-03-23 15:42:25', 't_test_zfb', '2017-03-23 15:42:57');
INSERT INTO `t_remittance_plan_exec_log` (`remittance_application_uuid`, `remittance_plan_uuid`, `financial_contract_uuid`, `financial_contract_id`, `payment_gateway`, `payment_channel_uuid`, `payment_channel_name`, `pg_account_name`, `pg_account_no`, `pg_clearing_account`, `planned_amount`, `actual_total_amount`, `cp_bank_code`, `cp_bank_card_no`, `cp_bank_account_holder`, `cp_id_type`, `cp_id_number`, `cp_bank_province`, `cp_bank_city`, `cp_bank_name`, `transaction_type`, `transaction_remark`, `exec_req_no`, `exec_rsp_no`, `execution_status`, `execution_remark`, `transaction_serial_no`, `complete_payment_date`, `create_time`, `last_modified_time`, `plan_credit_cash_flow_check_number`, `actual_credit_cash_flow_check_number`, `reverse_status`, `credit_cash_flow_uuid`, `debit_cash_flow_uuid`, `transaction_recipient`, `opposite_receive_date`)
VALUES
	('097bb7-c1cd-4c23-bd34-e6998e11bc67', '64092-dffc-4f9f-bb46-d53bfref0', 'd2812bc5-5057-4a91-b3fd-9019506f0499', 1, 2, 'f8bb9956-1952-4893-98c8-66683d25d7ce', 'paymentChannelName', NULL, NULL, 'pgClearingAccount_1', 1.00, NULL, 'cpBankCode', 'cpBankCardNo', '01c39e79-ea38-4435-9447-6bba10b32eca', 3, 'cpIdNumber', 'cpBankProvince', 'cpBankCity', 'cpBankName', 0, 'transactionRemark', '2de950b7-a630-4d0b-8952-e661c4071461', '0b327a15-b1d9-419d-a5de-8052d9c80f56-5.1', 2, '执行状态成功 冲账状态，已退票', NULL, NULL, '2017-01-18 18:44:50', '2017-01-18 18:44:50', 0, 0, 3, NULL, NULL, 0, NULL);

	