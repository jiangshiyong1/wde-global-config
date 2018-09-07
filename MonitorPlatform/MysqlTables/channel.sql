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

 Date: 07/09/2018 10:46:42
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for channel
-- ----------------------------
DROP TABLE IF EXISTS `channel`;
CREATE TABLE `channel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channel_id` int(11) NOT NULL,
  `channel_spec` varchar(100) NOT NULL,
  `channel_name` varchar(100) NOT NULL,
  `en_media_name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `channel_name` (`channel_name`) USING BTREE,
  UNIQUE KEY `channel_id` (`channel_spec`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of channel
-- ----------------------------
BEGIN;
INSERT INTO `channel` VALUES (1, 11, 'M-APP01-AI', '客户端', 'APP');
INSERT INTO `channel` VALUES (2, 2, 'M-BBS02-AI', '论坛回帖', 'Bbs');
INSERT INTO `channel` VALUES (3, 2, 'M-BBS01-AI', '论坛', 'Bbs');
INSERT INTO `channel` VALUES (4, 3, 'M-BLOG01-AI', '博客', 'Blog');
INSERT INTO `channel` VALUES (5, 1, 'M-JW01-AI', '境外新闻', 'News');
INSERT INTO `channel` VALUES (7, 1, 'M-NEWS02-A', '新闻评论', 'News');
INSERT INTO `channel` VALUES (8, 1, 'M-NEWS01-AI', '新闻', 'News');
INSERT INTO `channel` VALUES (9, 30, 'M-SV01-A', '短视频', 'Video');
INSERT INTO `channel` VALUES (10, 30, 'U-SV02-A', '短视频用户', 'Video');
INSERT INTO `channel` VALUES (11, 5, 'M-WB01-A', '微博消息', 'WeiBo');
INSERT INTO `channel` VALUES (12, 5, 'U-WB03-A', '微博用户', 'WeiBo');
INSERT INTO `channel` VALUES (13, 40, 'M-WX01-A', '微信群发消息', 'WeiXin');
INSERT INTO `channel` VALUES (14, 40, 'M-WX02-A', '微信交互消息', 'WeiXin');
INSERT INTO `channel` VALUES (15, 40, 'U-WX03-A', '微信用户', 'WeiXin');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
