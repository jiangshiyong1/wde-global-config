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

 Date: 07/09/2018 10:47:43
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for invalid_source
-- ----------------------------
DROP TABLE IF EXISTS `invalid_source`;
CREATE TABLE `invalid_source` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `source_id` bigint(20) NOT NULL,
  `channel_id` int(4) NOT NULL,
  `channel_spec` varchar(100) NOT NULL,
  `detect_time` datetime NOT NULL,
  `invalid_type` int(11) NOT NULL,
  `invalid_reason` varchar(100) NOT NULL,
  `flag` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `source_id` (`source_id`) USING BTREE,
  KEY `source_id_2` (`detect_time`) USING BTREE,
  KEY `channel_spec` (`channel_spec`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=15727 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

SET FOREIGN_KEY_CHECKS = 1;
