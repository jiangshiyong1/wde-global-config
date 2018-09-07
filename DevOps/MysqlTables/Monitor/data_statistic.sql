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

 Date: 07/09/2018 10:47:06
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for data_statistic
-- ----------------------------
DROP TABLE IF EXISTS `data_statistic`;
CREATE TABLE `data_statistic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `source_id` bigint(20) NOT NULL,
  `channel_id` int(4) NOT NULL,
  `channel_spec` varchar(100) CHARACTER SET latin1 NOT NULL,
  `data_statistic_time` date NOT NULL,
  `data_gather_count` int(11) DEFAULT NULL,
  `active_level` double DEFAULT NULL,
  `similarity` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `primaryKey` (`source_id`,`channel_id`,`channel_spec`,`data_statistic_time`),
  KEY `statistic` (`source_id`) USING BTREE,
  KEY `data_statistic_time` (`data_statistic_time`),
  KEY `channel_spec` (`channel_spec`)
) ENGINE=MyISAM AUTO_INCREMENT=1023794 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

SET FOREIGN_KEY_CHECKS = 1;
