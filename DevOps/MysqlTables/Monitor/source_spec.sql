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

 Date: 07/09/2018 10:48:36
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for source_spec
-- ----------------------------
DROP TABLE IF EXISTS `source_spec`;
CREATE TABLE `source_spec` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channel_id` int(4) NOT NULL,
  `channel_spec` varchar(100) NOT NULL,
  `source_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `channel_id` (`source_id`) USING BTREE,
  KEY `channel_spec` (`channel_spec`)
) ENGINE=MyISAM AUTO_INCREMENT=5686 DEFAULT CHARSET=utf8;

SET FOREIGN_KEY_CHECKS = 1;
