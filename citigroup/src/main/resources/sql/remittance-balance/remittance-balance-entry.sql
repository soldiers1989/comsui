CREATE TABLE `balance_entry` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `general_balance_uuid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `financial_contract_uuid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remittance_application_uuid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remittance_plan_uuid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `debit_balance` decimal(19,2) DEFAULT 0,
  `credit_balance` decimal(19,2) DEFAULT 0,
  `first_account_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_account_uuid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `second_account_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `second_account_uuid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `third_account_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `third_account_uuid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
   `account_side` int(11) NOT NULL,
   `book_in_date` datetime DEFAULT NULL,
   `combine_prevent_repetition` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
   `int_field_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
   `int_field_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
   `int_field_3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
   `string_field_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
   `string_field_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
   `string_field_3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
   `decimal_field_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
   `decimal_field_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
   `decimal_field_3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
   
  PRIMARY KEY (`id`),
  UNIQUE KEY `uuid` (`uuid`) USING BTREE,
  UNIQUE KEY `combine_prevent_repetition`(`combine_prevent_repetition`) USING BTREE,
  INDEX(`general_balance_uuid`) USING BTREE,
  INDEX(`remittance_application_uuid`) USING BTREE,
  INDEX(`remittance_plan_uuid`) USING BTREE,
  INDEX(`financial_contract_uuid`) USING BTREE,
  INDEX(`uuid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=34579 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='单条放款信息表';