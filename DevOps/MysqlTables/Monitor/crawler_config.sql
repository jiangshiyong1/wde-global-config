/*
 Navicat Premium Data Transfer

 Source Server         : wde
 Source Server Type    : MySQL
 Source Server Version : 50173
 Source Host           : 10.61.1.24:3306
 Source Schema         : wde_monitor_wm

 Target Server Type    : MySQL
 Target Server Version : 50173
 File Encoding         : 65001

 Date: 07/09/2018 10:46:52
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for crawler_config
-- ----------------------------
DROP TABLE IF EXISTS `crawler_config`;
CREATE TABLE `crawler_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `source_id` int(11) NOT NULL,
  `time_create` datetime NOT NULL,
  `time_modify` datetime NOT NULL,
  `source_url` varchar(500) NOT NULL,
  `source_name` varchar(100) NOT NULL,
  `description` varchar(50) NOT NULL,
  `flag` tinyint(1) NOT NULL,
  `config` text NOT NULL,
  `source_cluster_name` varchar(100) NOT NULL,
  `source_cluster` bigint(20) NOT NULL,
  `source_media_name` varchar(100) NOT NULL,
  `source_media` tinyint(4) NOT NULL,
  `business_type` varchar(100) NOT NULL,
  `gather_type` tinyint(4) NOT NULL,
  `priority` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `source_id` (`source_id`),
  KEY `source_media` (`source_media`),
  KEY `source_cluster` (`source_cluster`)
) ENGINE=InnoDB AUTO_INCREMENT=11103 DEFAULT CHARSET=utf8;

SET FOREIGN_KEY_CHECKS = 1;
