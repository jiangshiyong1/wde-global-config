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

 Date: 07/09/2018 10:47:25
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for gathertype_name
-- ----------------------------
DROP TABLE IF EXISTS `gathertype_name`;
CREATE TABLE `gathertype_name` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gather_type` int(4) NOT NULL,
  `gather_name` varchar(100) NOT NULL,
  `en_name` varchar(100) NOT NULL,
  `source_cluster_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `gather_type` (`gather_type`) USING BTREE,
  UNIQUE KEY `gather_name` (`gather_name`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gathertype_name
-- ----------------------------
BEGIN;
INSERT INTO `gathertype_name` VALUES (1, 1, '客户端采集器', 'AppGather', 1);
INSERT INTO `gathertype_name` VALUES (2, 2, '论坛回帖采集器', 'BbsReplyGather', 2);
INSERT INTO `gathertype_name` VALUES (3, 3, '论坛采集器', 'BbsGather', 2);
INSERT INTO `gathertype_name` VALUES (4, 4, '博客采集器', 'BlogGather', 2);
INSERT INTO `gathertype_name` VALUES (5, 5, '境外新闻采集器', 'JwNewsGather', 2);
INSERT INTO `gathertype_name` VALUES (6, 6, '新闻评论采集器', 'NewReplyGather', 2);
INSERT INTO `gathertype_name` VALUES (7, 7, '境内新闻采集器', 'JnNewsGather', 2);
INSERT INTO `gathertype_name` VALUES (8, 8, '微博消息采集器', 'WbMsgGather', 2);
INSERT INTO `gathertype_name` VALUES (9, 9, '微博用户采集器', 'WbUserGather', 2);
INSERT INTO `gathertype_name` VALUES (10, 10, '微信群发消息采集器', 'WxGroupMsgGather', 2);
INSERT INTO `gathertype_name` VALUES (11, 11, '微信交互消息采集器', 'WxInterMsgGather', 2);
INSERT INTO `gathertype_name` VALUES (12, 12, '微信用户采集器', 'WxUserGather', 2);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
