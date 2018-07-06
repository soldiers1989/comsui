delete from `t_interface_batch_deduct_status_query_log`;
INSERT INTO `t_interface_batch_deduct_status_query_log` (`request_no`, `deudct_id_list`, `repayment_plan_code_list`, `repayment_type`, `create_time`, `ip`) VALUES ('1', '1', '1', '1', '2016-11-07', '1');
delete from `t_deduct_application`;
delete from `t_deduct_plan`;
delete from `t_deduct_application_detail`;

INSERT INTO `t_deduct_application_detail` (`id`, `deduct_application_detail_uuid`, `deduct_application_uuid`, `financial_contract_uuid`, `contract_unique_id`, `repayment_plan_code`, `asset_set_uuid`, `request_no`, `repayment_type`, `transaction_type`, `create_time`, `execution_remark`, `creator_name`, `last_modify_time`, `first_account_name`, `first_account_uuid`, `second_account_name`, `second_account_uuid`, `third_account_name`, `third_account_uuid`, `account_amount`, `is_total`) VALUES ('78', '6c01c0b6-1d8e-4347-8e0c-cf6f5fc924ae', '0209b346-d781-4c4d-8fb2-024b185dbe05', 'db36ecc9-d80c-4350-bd0d-59b1139d550d', 'feb51d08-4536-4bfc-b0ef-c6de60dec8f2', 'ZC27438B14F806E86C', NULL, '612f44cf-df92-4491-9367-fb6ab3ae5fa8', '0', '1', '2016-08-30 17:30:42', '', 't_test_zfb', '2016-08-30 17:30:42', 'FST_RECIEVABLE_ASSET', '20000', 'SND_RECIEVABLE_LOAN_ASSET', '20000.01', 'TRD_RECIEVABLE_LOAN_ASSET_PRINCIPLE', '20000.01.01', '0.00', '1');
INSERT INTO `t_deduct_application_detail` (`id`, `deduct_application_detail_uuid`, `deduct_application_uuid`, `financial_contract_uuid`, `contract_unique_id`, `repayment_plan_code`, `asset_set_uuid`, `request_no`, `repayment_type`, `transaction_type`, `create_time`, `execution_remark`, `creator_name`, `last_modify_time`, `first_account_name`, `first_account_uuid`, `second_account_name`, `second_account_uuid`, `third_account_name`, `third_account_uuid`, `account_amount`, `is_total`) VALUES ('79', '6c01c0b6-1d8e-4347-8e0c-cf6f5fc924ae', '0209b346-d781-4c4d-8fb2-024b185dbe05', 'db36ecc9-d80c-4350-bd0d-59b1139d550d', 'feb51d08-4536-4bfc-b0ef-c6de60dec8f2', 'ZC27438B14F806E86C', NULL, '612f44cf-df92-4491-9367-fb6ab3ae5fa8', '0', '1', '2016-08-30 17:30:42', '', 't_test_zfb', '2016-08-30 17:30:42', 'FST_RECIEVABLE_ASSET', '20000', 'SND_RECIEVABLE_LOAN_ASSET', '20000.01', 'TRD_RECIEVABLE_LOAN_ASSET_INTEREST', '20000.01.02', '20.00', '1');
INSERT INTO `t_deduct_application_detail` (`id`, `deduct_application_detail_uuid`, `deduct_application_uuid`, `financial_contract_uuid`, `contract_unique_id`, `repayment_plan_code`, `asset_set_uuid`, `request_no`, `repayment_type`, `transaction_type`, `create_time`, `execution_remark`, `creator_name`, `last_modify_time`, `first_account_name`, `first_account_uuid`, `second_account_name`, `second_account_uuid`, `third_account_name`, `third_account_uuid`, `account_amount`, `is_total`) VALUES ('80', '6c01c0b6-1d8e-4347-8e0c-cf6f5fc924ae', '0209b346-d781-4c4d-8fb2-024b185dbe05', 'db36ecc9-d80c-4350-bd0d-59b1139d550d', 'feb51d08-4536-4bfc-b0ef-c6de60dec8f2', 'ZC27438B14F806E86C', NULL, '612f44cf-df92-4491-9367-fb6ab3ae5fa8', '0', '1', '2016-08-30 17:30:42', '', 't_test_zfb', '2016-08-30 17:30:42', 'FST_RECIEVABLE_ASSET', '20000', 'SND_RECIEVABLE_LOAN_ASSET', '20000.01', 'TRD_RECIEVABLE_LOAN_ASSET_TECH_FEE', '20000.01.04', '0.00', '1');
INSERT INTO `t_deduct_application_detail` (`id`, `deduct_application_detail_uuid`, `deduct_application_uuid`, `financial_contract_uuid`, `contract_unique_id`, `repayment_plan_code`, `asset_set_uuid`, `request_no`, `repayment_type`, `transaction_type`, `create_time`, `execution_remark`, `creator_name`, `last_modify_time`, `first_account_name`, `first_account_uuid`, `second_account_name`, `second_account_uuid`, `third_account_name`, `third_account_uuid`, `account_amount`, `is_total`) VALUES ('81', '6c01c0b6-1d8e-4347-8e0c-cf6f5fc924ae', '0209b346-d781-4c4d-8fb2-024b185dbe05', 'db36ecc9-d80c-4350-bd0d-59b1139d550d', 'feb51d08-4536-4bfc-b0ef-c6de60dec8f2', 'ZC27438B14F806E86C', NULL, '612f44cf-df92-4491-9367-fb6ab3ae5fa8', '0', '1', '2016-08-30 17:30:42', '', 't_test_zfb', '2016-08-30 17:30:42', 'FST_RECIEVABLE_ASSET', '20000', 'SND_RECIEVABLE_LOAN_ASSET', '20000.01', 'TRD_RECIEVABLE_LOAN_ASSET_LOAN_SERVICE_FEE', '20000.01.03', '0.00', '1');
INSERT INTO `t_deduct_application_detail` (`id`, `deduct_application_detail_uuid`, `deduct_application_uuid`, `financial_contract_uuid`, `contract_unique_id`, `repayment_plan_code`, `asset_set_uuid`, `request_no`, `repayment_type`, `transaction_type`, `create_time`, `execution_remark`, `creator_name`, `last_modify_time`, `first_account_name`, `first_account_uuid`, `second_account_name`, `second_account_uuid`, `third_account_name`, `third_account_uuid`, `account_amount`, `is_total`) VALUES ('82', '6c01c0b6-1d8e-4347-8e0c-cf6f5fc924ae', '0209b346-d781-4c4d-8fb2-024b185dbe05', 'db36ecc9-d80c-4350-bd0d-59b1139d550d', 'feb51d08-4536-4bfc-b0ef-c6de60dec8f2', 'ZC27438B14F806E86C', NULL, '612f44cf-df92-4491-9367-fb6ab3ae5fa8', '0', '1', '2016-08-30 17:30:42', '', 't_test_zfb', '2016-08-30 17:30:42', 'FST_RECIEVABLE_ASSET', '20000', 'SND_RECIEVABLE_LOAN_ASSET', '20000.01', 'TRD_RECIEVABLE_LOAN_ASSET_OTHER_FEE', '20000.01.05', '0.00', '1');
INSERT INTO `t_deduct_application_detail` (`id`, `deduct_application_detail_uuid`, `deduct_application_uuid`, `financial_contract_uuid`, `contract_unique_id`, `repayment_plan_code`, `asset_set_uuid`, `request_no`, `repayment_type`, `transaction_type`, `create_time`, `execution_remark`, `creator_name`, `last_modify_time`, `first_account_name`, `first_account_uuid`, `second_account_name`, `second_account_uuid`, `third_account_name`, `third_account_uuid`, `account_amount`, `is_total`) VALUES ('83', '6c01c0b6-1d8e-4347-8e0c-cf6f5fc924ae', '0209b346-d781-4c4d-8fb2-024b185dbe05', 'db36ecc9-d80c-4350-bd0d-59b1139d550d', 'feb51d08-4536-4bfc-b0ef-c6de60dec8f2', 'ZC27438B14F806E86C', NULL, '612f44cf-df92-4491-9367-fb6ab3ae5fa8', '0', '1', '2016-08-30 17:30:42', '', 't_test_zfb', '2016-08-30 17:30:42', 'FST_RECIEVABLE_ASSET', '20000', 'SND_RECIEVABLE_LOAN_PENALTY', '20000.03', NULL, NULL, '0.00', '1');
INSERT INTO `t_deduct_application_detail` (`id`, `deduct_application_detail_uuid`, `deduct_application_uuid`, `financial_contract_uuid`, `contract_unique_id`, `repayment_plan_code`, `asset_set_uuid`, `request_no`, `repayment_type`, `transaction_type`, `create_time`, `execution_remark`, `creator_name`, `last_modify_time`, `first_account_name`, `first_account_uuid`, `second_account_name`, `second_account_uuid`, `third_account_name`, `third_account_uuid`, `account_amount`, `is_total`) VALUES ('84', '6c01c0b6-1d8e-4347-8e0c-cf6f5fc924ae', '0209b346-d781-4c4d-8fb2-024b185dbe05', 'db36ecc9-d80c-4350-bd0d-59b1139d550d', 'feb51d08-4536-4bfc-b0ef-c6de60dec8f2', 'ZC27438B14F806E86C', NULL, '612f44cf-df92-4491-9367-fb6ab3ae5fa8', '0', '1', '2016-08-30 17:30:42', '', 't_test_zfb', '2016-08-30 17:30:42', NULL, NULL, NULL, NULL, NULL, NULL, '20.00', '0');
INSERT INTO `t_deduct_application_detail` (`id`, `deduct_application_detail_uuid`, `deduct_application_uuid`, `financial_contract_uuid`, `contract_unique_id`, `repayment_plan_code`, `asset_set_uuid`, `request_no`, `repayment_type`, `transaction_type`, `create_time`, `execution_remark`, `creator_name`, `last_modify_time`, `first_account_name`, `first_account_uuid`, `second_account_name`, `second_account_uuid`, `third_account_name`, `third_account_uuid`, `account_amount`, `is_total`) VALUES ('1982', 'bc05a597-739b-4035-8da3-0a3c517d6631', '05013c43-f118-4e92-912c-3f32bd607d55', 'd2812bc5-5057-4a91-b3fd-9019506f0499', 'b20bbdfc-2564-45f9-9ed9-6bd0aac503d9', 'ZC275026A1838523D2', '90bbd4c0-be17-45ab-a760-ea86871b04ac', '228721c2-d04e-426e-9d4f-f66f82f647c6', '0', '1', '2016-10-26 11:14:56', '', 't_merchant', '2016-10-26 11:14:56', 'FST_RECIEVABLE_ASSET', '20000', 'SND_RECIEVABLE_LOAN_ASSET', '20000.01', 'TRD_RECIEVABLE_LOAN_ASSET_PRINCIPLE', '20000.01.01', '1500.00', '1');
INSERT INTO `t_deduct_application_detail` (`id`, `deduct_application_detail_uuid`, `deduct_application_uuid`, `financial_contract_uuid`, `contract_unique_id`, `repayment_plan_code`, `asset_set_uuid`, `request_no`, `repayment_type`, `transaction_type`, `create_time`, `execution_remark`, `creator_name`, `last_modify_time`, `first_account_name`, `first_account_uuid`, `second_account_name`, `second_account_uuid`, `third_account_name`, `third_account_uuid`, `account_amount`, `is_total`) VALUES ('1983', 'bc05a597-739b-4035-8da3-0a3c517d6631', '05013c43-f118-4e92-912c-3f32bd607d55', 'd2812bc5-5057-4a91-b3fd-9019506f0499', 'b20bbdfc-2564-45f9-9ed9-6bd0aac503d9', 'ZC275026A1838523D2', '90bbd4c0-be17-45ab-a760-ea86871b04ac', '228721c2-d04e-426e-9d4f-f66f82f647c6', '0', '1', '2016-10-26 11:14:56', '', 't_merchant', '2016-10-26 11:14:56', 'FST_RECIEVABLE_ASSET', '20000', 'SND_RECIEVABLE_LOAN_ASSET', '20000.01', 'TRD_RECIEVABLE_LOAN_ASSET_INTEREST', '20000.01.02', '1.00', '1');
INSERT INTO `t_deduct_application_detail` (`id`, `deduct_application_detail_uuid`, `deduct_application_uuid`, `financial_contract_uuid`, `contract_unique_id`, `repayment_plan_code`, `asset_set_uuid`, `request_no`, `repayment_type`, `transaction_type`, `create_time`, `execution_remark`, `creator_name`, `last_modify_time`, `first_account_name`, `first_account_uuid`, `second_account_name`, `second_account_uuid`, `third_account_name`, `third_account_uuid`, `account_amount`, `is_total`) VALUES ('1988', 'bc05a597-739b-4035-8da3-0a3c517d6631', '05013c43-f118-4e92-912c-3f32bd607d55', 'd2812bc5-5057-4a91-b3fd-9019506f0499', 'b20bbdfc-2564-45f9-9ed9-6bd0aac503d9', 'ZC275026A1838523D2', '90bbd4c0-be17-45ab-a760-ea86871b04ac', '228721c2-d04e-426e-9d4f-f66f82f647c6', '0', '1', '2016-10-26 11:14:56', '', 't_merchant', '2016-10-26 11:14:56', 'TOTAL_RECEIVABEL_AMOUNT', NULL, NULL, NULL, NULL, NULL, '1510.00', '0');
INSERT INTO `t_deduct_application_detail` (`id`, `deduct_application_detail_uuid`, `deduct_application_uuid`, `financial_contract_uuid`, `contract_unique_id`, `repayment_plan_code`, `asset_set_uuid`, `request_no`, `repayment_type`, `transaction_type`, `create_time`, `execution_remark`, `creator_name`, `last_modify_time`, `first_account_name`, `first_account_uuid`, `second_account_name`, `second_account_uuid`, `third_account_name`, `third_account_uuid`, `account_amount`, `is_total`) VALUES ('2353', '8bf97713-e3be-4ff0-99c2-55c76a81fcfd', '061b04ae-e8d6-415e-b760-49971754c44b', 'd2812bc5-5057-4a91-b3fd-9019506f0499', '14f0c3e7-1051-41ee-a5b2-ef764175a3de', 'ZC2754DDB97B3B8DB4', '6e5a52d2-217e-4131-ad18-2b6cd6c217c7', '528f4df9-b61e-4de5-89a9-f269e1a41057', '0', '1', '2016-11-01 23:19:26', '', 't_test_zfb', '2016-11-01 23:19:26', 'FST_RECIEVABLE_ASSET', '20000', 'SND_RECIEVABLE_LOAN_ASSET', '20000.01', 'TRD_RECIEVABLE_LOAN_ASSET_PRINCIPLE', '20000.01.01', '1.00', '1');
INSERT INTO `t_deduct_application_detail` (`id`, `deduct_application_detail_uuid`, `deduct_application_uuid`, `financial_contract_uuid`, `contract_unique_id`, `repayment_plan_code`, `asset_set_uuid`, `request_no`, `repayment_type`, `transaction_type`, `create_time`, `execution_remark`, `creator_name`, `last_modify_time`, `first_account_name`, `first_account_uuid`, `second_account_name`, `second_account_uuid`, `third_account_name`, `third_account_uuid`, `account_amount`, `is_total`) VALUES ('2354', '8bf97713-e3be-4ff0-99c2-55c76a81fcfd', '061b04ae-e8d6-415e-b760-49971754c44b', 'd2812bc5-5057-4a91-b3fd-9019506f0499', '14f0c3e7-1051-41ee-a5b2-ef764175a3de', 'ZC2754DDB97B3B8DB4', '6e5a52d2-217e-4131-ad18-2b6cd6c217c7', '528f4df9-b61e-4de5-89a9-f269e1a41057', '0', '1', '2016-11-01 23:19:26', '', 't_test_zfb', '2016-11-01 23:19:26', 'FST_RECIEVABLE_ASSET', '20000', 'SND_RECIEVABLE_LOAN_ASSET', '20000.01', 'TRD_RECIEVABLE_LOAN_ASSET_INTEREST', '20000.01.02', '0.00', '1');
INSERT INTO `t_deduct_application_detail` (`id`, `deduct_application_detail_uuid`, `deduct_application_uuid`, `financial_contract_uuid`, `contract_unique_id`, `repayment_plan_code`, `asset_set_uuid`, `request_no`, `repayment_type`, `transaction_type`, `create_time`, `execution_remark`, `creator_name`, `last_modify_time`, `first_account_name`, `first_account_uuid`, `second_account_name`, `second_account_uuid`, `third_account_name`, `third_account_uuid`, `account_amount`, `is_total`) VALUES ('2355', '8bf97713-e3be-4ff0-99c2-55c76a81fcfd', '061b04ae-e8d6-415e-b760-49971754c44b', 'd2812bc5-5057-4a91-b3fd-9019506f0499', '14f0c3e7-1051-41ee-a5b2-ef764175a3de', 'ZC2754DDB97B3B8DB4', '6e5a52d2-217e-4131-ad18-2b6cd6c217c7', '528f4df9-b61e-4de5-89a9-f269e1a41057', '0', '1', '2016-11-01 23:19:26', '', 't_test_zfb', '2016-11-01 23:19:26', 'FST_RECIEVABLE_ASSET', '20000', 'SND_RECIEVABLE_LOAN_ASSET', '20000.01', 'TRD_RECIEVABLE_LOAN_ASSET_TECH_FEE', '20000.01.04', '0.00', '1');

INSERT INTO `t_deduct_application` (`id`, `deduct_application_uuid`, `deduct_id`, `request_no`, `financial_contract_uuid`, `financial_product_code`, `contract_unique_id`, `repayment_plan_code_list`, `contract_no`, `planned_deduct_total_amount`, `actual_deduct_total_amount`, `notify_url`, `transcation_type`, `repayment_type`, `execution_status`, `execution_remark`, `create_time`, `creator_name`, `ip`, `last_modified_time`, `record_status`, `is_available`, `api_called_time`, `transaction_recipient`, `customer_name`, `mobile`, `gateway`) VALUES ('284', '05013c43-f118-4e92-912c-3f32bd607d55', '228721c2-d04e-426e-9d4f-f66f82f647c6', '228721c2-d04e-426e-9d4f-f66f82f647c6', 'd2812bc5-5057-4a91-b3fd-9019506f0499', 'G31700', 'b20bbdfc-2564-45f9-9ed9-6bd0aac503d9', '[\"ZC275026A1838523D2\"]', '2016-236-DK(454526840547288878ht)号', '1510.00', '1510.00', '', '1', '0', '2', '', '2016-10-26 11:14:56', 't_merchant', '101.52.128.162', '2016-10-26 11:15:38', '2', '0', '2016-10-26 00:00:00', '1', '王林广', '15755177639', '0');
INSERT INTO `t_deduct_application` (`id`, `deduct_application_uuid`, `deduct_id`, `request_no`, `financial_contract_uuid`, `financial_product_code`, `contract_unique_id`, `repayment_plan_code_list`, `contract_no`, `planned_deduct_total_amount`, `actual_deduct_total_amount`, `notify_url`, `transcation_type`, `repayment_type`, `execution_status`, `execution_remark`, `create_time`, `creator_name`, `ip`, `last_modified_time`, `record_status`, `is_available`, `api_called_time`, `transaction_recipient`, `customer_name`, `mobile`, `gateway`) VALUES ('338', '061b04ae-e8d6-415e-b760-49971754c44b', '8e7f3085-4d8e-4b5d-b687-2437786d3147', '528f4df9-b61e-4de5-89a9-f269e1a41057', 'd2812bc5-5057-4a91-b3fd-9019506f0499', 'G31700', '14f0c3e7-1051-41ee-a5b2-ef764175a3de', '[\"ZC2754DDB97B3B8DB4\"]', 'test-23456890234567890sds-6d62e3a8-8419-45fc-851a-d1691be653a00', '1.00', '1.00', '', '1', '0', '2', '交易成功', '2016-11-01 23:19:26', 't_test_zfb', '115.197.184.146', '2016-11-01 23:19:49', '2', '0', '2016-10-24 00:00:00', '1', 'f3e73fec-1bdb-4216-8f50-a6da25862124', '13777847783', '0');




