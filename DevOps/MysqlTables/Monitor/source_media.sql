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

 Date: 07/09/2018 10:48:25
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for source_media
-- ----------------------------
DROP TABLE IF EXISTS `source_media`;
CREATE TABLE `source_media` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `source_media_id` int(11) NOT NULL,
  `en_name` varchar(255) DEFAULT NULL,
  `cn_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of source_media
-- ----------------------------
BEGIN;
INSERT INTO `source_media` VALUES (1, 1, 'News', '新闻');
INSERT INTO `source_media` VALUES (2, 2, 'Bbs', '论坛');
INSERT INTO `source_media` VALUES (3, 3, 'Blog', '博客');
INSERT INTO `source_media` VALUES (4, 4, 'Enews', '电子报');
INSERT INTO `source_media` VALUES (5, 5, 'App', '客户端');
INSERT INTO `source_media` VALUES (6, 6, 'WeiBo', '微博');
INSERT INTO `source_media` VALUES (7, 7, 'WeChat', '微信');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
