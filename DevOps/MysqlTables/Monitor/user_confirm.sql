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

 Date: 07/09/2018 10:49:00
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for user_confirm
-- ----------------------------
DROP TABLE IF EXISTS `user_confirm`;
CREATE TABLE `user_confirm` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `source_id` bigint(11) NOT NULL,
  `channel_id` int(4) NOT NULL,
  `channel_spec` varchar(100) NOT NULL,
  `invalid_type` int(11) NOT NULL,
  `detect_time` datetime NOT NULL,
  `confirm_time` datetime NOT NULL,
  `confirm_status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=297 DEFAULT CHARSET=latin1;

SET FOREIGN_KEY_CHECKS = 1;
