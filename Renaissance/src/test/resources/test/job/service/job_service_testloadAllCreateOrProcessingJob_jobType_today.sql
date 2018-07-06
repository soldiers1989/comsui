SET FOREIGN_KEY_CHECKS = 0;

DELETE FROM `job`;

INSERT INTO `job` (`fst_stage_priority`,`snd_stage_priority`,`trd_stage_priority`,`fourth_stage_priority`,`fifth_stage_priority`,`fifth_stage_chunk_size`,`fourth_stage_chunk_size`,`trd_stage_chunk_size`,`snd_stage_chunk_size`,`fst_stage_chunk_size`,`fst_stage_timeout`,`snd_stage_timeout`,`trd_stage_timeout`,`fourth_stage_timeout`,`fifth_stage_timeout`,`id`, `create_time`, `end_time`, `excuting_result`, `excuting_status`, `fifth_stage_current_task_expired_time`, `fifth_stage_excuting_result`, `fifth_stage_excuting_status`, `fifth_stage_retry_times`, `fifth_stage_uuid`, `fifth_stagecreate_time`, `fifth_stagelast_modified_time`, `fourth_stage_current_task_expired_time`, `fourth_stage_excuting_result`, `fourth_stage_excuting_status`, `fourth_stage_retry_times`, `fourth_stage_uuid`, `fourth_stagecreate_time`, `fourth_stagelast_modified_time`, `fst_business_code`, `fst_stage_current_task_expired_time`, `fst_stage_excuting_result`, `fst_stage_excuting_status`, `fst_stage_retry_times`, `fst_stage_uuid`, `fst_stagecreate_time`, `fst_stagelast_modified_time`, `issuer_ip`, `issuer_identity`, `job_name`, `job_type`, `last_modified_time`, `snd_business_code`, `snd_stage_current_task_expired_time`, `snd_stage_excuting_result`, `snd_stage_excuting_status`, `snd_stage_retry_times`, `snd_stage_uuid`, `snd_stagecreate_time`, `snd_stagelast_modified_time`, `start_time`, `trd_business_code`, `trd_stage_current_task_expired_time`, `trd_stage_excuting_result`, `trd_stage_excuting_status`, `trd_stage_retry_times`, `trd_stage_uuid`, `trd_stagecreate_time`, `trd_stagelast_modified_time`, `uuid`)
VALUES
	(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1, '2016-10-24 21:57:44', '2016-10-24 21:57:44', NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'fstBusinessCode1', NULL, NULL, NULL, 0, NULL, NULL, NULL, 'issuerIP', 'issuerIdentity', 'jobName1', 2, '2016-10-24 21:57:44', DATE(NOW()), NULL, NULL, NULL, 0, NULL, NULL, NULL, '2016-10-24 21:57:44', 'trdBusinessCode', NULL, NULL, NULL, 0, NULL, NULL, NULL, '6dfb7580-ff7e-4b59-8c87-f15bb47af6b0'),
	(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2, '2016-10-24 21:57:45', '2016-10-24 21:57:45', NULL, 2, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'fstBusinessCode2', NULL, NULL, NULL, 0, NULL, NULL, NULL, 'issuerIP', 'issuerIdentity', 'jobName2', 0, '2016-10-24 21:57:45', 'sndBusinessCode2', NULL, NULL, NULL, 0, NULL, NULL, NULL, '2016-10-24 21:57:45', '', NULL, NULL, NULL, 0, NULL, NULL, NULL, '154cfd47-e5b6-456e-b422-7a882411ee88'),
	(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3, '2016-10-24 21:57:45', '2016-10-24 21:57:45', NULL, 3, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'fstBusinessCode3', NULL, NULL, NULL, 0, NULL, NULL, NULL, 'issuerIP', 'issuerIdentity', 'jobName3', 0, '2016-10-24 21:57:45', '', NULL, NULL, NULL, 0, NULL, NULL, NULL, '2016-10-24 21:57:45', '', NULL, NULL, NULL, 0, NULL, NULL, NULL, '198d194f-d0c4-4845-b881-06f481ddc517'),
	(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4, '2016-10-24 21:57:45', '2016-10-24 21:57:45', NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'fstBusinessCode4', NULL, NULL, NULL, 0, NULL, NULL, NULL, 'issuerIP', 'issuerIdentity', 'jobName3', 0, '2016-10-24 21:57:45', '', NULL, NULL, NULL, 0, NULL, NULL, NULL, '2016-10-24 21:57:45', '', NULL, NULL, NULL, 0, NULL, NULL, NULL, '198d194f-d0c4-4845-b881-06f481ddc518');

SET FOREIGN_KEY_CHECKS = 1;