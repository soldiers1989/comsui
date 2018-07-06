SET FOREIGN_KEY_CHECKS=0;

DELETE FROM `asset_set`;
DELETE FROM `contract`;
DELETE FROM `customer`;
DELETE FROM `company`;
DELETE FROM `app`;
DELETE FROM `house`;
DELETE FROM `financial_contract`;
DELETE FROM `ledger_book`;
DELETE FROM `repurchase_doc`;
DELETE FROM `ledger_book_shelf`;
DELETE FROM `t_prepayment_application`;

-- INSERT INTO `asset_set` (`id`, `contract_id`, `financial_contract_uuid`, `settlement_status`, `asset_fair_value`, `asset_principal_value`, `asset_interest_value`, `asset_initial_value`, `asset_recycle_date`, `confirm_recycle_date`, `refund_amount`, `asset_status`, `on_account_status`, `repayment_plan_type`, `last_valuation_time`, `asset_uuid`, `create_time`, `last_modified_time`, `comment`, `single_loan_contract_no`, `actual_recycle_date`, `current_period`, `overdue_status`, `overdue_date`, `version_no`, `active_status`, `sync_status`, `active_deduct_application_uuid`, `asset_finger_print`, `asset_extra_fee_finger_print`, `asset_finger_print_update_time`, `asset_extra_fee_finger_print_update_time`) VALUES
-- ('323456','234567','92846f20-87e3-49f4-8f90-fe04a72c0484', '0', '1647.20', '800.00', '800.00', '1600.00', '2016-06-01', NULL, '0.00', '0', '0', '0', '2016-10-11 03:01:09', '168c2fbe-a95f-4cae-8514-eabd7fb73a2a', '2016-06-01 14:54:13', '2016-10-11 03:01:09', NULL, 'ZC293D48AAD6E61017',  NULL, '1', '2', '2016-08-10', '1', '0', '0', 'empty_deduct_uuid',NULL,NULL,NULL,NULL),
-- ('223456','123456','92846f20-87e3-49f4-8f90-fe04a72c0484', '0', '1647.20', '800.00', '800.00', '1600.00', '2016-11-01', NULL, '0.00', '0', '1', '0', '2016-10-11 03:01:09', '168c2fbe-a95f-4cae-8514-eabd7fb73a2a', '2016-06-01 14:54:13', '2016-10-11 03:01:09', NULL, 'ZC293D48AAD6E61016',  NULL, '1', '2', '2016-08-09', '1', '0', '0', 'empty_deduct_uuid',NULL,NULL,NULL,NULL),
-- ('123456','123456','92846f20-87e3-49f4-8f90-fe04a72c0484', '0', '1647.20', '800.00', '800.00', '1600.00', '2016-06-01', NULL, '0.00', '0', '1', '0', '2016-10-11 03:01:09', '168c2fbe-a95f-4cae-8514-eabd7fb73a2a', '2016-06-01 14:54:13', '2016-10-11 03:01:09', NULL, 'ZC293D48AAD6E61015',  NULL, '1', '2', '2016-08-11', '1', '0', '0', 'empty_deduct_uuid',NULL,NULL,NULL,NULL);

INSERT INTO asset_set (id,guarantee_status, settlement_status, asset_fair_value, asset_principal_value, asset_interest_value, asset_initial_value, asset_recycle_date, confirm_recycle_date, refund_amount, asset_status, on_account_status, repayment_plan_type, last_valuation_time, asset_uuid, create_time, last_modified_time, comment, single_loan_contract_no, contract_id, actual_recycle_date, current_period, overdue_status, overdue_date, version_no, active_status, sync_status, active_deduct_application_uuid, repurchase_status, financial_contract_uuid, asset_finger_print, asset_extra_fee_finger_print, asset_finger_print_update_time, asset_extra_fee_finger_print_update_time, plan_type, write_off_reason, can_be_rollbacked, time_interval, deduction_status, executing_status, executing_status_bak, customer_uuid, contract_uuid, contract_funding_status) VALUES
(1,0, 0, 500.00, 500.00, 0.00, 500.00, '2013-04-05', '2017-04-05', 0.00, 0, 3, 0, '2017-04-05 15:29:55', '6828c206-6f02-4174-abe4-e9994c714537', '2017-04-05 15:29:55', '2017-04-05 15:43:13', null, 'ZC1504705543315283968', 123456, '2017-04-05 15:42:47', 1, 2, '2017-05-05 15:42:47', 1, 0, 0, 'empty_deduct_uuid', null, '92846f20-87e3-49f4-8f90-fe04a72c0484', '746417efc7bdee70f6e6b875c426b3a1', '00bfd64b58361d989ac8bf13dccc3c9b', '2017-04-05 15:29:55', '2017-04-05 15:29:55', 0, 0, 0, 1, 3, 1, 0, '08b5ae5f-7b16-48a1-a858-b8fd7bf6d53f', 'cuuid111', null),
(2,0, 0, 500.00, 500.00, 0.00, 500.00, '2017-04-16', null, 0.00, 0, 1, 0, null, 'f4508f76-9222-457a-9d4f-52474bab4293', '2017-04-05 15:29:55', '2017-04-05 15:29:55', null, 'ZC1504705544120590336', 123456, null, 2, 0, null, 1, 2, 0, 'empty_deduct_uuid', null, '92846f20-87e3-49f4-8f90-fe04a72c0484', '0633ce849b8c1bdd3796159a50c6355e', '00bfd64b58361d989ac8bf13dccc3c9b', '2017-04-05 15:29:55', '2017-04-05 15:29:55', 0, 0, 0, 0, 0, 0, 0, '08b5ae5f-7b16-48a1-a858-b8fd7bf6d53f', 'cuuid111', null),
(3,0, 0, 500.00, 500.00, 0.00, 500.00, '2017-04-17', null, 0.00, 0, 1, 0, null, 'a861010b-a1fb-4cee-835c-155b4abd7598', '2017-04-05 15:29:55', '2017-04-05 15:29:55', null, 'ZC1504705544657461248', 123456, null, 3, 0, null, 1, 2, 0, 'empty_deduct_uuid', null, '92846f20-87e3-49f4-8f90-fe04a72c0484', '29c49f7f8064045e34724430bf78e5ff', '00bfd64b58361d989ac8bf13dccc3c9b', '2017-04-05 15:29:55', '2017-04-05 15:29:55', 0, 0, 0, 0, 0, 0, 0, '08b5ae5f-7b16-48a1-a858-b8fd7bf6d53f', 'cuuid111', null),
(4,0, 0, 1000.00, 1000.00, 0.00, 1000.00, '2017-04-05', null, 0.00, 0, 1, 1, null, 'efacc6fb-a613-460e-a526-13c86c0fdf95', '2017-04-05 15:43:22', '2017-04-05 15:43:22', null, 'ZC1504813788839174144', 123456, null, 2, 0, null, -779902115, 2, 0, 'empty_deduct_uuid', null, '92846f20-87e3-49f4-8f90-fe04a72c0484', null, null, '2017-04-05 15:43:22', '2017-04-05 15:43:22', 1, 0, 1, 0, 0, 0, 0, '08b5ae5f-7b16-48a1-a858-b8fd7bf6d53f', 'cuuid111', null);

INSERT INTO t_prepayment_application (contract_id, asset_set_id, unique_id, contract_no, request_no, asset_recycle_date, asset_initial_value, type, asset_set_uuid, create_time, ip, prepayment_status, completed_time, bepred_repayment_plan_uuid_list, pay_way) VALUES
(123456, 4, 'cuid111', 'G00003(zht765714537113774060)', '646ca593-14fb-45b7-b603-85b8f9aebc83', '2017-04-05', '1000', 0, 'efacc6fb-a613-460e-a526-13c86c0fdf95', '2017-04-05 15:43:22', '192.168.0.33', 0, null, '["f4508f76-9222-457a-9d4f-52474bab4293","a861010b-a1fb-4cee-835c-155b4abd7598"]', 0);

INSERT INTO `contract` (`id`, `uuid`, `unique_id`, `begin_date`, `contract_no`, `end_date`, `asset_type`, `month_fee`, `app_id`, `customer_id`, `house_id`, `actual_end_date`, `create_time`, `interest_rate`, `payment_day_in_month`, `payment_frequency`, `periods`, `repayment_way`, `total_amount`, `penalty_interest`, `active_version_no`, `repayment_plan_operate_logs`, `state`, `financial_contract_uuid`) VALUES
 ('123456', 'cuuid111', 'cuid111', '2016-08-01', 'G00003(zht765714537113774060)', '2018-01-01', NULL, '0.00', '1', '23', '1', NULL, '2016-08-27 16:06:51', '0.1200000000', '0', '0', '2', '2', '0.02', '11.0000000000', '1', NULL, '2', '92846f20-87e3-49f4-8f90-fe04a72c0484');

INSERT INTO `customer` (`id`, `account`, `mobile`, `name`, `source`, `app_id`, `customer_uuid`, `customer_type`) VALUES
('23', NULL, NULL, 'ceshi24', 'C75688', '1', '08b5ae5f-7b16-48a1-a858-b8fd7bf6d53f', '0');

INSERT INTO `company` (`id`, `address`, `full_name`, `short_name`, `uuid`) VALUES
('2', 'NanJin', 'ceshishanwugongsi', 'ceshifenqi', 'a02c078d-6f98-11e6-bf08-00163e002839');

INSERT INTO `app` (`id`, `app_id`, `app_secret`, `is_disabled`, `host`, `name`, `company_id`, `addressee`) VALUES
('1', 'nongfenqi', '', '', '', 'ceshifenqi', '2', NULL),
('2', 'qyb', '', '', '', 'ceshifenqi', '2', NULL);

INSERT INTO `house` (`id`, `address`, `app_id`) VALUES
('1', 'cesd', '1');

INSERT INTO `financial_contract` (`id`, `financial_contract_uuid`, `asset_package_format`, `adva_matuterm`, `adva_start_date`, `contract_no`, `contract_name`, `app_id`, `company_id`, `adva_repo_term`, `thru_date`, `capital_account_id`, `financial_contract_type`, `loan_overdue_start_day`, `loan_overdue_end_day`, `payment_channel_id`, `ledger_book_no`, `sys_normal_deduct_flag`, `sys_overdue_deduct_flag`, `sys_create_penalty_flag`, `sys_create_guarantee_flag`, `unusual_modify_flag`, `sys_create_statement_flag`, `transaction_limit_per_transcation`, `transaction_limit_per_day`, `remittance_strategy_mode`, `app_account_uuids`, `allow_online_repayment`, `allow_offline_repayment`, `allow_advance_deduct_flag`, `adva_repayment_term`, `penalty`, `overdue_default_fee`, `overdue_service_fee`, `overdue_other_fee`, `create_time`, `last_modified_time`,`repurchase_approach`, `repurchase_rule`, `repurchase_algorithm`, `day_of_month`, `repurchase_principal_algorithm`,`repurchase_interest_algorithm`,`repurchase_penalty_algorithm`,`repurchase_other_charges_algorithm`)VALUES
	(15,'92846f20-87e3-49f4-8f90-fe04a72c0484', 0, 3, '2016-06-14 00:00:00', 'ceshi003', 'test006', 1, 2, 10, '2016-06-25 00:00:00', 16, 0, 1, 90, 1, 'yunxin_ledger_book', 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL,1, 0, 'outstandingPrincipal+outstandingInterest', NULL,'outstandingPrincipal', 'outstandingInterest','outstandingPenaltyInterest',NULL);

INSERT INTO `ledger_book` (`id`, `ledger_book_no`, `ledger_book_orgnization_id`, `book_master_id`, `party_concerned_ids`) VALUES
(1, 'yunxin_ledger_book', '1', '1', '1');

INSERT INTO ledger_book_shelf (ledger_uuid, debit_balance, credit_balance, first_account_name, first_account_uuid, account_side, second_account_name, second_account_uuid, third_account_name, third_account_uuid, first_party_id, second_party_id, third_party_id, forward_ledger_uuid, backward_ledger_uuid, batch_serial_uuid, amortized_date, book_in_date, business_voucher_uuid, carried_over_date, contract_id, contract_uuid, default_date, journal_voucher_uuid, ledger_book_no, ledger_book_owner_id, life_cycle, related_lv_1_asset_outer_idenity, related_lv_1_asset_uuid, related_lv_2_asset_outer_idenity, related_lv_2_asset_uuid, related_lv_3_asset_outer_idenity, related_lv_3_asset_uuid, source_document_uuid) VALUES
('308ce703-0561-4d5d-bb1d-3fcc42b17e0b', 0.00, 500.00, 'FST_LONGTERM_LIABILITY', '40000', 0, 'SND_LONGTERM_LIABILITY_ABSORB_SAVING', '40000.01', null, null, 'a02c02b9-6f98-11e6-bf08-00163e002839', '08b5ae5f-7b16-48a1-a858-b8fd7bf6d53f', null, null, null, '9b8c7f28-4a9c-4d3c-b97e-de8d51c1d70b', '2017-04-05', '2017-04-05 15:29:55', '', null, 437, 'cuuid111', '2017-04-05 00:00:00', '', 'yunxin_ledger_book', '1', 1, 'ZC1504705543315283968', '6828c206-6f02-4174-abe4-e9994c714537', null, null, null, null, ''),
('c79a8820-30ba-45d4-9247-191c5eef8f7e', 500.00, 0.00, 'FST_UNEARNED_LOAN_ASSET', '10000', 1, 'SND_UNEARNED_LOAN_ASSET_PRINCIPLE', '10000.02', null, null, 'a02c02b9-6f98-11e6-bf08-00163e002839', '08b5ae5f-7b16-48a1-a858-b8fd7bf6d53f', null, null, null, '9b8c7f28-4a9c-4d3c-b97e-de8d51c1d70b', '2017-04-05', '2017-04-05 15:29:55', '', null, 437, 'cuuid111', '2017-04-05 00:00:00', '', 'yunxin_ledger_book', '1', 1, 'ZC1504705543315283968', '6828c206-6f02-4174-abe4-e9994c714537', null, null, null, null, ''),
('d5dffde2-a47a-4495-b096-3b8556a3582a', 0.00, 500.00, 'FST_UNEARNED_LOAN_ASSET', '10000', 1, 'SND_UNEARNED_LOAN_ASSET_PRINCIPLE', '10000.02', null, null, 'a02c02b9-6f98-11e6-bf08-00163e002839', '08b5ae5f-7b16-48a1-a858-b8fd7bf6d53f', null, '2ae404b5-8c45-4c3a-b806-d92dfc12605f', '2ae404b5-8c45-4c3a-b806-d92dfc12605f', 'ff2883da-63aa-4960-abf1-03dda8a95f54', '2017-04-05', '2017-04-05 15:29:55', null, null, 437, 'cuuid111', '2017-04-05 00:00:00', null, 'yunxin_ledger_book', '1', 1, 'ZC1504705543315283968', '6828c206-6f02-4174-abe4-e9994c714537', null, null, null, null, null),
('2ae404b5-8c45-4c3a-b806-d92dfc12605f', 500.00, 0.00, 'FST_RECIEVABLE_ASSET', '20000', 1, 'SND_RECIEVABLE_LOAN_ASSET', '20000.01', 'TRD_RECIEVABLE_LOAN_ASSET_PRINCIPLE', '20000.01.01', 'a02c02b9-6f98-11e6-bf08-00163e002839', '08b5ae5f-7b16-48a1-a858-b8fd7bf6d53f', null, null, null, 'ff2883da-63aa-4960-abf1-03dda8a95f54', '2017-04-05', '2017-04-05 15:29:55', null, null, 437, 'cuuid111', '2017-04-05 00:00:00', null, 'yunxin_ledger_book', '1', 1, 'ZC1504705543315283968', '6828c206-6f02-4174-abe4-e9994c714537', null, null, null, null, null),
('afa9fdd2-5305-4e44-befe-d3511f0cd609', 0.00, 200.00, 'FST_RECIEVABLE_ASSET', '20000', 1, 'SND_RECIEVABLE_LOAN_ASSET', '20000.01', 'TRD_RECIEVABLE_LOAN_ASSET_PRINCIPLE', '20000.01.01', 'a02c02b9-6f98-11e6-bf08-00163e002839', '08b5ae5f-7b16-48a1-a858-b8fd7bf6d53f', null, '71f2b5f5-e00e-4325-b324-3f97a0f2d73b', '71f2b5f5-e00e-4325-b324-3f97a0f2d73b', '371804f6-a2b5-44d8-b91c-562e70bf543c', '2017-04-05', '2017-04-05 15:43:13', '', null, 437, 'cuuid111', '2017-04-05 00:00:00', '3248478b-1b81-4aac-b97e-4f77c994dc5e', 'yunxin_ledger_book', '1', 1, 'ZC1504705543315283968', '6828c206-6f02-4174-abe4-e9994c714537', null, null, null, null, 'cb680232-7ffd-4c32-915d-02f5ede0bea3'),
('71f2b5f5-e00e-4325-b324-3f97a0f2d73b', 200.00, 0.00, 'FST_BANK_SAVING', '60000', 1, '001053110000001', '60000.99', 'TRD_BANK_SAVING_GENERAL_PRINCIPAL', '60000.1000.01', 'a02c02b9-6f98-11e6-bf08-00163e002839', '', null, null, null, '371804f6-a2b5-44d8-b91c-562e70bf543c', '2017-04-05', '2017-04-05 15:43:13', '', null, 437, 'cuuid111', '2017-04-05 00:00:00', '3248478b-1b81-4aac-b97e-4f77c994dc5e', 'yunxin_ledger_book', '1', 1, 'ZC1504705543315283968', '6828c206-6f02-4174-abe4-e9994c714537', null, null, null, null, 'cb680232-7ffd-4c32-915d-02f5ede0bea3');

SET FOREIGN_KEY_CHECKS=1;