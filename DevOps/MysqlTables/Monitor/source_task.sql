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

 Date: 07/09/2018 10:48:45
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for source_task
-- ----------------------------
DROP TABLE IF EXISTS `source_task`;
CREATE TABLE `source_task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `source_id` int(20) NOT NULL,
  `task_id` int(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `source_id` (`source_id`),
  KEY `task_id_idx` (`task_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6424295 DEFAULT CHARSET=utf8;

SET FOREIGN_KEY_CHECKS = 1;
