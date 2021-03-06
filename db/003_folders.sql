CREATE TABLE IF NOT EXISTS `folders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `account_id` int(10) unsigned NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count` int(10) unsigned DEFAULT '0',
  `synced` int(10) unsigned DEFAULT '0',
  `sync_failed_attempts` INT(10) NULL DEFAULT '0',
  `sync_status` ENUM('not_synced','syncing', 'syncing_need_resync','synced_need_resync', 'synced','error') NOT NULL DEFAULT 'not_synced',
  `sync_host` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sync_pid` int(11) DEFAULT NULL,
  `synced_at` timestamp NULL DEFAULT NULL,
  `uid_validity` int(10) unsigned DEFAULT '0',
  `deleted` tinyint(1) unsigned DEFAULT '0',
  `ignored` tinyint(1) unsigned DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE( `account_id`, `name` )
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
