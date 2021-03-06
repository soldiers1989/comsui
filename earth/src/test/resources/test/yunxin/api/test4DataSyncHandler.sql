

SET FOREIGN_KEY_CHECKS=0;

DELETE FROM `asset_set`;
DELETE FROM `data_sync_log`;
INSERT INTO `asset_set` (`id`, `guarantee_status`, `settlement_status`, `asset_fair_value`, `asset_principal_value`, `asset_interest_value`, `asset_initial_value`, `asset_recycle_date`, `confirm_recycle_date`, `refund_amount`, `asset_status`, `on_account_status`, `last_valuation_time`, `asset_uuid`, `create_time`, `last_modified_time`, `comment`, `single_loan_contract_no`, `contract_id`, `actual_recycle_date`, `current_period`, `overdue_status`, `overdue_date`, `version_no`, `active_status`, `repayment_plan_type`, `extra_charge`)
VALUES
('1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2', NULL, 'assetSetUuid1', NULL, NULL, NULL, NULL, '24', NULL, '1', '0', NULL, NULL, '0', '0', NULL),
('2', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '1', NULL, '1c5bb33a-6514-4657-9f3f-2f197e894191', NULL, NULL, NULL, NULL, '24', NULL, '1', '2', NULL, NULL, '0', '0', NULL),
('3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2', NULL, '7555c6fb-80a5-4db8-a053-14fc610ae279', NULL, NULL, NULL, NULL, '24', NULL, '1', '0', NULL, NULL, '0', '0', NULL),
('4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2', NULL, 'fd5ea4a3-858e-4a3b-8137-332c90277085', NULL, NULL, NULL, NULL, '24', NULL, '1', '0', NULL, NULL, '0', '0', NULL),
('5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2', NULL, 'a9620ed1-c41e-4b38-a582-40e7a58bd548', NULL, NULL, NULL, NULL, '24', NULL, '1', '0', NULL, NULL, '0', '0', NULL);



INSERT INTO `data_sync_log` (`id`, `product_id`, `contract_no`, `contract_end_date`, `contract_unique_id`, `repayment_plan_no`, `asset_set_uuid`, `contract_flag`, `repay_type`, `plan_repay_date`, `actual_repay_date`, `data_sync_bigDecimal_details`, `sync_frequency`, `create_time`, `last_modify_time`, `is_success`)
VALUES
('1', NULL, NULL, NULL, NULL, NULL, 'assetSetUuid1', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, '1');
SET FOREIGN_KEY_CHECKS=1;