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

 Date: 07/09/2018 10:47:55
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for schedule_info
-- ----------------------------
DROP TABLE IF EXISTS `schedule_info`;
CREATE TABLE `schedule_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `task_id` int(11) NOT NULL,
  `time_modify` datetime NOT NULL,
  `status` int(4) NOT NULL,
  `pid` int(11) NOT NULL,
  `gather_node` varchar(50) CHARACTER SET latin1 NOT NULL,
  `task_type` int(4) NOT NULL,
  `source_media_name` varchar(100) CHARACTER SET latin1 NOT NULL,
  `source_media` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `task_id` (`task_id`) USING BTREE,
  KEY `time_modify` (`time_modify`),
  KEY `status` (`status`),
  KEY `pid_idx` (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=932076 DEFAULT CHARSET=macroman COLLATE=macroman_bin;

SET FOREIGN_KEY_CHECKS = 1;
