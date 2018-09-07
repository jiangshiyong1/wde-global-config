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

 Date: 07/09/2018 10:48:14
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for schedule_task
-- ----------------------------
DROP TABLE IF EXISTS `schedule_task`;
CREATE TABLE `schedule_task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `task_id` int(20) NOT NULL,
  `task_cfg` text NOT NULL,
  `task_type` int(4) NOT NULL,
  `task_desc` varchar(200) NOT NULL,
  `priority` int(4) NOT NULL,
  `time_create` datetime NOT NULL,
  `time_modify` datetime NOT NULL,
  `parameters` text NOT NULL,
  `gather_type` int(4) NOT NULL,
  `verify` varchar(100) NOT NULL,
  `flag` int(1) NOT NULL,
  `source_media` int(4) NOT NULL,
  `source_media_name` varchar(100) NOT NULL,
  `user_create` int(1) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `board_id` (`task_id`) USING BTREE,
  KEY `gather_type` (`gather_type`)
) ENGINE=InnoDB AUTO_INCREMENT=2266245 DEFAULT CHARSET=utf8;

SET FOREIGN_KEY_CHECKS = 1;
