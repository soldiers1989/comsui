SET FOREIGN_KEY_CHECKS=0;


delete from journal_voucher;
delete from financial_contract;
delete from  asset_set;
delete from  source_document;
delete from  `contract`;
delete from  asset_set_extra_charge;
delete from  ledger_book_shelf;
delete from `rent_order`;
delete from `repurchase_doc`;


INSERT INTO `journal_voucher` (`id`, `account_side`, `bank_identity`, `billing_plan_uuid`, `booking_amount`, `business_voucher_type_uuid`, `business_voucher_uuid`, `cash_flow_amount`, `cash_flow_breif`, `cash_flow_channel_type`, `cash_flow_serial_no`, `cash_flow_uuid`, `checking_level`, `company_id`, `completeness`, `counter_party_account`, `counter_party_name`, `journal_voucher_uuid`, `notification_identity`, `notification_memo`, `notification_record_uuid`, `notified_date`, `settlement_modes`, `source_document_amount`, `source_document_breif`, `source_document_cash_flow_serial_no`, `source_document_counter_party_uuid`, `source_document_identity`, `source_document_uuid`, `status`, `trade_time`, `batch_uuid`, `created_date`, `source_document_counter_party_account`, `source_document_counter_party_name`, `issued_time`, `journal_voucher_type`, `counter_account_type`, `related_bill_contract_info_lv_1`, `related_bill_contract_info_lv_2`, `related_bill_contract_info_lv_3`, `cash_flow_account_info`, `journal_voucher_no`, `related_bill_contract_no_lv_1`, `related_bill_contract_no_lv_2`, `related_bill_contract_no_lv_3`, `related_bill_contract_no_lv_4`, `source_document_no`, `appendix`, `last_modified_time`, `local_party_account`, `local_party_name`, `source_document_local_party_account`, `source_document_local_party_name`, `second_journal_voucher_type`, `third_journal_voucher_type`)
VALUES
	(109626, 1, NULL, '3aba87bc-9163-4976-8163-df262c0dcb97', 2653.86, '', '', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, 'VACC274A0A4546979A41', 'ppd', '26371945-e2be-4d23-b3fe-727e3c8c48c7', NULL, NULL, NULL, NULL, NULL, 2653.86, NULL, NULL, NULL, '4a6384e7-5670-480d-b07d-80aa78b9fe87', '5d435a49-a084-4a4c-ba09-4b8b9a182c4f', 1, NULL, NULL, '2016-12-21 15:19:09', '1001133419006708197', '上海拍拍贷金融信息服务有限公司', NULL, 10, 1, 'd2812bc5-5057-4a91-b3fd-9019506f0499', '9bac005a-4089-42ba-bdd1-682f7a6f0379', '3aba87bc-9163-4976-8163-df262c0dcb97', 'a02c02b9-6f98-11e6-bf08-00163e002839', 'ZF275C590DF39A7C33', '拍拍贷测试', '2016-236-DK(12731659)号', '3aba87bc-9163-4976-8163-df262c0dcb97', '3aba87bc-9163-4976-8163-df262c0dcb97', 'V275C56D0CE7C2540', NULL, '2016-12-21 15:19:09', '6217906400014556980', '盘耀升', '600000000001', '云南国际信托有限公司', NULL, NULL);

INSERT INTO `contract` (`id`, `uuid`, `unique_id`, `begin_date`, `contract_no`, `end_date`, `asset_type`, `month_fee`, `app_id`, `customer_id`, `house_id`, `actual_end_date`, `create_time`, `interest_rate`, `payment_day_in_month`, `payment_frequency`, `periods`, `repayment_way`, `total_amount`, `penalty_interest`, `active_version_no`, `repayment_plan_operate_logs`, `state`, `financial_contract_uuid`, `interest_rate_cycle`, `customer_uuid`)
VALUES
	(99844, '9bac005a-4089-42ba-bdd1-682f7a6f0379', '96e30227-5da4-49a0-b1d4-345daec2fea4', '2016-12-12', '2016-236-DK(12731659)号', '2017-06-13', NULL, 0.00, 3, 100179, 100334, NULL, '2016-12-12 21:39:45', 0.1800000000, 0, 0, 6, 2, 2500.00, 0.2240000000, -778011189, '[{\"content\":{0:\"ZC275BD62768000D3C,ZC275BD6276803A491,ZC275BD6276805ADDB,ZC275BD62768088ECE,ZC275BD627680AC797,ZC275BD627680D5764\",1:\"ZC275BCCC093CA9283,ZC275BCCC0940C6743,ZC275BCCC094241744,ZC275BCCC0944AC9A9,ZC275BCCC09462F771,ZC275BCCC094787411\",2:\"\"},\"ipAddress\":\"101.52.128.162\",\"occurTime\":\"2016-12-13 10:32:45\",\"triggerEvent\":1}]', 5, 'd2812bc5-5057-4a91-b3fd-9019506f0499', 2, '1160e969-151a-46f7-8150-0e896f801df6');

INSERT INTO `source_document` (`id`, `company_id`, `source_document_uuid`, `source_document_type`, `create_time`, `issued_time`, `source_document_status`, `source_account_side`, `booking_amount`, `outlier_document_uuid`, `outlier_trade_time`, `outlier_counter_party_account`, `outlier_counter_party_name`, `outlier_account`, `outlie_account_name`, `outlier_account_id`, `outlier_company_id`, `outlier_serial_global_identity`, `outlier_memo`, `outlier_amount`, `outlier_settlement_modes`, `outlier_breif`, `outlier_account_side`, `appendix`, `first_outlier_doc_type`, `second_outlier_doc_type`, `third_outlier_doc_type`, `currency_type`, `audit_status`, `first_party_id`, `second_party_id`, `virtual_account_uuid`, `first_account_id`, `second_account_id`, `third_account_id`, `excute_status`, `excute_result`, `related_contract_uuid`, `financial_contract_uuid`, `source_document_no`, `first_party_type`, `first_party_name`, `virtual_account_no`, `last_modified_time`)
VALUES
	(48429, 1, '4a6384e7-5670-480d-b07d-80aa78b9fe87', 1, '2016-12-20 10:48:47', NULL, 1, 1, 2653.86, 'b0d0596c-c65e-11e6-abba-00163e002839', '2016-12-20 10:47:47', '1001133419006708197', '上海拍拍贷金融信息服务有限公司', '600000000001', '云南国际信托有限公司', NULL, 1, NULL, '2653.86测试', 2653.86, 3, '2653.86测试', 1, '{\"remark\":\"系统自动充值\"}', 'FST_LIABILITIES_OF_INDEPENDENT_ACCOUNTS', 'SND_LIABILITIES_INDEPENDENT_CUSTOMER_DEPOSIT', '', NULL, 2, 'uuid_5d-4166-44cb-b406-9b41eaaaaaaa', '1', '1fb5cefb-5af3-40b6-994d-f3deec044870', '50000', '50000.01', '', 2, 1, NULL, 'd2812bc5-5057-4a91-b3fd-9019506f0499', 'CZ275C463FD6B050C7', '1', 'ppd', 'VACC274A0A4546979A41', '2016-12-21 15:19:13');
INSERT INTO `financial_contract` (`id`, `asset_package_format`, `adva_matuterm`, `adva_start_date`, `contract_no`, `contract_name`, `app_id`, `company_id`, `adva_repo_term`, `thru_date`, `capital_account_id`, `financial_contract_type`, `loan_overdue_start_day`, `loan_overdue_end_day`, `payment_channel_id`, `ledger_book_no`, `financial_contract_uuid`, `sys_normal_deduct_flag`, `sys_overdue_deduct_flag`, `sys_create_penalty_flag`, `sys_create_guarantee_flag`, `unusual_modify_flag`, `sys_create_statement_flag`, `transaction_limit_per_transcation`, `transaction_limit_per_day`, `remittance_strategy_mode`, `app_account_uuids`, `allow_online_repayment`, `allow_offline_repayment`, `allow_advance_deduct_flag`, `adva_repayment_term`, `penalty`, `overdue_default_fee`, `overdue_service_fee`, `overdue_other_fee`, `create_time`, `last_modified_time`)
VALUES
	(38, 0, 1, '2016-09-01 00:00:00', 'G31700', '拍拍贷测试', 3, 1, 60, '2017-08-31 00:00:00', 102, 0, 1, 2, 1, '7dd4ee73-8dcf-4dbc-94ee-932ff9f48b58', 'd2812bc5-5057-4a91-b3fd-9019506f0499', 0, 0, 0, 0, 1, 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL);


INSERT INTO `repurchase_doc` (`id`, `repurchase_doc_uuid`, `financial_contract_uuid`, `amount`, `repo_start_date`, `repo_end_date`, `repo_days`, `creat_time`, `verification_time`, `last_modifed_time`, `contract_id`, `contract_no`, `app_id`, `app_name`, `customer_uuid`, `customer_name`, `executing_asset_set_uuids`, `asset_set_uuids`, `repurchase_status`, `repurchase_algorithm`, `repurchase_approach`, `repurchase_rule`, `day_of_month`, `adva_repo_term`, `repurchase_periods`, `amount_detail`, `repurchase_principal`, `repurchase_principal_algorithm`, `repurchase_interest`, `repurchase_interest_algorithm`, `repurchase_penalty`, `repurchase_penalty_algorithm`, `repurchase_other_charges`, `repurchase_other_charges_algorithm`) VALUES ('16', '3aba87bc-9163-4976-8163-df262c0dcb97', 'd2812bc5-5057-4a91-b3fd-9019506f0499', '1560.00', '2017-03-23', '2017-03-23', '0', '2017-03-23 17:37:01', '2017-03-23 19:42:50', '2017-03-23 19:42:50', '245', 'FANT20181', '3', '测试商户ppd', '238d5513-c0f6-4f72-a385-b5e6c4106922', '夏侯你惇哥', NULL, '[\"9bc5c432-2398-4c41-aa6a-39949f6afe4e\",\"e0dddac2-283d-421a-96aa-af2b1f104fee\",\"db40206a-3683-4e50-9f75-7acb87823059\"]', '1', 'outstandingPrincipal+outstandingInterest+outstandingPenaltyInterest', '1', '1', '6', '10', '3', '{\"amount\":1560.00,\"interest\":0,\"outstandingInterest\":60.00,\"outstandingOverdueCharges\":0,\"outstandingPenaltyInterest\":0,\"outstandingPrincipal\":1500.00,\"principal\":0}', '1500.00', NULL, '60.00', NULL, NULL , NULL, NULL, NULL);

SET FOREIGN_KEY_CHECKS=1;