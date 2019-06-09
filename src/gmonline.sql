/*
 Navicat Premium Data Transfer

 Source Server         : MySQL
 Source Server Type    : MySQL
 Source Server Version : 80013
 Source Host           : localhost:3306
 Source Schema         : gmonline

 Target Server Type    : MySQL
 Target Server Version : 80013
 File Encoding         : 65001

 Date: 29/05/2019 00:31:36
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
BEGIN;
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (9, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (10, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (11, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (13, 'Can add content type', 4, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (14, 'Can change content type', 4, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (15, 'Can delete content type', 4, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (16, 'Can view content type', 4, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (17, 'Can add session', 5, 'add_session');
INSERT INTO `auth_permission` VALUES (18, 'Can change session', 5, 'change_session');
INSERT INTO `auth_permission` VALUES (19, 'Can delete session', 5, 'delete_session');
INSERT INTO `auth_permission` VALUES (20, 'Can view session', 5, 'view_session');
INSERT INTO `auth_permission` VALUES (21, 'Can add 用户信息', 6, 'add_userprofile');
INSERT INTO `auth_permission` VALUES (22, 'Can change 用户信息', 6, 'change_userprofile');
INSERT INTO `auth_permission` VALUES (23, 'Can delete 用户信息', 6, 'delete_userprofile');
INSERT INTO `auth_permission` VALUES (24, 'Can add 轮播图', 7, 'add_banner');
INSERT INTO `auth_permission` VALUES (25, 'Can change 轮播图', 7, 'change_banner');
INSERT INTO `auth_permission` VALUES (26, 'Can delete 轮播图', 7, 'delete_banner');
INSERT INTO `auth_permission` VALUES (27, 'Can add 邮箱验证码', 8, 'add_emailverifyrecord');
INSERT INTO `auth_permission` VALUES (28, 'Can change 邮箱验证码', 8, 'change_emailverifyrecord');
INSERT INTO `auth_permission` VALUES (29, 'Can delete 邮箱验证码', 8, 'delete_emailverifyrecord');
INSERT INTO `auth_permission` VALUES (30, 'Can view 轮播图', 7, 'view_banner');
INSERT INTO `auth_permission` VALUES (31, 'Can view 邮箱验证码', 8, 'view_emailverifyrecord');
INSERT INTO `auth_permission` VALUES (32, 'Can view 用户信息', 6, 'view_userprofile');
INSERT INTO `auth_permission` VALUES (33, 'Can add 课程', 9, 'add_course');
INSERT INTO `auth_permission` VALUES (34, 'Can change 课程', 9, 'change_course');
INSERT INTO `auth_permission` VALUES (35, 'Can delete 课程', 9, 'delete_course');
INSERT INTO `auth_permission` VALUES (36, 'Can add 课程资源', 10, 'add_courseresource');
INSERT INTO `auth_permission` VALUES (37, 'Can change 课程资源', 10, 'change_courseresource');
INSERT INTO `auth_permission` VALUES (38, 'Can delete 课程资源', 10, 'delete_courseresource');
INSERT INTO `auth_permission` VALUES (39, 'Can add 章节', 11, 'add_lesson');
INSERT INTO `auth_permission` VALUES (40, 'Can change 章节', 11, 'change_lesson');
INSERT INTO `auth_permission` VALUES (41, 'Can delete 章节', 11, 'delete_lesson');
INSERT INTO `auth_permission` VALUES (42, 'Can add 视频', 12, 'add_video');
INSERT INTO `auth_permission` VALUES (43, 'Can change 视频', 12, 'change_video');
INSERT INTO `auth_permission` VALUES (44, 'Can delete 视频', 12, 'delete_video');
INSERT INTO `auth_permission` VALUES (45, 'Can add 轮播课程', 9, 'add_bannercourse');
INSERT INTO `auth_permission` VALUES (46, 'Can change 轮播课程', 9, 'change_bannercourse');
INSERT INTO `auth_permission` VALUES (47, 'Can delete 轮播课程', 9, 'delete_bannercourse');
INSERT INTO `auth_permission` VALUES (48, 'Can view 轮播课程', 13, 'view_bannercourse');
INSERT INTO `auth_permission` VALUES (49, 'Can view 课程', 9, 'view_course');
INSERT INTO `auth_permission` VALUES (50, 'Can view 课程资源', 10, 'view_courseresource');
INSERT INTO `auth_permission` VALUES (51, 'Can view 章节', 11, 'view_lesson');
INSERT INTO `auth_permission` VALUES (52, 'Can view 视频', 12, 'view_video');
INSERT INTO `auth_permission` VALUES (53, 'Can add 城市', 14, 'add_citydict');
INSERT INTO `auth_permission` VALUES (54, 'Can change 城市', 14, 'change_citydict');
INSERT INTO `auth_permission` VALUES (55, 'Can delete 城市', 14, 'delete_citydict');
INSERT INTO `auth_permission` VALUES (56, 'Can add 课程机构', 15, 'add_courseorg');
INSERT INTO `auth_permission` VALUES (57, 'Can change 课程机构', 15, 'change_courseorg');
INSERT INTO `auth_permission` VALUES (58, 'Can delete 课程机构', 15, 'delete_courseorg');
INSERT INTO `auth_permission` VALUES (59, 'Can add 教师', 16, 'add_teacher');
INSERT INTO `auth_permission` VALUES (60, 'Can change 教师', 16, 'change_teacher');
INSERT INTO `auth_permission` VALUES (61, 'Can delete 教师', 16, 'delete_teacher');
INSERT INTO `auth_permission` VALUES (62, 'Can view 城市', 14, 'view_citydict');
INSERT INTO `auth_permission` VALUES (63, 'Can view 课程机构', 15, 'view_courseorg');
INSERT INTO `auth_permission` VALUES (64, 'Can view 教师', 16, 'view_teacher');
INSERT INTO `auth_permission` VALUES (65, 'Can add 课程评论', 17, 'add_coursecomments');
INSERT INTO `auth_permission` VALUES (66, 'Can change 课程评论', 17, 'change_coursecomments');
INSERT INTO `auth_permission` VALUES (67, 'Can delete 课程评论', 17, 'delete_coursecomments');
INSERT INTO `auth_permission` VALUES (68, 'Can add 用户咨询', 18, 'add_userask');
INSERT INTO `auth_permission` VALUES (69, 'Can change 用户咨询', 18, 'change_userask');
INSERT INTO `auth_permission` VALUES (70, 'Can delete 用户咨询', 18, 'delete_userask');
INSERT INTO `auth_permission` VALUES (71, 'Can add 用户课程', 19, 'add_usercourse');
INSERT INTO `auth_permission` VALUES (72, 'Can change 用户课程', 19, 'change_usercourse');
INSERT INTO `auth_permission` VALUES (73, 'Can delete 用户课程', 19, 'delete_usercourse');
INSERT INTO `auth_permission` VALUES (74, 'Can add 用户收藏', 20, 'add_userfavorite');
INSERT INTO `auth_permission` VALUES (75, 'Can change 用户收藏', 20, 'change_userfavorite');
INSERT INTO `auth_permission` VALUES (76, 'Can delete 用户收藏', 20, 'delete_userfavorite');
INSERT INTO `auth_permission` VALUES (77, 'Can add 用户消息', 21, 'add_usermessage');
INSERT INTO `auth_permission` VALUES (78, 'Can change 用户消息', 21, 'change_usermessage');
INSERT INTO `auth_permission` VALUES (79, 'Can delete 用户消息', 21, 'delete_usermessage');
INSERT INTO `auth_permission` VALUES (80, 'Can view 课程评论', 17, 'view_coursecomments');
INSERT INTO `auth_permission` VALUES (81, 'Can view 用户咨询', 18, 'view_userask');
INSERT INTO `auth_permission` VALUES (82, 'Can view 用户课程', 19, 'view_usercourse');
INSERT INTO `auth_permission` VALUES (83, 'Can view 用户收藏', 20, 'view_userfavorite');
INSERT INTO `auth_permission` VALUES (84, 'Can view 用户消息', 21, 'view_usermessage');
INSERT INTO `auth_permission` VALUES (85, 'Can add Bookmark', 22, 'add_bookmark');
INSERT INTO `auth_permission` VALUES (86, 'Can change Bookmark', 22, 'change_bookmark');
INSERT INTO `auth_permission` VALUES (87, 'Can delete Bookmark', 22, 'delete_bookmark');
INSERT INTO `auth_permission` VALUES (88, 'Can add User Setting', 23, 'add_usersettings');
INSERT INTO `auth_permission` VALUES (89, 'Can change User Setting', 23, 'change_usersettings');
INSERT INTO `auth_permission` VALUES (90, 'Can delete User Setting', 23, 'delete_usersettings');
INSERT INTO `auth_permission` VALUES (91, 'Can add User Widget', 24, 'add_userwidget');
INSERT INTO `auth_permission` VALUES (92, 'Can change User Widget', 24, 'change_userwidget');
INSERT INTO `auth_permission` VALUES (93, 'Can delete User Widget', 24, 'delete_userwidget');
INSERT INTO `auth_permission` VALUES (94, 'Can add log entry', 25, 'add_log');
INSERT INTO `auth_permission` VALUES (95, 'Can change log entry', 25, 'change_log');
INSERT INTO `auth_permission` VALUES (96, 'Can delete log entry', 25, 'delete_log');
INSERT INTO `auth_permission` VALUES (97, 'Can view Bookmark', 22, 'view_bookmark');
INSERT INTO `auth_permission` VALUES (98, 'Can view log entry', 25, 'view_log');
INSERT INTO `auth_permission` VALUES (99, 'Can view User Setting', 23, 'view_usersettings');
INSERT INTO `auth_permission` VALUES (100, 'Can view User Widget', 24, 'view_userwidget');
INSERT INTO `auth_permission` VALUES (101, 'Can add captcha store', 26, 'add_captchastore');
INSERT INTO `auth_permission` VALUES (102, 'Can change captcha store', 26, 'change_captchastore');
INSERT INTO `auth_permission` VALUES (103, 'Can delete captcha store', 26, 'delete_captchastore');
INSERT INTO `auth_permission` VALUES (104, 'Can view captcha store', 26, 'view_captchastore');
COMMIT;

-- ----------------------------
-- Table structure for captcha_captchastore
-- ----------------------------
DROP TABLE IF EXISTS `captcha_captchastore`;
CREATE TABLE `captcha_captchastore` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `challenge` varchar(32) NOT NULL,
  `response` varchar(32) NOT NULL,
  `hashkey` varchar(40) NOT NULL,
  `expiration` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hashkey` (`hashkey`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of captcha_captchastore
-- ----------------------------
BEGIN;
INSERT INTO `captcha_captchastore` VALUES (2, 'RNDH', 'rndh', '52ad68f573d5b0639456b233d393614ce4059b8f', '2019-02-18 12:52:02.489432');
INSERT INTO `captcha_captchastore` VALUES (3, 'ZSHN', 'zshn', '7e2c1c5337ff7640ceaf512574bdb192407d02ef', '2019-02-18 12:52:09.686930');
INSERT INTO `captcha_captchastore` VALUES (4, 'SZPV', 'szpv', '01c135023338835e59702aa7d1773083c14d9133', '2019-02-18 17:06:45.487391');
INSERT INTO `captcha_captchastore` VALUES (5, 'UHSG', 'uhsg', '0bca4128ee86777f4795da9ae06ea2fc4b306f8f', '2019-02-19 10:15:07.549608');
INSERT INTO `captcha_captchastore` VALUES (6, 'RVEI', 'rvei', '33cf3f1de59a1c554300278dc5d7feb07cc090fc', '2019-02-19 10:15:41.978794');
INSERT INTO `captcha_captchastore` VALUES (7, 'HXYU', 'hxyu', '0a955aa60ee3627b0d863dde04325cf22418244a', '2019-02-19 10:23:48.833534');
INSERT INTO `captcha_captchastore` VALUES (8, 'QQZF', 'qqzf', '9e79f70508be40f8fe9222f6e02cbdfbc2e88aee', '2019-02-19 13:32:11.311431');
INSERT INTO `captcha_captchastore` VALUES (9, 'PDQK', 'pdqk', '587a5354b8f72d6b39767d6d92ce2962d369fed4', '2019-02-19 13:33:09.355256');
INSERT INTO `captcha_captchastore` VALUES (10, 'QNAK', 'qnak', 'b1a0426ef6af45e016384b098c4d31cc16333298', '2019-02-19 21:08:52.648553');
INSERT INTO `captcha_captchastore` VALUES (11, 'PTFY', 'ptfy', '3e2a1f96783fa9395b0eeb5d6ff9af5b70e65eb8', '2019-02-19 21:09:03.575610');
INSERT INTO `captcha_captchastore` VALUES (12, 'SXRM', 'sxrm', '1caf6c4e8a3b3ef96f55dd2105094ed61fb232d9', '2019-02-19 21:11:12.198159');
INSERT INTO `captcha_captchastore` VALUES (13, 'WSQV', 'wsqv', 'b8bfdaf5bdfddda8764d7c0b5e4b978ca1b23188', '2019-02-19 21:11:27.243446');
INSERT INTO `captcha_captchastore` VALUES (14, 'ZGQD', 'zgqd', '32c7031eff17e8cdd47ece17d115b5e399cc81e3', '2019-02-19 21:12:33.443492');
INSERT INTO `captcha_captchastore` VALUES (15, 'XEMC', 'xemc', '319161e93e2226ed8b2e3a7c57d982ee87736408', '2019-02-19 21:13:18.588065');
INSERT INTO `captcha_captchastore` VALUES (16, 'WJNL', 'wjnl', '57955d1d0a264ef425a05a53b42f3ebfe786c7e8', '2019-02-19 21:15:05.678494');
INSERT INTO `captcha_captchastore` VALUES (17, 'MSGB', 'msgb', '470b2b306330bec3b9a12dca6f04995cca41559f', '2019-02-19 21:15:11.561491');
INSERT INTO `captcha_captchastore` VALUES (18, 'IJRA', 'ijra', 'cb13553bf4dfdbbf2ee02d17817ba81c4f4d3a1a', '2019-02-19 22:07:20.687473');
INSERT INTO `captcha_captchastore` VALUES (19, 'AYPX', 'aypx', '62a935d9bea684669774f0b43a202f3dd104816d', '2019-02-19 22:07:26.619002');
INSERT INTO `captcha_captchastore` VALUES (20, 'IATG', 'iatg', '50c3ec045b95eb14187af0a83289621d917457d3', '2019-02-19 22:17:26.953738');
INSERT INTO `captcha_captchastore` VALUES (21, 'YLTX', 'yltx', 'c4a77c28cf622ac60202c0729f2a332a3e5e2878', '2019-02-19 22:17:32.084503');
INSERT INTO `captcha_captchastore` VALUES (22, 'ZUHM', 'zuhm', '325a1d02e3e7581fa492e151829c1c22ba35e036', '2019-02-19 22:41:39.761547');
INSERT INTO `captcha_captchastore` VALUES (23, 'ABXP', 'abxp', '5b5c68250ee5c3e6e66ddb0426dc9acfd495b851', '2019-02-19 22:41:45.363441');
INSERT INTO `captcha_captchastore` VALUES (24, 'QHLA', 'qhla', 'e22a98e56b3eb5806cff7262f48bbeb77f8b9e71', '2019-02-19 23:42:45.558497');
INSERT INTO `captcha_captchastore` VALUES (25, 'MCGQ', 'mcgq', '8db5e8d9c94e63374b30cd1df4530ff2643e8a7b', '2019-04-04 16:12:29.598221');
INSERT INTO `captcha_captchastore` VALUES (26, 'IOTI', 'ioti', '36d98712c07cf6567d0654389c7021e482a19cfe', '2019-05-20 18:26:17.450650');
COMMIT;

-- ----------------------------
-- Table structure for courses_course
-- ----------------------------
DROP TABLE IF EXISTS `courses_course`;
CREATE TABLE `courses_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `desc` varchar(300) NOT NULL,
  `detail` longtext NOT NULL,
  `is_banner` tinyint(1) NOT NULL,
  `degree` varchar(2) NOT NULL,
  `learn_times` int(11) NOT NULL,
  `students` int(11) NOT NULL,
  `fav_nums` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `click_nums` int(11) NOT NULL,
  `category` varchar(20) NOT NULL,
  `tag` varchar(10) NOT NULL,
  `you_need_know` varchar(300) NOT NULL,
  `teacher_tell` varchar(300) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `course_org_id` int(11) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_course_course_org_id_4d2c4aab_fk_organizat` (`course_org_id`),
  KEY `courses_course_teacher_id_846fa526_fk_organization_teacher_id` (`teacher_id`),
  CONSTRAINT `courses_course_course_org_id_4d2c4aab_fk_organizat` FOREIGN KEY (`course_org_id`) REFERENCES `organization_courseorg` (`id`),
  CONSTRAINT `courses_course_teacher_id_846fa526_fk_organization_teacher_id` FOREIGN KEY (`teacher_id`) REFERENCES `organization_teacher` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of courses_course
-- ----------------------------
BEGIN;
INSERT INTO `courses_course` VALUES (1, '初识Python', '如果您了解程序设计的基本概念，会简单使用命令行，了解中学数学函数的概念，那么对课程学习会有很大的帮助，让您学起来得心应手，快速进入Python世界。', '<p style=\"margin-top: 15px; margin-bottom: 15px; overflow-wrap: break-word; white-space: pre-wrap; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">Python是一种计算机程序设计语言。你可能已经听说过很多种流行的编程语言，比如非常难学的C语言，非常流行的Java语言，适合初学者的Basic语言，适合网页编程的JavaScript语言等等。</p><p style=\"margin-top: 15px; margin-bottom: 15px; overflow-wrap: break-word; white-space: pre-wrap; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">那Python是一种什么语言？</p><p style=\"margin-top: 15px; margin-bottom: 15px; overflow-wrap: break-word; white-space: pre-wrap; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">首先，我们普及一下编程语言的基础知识。用任何编程语言来开发程序，都是为了让计算机干活，比如下载一个MP3，编写一个文档等等，而计算机干活的CPU只认识机器指令，所以，尽管不同的编程语言差异极大，最后都得“翻译”成CPU可以执行的机器指令。而不同的编程语言，干同一个活，编写的代码量，差距也很大。</p><p style=\"margin-top: 15px; margin-bottom: 15px; overflow-wrap: break-word; white-space: pre-wrap; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">比如，完成同一个任务，C语言要写1000行代码，Java只需要写100行，而Python可能只要20行。</p><p style=\"margin-top: 15px; margin-bottom: 15px; overflow-wrap: break-word; white-space: pre-wrap; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">所以Python是一种相当高级的语言。</p><p style=\"margin-top: 15px; margin-bottom: 15px; overflow-wrap: break-word; white-space: pre-wrap; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">你也许会问，代码少还不好？代码少的代价是运行速度慢，C程序运行1秒钟，Java程序可能需要2秒，而Python程序可能就需要10秒。</p><p style=\"margin-top: 15px; margin-bottom: 15px; overflow-wrap: break-word; white-space: pre-wrap; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">那是不是越低级的程序越难学，越高级的程序越简单？表面上来说，是的，但是，在非常高的抽象计算中，高级的Python程序设计也是非常难学的，所以，高级程序语言不等于简单。</p><p style=\"margin-top: 15px; margin-bottom: 15px; overflow-wrap: break-word; white-space: pre-wrap; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">但是，对于初学者和完成普通任务，Python语言是非常简单易用的。连Google都在大规模使用Python，你就不用担心学了会没用。</p><p style=\"margin-top: 15px; margin-bottom: 15px; overflow-wrap: break-word; white-space: pre-wrap; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">用Python可以做什么？可以做日常任务，比如自动备份你的MP3；可以做网站，很多著名的网站包括YouTube就是Python写的；可以做网络游戏的后台，很多在线游戏的后台都是Python开发的。总之就是能干很多很多事啦。</p><p style=\"margin-top: 15px; margin-bottom: 15px; overflow-wrap: break-word; white-space: pre-wrap; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">Python当然也有不能干的事情，比如写操作系统，这个只能用C语言写；写手机应用，只能用Swift/Objective-C（针对iPhone）和Java（针对Android）；写3D游戏，最好用C或C++。</p><p style=\"margin-top: 15px; margin-bottom: 15px; overflow-wrap: break-word; white-space: pre-wrap; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">如果你是小白用户，满足以下条件：</p><ul style=\"margin-top: 15px; margin-bottom: 15px; padding-left: 30px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\" class=\" list-paddingleft-2\"><li><p>会使用电脑，但从来没写过程序；</p></li><li><p>还记得初中数学学的方程式和一点点代数知识；</p></li><li><p>想从编程小白变成专业的软件架构师；</p></li><li><p>每天能抽出半个小时学习。</p></li></ul><p style=\"margin-top: 15px; margin-bottom: 15px; overflow-wrap: break-word; white-space: pre-wrap; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">不要再犹豫了，这个教程就是为你准备的！</p><p style=\"margin-top: 15px; margin-bottom: 15px; overflow-wrap: break-word; white-space: pre-wrap; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">准备好了吗？</p><p><br/> </p>', 1, 'cj', 300, 2, 0, 'courses/2019/02/01riseofpythonv021-27f80e05_cH5ASDo.png', 102, '后端开发', 'Python', '如果您了解程序设计的基本概念，会简单使用命令行，了解中学数学函数的概念，那么对课程学习会有很大的帮助，让您学起来得心应手，快速进入Python世界。', '通过本课程的学习，您将学会搭建基本的Python开发环境，以函数为基础编写完整的Python代码，熟练掌握Python的基本数据类型以及list和dict的操作。', '2019-02-16 16:47:00.000000', 13, 5);
INSERT INTO `courses_course` VALUES (2, 'django入门与实践', 'Django作为一个Python的高级Web框架，功能非常强大，其自身封装了大量底层逻辑，并实现了ORM，同时，MVT结构保证了代码结构的完整性，这一切给了开发人员巨大的便利，让Web开发变得高效且简洁。课程将以一个极简的博客网站为例，带领大家充分领略Django的魅力', '<p><span style=\"color: rgb(28, 31, 33); font-family: &quot;PingFang SC&quot;, 微软雅黑, &quot;Microsoft YaHei&quot;, Helvetica, &quot;Helvetica Neue&quot;, Tahoma, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">Django作为一个Python的高级Web框架，功能非常强大，其自身封装了大量底层逻辑，并实现了ORM，同时，MVT结构保证了代码结构的完整性，这一切给了开发人员巨大的便利，让Web开发变得高效且简洁。课程将以一个极简的博客网站为例，带领大家充分领略Django的魅力</span></p>', 1, 'zj', 194, 2, 1, 'courses/2019/02/v2-32b5775c7b3acf4a5abd4f428b810d1c_1200x500_67pF16J.jpg', 31, '后端开发', 'Python', '1、了解HTML的用法。 2、基本掌握Python的用法。', '1、搭建完整的Django开发环境。 2、创建项目及应用。 3、了解项目目录下各文件的含义和作用。 4、了解并学会开发Templates。 5、了解并学会开发Models。 6、掌握Admin的基本配置方法。 7、学会项目URL的配置方法。 8、开发一个由三个页面组成的简易博客网站。', '2019-02-16 22:34:00.000000', 1, 1);
INSERT INTO `courses_course` VALUES (3, '爬虫框架Scrapy入门与实践', 'Scrapy，Python开发的一个快速,高层次的web抓取框架，用于抓取web站点并从页面中提取结构化的数据。Scrapy用途广泛，可以用于数据挖掘、监测和自动化测试。任何人都可以根据需求方便的修改。它也提供了多种类型爬虫的基类，如BaseSpider、sitemap爬虫等，最新版本又提供了web2.0爬虫的支持。本课程将带你入门并实践Scrapy框架！', '<p><span style=\"color: rgb(28, 31, 33); font-family: &quot;PingFang SC&quot;, 微软雅黑, &quot;Microsoft YaHei&quot;, Helvetica, &quot;Helvetica Neue&quot;, Tahoma, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">Scrapy，Python开发的一个快速,高层次的web抓取框架，用于抓取web站点并从页面中提取结构化的数据。Scrapy用途广泛，可以用于数据挖掘、监测和自动化测试。任何人都可以根据需求方便的修改。它也提供了多种类型爬虫的基类，如BaseSpider、sitemap爬虫等，最新版本又提供了web2.0爬虫的支持。本课程将带你入门并实践Scrapy框架！</span></p>', 0, 'zj', 90, 0, 0, 'courses/2019/02/989492_a0ff_2.jpg', 40, '后端开发', 'Python', '1、具有一定的Python基础 2、具有一定的linux系统管理基础，编译安装软件，yum包管理工具等 3、具有一定的Mongdb数据库管理基础，增删改查', '1、scrapy框架简介、数据在框架内如何进行流动 2、scrapy框架安装、mongodb数据库安装  3、scrapy抓取项目如何创建 4、scrapy抓取项目如何进行数据解析  5、scrapy抓取项目如何绕过反爬机制抓取数据  6、scrapy抓取项目如何存储数据到不同的格式', '2019-02-16 23:15:00.000000', 14, 6);
INSERT INTO `courses_course` VALUES (4, '从零做一个前端开源项目', '做出一个优秀的开源作品，是所有前端程序员都引以为豪的事情，本课程将带你从零开始做一个完整的前端开源作品。包括开源作品的内容，做什么方向的项目更容易被关注，如何正确注册 github 账号，如何提交和升级代码，如何写文档并制作官网，最后介绍作者持续运维开源项目的一些经验。', '<p><span style=\"color: rgb(28, 31, 33); font-family: &quot;PingFang SC&quot;, 微软雅黑, &quot;Microsoft YaHei&quot;, Helvetica, &quot;Helvetica Neue&quot;, Tahoma, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">做出一个优秀的开源作品，是所有前端程序员都引以为豪的事情，本课程将带你从零开始做一个完整的前端开源作品。包括开源作品的内容，做什么方向的项目更容易被关注，如何正确注册 github 账号，如何提交和升级代码，如何写文档并制作官网，最后介绍作者持续运维开源项目的一些经验。</span></p>', 0, 'gj', 120, 0, 0, 'courses/2019/02/151020_3LfC_2896879.png', 16, '前端开发', 'JavaScript', '1、了解 html javascipt css 和 nodejs 基础知识。 2、了解 git 常用操作。', '1、开源项目包括什么  2、什么项目更加适合开源  3、如何正确的注册 github 和 npm 账号  4、如何搭建前端开发环境 5、如何提交和升级代码，以及如何做版本管理  6、如何用 markdown 和 gitbook 编写文档 7、如何使用 github 制作官网 8、如何持续迭代升级', '2019-02-16 23:38:00.000000', 2, 3);
INSERT INTO `courses_course` VALUES (5, 'Spring MVC起步', 'Spring MVC为我们提供了一个基于组件和松耦合的MVC实现框架。在使用Java中其它MVC框架多年之后，面对Spring MVC有一种相见恨晚的感觉。Spring MVC是如此的优雅，轻盈与简洁， 让人从其它框架的桎梏解脱出来。本课程将带你步入Spring MVC。', '<p><span style=\"color: rgb(28, 31, 33); font-family: &quot;PingFang SC&quot;, 微软雅黑, &quot;Microsoft YaHei&quot;, Helvetica, &quot;Helvetica Neue&quot;, Tahoma, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">Spring MVC为我们提供了一个基于组件和松耦合的MVC实现框架。在使用Java中其它MVC框架多年之后，面对Spring MVC有一种相见恨晚的感觉。Spring MVC是如此的优雅，轻盈与简洁， 让人从其它框架的桎梏解脱出来。本课程将带你步入Spring MVC。</span></p>', 0, 'zj', 126, 0, 0, 'courses/2019/02/Simplest-Spring-MVC-tutorial-by-Crunchify.com_.png', 10, '后端开发', 'Java', '本课程是JAVA高级课程，小伙伴们需要熟练掌握JAVA开发语言基础语法以及Spring IOC/DI的配置使用。对Spring不熟悉的童鞋慎入~~', '1、MVC的思想精髓 2、Spring MVC的基本概念 3、如何利用Maven搭建Spring MVC开发环境 4、用Spring MVC实际开发一个功能模块', '2019-02-16 23:50:00.000000', 1, 2);
INSERT INTO `courses_course` VALUES (6, '全面掌握Django ORM', 'Django的一个强大的功能是它的对象关系映射Object-Relational Mapping（ORM），它允许你就像使用 SQL一样去和你的数据库交互，本课程将以Django官方文档为依据，通过开发讲师、课程、学生、助教四个模型类，给大家完整透彻的讲解Django ORM知识体系，为更高级的开发打下坚实基础。', '<p><span style=\"color: rgb(28, 31, 33); font-family: &quot;PingFang SC&quot;, 微软雅黑, &quot;Microsoft YaHei&quot;, Helvetica, &quot;Helvetica Neue&quot;, Tahoma, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">Django的一个强大的功能是它的对象关系映射Object-Relational Mapping（ORM），它允许你就像使用 SQL一样去和你的数据库交互，本课程将以Django官方文档为依据，通过开发讲师、课程、学生、助教四个模型类，给大家完整透彻的讲解Django ORM知识体系，为更高级的开发打下坚实基础。</span></p>', 0, 'gj', 105, 1, 0, 'courses/2019/02/5c0f95640001d03c06000338-240-135.jpg', 18, '后端开发', 'Python', '1、Python基础知识 2、会Django开发环境搭建 3、MySQL的简单使用', '1、什么是Django ORM 2、常用的字段和属性有哪些 3、如何定义元数据Meta 4、Django数据表相关操作 5、Models API入门到精通，ORM无障碍操作MySQL 6、F对象和Q对象实现复杂的高级操作', '2019-02-17 00:01:00.000000', 1, 1);
INSERT INTO `courses_course` VALUES (7, 'iOS开发之传感器', '本课程给大家补充介绍iOS中常见的传感器，并通过图解的方式详细介绍了加速度传感器以及角速度传感器。最后通过实际的Demo源码演示并分析整个实现的过程。', '<p><span style=\"color: rgb(28, 31, 33); font-family: &quot;PingFang SC&quot;, 微软雅黑, &quot;Microsoft YaHei&quot;, Helvetica, &quot;Helvetica Neue&quot;, Tahoma, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">本课程给大家补充介绍iOS中常见的传感器，并通过图解的方式详细介绍了加速度传感器以及角速度传感器。最后通过实际的Demo源码演示并分析整个实现的过程。</span></p>', 0, 'gj', 19, 0, 0, 'courses/2019/02/5ad5cc9c0001c91906000338-240-135.jpg', 10, '移动开发', 'iOS', '1、有相对基础的数学思维逻辑； 2、熟练掌握OC基础语法； 3、熟悉框架的使用。', '1、了解iOS中常见的传感器； 2、了解CoreMotion框架； 3、了解加速度传感器、角速度传感器的实现过程', '2019-02-17 00:07:00.000000', 2, 3);
INSERT INTO `courses_course` VALUES (8, '推荐算法理论与实践', '当今推荐系统的应用可以说是十分广泛了，它已经应用到了生活当中的方方面面，比如新闻推荐、音乐推荐、电影推荐、朋友推荐等等，一个性能高效的推荐系统更是帮助商品更好销售的关键。本课分为两部分，前半部分介绍各种常见的推荐系统以及基本概念，后半部分将用基于矩阵分解的协同过滤实现一个电影推荐系统。', '<p><span style=\"color: rgb(28, 31, 33); font-family: &quot;PingFang SC&quot;, 微软雅黑, &quot;Microsoft YaHei&quot;, Helvetica, &quot;Helvetica Neue&quot;, Tahoma, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">当今推荐系统的应用可以说是十分广泛了，它已经应用到了生活当中的方方面面，比如新闻推荐、音乐推荐、电影推荐、朋友推荐等等，一个性能高效的推荐系统更是帮助商品更好销售的关键。本课分为两部分，前半部分介绍各种常见的推荐系统以及基本概念，后半部分将用基于矩阵分解的协同过滤实现一个电影推荐系统。</span></p>', 0, 'gj', 114, 0, 0, 'courses/2019/02/5aeecb1d0001e5ea06000338-240-135.jpg', 23, '前沿技术', '机器学习', '掌握python语法，自学能力强！', '1、基于内容的推荐系统的原理 2、基于矩阵分解的推荐系统的原理  3、基于商品的协同过滤的推荐系统的原理  4、基于用户的协同过滤的推荐系统的原理  5、构建基于矩阵分解的电影推荐系统', '2019-02-17 00:14:00.000000', 12, 4);
COMMIT;

-- ----------------------------
-- Table structure for courses_courseresource
-- ----------------------------
DROP TABLE IF EXISTS `courses_courseresource`;
CREATE TABLE `courses_courseresource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `download` varchar(100) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `course_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_courseresource_course_id_5eba1332_fk_courses_course_id` (`course_id`),
  CONSTRAINT `courses_courseresource_course_id_5eba1332_fk_courses_course_id` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of courses_courseresource
-- ----------------------------
BEGIN;
INSERT INTO `courses_courseresource` VALUES (1, '测试资源', 'course/resource/2019/02/project.zip', '2019-02-16 21:17:00.000000', 1);
COMMIT;

-- ----------------------------
-- Table structure for courses_lesson
-- ----------------------------
DROP TABLE IF EXISTS `courses_lesson`;
CREATE TABLE `courses_lesson` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `learn_times` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `course_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_lesson_course_id_16bc4882_fk_courses_course_id` (`course_id`),
  CONSTRAINT `courses_lesson_course_id_16bc4882_fk_courses_course_id` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of courses_lesson
-- ----------------------------
BEGIN;
INSERT INTO `courses_lesson` VALUES (1, '第1章 课程介绍', 4, '2019-02-16 16:59:00.000000', 1);
INSERT INTO `courses_lesson` VALUES (2, '第2章 安装Python', 5, '2019-02-16 20:42:00.000000', 1);
INSERT INTO `courses_lesson` VALUES (3, '第3章 Python变量和数据类型', 45, '2019-02-16 20:42:00.000000', 1);
INSERT INTO `courses_lesson` VALUES (4, '第4章 List 和Tuple类型', 45, '2019-02-16 20:42:00.000000', 1);
INSERT INTO `courses_lesson` VALUES (5, '第1章 介绍课程目标及学习内容', 5, '2019-02-16 22:51:00.000000', 2);
INSERT INTO `courses_lesson` VALUES (6, '第2章 课前准备', 10, '2019-02-16 23:08:00.000000', 2);
INSERT INTO `courses_lesson` VALUES (7, '第3章 开发环境搭建', 13, '2019-02-16 23:08:00.000000', 2);
INSERT INTO `courses_lesson` VALUES (8, '第1章 课程介绍', 6, '2019-02-16 23:32:00.000000', 3);
INSERT INTO `courses_lesson` VALUES (9, '第2章 scrapy框架、mongodb数据库的安装及scrapy实践', 84, '2019-02-16 23:34:00.000000', 3);
COMMIT;

-- ----------------------------
-- Table structure for courses_video
-- ----------------------------
DROP TABLE IF EXISTS `courses_video`;
CREATE TABLE `courses_video` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `learn_times` int(11) NOT NULL,
  `url` varchar(200) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `lesson_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_video_lesson_id_59f2396e_fk_courses_lesson_id` (`lesson_id`),
  CONSTRAINT `courses_video_lesson_id_59f2396e_fk_courses_lesson_id` FOREIGN KEY (`lesson_id`) REFERENCES `courses_lesson` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of courses_video
-- ----------------------------
BEGIN;
INSERT INTO `courses_video` VALUES (1, '1-1 Python入门课程介绍', 4, 'http://vjs.zencdn.net/v/oceans.mp4', '2019-02-16 16:59:00.000000', 1);
INSERT INTO `courses_video` VALUES (2, '2-1 选择Python版本', 1, 'http://vjs.zencdn.net/v/oceans.mp4', '2019-02-16 20:43:00.000000', 2);
INSERT INTO `courses_video` VALUES (3, '2-2 Windows上安装Python', 2, 'http://vjs.zencdn.net/v/oceans.mp4', '2019-02-16 20:44:00.000000', 2);
INSERT INTO `courses_video` VALUES (4, '2-3 第一个Python程序', 2, 'http://vjs.zencdn.net/v/oceans.mp4', '2019-02-16 20:44:00.000000', 2);
INSERT INTO `courses_video` VALUES (7, '3-1 Python中数据类型', 5, 'http://vjs.zencdn.net/v/oceans.mp4', '2019-02-16 22:59:00.000000', 3);
INSERT INTO `courses_video` VALUES (8, '3-2 Python之print语句', 5, 'http://vjs.zencdn.net/v/oceans.mp4', '2019-02-16 23:00:00.000000', 3);
INSERT INTO `courses_video` VALUES (9, '4-1 Python创建list', 5, 'http://vjs.zencdn.net/v/oceans.mp4', '2019-02-16 23:01:00.000000', 4);
INSERT INTO `courses_video` VALUES (10, '4-2 Python按照索引访问list', 5, 'http://vjs.zencdn.net/v/oceans.mp4', '2019-02-16 23:02:00.000000', 4);
INSERT INTO `courses_video` VALUES (11, '3-3 Python的注释', 5, 'http://vjs.zencdn.net/v/oceans.mp4', '2019-02-16 23:02:00.000000', 3);
INSERT INTO `courses_video` VALUES (12, '3-4 Python中什么是变量', 5, 'http://vjs.zencdn.net/v/oceans.mp4', '2019-02-16 23:03:00.000000', 3);
INSERT INTO `courses_video` VALUES (13, '3-5 Python中定义字符串', 5, 'http://vjs.zencdn.net/v/oceans.mp4', '2019-02-16 23:03:00.000000', 3);
INSERT INTO `courses_video` VALUES (14, '3-6 Python中raw字符串与多行字符串', 5, 'http://vjs.zencdn.net/v/oceans.mp4', '2019-02-16 23:04:00.000000', 3);
INSERT INTO `courses_video` VALUES (15, '3-7 Python中Unicode字符串', 5, 'http://vjs.zencdn.net/v/oceans.mp4', '2019-02-16 23:05:00.000000', 3);
INSERT INTO `courses_video` VALUES (16, '3-8 Python中整数和浮点数', 5, 'http://vjs.zencdn.net/v/oceans.mp4', '2019-02-16 23:06:00.000000', 3);
INSERT INTO `courses_video` VALUES (17, '3-9 Python中布尔类型', 5, 'http://vjs.zencdn.net/v/oceans.mp4', '2019-02-16 23:07:00.000000', 3);
INSERT INTO `courses_video` VALUES (18, '1-1 课程介绍', 5, 'http://vjs.zencdn.net/v/oceans.mp4', '2019-02-16 23:09:00.000000', 5);
INSERT INTO `courses_video` VALUES (19, '2-1 课前准备', 10, 'http://vjs.zencdn.net/v/oceans.mp4', '2019-02-16 23:11:00.000000', 6);
INSERT INTO `courses_video` VALUES (20, '3-1 环境搭建', 13, 'http://vjs.zencdn.net/v/oceans.mp4', '2019-02-16 23:11:00.000000', 7);
INSERT INTO `courses_video` VALUES (21, '1-1 《Python最火爬虫框架Scrapy入门与实践》课程简介', 6, 'http://vjs.zencdn.net/v/oceans.mp4', '2019-02-16 23:35:00.000000', 8);
INSERT INTO `courses_video` VALUES (22, '1-1 《Python最火爬虫框架Scrapy入门与实践》课程简介', 6, 'http://vjs.zencdn.net/v/oceans.mp4', '2019-02-16 23:35:00.000000', 8);
INSERT INTO `courses_video` VALUES (23, '2-1 scrpay的安装、和安装中遇到的问题', 10, 'http://vjs.zencdn.net/v/oceans.mp4', '2019-02-16 23:36:00.000000', 9);
INSERT INTO `courses_video` VALUES (24, '2-2 scrapy的介绍、组件、数据流', 8, 'http://vjs.zencdn.net/v/oceans.mp4', '2019-02-16 23:36:00.000000', 9);
COMMIT;

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
BEGIN;
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (26, 'captcha', 'captchastore');
INSERT INTO `django_content_type` VALUES (4, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (13, 'courses', 'bannercourse');
INSERT INTO `django_content_type` VALUES (9, 'courses', 'course');
INSERT INTO `django_content_type` VALUES (10, 'courses', 'courseresource');
INSERT INTO `django_content_type` VALUES (11, 'courses', 'lesson');
INSERT INTO `django_content_type` VALUES (12, 'courses', 'video');
INSERT INTO `django_content_type` VALUES (17, 'operation', 'coursecomments');
INSERT INTO `django_content_type` VALUES (18, 'operation', 'userask');
INSERT INTO `django_content_type` VALUES (19, 'operation', 'usercourse');
INSERT INTO `django_content_type` VALUES (20, 'operation', 'userfavorite');
INSERT INTO `django_content_type` VALUES (21, 'operation', 'usermessage');
INSERT INTO `django_content_type` VALUES (14, 'organization', 'citydict');
INSERT INTO `django_content_type` VALUES (15, 'organization', 'courseorg');
INSERT INTO `django_content_type` VALUES (16, 'organization', 'teacher');
INSERT INTO `django_content_type` VALUES (5, 'sessions', 'session');
INSERT INTO `django_content_type` VALUES (7, 'users', 'banner');
INSERT INTO `django_content_type` VALUES (8, 'users', 'emailverifyrecord');
INSERT INTO `django_content_type` VALUES (6, 'users', 'userprofile');
INSERT INTO `django_content_type` VALUES (22, 'xadmin', 'bookmark');
INSERT INTO `django_content_type` VALUES (25, 'xadmin', 'log');
INSERT INTO `django_content_type` VALUES (23, 'xadmin', 'usersettings');
INSERT INTO `django_content_type` VALUES (24, 'xadmin', 'userwidget');
COMMIT;

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
BEGIN;
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2019-01-29 11:37:50.573718');
INSERT INTO `django_migrations` VALUES (2, 'contenttypes', '0002_remove_content_type_name', '2019-01-29 11:37:51.243047');
INSERT INTO `django_migrations` VALUES (3, 'auth', '0001_initial', '2019-01-29 11:37:53.985324');
INSERT INTO `django_migrations` VALUES (4, 'auth', '0002_alter_permission_name_max_length', '2019-01-29 11:37:54.476522');
INSERT INTO `django_migrations` VALUES (5, 'auth', '0003_alter_user_email_max_length', '2019-01-29 11:37:54.869601');
INSERT INTO `django_migrations` VALUES (6, 'auth', '0004_alter_user_username_opts', '2019-01-29 11:37:54.914281');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0005_alter_user_last_login_null', '2019-01-29 11:37:54.960535');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0006_require_contenttypes_0002', '2019-01-29 11:37:54.999493');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0007_alter_validators_add_error_messages', '2019-01-29 11:37:55.040874');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0008_alter_user_username_max_length', '2019-01-29 11:37:55.092619');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0009_alter_user_last_name_max_length', '2019-01-29 11:37:55.138502');
INSERT INTO `django_migrations` VALUES (12, 'users', '0001_initial', '2019-01-29 11:37:58.723082');
INSERT INTO `django_migrations` VALUES (13, 'admin', '0001_initial', '2019-01-29 11:38:00.025540');
INSERT INTO `django_migrations` VALUES (14, 'admin', '0002_logentry_remove_auto_add', '2019-01-29 11:38:00.075623');
INSERT INTO `django_migrations` VALUES (15, 'captcha', '0001_initial', '2019-01-29 11:38:00.340588');
INSERT INTO `django_migrations` VALUES (16, 'organization', '0001_initial', '2019-01-29 11:38:02.021767');
INSERT INTO `django_migrations` VALUES (17, 'courses', '0001_initial', '2019-01-29 11:38:05.476110');
INSERT INTO `django_migrations` VALUES (18, 'operation', '0001_initial', '2019-01-29 11:38:09.131145');
INSERT INTO `django_migrations` VALUES (19, 'sessions', '0001_initial', '2019-01-29 11:38:09.485242');
INSERT INTO `django_migrations` VALUES (20, 'xadmin', '0001_initial', '2019-01-29 11:38:11.827131');
INSERT INTO `django_migrations` VALUES (21, 'xadmin', '0002_log', '2019-01-29 11:38:12.899769');
INSERT INTO `django_migrations` VALUES (22, 'xadmin', '0003_auto_20160715_0100', '2019-01-29 11:38:13.438524');
COMMIT;

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_session
-- ----------------------------
BEGIN;
INSERT INTO `django_session` VALUES ('0kxi7l0hsqrip0cra3enxelhd88gquw3', 'MzUwNzJmYjgyYzI5YWQ1Y2E0MTI1ZjA0ODBhYmU3YTk5M2FhY2U3Nzp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjZkYWQzZTU4NWRkMTAwY2ViZjM0YmY5YmQ3ZTk0ODIyNTEyMjQ0ZjgifQ==', '2019-03-08 16:45:58.177838');
INSERT INTO `django_session` VALUES ('1510sqzmdb74w5vf6jd4wh1kxo7fcwin', 'M2YxMzhmZWRmMjNhOTA1Yjc4MWM4Y2JkMjc3ZDU2YzE0Mzc2YWRlNzp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjBmOTc1NmU3YzE2NjU2MTIzMzliZWNmZDk1ZDU0N2ZlYjNlODg5NWEifQ==', '2019-06-07 11:51:57.510599');
INSERT INTO `django_session` VALUES ('2g2fyfk2pkchdnhr9nk8yrvnpc757lou', 'ZWQ4OGE4ZDE2ZTM3MzA5Yzg2NDhhMmIzMGNiZWY4ODNhMjhlYTg5Nzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImM3ZmEwMmQxNmQ5NmM3ZWJkODk5MTcxZWFlN2ZjZGY0ZDc5MmNhODciLCJuYXZfbWVudSI6Ilt7XCJ0aXRsZVwiOiBcIlx1NjczYVx1Njc4NFx1N2JhMVx1NzQwNlwiLCBcIm1lbnVzXCI6IFt7XCJ0aXRsZVwiOiBcIlx1NTdjZVx1NWUwMlwiLCBcInVybFwiOiBcIi94YWRtaW4vb3JnYW5pemF0aW9uL2NpdHlkaWN0L1wiLCBcImljb25cIjogXCJmYSBmYS1idWlsZGluZy1vXCIsIFwib3JkZXJcIjogMTJ9LCB7XCJ0aXRsZVwiOiBcIlx1OGJmZVx1N2EwYlx1NjczYVx1Njc4NFwiLCBcInVybFwiOiBcIi94YWRtaW4vb3JnYW5pemF0aW9uL2NvdXJzZW9yZy9cIiwgXCJpY29uXCI6IFwiZmEgZmEtYmFua1wiLCBcIm9yZGVyXCI6IDEzfSwge1widGl0bGVcIjogXCJcdTY1NTlcdTVlMDhcIiwgXCJ1cmxcIjogXCIveGFkbWluL29yZ2FuaXphdGlvbi90ZWFjaGVyL1wiLCBcImljb25cIjogXCJmYSBmYS11c2VyLW1kXCIsIFwib3JkZXJcIjogMTR9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtYnVpbGRpbmctb1wiLCBcImZpcnN0X3VybFwiOiBcIi94YWRtaW4vb3JnYW5pemF0aW9uL2NpdHlkaWN0L1wifSwge1widGl0bGVcIjogXCJcdTc1MjhcdTYyMzdcdTRmZTFcdTYwNmZcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTc1MjhcdTYyMzdcdTRmZTFcdTYwNmZcIiwgXCJ1cmxcIjogXCIveGFkbWluL3VzZXJzL3VzZXJwcm9maWxlL1wiLCBcImljb25cIjogXCJmYSBmYS11c2VyXCIsIFwib3JkZXJcIjogM30sIHtcInRpdGxlXCI6IFwiXHU5MGFlXHU3YmIxXHU5YThjXHU4YmMxXHU3ODAxXCIsIFwidXJsXCI6IFwiL3hhZG1pbi91c2Vycy9lbWFpbHZlcmlmeXJlY29yZC9cIiwgXCJpY29uXCI6IFwiZmEgZmEtZW52ZWxvcGVcIiwgXCJvcmRlclwiOiA1fSwge1widGl0bGVcIjogXCJcdThmNmVcdTY0YWRcdTU2ZmVcIiwgXCJ1cmxcIjogXCIveGFkbWluL3VzZXJzL2Jhbm5lci9cIiwgXCJpY29uXCI6IFwiZmEgZmEtZ3JvdXBcIiwgXCJvcmRlclwiOiA2fV0sIFwiZmlyc3RfaWNvblwiOiBcImZhIGZhLXVzZXJcIiwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL3VzZXJzL3VzZXJwcm9maWxlL1wifSwge1widGl0bGVcIjogXCJcdTc1MjhcdTYyMzdcdTY0Y2RcdTRmNWNcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTc1MjhcdTYyMzdcdTU0YThcdThiZTJcIiwgXCJ1cmxcIjogXCIveGFkbWluL29wZXJhdGlvbi91c2VyYXNrL1wiLCBcImljb25cIjogXCJmYSBmYS1xdWVzdGlvbi1jaXJjbGVcIiwgXCJvcmRlclwiOiAxNX0sIHtcInRpdGxlXCI6IFwiXHU3NTI4XHU2MjM3XHU4YmZlXHU3YTBiXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9vcGVyYXRpb24vdXNlcmNvdXJzZS9cIiwgXCJpY29uXCI6IFwiZmEgZmEtYm9va1wiLCBcIm9yZGVyXCI6IDE2fSwge1widGl0bGVcIjogXCJcdTc1MjhcdTYyMzdcdTZkODhcdTYwNmZcIiwgXCJ1cmxcIjogXCIveGFkbWluL29wZXJhdGlvbi91c2VybWVzc2FnZS9cIiwgXCJpY29uXCI6IFwiZmEgZmEtZW52ZWxvcGUtb1wiLCBcIm9yZGVyXCI6IDE3fSwge1widGl0bGVcIjogXCJcdThiZmVcdTdhMGJcdThiYzRcdThiYmFcIiwgXCJ1cmxcIjogXCIveGFkbWluL29wZXJhdGlvbi9jb3Vyc2Vjb21tZW50cy9cIiwgXCJpY29uXCI6IFwiZmEgZmEtY29tbWVudFwiLCBcIm9yZGVyXCI6IDE4fSwge1widGl0bGVcIjogXCJcdTc1MjhcdTYyMzdcdTY1MzZcdTg1Y2ZcIiwgXCJ1cmxcIjogXCIveGFkbWluL29wZXJhdGlvbi91c2VyZmF2b3JpdGUvXCIsIFwiaWNvblwiOiBcImZhIGZhLWhlYXJ0XCIsIFwib3JkZXJcIjogMTl9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtcXVlc3Rpb24tY2lyY2xlXCIsIFwiZmlyc3RfdXJsXCI6IFwiL3hhZG1pbi9vcGVyYXRpb24vdXNlcmFzay9cIn0sIHtcInRpdGxlXCI6IFwiXHU3YmExXHU3NDA2XCIsIFwibWVudXNcIjogW3tcInRpdGxlXCI6IFwiXHU2NWU1XHU1ZmQ3XHU4YmIwXHU1ZjU1XCIsIFwidXJsXCI6IFwiL3hhZG1pbi94YWRtaW4vbG9nL1wiLCBcImljb25cIjogXCJmYSBmYS1jb2dcIiwgXCJvcmRlclwiOiAyMX1dLCBcImZpcnN0X2ljb25cIjogXCJmYSBmYS1jb2dcIiwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL3hhZG1pbi9sb2cvXCJ9LCB7XCJ0aXRsZVwiOiBcIlx1OGJhNFx1OGJjMVx1NTQ4Y1x1NjM4OFx1Njc0M1wiLCBcIm1lbnVzXCI6IFt7XCJ0aXRsZVwiOiBcIlx1N2VjNFwiLCBcInVybFwiOiBcIi94YWRtaW4vYXV0aC9ncm91cC9cIiwgXCJpY29uXCI6IFwiZmEgZmEtZ3JvdXBcIiwgXCJvcmRlclwiOiAyfSwge1widGl0bGVcIjogXCJcdTY3NDNcdTk2NTBcIiwgXCJ1cmxcIjogXCIveGFkbWluL2F1dGgvcGVybWlzc2lvbi9cIiwgXCJpY29uXCI6IFwiZmEgZmEtbG9ja1wiLCBcIm9yZGVyXCI6IDR9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtZ3JvdXBcIiwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL2F1dGgvZ3JvdXAvXCJ9LCB7XCJ0aXRsZVwiOiBcIlx1OGJmZVx1N2EwYlx1N2JhMVx1NzQwNlwiLCBcIm1lbnVzXCI6IFt7XCJ0aXRsZVwiOiBcIlx1OGJmZVx1N2EwYlwiLCBcInVybFwiOiBcIi94YWRtaW4vY291cnNlcy9jb3Vyc2UvXCIsIFwiaWNvblwiOiBcImZhIGZhLWJvb2tcIiwgXCJvcmRlclwiOiA3fSwge1widGl0bGVcIjogXCJcdThmNmVcdTY0YWRcdThiZmVcdTdhMGJcIiwgXCJ1cmxcIjogXCIveGFkbWluL2NvdXJzZXMvYmFubmVyY291cnNlL1wiLCBcImljb25cIjogXCJmYSBmYS10YWdzXCIsIFwib3JkZXJcIjogOH0sIHtcInRpdGxlXCI6IFwiXHU3YWUwXHU4MjgyXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9jb3Vyc2VzL2xlc3Nvbi9cIiwgXCJpY29uXCI6IFwiZmEgZmEtdGgtbGlzdFwiLCBcIm9yZGVyXCI6IDl9LCB7XCJ0aXRsZVwiOiBcIlx1ODljNlx1OTg5MVwiLCBcInVybFwiOiBcIi94YWRtaW4vY291cnNlcy92aWRlby9cIiwgXCJpY29uXCI6IFwiZmEgZmEtZmlsbVwiLCBcIm9yZGVyXCI6IDEwfSwge1widGl0bGVcIjogXCJcdThiZmVcdTdhMGJcdThkNDRcdTZlOTBcIiwgXCJ1cmxcIjogXCIveGFkbWluL2NvdXJzZXMvY291cnNlcmVzb3VyY2UvXCIsIFwiaWNvblwiOiBcImZhIGZhLWZpbGUtemlwLW9cIiwgXCJvcmRlclwiOiAxMX1dLCBcImZpcnN0X2ljb25cIjogXCJmYSBmYS1ib29rXCIsIFwiZmlyc3RfdXJsXCI6IFwiL3hhZG1pbi9jb3Vyc2VzL2NvdXJzZS9cIn1dIiwiTElTVF9RVUVSWSI6W1siY291cnNlcyIsImNvdXJzZSJdLCJfY29scz1uYW1lLmRlZ3JlZS5sZWFybl90aW1lcy5zdHVkZW50cy5nZXRfempfbnVtcy5nb190by5jb3Vyc2Vfb3JnJl9kb189ZXhwb3J0JmV4cG9ydF90eXBlPWNzdiZhbGw9b24iXX0=', '2019-04-20 02:21:50.567101');
INSERT INTO `django_session` VALUES ('3qrv7a2m2j27n6wvirz1mt32l4de02ch', 'ZjgyMzM2OThjNDRhYTM1ZGNlMGY1N2RhOWQ2NTYxMWEyNzUwZjA5ZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImM3ZmEwMmQxNmQ5NmM3ZWJkODk5MTcxZWFlN2ZjZGY0ZDc5MmNhODciLCJuYXZfbWVudSI6Ilt7XCJ0aXRsZVwiOiBcIlx1NjczYVx1Njc4NFx1N2JhMVx1NzQwNlwiLCBcIm1lbnVzXCI6IFt7XCJ0aXRsZVwiOiBcIlx1NTdjZVx1NWUwMlwiLCBcInVybFwiOiBcIi94YWRtaW4vb3JnYW5pemF0aW9uL2NpdHlkaWN0L1wiLCBcImljb25cIjogXCJmYSBmYS1idWlsZGluZy1vXCIsIFwib3JkZXJcIjogMTJ9LCB7XCJ0aXRsZVwiOiBcIlx1OGJmZVx1N2EwYlx1NjczYVx1Njc4NFwiLCBcInVybFwiOiBcIi94YWRtaW4vb3JnYW5pemF0aW9uL2NvdXJzZW9yZy9cIiwgXCJpY29uXCI6IFwiZmEgZmEtYmFua1wiLCBcIm9yZGVyXCI6IDEzfSwge1widGl0bGVcIjogXCJcdTY1NTlcdTVlMDhcIiwgXCJ1cmxcIjogXCIveGFkbWluL29yZ2FuaXphdGlvbi90ZWFjaGVyL1wiLCBcImljb25cIjogXCJmYSBmYS11c2VyLW1kXCIsIFwib3JkZXJcIjogMTR9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtYnVpbGRpbmctb1wiLCBcImZpcnN0X3VybFwiOiBcIi94YWRtaW4vb3JnYW5pemF0aW9uL2NpdHlkaWN0L1wifSwge1widGl0bGVcIjogXCJcdTc1MjhcdTYyMzdcdTRmZTFcdTYwNmZcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTc1MjhcdTYyMzdcdTRmZTFcdTYwNmZcIiwgXCJ1cmxcIjogXCIveGFkbWluL3VzZXJzL3VzZXJwcm9maWxlL1wiLCBcImljb25cIjogXCJmYSBmYS11c2VyXCIsIFwib3JkZXJcIjogM30sIHtcInRpdGxlXCI6IFwiXHU5MGFlXHU3YmIxXHU5YThjXHU4YmMxXHU3ODAxXCIsIFwidXJsXCI6IFwiL3hhZG1pbi91c2Vycy9lbWFpbHZlcmlmeXJlY29yZC9cIiwgXCJpY29uXCI6IFwiZmEgZmEtZW52ZWxvcGVcIiwgXCJvcmRlclwiOiA1fSwge1widGl0bGVcIjogXCJcdThmNmVcdTY0YWRcdTU2ZmVcIiwgXCJ1cmxcIjogXCIveGFkbWluL3VzZXJzL2Jhbm5lci9cIiwgXCJpY29uXCI6IFwiZmEgZmEtZ3JvdXBcIiwgXCJvcmRlclwiOiA2fV0sIFwiZmlyc3RfaWNvblwiOiBcImZhIGZhLXVzZXJcIiwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL3VzZXJzL3VzZXJwcm9maWxlL1wifSwge1widGl0bGVcIjogXCJcdTc1MjhcdTYyMzdcdTY0Y2RcdTRmNWNcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTc1MjhcdTYyMzdcdTU0YThcdThiZTJcIiwgXCJ1cmxcIjogXCIveGFkbWluL29wZXJhdGlvbi91c2VyYXNrL1wiLCBcImljb25cIjogXCJmYSBmYS1xdWVzdGlvbi1jaXJjbGVcIiwgXCJvcmRlclwiOiAxNX0sIHtcInRpdGxlXCI6IFwiXHU3NTI4XHU2MjM3XHU4YmZlXHU3YTBiXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9vcGVyYXRpb24vdXNlcmNvdXJzZS9cIiwgXCJpY29uXCI6IFwiZmEgZmEtYm9va1wiLCBcIm9yZGVyXCI6IDE2fSwge1widGl0bGVcIjogXCJcdTc1MjhcdTYyMzdcdTZkODhcdTYwNmZcIiwgXCJ1cmxcIjogXCIveGFkbWluL29wZXJhdGlvbi91c2VybWVzc2FnZS9cIiwgXCJpY29uXCI6IFwiZmEgZmEtZW52ZWxvcGUtb1wiLCBcIm9yZGVyXCI6IDE3fSwge1widGl0bGVcIjogXCJcdThiZmVcdTdhMGJcdThiYzRcdThiYmFcIiwgXCJ1cmxcIjogXCIveGFkbWluL29wZXJhdGlvbi9jb3Vyc2Vjb21tZW50cy9cIiwgXCJpY29uXCI6IFwiZmEgZmEtY29tbWVudFwiLCBcIm9yZGVyXCI6IDE4fSwge1widGl0bGVcIjogXCJcdTc1MjhcdTYyMzdcdTY1MzZcdTg1Y2ZcIiwgXCJ1cmxcIjogXCIveGFkbWluL29wZXJhdGlvbi91c2VyZmF2b3JpdGUvXCIsIFwiaWNvblwiOiBcImZhIGZhLWhlYXJ0XCIsIFwib3JkZXJcIjogMTl9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtcXVlc3Rpb24tY2lyY2xlXCIsIFwiZmlyc3RfdXJsXCI6IFwiL3hhZG1pbi9vcGVyYXRpb24vdXNlcmFzay9cIn0sIHtcInRpdGxlXCI6IFwiXHU3YmExXHU3NDA2XCIsIFwibWVudXNcIjogW3tcInRpdGxlXCI6IFwiXHU2NWU1XHU1ZmQ3XHU4YmIwXHU1ZjU1XCIsIFwidXJsXCI6IFwiL3hhZG1pbi94YWRtaW4vbG9nL1wiLCBcImljb25cIjogXCJmYSBmYS1jb2dcIiwgXCJvcmRlclwiOiAyMX1dLCBcImZpcnN0X2ljb25cIjogXCJmYSBmYS1jb2dcIiwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL3hhZG1pbi9sb2cvXCJ9LCB7XCJ0aXRsZVwiOiBcIlx1OGJhNFx1OGJjMVx1NTQ4Y1x1NjM4OFx1Njc0M1wiLCBcIm1lbnVzXCI6IFt7XCJ0aXRsZVwiOiBcIlx1N2VjNFwiLCBcInVybFwiOiBcIi94YWRtaW4vYXV0aC9ncm91cC9cIiwgXCJpY29uXCI6IFwiZmEgZmEtZ3JvdXBcIiwgXCJvcmRlclwiOiAyfSwge1widGl0bGVcIjogXCJcdTY3NDNcdTk2NTBcIiwgXCJ1cmxcIjogXCIveGFkbWluL2F1dGgvcGVybWlzc2lvbi9cIiwgXCJpY29uXCI6IFwiZmEgZmEtbG9ja1wiLCBcIm9yZGVyXCI6IDR9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtZ3JvdXBcIiwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL2F1dGgvZ3JvdXAvXCJ9LCB7XCJ0aXRsZVwiOiBcIlx1OGJmZVx1N2EwYlx1N2JhMVx1NzQwNlwiLCBcIm1lbnVzXCI6IFt7XCJ0aXRsZVwiOiBcIlx1OGJmZVx1N2EwYlwiLCBcInVybFwiOiBcIi94YWRtaW4vY291cnNlcy9jb3Vyc2UvXCIsIFwiaWNvblwiOiBcImZhIGZhLWJvb2tcIiwgXCJvcmRlclwiOiA3fSwge1widGl0bGVcIjogXCJcdThmNmVcdTY0YWRcdThiZmVcdTdhMGJcIiwgXCJ1cmxcIjogXCIveGFkbWluL2NvdXJzZXMvYmFubmVyY291cnNlL1wiLCBcImljb25cIjogXCJmYSBmYS10YWdzXCIsIFwib3JkZXJcIjogOH0sIHtcInRpdGxlXCI6IFwiXHU3YWUwXHU4MjgyXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9jb3Vyc2VzL2xlc3Nvbi9cIiwgXCJpY29uXCI6IFwiZmEgZmEtdGgtbGlzdFwiLCBcIm9yZGVyXCI6IDl9LCB7XCJ0aXRsZVwiOiBcIlx1ODljNlx1OTg5MVwiLCBcInVybFwiOiBcIi94YWRtaW4vY291cnNlcy92aWRlby9cIiwgXCJpY29uXCI6IFwiZmEgZmEtZmlsbVwiLCBcIm9yZGVyXCI6IDEwfSwge1widGl0bGVcIjogXCJcdThiZmVcdTdhMGJcdThkNDRcdTZlOTBcIiwgXCJ1cmxcIjogXCIveGFkbWluL2NvdXJzZXMvY291cnNlcmVzb3VyY2UvXCIsIFwiaWNvblwiOiBcImZhIGZhLWZpbGUtemlwLW9cIiwgXCJvcmRlclwiOiAxMX1dLCBcImZpcnN0X2ljb25cIjogXCJmYSBmYS1ib29rXCIsIFwiZmlyc3RfdXJsXCI6IFwiL3hhZG1pbi9jb3Vyc2VzL2NvdXJzZS9cIn1dIiwiTElTVF9RVUVSWSI6W1siY291cnNlcyIsInZpZGVvIl0sIiJdfQ==', '2019-03-02 17:57:17.446701');
INSERT INTO `django_session` VALUES ('6zseto5dmlfi7nt759yofl95jv2gclc6', 'MzUwNzJmYjgyYzI5YWQ1Y2E0MTI1ZjA0ODBhYmU3YTk5M2FhY2U3Nzp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjZkYWQzZTU4NWRkMTAwY2ViZjM0YmY5YmQ3ZTk0ODIyNTEyMjQ0ZjgifQ==', '2019-03-25 22:10:24.182550');
INSERT INTO `django_session` VALUES ('7vx8tewmz53pbq5zbgvfey3uhy2h4m5d', 'M2YxMzhmZWRmMjNhOTA1Yjc4MWM4Y2JkMjc3ZDU2YzE0Mzc2YWRlNzp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjBmOTc1NmU3YzE2NjU2MTIzMzliZWNmZDk1ZDU0N2ZlYjNlODg5NWEifQ==', '2019-06-12 00:27:20.228177');
INSERT INTO `django_session` VALUES ('a9fiohmlze4zfofhvmykuv2cponox0yt', 'ZGQ3ZjM4MTJjOTU3YzQ2NGYyOGIwNGYyZjk2Mzc1NjUyNmY3NTUyNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImM3ZmEwMmQxNmQ5NmM3ZWJkODk5MTcxZWFlN2ZjZGY0ZDc5MmNhODciLCJMSVNUX1FVRVJZIjpbWyJ1c2VycyIsInVzZXJwcm9maWxlIl0sIiJdfQ==', '2019-06-12 00:26:22.469237');
INSERT INTO `django_session` VALUES ('afgglmvnbp2etzzqh1occ8npkzx6zym4', 'YTJhNGMxZDAzYmFjNjBkNTY3MmE1ZThhMDg0M2IzOWMxNmVmNzE2Njp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImM3ZmEwMmQxNmQ5NmM3ZWJkODk5MTcxZWFlN2ZjZGY0ZDc5MmNhODciLCJuYXZfbWVudSI6Ilt7XCJ0aXRsZVwiOiBcIlx1NjczYVx1Njc4NFx1N2JhMVx1NzQwNlwiLCBcIm1lbnVzXCI6IFt7XCJ0aXRsZVwiOiBcIlx1NTdjZVx1NWUwMlwiLCBcInVybFwiOiBcIi94YWRtaW4vb3JnYW5pemF0aW9uL2NpdHlkaWN0L1wiLCBcImljb25cIjogXCJmYSBmYS1idWlsZGluZy1vXCIsIFwib3JkZXJcIjogMTJ9LCB7XCJ0aXRsZVwiOiBcIlx1OGJmZVx1N2EwYlx1NjczYVx1Njc4NFwiLCBcInVybFwiOiBcIi94YWRtaW4vb3JnYW5pemF0aW9uL2NvdXJzZW9yZy9cIiwgXCJpY29uXCI6IFwiZmEgZmEtYmFua1wiLCBcIm9yZGVyXCI6IDEzfSwge1widGl0bGVcIjogXCJcdTY1NTlcdTVlMDhcIiwgXCJ1cmxcIjogXCIveGFkbWluL29yZ2FuaXphdGlvbi90ZWFjaGVyL1wiLCBcImljb25cIjogXCJmYSBmYS11c2VyLW1kXCIsIFwib3JkZXJcIjogMTR9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtYnVpbGRpbmctb1wiLCBcImZpcnN0X3VybFwiOiBcIi94YWRtaW4vb3JnYW5pemF0aW9uL2NpdHlkaWN0L1wifSwge1widGl0bGVcIjogXCJcdTc1MjhcdTYyMzdcdTRmZTFcdTYwNmZcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTc1MjhcdTYyMzdcdTRmZTFcdTYwNmZcIiwgXCJ1cmxcIjogXCIveGFkbWluL3VzZXJzL3VzZXJwcm9maWxlL1wiLCBcImljb25cIjogXCJmYSBmYS11c2VyXCIsIFwib3JkZXJcIjogM30sIHtcInRpdGxlXCI6IFwiXHU5MGFlXHU3YmIxXHU5YThjXHU4YmMxXHU3ODAxXCIsIFwidXJsXCI6IFwiL3hhZG1pbi91c2Vycy9lbWFpbHZlcmlmeXJlY29yZC9cIiwgXCJpY29uXCI6IFwiZmEgZmEtZW52ZWxvcGVcIiwgXCJvcmRlclwiOiA1fSwge1widGl0bGVcIjogXCJcdThmNmVcdTY0YWRcdTU2ZmVcIiwgXCJ1cmxcIjogXCIveGFkbWluL3VzZXJzL2Jhbm5lci9cIiwgXCJpY29uXCI6IFwiZmEgZmEtZ3JvdXBcIiwgXCJvcmRlclwiOiA2fV0sIFwiZmlyc3RfaWNvblwiOiBcImZhIGZhLXVzZXJcIiwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL3VzZXJzL3VzZXJwcm9maWxlL1wifSwge1widGl0bGVcIjogXCJcdTc1MjhcdTYyMzdcdTY0Y2RcdTRmNWNcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTc1MjhcdTYyMzdcdTU0YThcdThiZTJcIiwgXCJ1cmxcIjogXCIveGFkbWluL29wZXJhdGlvbi91c2VyYXNrL1wiLCBcImljb25cIjogXCJmYSBmYS1xdWVzdGlvbi1jaXJjbGVcIiwgXCJvcmRlclwiOiAxNX0sIHtcInRpdGxlXCI6IFwiXHU3NTI4XHU2MjM3XHU4YmZlXHU3YTBiXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9vcGVyYXRpb24vdXNlcmNvdXJzZS9cIiwgXCJpY29uXCI6IFwiZmEgZmEtYm9va1wiLCBcIm9yZGVyXCI6IDE2fSwge1widGl0bGVcIjogXCJcdTc1MjhcdTYyMzdcdTZkODhcdTYwNmZcIiwgXCJ1cmxcIjogXCIveGFkbWluL29wZXJhdGlvbi91c2VybWVzc2FnZS9cIiwgXCJpY29uXCI6IFwiZmEgZmEtZW52ZWxvcGUtb1wiLCBcIm9yZGVyXCI6IDE3fSwge1widGl0bGVcIjogXCJcdThiZmVcdTdhMGJcdThiYzRcdThiYmFcIiwgXCJ1cmxcIjogXCIveGFkbWluL29wZXJhdGlvbi9jb3Vyc2Vjb21tZW50cy9cIiwgXCJpY29uXCI6IFwiZmEgZmEtY29tbWVudFwiLCBcIm9yZGVyXCI6IDE4fSwge1widGl0bGVcIjogXCJcdTc1MjhcdTYyMzdcdTY1MzZcdTg1Y2ZcIiwgXCJ1cmxcIjogXCIveGFkbWluL29wZXJhdGlvbi91c2VyZmF2b3JpdGUvXCIsIFwiaWNvblwiOiBcImZhIGZhLWhlYXJ0XCIsIFwib3JkZXJcIjogMTl9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtcXVlc3Rpb24tY2lyY2xlXCIsIFwiZmlyc3RfdXJsXCI6IFwiL3hhZG1pbi9vcGVyYXRpb24vdXNlcmFzay9cIn0sIHtcInRpdGxlXCI6IFwiXHU3YmExXHU3NDA2XCIsIFwibWVudXNcIjogW3tcInRpdGxlXCI6IFwiXHU2NWU1XHU1ZmQ3XHU4YmIwXHU1ZjU1XCIsIFwidXJsXCI6IFwiL3hhZG1pbi94YWRtaW4vbG9nL1wiLCBcImljb25cIjogXCJmYSBmYS1jb2dcIiwgXCJvcmRlclwiOiAyMX1dLCBcImZpcnN0X2ljb25cIjogXCJmYSBmYS1jb2dcIiwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL3hhZG1pbi9sb2cvXCJ9LCB7XCJ0aXRsZVwiOiBcIlx1OGJhNFx1OGJjMVx1NTQ4Y1x1NjM4OFx1Njc0M1wiLCBcIm1lbnVzXCI6IFt7XCJ0aXRsZVwiOiBcIlx1N2VjNFwiLCBcInVybFwiOiBcIi94YWRtaW4vYXV0aC9ncm91cC9cIiwgXCJpY29uXCI6IFwiZmEgZmEtZ3JvdXBcIiwgXCJvcmRlclwiOiAyfSwge1widGl0bGVcIjogXCJcdTY3NDNcdTk2NTBcIiwgXCJ1cmxcIjogXCIveGFkbWluL2F1dGgvcGVybWlzc2lvbi9cIiwgXCJpY29uXCI6IFwiZmEgZmEtbG9ja1wiLCBcIm9yZGVyXCI6IDR9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtZ3JvdXBcIiwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL2F1dGgvZ3JvdXAvXCJ9LCB7XCJ0aXRsZVwiOiBcIlx1OGJmZVx1N2EwYlx1N2JhMVx1NzQwNlwiLCBcIm1lbnVzXCI6IFt7XCJ0aXRsZVwiOiBcIlx1OGJmZVx1N2EwYlwiLCBcInVybFwiOiBcIi94YWRtaW4vY291cnNlcy9jb3Vyc2UvXCIsIFwiaWNvblwiOiBcImZhIGZhLWJvb2tcIiwgXCJvcmRlclwiOiA3fSwge1widGl0bGVcIjogXCJcdThmNmVcdTY0YWRcdThiZmVcdTdhMGJcIiwgXCJ1cmxcIjogXCIveGFkbWluL2NvdXJzZXMvYmFubmVyY291cnNlL1wiLCBcImljb25cIjogXCJmYSBmYS10YWdzXCIsIFwib3JkZXJcIjogOH0sIHtcInRpdGxlXCI6IFwiXHU3YWUwXHU4MjgyXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9jb3Vyc2VzL2xlc3Nvbi9cIiwgXCJpY29uXCI6IFwiZmEgZmEtdGgtbGlzdFwiLCBcIm9yZGVyXCI6IDl9LCB7XCJ0aXRsZVwiOiBcIlx1ODljNlx1OTg5MVwiLCBcInVybFwiOiBcIi94YWRtaW4vY291cnNlcy92aWRlby9cIiwgXCJpY29uXCI6IFwiZmEgZmEtZmlsbVwiLCBcIm9yZGVyXCI6IDEwfSwge1widGl0bGVcIjogXCJcdThiZmVcdTdhMGJcdThkNDRcdTZlOTBcIiwgXCJ1cmxcIjogXCIveGFkbWluL2NvdXJzZXMvY291cnNlcmVzb3VyY2UvXCIsIFwiaWNvblwiOiBcImZhIGZhLWZpbGUtemlwLW9cIiwgXCJvcmRlclwiOiAxMX1dLCBcImZpcnN0X2ljb25cIjogXCJmYSBmYS1ib29rXCIsIFwiZmlyc3RfdXJsXCI6IFwiL3hhZG1pbi9jb3Vyc2VzL2NvdXJzZS9cIn1dIiwiTElTVF9RVUVSWSI6W1sieGFkbWluIiwibG9nIl0sIiJdfQ==', '2019-05-29 23:45:25.875566');
INSERT INTO `django_session` VALUES ('iio8ejpgtwi775ke5r4jms4ellhuugi3', 'MzUwNzJmYjgyYzI5YWQ1Y2E0MTI1ZjA0ODBhYmU3YTk5M2FhY2U3Nzp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjZkYWQzZTU4NWRkMTAwY2ViZjM0YmY5YmQ3ZTk0ODIyNTEyMjQ0ZjgifQ==', '2019-04-08 12:36:06.860380');
INSERT INTO `django_session` VALUES ('ixfouxvi33tstuxi1fq14rverxkzct96', 'M2YxMzhmZWRmMjNhOTA1Yjc4MWM4Y2JkMjc3ZDU2YzE0Mzc2YWRlNzp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjBmOTc1NmU3YzE2NjU2MTIzMzliZWNmZDk1ZDU0N2ZlYjNlODg5NWEifQ==', '2019-06-07 11:50:49.747487');
INSERT INTO `django_session` VALUES ('rdv3lyndvywxnicxdazaqfmbo5u8glyv', 'M2YxMzhmZWRmMjNhOTA1Yjc4MWM4Y2JkMjc3ZDU2YzE0Mzc2YWRlNzp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjBmOTc1NmU3YzE2NjU2MTIzMzliZWNmZDk1ZDU0N2ZlYjNlODg5NWEifQ==', '2019-06-06 15:31:07.047329');
INSERT INTO `django_session` VALUES ('rkh2kcz2j7695dtm0lzytkrxki7ylpy3', 'M2YxMzhmZWRmMjNhOTA1Yjc4MWM4Y2JkMjc3ZDU2YzE0Mzc2YWRlNzp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjBmOTc1NmU3YzE2NjU2MTIzMzliZWNmZDk1ZDU0N2ZlYjNlODg5NWEifQ==', '2019-06-07 17:33:42.886238');
COMMIT;

-- ----------------------------
-- Table structure for operation_coursecomments
-- ----------------------------
DROP TABLE IF EXISTS `operation_coursecomments`;
CREATE TABLE `operation_coursecomments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comments` varchar(200) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `course_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operation_coursecomments_course_id_c88f1b6a_fk_courses_course_id` (`course_id`),
  KEY `operation_coursecomm_user_id_f5ff70b3_fk_users_use` (`user_id`),
  CONSTRAINT `operation_coursecomm_user_id_f5ff70b3_fk_users_use` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`),
  CONSTRAINT `operation_coursecomments_course_id_c88f1b6a_fk_courses_course_id` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operation_coursecomments
-- ----------------------------
BEGIN;
INSERT INTO `operation_coursecomments` VALUES (1, '加油', '2019-02-19 21:37:40.365544', 1, 2);
INSERT INTO `operation_coursecomments` VALUES (2, '加油', '2019-02-19 21:39:04.676060', 1, 2);
INSERT INTO `operation_coursecomments` VALUES (3, '跑测试', '2019-02-19 21:43:25.375309', 1, 2);
INSERT INTO `operation_coursecomments` VALUES (4, '跑测试', '2019-02-19 21:44:40.386158', 1, 2);
INSERT INTO `operation_coursecomments` VALUES (5, '跑测试', '2019-02-19 22:02:36.734995', 1, 2);
INSERT INTO `operation_coursecomments` VALUES (6, '跑测试', '2019-02-19 22:29:04.594497', 1, 2);
COMMIT;

-- ----------------------------
-- Table structure for operation_userask
-- ----------------------------
DROP TABLE IF EXISTS `operation_userask`;
CREATE TABLE `operation_userask` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `course_name` varchar(50) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operation_userask
-- ----------------------------
BEGIN;
INSERT INTO `operation_userask` VALUES (1, '王浩', '17602852734', 'Java', '2019-02-16 16:46:49.909046');
INSERT INTO `operation_userask` VALUES (2, '王浩', '17602852734', 'Java', '2019-02-19 21:48:21.050101');
INSERT INTO `operation_userask` VALUES (3, '王浩', '17602852734', 'Java', '2019-02-19 21:50:21.295109');
INSERT INTO `operation_userask` VALUES (4, '王浩', '17602852734', 'Python', '2019-02-19 21:53:02.083761');
INSERT INTO `operation_userask` VALUES (5, '王浩', '17602852734', 'Python', '2019-02-19 21:54:44.332033');
INSERT INTO `operation_userask` VALUES (6, '王浩', '17602852734', 'Python', '2019-02-19 22:02:54.170043');
INSERT INTO `operation_userask` VALUES (7, '王浩', '17602852734', 'Python', '2019-02-19 22:39:50.854158');
INSERT INTO `operation_userask` VALUES (8, '王浩', '17602852734', '1', '2019-04-13 21:37:30.209473');
INSERT INTO `operation_userask` VALUES (9, '王浩', '17602852734', '1', '2019-04-13 21:37:31.217371');
COMMIT;

-- ----------------------------
-- Table structure for operation_usercourse
-- ----------------------------
DROP TABLE IF EXISTS `operation_usercourse`;
CREATE TABLE `operation_usercourse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime(6) NOT NULL,
  `course_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operation_usercourse_course_id_9f1eab2e_fk_courses_course_id` (`course_id`),
  KEY `operation_usercourse_user_id_835fe81a_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `operation_usercourse_course_id_9f1eab2e_fk_courses_course_id` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`),
  CONSTRAINT `operation_usercourse_user_id_835fe81a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operation_usercourse
-- ----------------------------
BEGIN;
INSERT INTO `operation_usercourse` VALUES (1, '2019-02-16 17:00:48.665597', 1, 1);
INSERT INTO `operation_usercourse` VALUES (2, '2019-02-16 23:10:15.608725', 2, 1);
INSERT INTO `operation_usercourse` VALUES (3, '2019-02-17 00:19:23.992535', 2, 2);
INSERT INTO `operation_usercourse` VALUES (4, '2019-02-19 21:37:22.490573', 1, 2);
INSERT INTO `operation_usercourse` VALUES (5, '2019-04-06 23:56:55.684212', 6, 2);
COMMIT;

-- ----------------------------
-- Table structure for operation_userfavorite
-- ----------------------------
DROP TABLE IF EXISTS `operation_userfavorite`;
CREATE TABLE `operation_userfavorite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fav_id` int(11) NOT NULL,
  `fav_type` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operation_userfavorite_user_id_ad46a6af_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `operation_userfavorite_user_id_ad46a6af_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operation_userfavorite
-- ----------------------------
BEGIN;
INSERT INTO `operation_userfavorite` VALUES (2, 2, 1, '2019-02-17 00:18:42.983595', 2);
INSERT INTO `operation_userfavorite` VALUES (3, 1, 3, '2019-02-17 00:19:41.643906', 2);
INSERT INTO `operation_userfavorite` VALUES (6, 1, 2, '2019-02-20 01:15:34.252875', 2);
COMMIT;

-- ----------------------------
-- Table structure for operation_usermessage
-- ----------------------------
DROP TABLE IF EXISTS `operation_usermessage`;
CREATE TABLE `operation_usermessage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) NOT NULL,
  `message` varchar(500) NOT NULL,
  `has_read` tinyint(1) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operation_usermessage
-- ----------------------------
BEGIN;
INSERT INTO `operation_usermessage` VALUES (1, 2, '欢迎注册积木在线学习网', 1, '2019-01-31 14:10:17.181918');
INSERT INTO `operation_usermessage` VALUES (2, 3, '欢迎注册积木在线学习网', 1, '2019-02-15 15:22:01.925356');
INSERT INTO `operation_usermessage` VALUES (3, 3, '欢迎注册积木在线学习网', 0, '2019-02-18 12:46:43.388381');
COMMIT;

-- ----------------------------
-- Table structure for organization_citydict
-- ----------------------------
DROP TABLE IF EXISTS `organization_citydict`;
CREATE TABLE `organization_citydict` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `desc` varchar(200) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of organization_citydict
-- ----------------------------
BEGIN;
INSERT INTO `organization_citydict` VALUES (1, '北京', '帝都', '2019-02-11 18:20:00.000000');
INSERT INTO `organization_citydict` VALUES (2, '成都', '蓉城', '2019-02-11 18:20:00.000000');
INSERT INTO `organization_citydict` VALUES (3, '天水', '羲皇故里', '2019-02-16 21:24:00.000000');
INSERT INTO `organization_citydict` VALUES (4, '兰州', '金城', '2019-02-16 21:45:00.000000');
INSERT INTO `organization_citydict` VALUES (5, '西安', '十三朝古都', '2019-02-16 21:49:00.000000');
INSERT INTO `organization_citydict` VALUES (6, '深圳', '鹏城', '2019-02-16 22:02:00.000000');
INSERT INTO `organization_citydict` VALUES (7, '上海', '魔都', '2019-02-16 22:16:00.000000');
INSERT INTO `organization_citydict` VALUES (8, '杭州', '人间天堂', '2019-02-16 22:24:00.000000');
INSERT INTO `organization_citydict` VALUES (9, '济南', '泉城', '2019-02-16 22:26:00.000000');
INSERT INTO `organization_citydict` VALUES (10, '青岛', '岛城', '2019-02-16 22:27:00.000000');
INSERT INTO `organization_citydict` VALUES (11, '烟台', '葡萄酒城', '2019-02-16 22:27:00.000000');
INSERT INTO `organization_citydict` VALUES (12, '曲阜', '孔子之乡', '2019-02-16 22:27:00.000000');
COMMIT;

-- ----------------------------
-- Table structure for organization_courseorg
-- ----------------------------
DROP TABLE IF EXISTS `organization_courseorg`;
CREATE TABLE `organization_courseorg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `desc` longtext NOT NULL,
  `tag` varchar(10) NOT NULL,
  `category` varchar(20) NOT NULL,
  `click_nums` int(11) NOT NULL,
  `fav_nums` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `address` varchar(150) NOT NULL,
  `students` int(11) NOT NULL,
  `course_nums` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `city_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `organization_courseo_city_id_4a842f85_fk_organizat` (`city_id`),
  CONSTRAINT `organization_courseo_city_id_4a842f85_fk_organizat` FOREIGN KEY (`city_id`) REFERENCES `organization_citydict` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of organization_courseorg
-- ----------------------------
BEGIN;
INSERT INTO `organization_courseorg` VALUES (1, '成都东软学院', '<p style=\"text-align:center\"><img src=\"https://www.nsu.edu.cn/about/images/0101.jpg\"/> </p><p style=\"margin-top: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; color: rgb(86, 83, 71); line-height: 26px; text-indent: 2em; font-family: Arial, Helvetica, FreeSans, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">成都东软学院是经国家教育部批准设立，由东软出资举办的一所民办普通高等院校。2003年经四川省人民政府批准，设立成都东软信息技术职业学院，开展高职专科教育；2003年学校被教育部确定为首批35所国家级示范性软件职业技术学院之一；2011年经教育部批准，学校升格为成都东软学院，成为四川省第一所独立设置的民办本科高校；2015年通过新建本科院校学士学位授予单位评估；2016年成为四川省民办教育协会会长单位。<br/> </p><p style=\"margin-top: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; color: rgb(86, 83, 71); line-height: 26px; text-indent: 2em; font-family: Arial, Helvetica, FreeSans, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">学校坐落于四川省成都市世界自然文化双遗产地“都江堰——青城山国家AAAAA级旅游景区”，空气清新、环境幽美，占地面积396334.9平方米，总建筑面积279455.12平方米，现有在校生1万余人。学校现设有8个教学机构，学科专业涵盖工学、管理学、艺术学、文学4个学科门类，共设置了20个本科专业，面向全国31个省市地区招生。</p><p style=\"text-align:center\"><img width=\"530\" height=\"340\" src=\"http://api.map.baidu.com/staticimage?center=103.603058,30.894654&zoom=17&width=530&height=340&markers=103.603058,30.894654\"/> </p><p style=\"margin-top: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; color: rgb(86, 83, 71); line-height: 26px; text-indent: 2em; font-family: Arial, Helvetica, FreeSans, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">2003年建校之初，学校就明确了服务行业及区域经济发展的应用型办学定位。办学十五年来,学校以教育创造学生价值为理念，构建了产教融合、面向应用的办学体制，形成了校企合作、协同共赢的运行机制，并在全校范围实施了TOPCARES一体化人才培养模式，已累计为社会培养了2万余名毕业生，2013年以来各年度就业率均在95％以上，人才培养质量得到了用人单位、社会各界的广泛认可，2016年学校成为四川省向应用型整体转型改革试点高校之一。</p><p style=\"margin-top: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; color: rgb(86, 83, 71); line-height: 26px; text-indent: 2em; font-family: Arial, Helvetica, FreeSans, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">建校以来，学校共获省级以上教学成果奖2项，网络工程实验教学中心获批成为高等学校省级实验教学示范中心。学校现有本科专业中，有3个省级综合改革试点专业，3个省级卓越工程师培养计划专业，4个省级重点特色专业，3个省级地方普通本科高校应用型示范专业。</p><p style=\"margin-top: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; color: rgb(86, 83, 71); line-height: 26px; text-indent: 2em; font-family: Arial, Helvetica, FreeSans, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">学校2003年就建立了大学生创业中心（Student Office &amp; Venture Office，简称 SOVO），探索将创新创业教育融入人才培养全过程。2014年以来，SOVO先后获得多项国家、省市级资质认定及荣誉，包括省级创新创业教育综合改革试点单位、省级大学生创新创业俱乐部、深化创新创业教育基地建设示范高校、成都市已建创新创业载体（苗圃）、 成都创新地标等，2017年成功备案四川省省级众创空间。</p><p style=\"margin-top: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; color: rgb(86, 83, 71); line-height: 26px; text-indent: 2em; font-family: Arial, Helvetica, FreeSans, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">学校立足自身优势学科专业，积极开展应用研发与科技服务。自建校以来，不断加强应用型学科建设，在科研方面取得了很多应用成果。近三年来，承担教育部及省市级纵向科研项目71项，签订技术开发、咨询、成果转化等横向产学研合作项目19项。学校共获得软件著作权4项,授权专利7项。近三年来，共发表学术论文362篇,其中核心期刊论文40篇, SCI检索论文6篇,EI检索论文9篇,ISTP检索论文5篇,其他国际会议论文26篇。学校以优势专业方向为基础,成立了8个校级研究所和实验室，进一步提升了学校科技创新和社会服务能力。</p><p style=\"margin-top: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; color: rgb(86, 83, 71); line-height: 26px; text-indent: 2em; font-family: Arial, Helvetica, FreeSans, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">学校坚持开放办学和国际合作，目前已与美国佛罗里达州立国际大学、英国斯旺西大学、爱尔兰莱特肯尼理工学院、日本神户国际大学、波兰华沙理工大学、澳大利亚莫纳什大学等近60所国外高校建立友好合作关系，并与爱尔兰莱特肯尼理工学院共建了创新创业中心，与美国休斯顿技术中心签订了创新创业合作协议。目前已开展了留学生学历教育、海外实训项目、跨文化项目、交换生项目等多种合作形式，每年来校长短期留学生30余人，出国留学和短期交流学生60人左右。</p><p style=\"margin-top: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; color: rgb(86, 83, 71); line-height: 26px; text-indent: 2em; font-family: Arial, Helvetica, FreeSans, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">成都东软学院自办学以来，被省级政府部门授予四川省十大高校品牌、四川省文明校园称号；被市政府及行业协会评为成都市软件人才产销衔接先进培训机构、市职业技能竞赛先进单位、抗震救灾先进集体、内保“先进单位”、成都软件行业协会优秀会员单位；获评都江堰市“平安单位”、市“人才开发先进单位”。2014年学校获得教育部第三届全国民办高校党的建设和思想政治工作优秀成果奖，连续两年获得“全国民办高校党建工作优秀论文优秀奖”，连续两年被华西都市报及多家主流媒体评选为“四川省十大教育品牌”，并被授予“影响中国西部的教育品牌”。</p><p style=\"margin-top: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; color: rgb(86, 83, 71); line-height: 26px; text-indent: 2em; font-family: Arial, Helvetica, FreeSans, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">面向未来，学校将全面贯彻落实党和国家的教育方针，遵循高等教育规律，以立德树人为根本任务，不断向纵深推进TOPCARES教育教学改革，切实把培养学生社会责任感、创新精神、国际视野、实践能力落实到人才培养全过程。强化内涵，突出特色，不断增强学校为学习者创造价值的能力，为行业企业技术进步服务的能力，以及为区域经济和社会发展服务的能力。努力把学校建设成为西部地区具有显著行业特色和创新创业教育特色的高水平应用技术大学。</p><p style=\"margin-top: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; color: rgb(86, 83, 71); line-height: 26px; text-indent: 2em; font-family: Arial, Helvetica, FreeSans, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<img src=\"https://www.nsu.edu.cn/about/images/new_small/chengdu_park.png\"/> <img src=\"https://www.nsu.edu.cn/about/images/new_small/cdnii.png\"/> </p><p style=\"text-align: center;\"><br/> </p>', '学以致用', 'gx', 51, 1, 'org/2019/02/63d0f703918fa0ec7c5ee45b209759ee3c6ddbcf.jpg', '四川省成都市都江堰青城山镇东软大道1号', 0, 3, '2019-02-16 15:14:00.000000', 2);
INSERT INTO `organization_courseorg` VALUES (2, '千锋教育', '<p style=\"text-align:center\"><img width=\"530\" height=\"340\" src=\"http://api.map.baidu.com/staticimage?center=116.376527,40.043146&zoom=18&width=530&height=340&markers=116.376527,40.043146\"/> </p><p class=\"wow fadeInLeft\" style=\"padding: 0px; margin-top: 0px; margin-bottom: 20px; font-family: 微软雅黑; animation-name: fadeInLeft; font-size: medium; line-height: 32px; color: rgb(102, 102, 102); text-indent: 2em; white-space: normal; visibility: visible;\">千锋教育隶属于北京千锋互联科技有限公司，一直秉承“做真实的自己，用良心做教育”的理念，致力于打造IT教育全产业链人才服务平台，公司总部位于北京，目前已在深圳、上海、郑州、广州、大连、武汉、成都、西安、杭州、青岛、重庆、长沙、哈尔滨、南京、太原、沈阳成立了分公司，年培养优质人才20000余人，同期在校学员5000余人，合作院校超500所，合作企业超10000家，每年有数百万名学员受益于千锋教育组织的技术研讨会、技术培训课、网络公开课及免费教学视频。</p><p class=\"wow fadeInLeft\" style=\"padding: 0px; margin-top: 0px; margin-bottom: 20px; font-family: 微软雅黑; animation-name: fadeInLeft; font-size: medium; line-height: 32px; color: rgb(102, 102, 102); text-indent: 2em; white-space: normal; visibility: visible;\">千锋历程精彩纷呈，获得荣誉包括：中关村移动互联网产业联盟副理事长单位、中国软件协会教育培训委员会认证一级培训机构、中关村国际孵化软件协会授权中关村移动互联网学院、教育部教育管理信息中心指定移动互联网实训基地等。</p><p class=\"wow fadeInLeft\" style=\"padding: 0px; margin-top: 0px; margin-bottom: 20px; font-family: 微软雅黑; animation-name: fadeInLeft; font-size: medium; line-height: 32px; color: rgb(102, 102, 102); text-indent: 2em; white-space: normal; visibility: visible;\">千锋教育面授课程包含HTML5大前端培训、JavaEE+分布式开发培训、Python全栈+人工智能培训、全链路UI/UE设计培训、云计算+信息安全培训、全栈软件测试培训、大数据+人工智能培训、物联网+嵌入式培训、Unity游戏开发培训、区块链、PHP全栈+服务器集群培训、网络安全、红帽RHCE认证，采用全程面授高品质、高体验培养模式，教学大纲紧跟企业需求，拥有全国一体化就业保障服务，成为学员信赖的IT职业教育品牌。</p><p><br/> </p>', '良心教育', 'pxjg', 9, 0, 'org/2019/02/500fd9f9d72a60590fc3c9ea2134349b023bba6a.jpg', '北京市海淀区宝盛北里西区28号天丰利商城4层', 0, 2, '2019-02-16 16:31:00.000000', 1);
INSERT INTO `organization_courseorg` VALUES (3, '北京大学', '<p style=\"border: 0px; padding: 0.75em 0px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, &quot;Microsoft Yahei&quot;, &quot;Lucida Grande&quot;, Tahoma, Helvetica, sans-serif; -webkit-font-smoothing: subpixel-antialiased; text-indent: 2em; font-size: 1.3em; line-height: 1.75em; color: rgb(86, 86, 86); white-space: normal; background-color: rgb(255, 255, 255);\">北京大学创办于1898年，初名京师大学堂，是中国第一所国立综合性大学，也是当时中国最高教育行政机关。辛亥革命后，于1912年改为现名。</p><p style=\"border: 0px; padding: 0.75em 0px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, &quot;Microsoft Yahei&quot;, &quot;Lucida Grande&quot;, Tahoma, Helvetica, sans-serif; -webkit-font-smoothing: subpixel-antialiased; text-indent: 2em; font-size: 1.3em; line-height: 1.75em; color: rgb(86, 86, 86); white-space: normal; background-color: rgb(255, 255, 255);\">作为新文化运动的中心和“五四”运动的策源地，作为中国最早传播马克思主义和民主科学思想的发祥地，作为中国共产党最早的活动基地，北京大学为民族的振兴和解放、国家的建设和发展、社会的文明和进步做出了不可替代的贡献，在中国走向现代化的进程中起到了重要的先锋作用。爱国、进步、民主、科学的传统精神和勤奋、严谨、求实、创新的学风在这里生生不息、代代相传。</p><p style=\"border: 0px; padding: 0.75em 0px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, &quot;Microsoft Yahei&quot;, &quot;Lucida Grande&quot;, Tahoma, Helvetica, sans-serif; -webkit-font-smoothing: subpixel-antialiased; text-indent: 2em; font-size: 1.3em; line-height: 1.75em; color: rgb(86, 86, 86); white-space: normal; background-color: rgb(255, 255, 255);\">1917年，著名教育家蔡元培出任北京大学校长，他“循思想自由原则，取兼容并包主义”，对北京大学进行了卓有成效的改革，促进了思想解放和学术繁荣。陈独秀、李大钊、毛泽东以及鲁迅、胡适等一批杰出人才都曾在北京大学任职或任教。</p><p style=\"border: 0px; padding: 0.75em 0px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, &quot;Microsoft Yahei&quot;, &quot;Lucida Grande&quot;, Tahoma, Helvetica, sans-serif; -webkit-font-smoothing: subpixel-antialiased; text-indent: 2em; font-size: 1.3em; line-height: 1.75em; color: rgb(86, 86, 86); white-space: normal; background-color: rgb(255, 255, 255);\">1937年卢沟桥事变后，北京大学与清华大学、南开大学南迁长沙，共同组成长沙临时大学。不久，临时大学又迁到昆明，改称国立西南联合大学。抗日战争胜利后，北京大学于1946年10月在北平复学。</p><p style=\"border: 0px; padding: 0.75em 0px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, &quot;Microsoft Yahei&quot;, &quot;Lucida Grande&quot;, Tahoma, Helvetica, sans-serif; -webkit-font-smoothing: subpixel-antialiased; text-indent: 2em; font-size: 1.3em; line-height: 1.75em; color: rgb(86, 86, 86); white-space: normal; background-color: rgb(255, 255, 255);\">中华人民共和国成立后，全国高校于1952年进行院系调整，北京大学成为一所以文理基础教学和研究为主的综合性大学，为国家培养了大批人才。据不完全统计，北京大学的校友和教师有400多位两院院士，中国人文社科界有影响的人士相当多也出自北京大学。</p><p style=\"border: 0px; padding: 0.75em 0px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, &quot;Microsoft Yahei&quot;, &quot;Lucida Grande&quot;, Tahoma, Helvetica, sans-serif; -webkit-font-smoothing: subpixel-antialiased; text-indent: 2em; font-size: 1.3em; line-height: 1.75em; color: rgb(86, 86, 86); white-space: normal; background-color: rgb(255, 255, 255);\">改革开放以来，北京大学进入了一个前所未有的大发展、大建设的新时期，并成为国家“211工程”重点建设的两所大学之一。</p><p style=\"border: 0px; padding: 0.75em 0px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, &quot;Microsoft Yahei&quot;, &quot;Lucida Grande&quot;, Tahoma, Helvetica, sans-serif; -webkit-font-smoothing: subpixel-antialiased; text-indent: 2em; font-size: 1.3em; line-height: 1.75em; color: rgb(86, 86, 86); white-space: normal; background-color: rgb(255, 255, 255);\">1998年5月4日，北京大学百年校庆之际，国家主席江泽民在庆祝北京大学建校一百周年大会上发表讲话，发出了“为了实现现代化，我国要有若干所具有世界先进水平的一流大学”的号召。在国家的支持下，北京大学适时启动“创建世界一流大学计划”，从此，北京大学的历史翻开了新的一页。</p><p style=\"border: 0px; padding: 0.75em 0px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, &quot;Microsoft Yahei&quot;, &quot;Lucida Grande&quot;, Tahoma, Helvetica, sans-serif; -webkit-font-smoothing: subpixel-antialiased; text-indent: 2em; font-size: 1.3em; line-height: 1.75em; color: rgb(86, 86, 86); white-space: normal; background-color: rgb(255, 255, 255);\">2000年4月3日，北京大学与原北京医科大学合并，组建了新的北京大学。原北京医科大学的前身是国立北京医学专门学校，创建于1912年10月26日。20世纪三、四十年代，学校一度名为北平大学医学院，并于1946年7月并入北京大学。1952年在全国高校院系调整中，北京大学医学院脱离北京大学，独立为北京医学院。1985年更名为北京医科大学，1996年成为国家首批“211工程”重点支持的医科大学。两校合并进一步拓宽了北京大学的学科结构，为促进医学与人文社会科学及理科的结合，改革医学教育奠定了基础。</p><p style=\"border: 0px; padding: 0.75em 0px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, &quot;Microsoft Yahei&quot;, &quot;Lucida Grande&quot;, Tahoma, Helvetica, sans-serif; -webkit-font-smoothing: subpixel-antialiased; text-indent: 2em; font-size: 1.3em; line-height: 1.75em; color: rgb(86, 86, 86); white-space: normal; background-color: rgb(255, 255, 255);\">近年来，在“211工程”和“985工程”的支持下，北京大学进入了一个新的历史发展阶段，在学科建设、人才培养、师资队伍建设、教学科研等各方面都取得了显著成绩，为将北大建设成为世界一流大学奠定了坚实的基础。今天的北京大学已经成为国家培养高素质、创造性人才的摇篮、科学研究的前沿和知识创新的重要基地和国际交流的重要桥梁和窗口。</p><p style=\"border: 0px; padding: 0.75em 0px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, &quot;Microsoft Yahei&quot;, &quot;Lucida Grande&quot;, Tahoma, Helvetica, sans-serif; -webkit-font-smoothing: subpixel-antialiased; text-indent: 2em; font-size: 1.3em; line-height: 1.75em; color: rgb(86, 86, 86); white-space: normal; background-color: rgb(255, 255, 255);\">现任校党委书记邱水平、校长郝平。</p><p><br/></p>', '全国知名', 'gx', 3, 0, 'org/2019/02/b21bb051f81986183a28291b47ed2e738ad4e6c6.jpg', '北京市海淀区颐和园路5号', 0, 0, '2019-02-16 21:20:00.000000', 1);
INSERT INTO `organization_courseorg` VALUES (4, '天水师范学院', '<p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;text-indent: 2em;line-height: 35px;color: rgb(85, 85, 85);font-size: 15px;font-family: &#39;Microsoft YaHei&#39;;white-space: normal\"><span style=\";padding: 0px;font-family: 宋体, simsun;font-size: 20px\"><span style=\";padding: 0px;font-size: 18px\">学校始建于1959年。1988年以“为基础教育培养合格师资，方向明确，成绩显著”受到国家教委的表彰奖励。2000年由天水师范高等专科学校升格为天水师范学院，开始本科招生。2007年5月通过教育部本科教学工作水平评估。2011年被教育部列为培养教育硕士专业学位研究生试点工作建设单位，2013年开始教育硕士研究生培养工作，<span style=\";padding: 0px\">2015</span><span style=\";padding: 0px\">年被甘肃省列为首批转型发展试点院校，</span><span style=\";padding: 0px\">2018年被国务院学位办列为硕士学位授予单位。几十年</span>来，学校秉承“困境中求生存，奋斗中谋发展”的精神，已为社会培养了数以万计的以基础教育师资为主的高素质应用型人才，得到了社会的普遍认可。近年来，学校立足自身实际，紧跟高等教育结构调整趋势，初步形成了教师教育、工程技术、商务管理、文化体艺等四大类应用型专业群，确定了建设师范特色鲜明的高水平应用型大学的办学目标，全力服务区域经济社会发展。</span></span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;text-indent: 2em;line-height: 35px;color: rgb(85, 85, 85);font-size: 15px;font-family: &#39;Microsoft YaHei&#39;;white-space: normal\"><span style=\";padding: 0px;font-size: 18px\">&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;text-indent: 2em;line-height: 35px;color: rgb(85, 85, 85);font-size: 15px;font-family: &#39;Microsoft YaHei&#39;;white-space: normal\"><span style=\";padding: 0px;font-family: 宋体, simsun;font-size: 18px\">【机构设置】学校下设17个二级学院，64个教学系（部），3个教辅单位，23个党政管理机构及群团组织；设有18个校属科研机构<span style=\";padding: 0px\">，27个院属科研机构；</span><span style=\";padding: 0px\">有1个教育部备案国别与区域研究中心，</span><span style=\";padding: 0px\">10</span><span style=\";padding: 0px\">个省级及地厅级科研机构（平台）（其中<span style=\";padding: 0px\">省级工程技术研究</span>中心<span style=\";padding: 0px\">1个、</span>省级重点实验室1个、甘肃省高校人文社会科学重点研究基地3个、甘肃省高校省级重点实验室2个、甘肃省高校新型智库1个）</span>，3个省级实验教学示范中心。</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;text-indent: 2em;line-height: 35px;color: rgb(85, 85, 85);font-size: 15px;font-family: &#39;Microsoft YaHei&#39;;white-space: normal\"><span style=\";padding: 0px;font-size: 18px\">&nbsp; &nbsp; &nbsp; &nbsp;</span>&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;text-indent: 2em;line-height: 35px;color: rgb(85, 85, 85);font-size: 15px;font-family: &#39;Microsoft YaHei&#39;;white-space: normal\"><span style=\";padding: 0px;font-family: 宋体, simsun;font-size: 18px\">【办学条件】学校占地670亩，校舍建筑面积36.8万平方米；馆藏图书226万册，数据库32种；教学仪器设备值1.5亿元，固定资产8.47亿元。建成了以远程教育、综合教务管理及校园计算机网、通讯网和有线电视网为主体的现代公共教育服务网络系统。</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;text-indent: 2em;line-height: 35px;color: rgb(85, 85, 85);font-size: 15px;font-family: &#39;Microsoft YaHei&#39;;white-space: normal\"><span style=\";padding: 0px;font-size: 18px\">&nbsp; &nbsp; &nbsp; &nbsp;</span>&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;text-indent: 2em;line-height: 35px;color: rgb(85, 85, 85);font-size: 15px;font-family: &#39;Microsoft YaHei&#39;;white-space: normal\"><span style=\";padding: 0px;font-family: 宋体, simsun;font-size: 18px\">【师资队伍】学校有一支爱岗敬业、结构合理、素质优良的师资队伍。现有教职工943人（其中专任教师686人），有教授（研究员）105人、副教授281人，有研究生以上学历的教师540余人，有博士生导师1人、硕士生导师82人。有全国优秀教师、全国先进工作者、国务院特殊津贴专家、教育部新世纪优秀人才扶持计划人选等10人，甘肃省领军人才、优秀专家、飞天学者、师德标兵、“园丁奖”获得者、教学名师、“四个一批”拔尖创新人才、青年教师成才奖获得者、陇原青年创新人才扶持计划人选等80余人。</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;text-indent: 2em;line-height: 35px;color: rgb(85, 85, 85);font-size: 15px;font-family: &#39;Microsoft YaHei&#39;;white-space: normal\"><span style=\";padding: 0px;font-size: 18px\">&nbsp; &nbsp; &nbsp; &nbsp;</span>&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;text-indent: 2em;line-height: 35px;color: rgb(85, 85, 85);font-size: 15px;font-family: &#39;Microsoft YaHei&#39;;white-space: normal\"><span style=\";padding: 0px;font-family: 宋体, simsun;font-size: 18px\">【人才培养】学校面向全国27个省（市、区）招生，现有各类在校生16513人，其中普通本科生15029人，研究生365人，继续教育类学生1167人，留学生4人，预科生96人。</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;text-indent: 2em;line-height: 35px;color: rgb(85, 85, 85);font-size: 15px;font-family: &#39;Microsoft YaHei&#39;;white-space: normal\"><span style=\";padding: 0px;font-size: 18px\">&nbsp; &nbsp; &nbsp; &nbsp;</span>&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;text-indent: 2em;line-height: 35px;color: rgb(85, 85, 85);font-size: 15px;font-family: &#39;Microsoft YaHei&#39;;white-space: normal\"><span style=\";padding: 0px;font-family: 宋体, simsun;font-size: 18px\">【学科专业】学校现有历史学、生态学2个甘肃省一流特色培育学科；有专门史、文艺学2个省级重点建设学科，微生物学1个省级重点培育学科；有中国现当代文学等6个校级重点学科方向，无机质文物保护等10个校级重点培育学科方向。有1个教育硕士专业学位授权点（14个学科领域招生方向），57个本科专业（其中有国家级特色专业2个，省级特色专业11个）。有全国高校黄大年式教师团队1个，省级教学团队5个。有省级精品课程22门，省级精品资源共享课2门。</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;text-indent: 2em;line-height: 35px;color: rgb(85, 85, 85);font-size: 15px;font-family: &#39;Microsoft YaHei&#39;;white-space: normal\"><span style=\";padding: 0px;font-size: 18px\">&nbsp; &nbsp; &nbsp; &nbsp;</span>&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;text-indent: 2em;line-height: 35px;color: rgb(85, 85, 85);font-size: 15px;font-family: &#39;Microsoft YaHei&#39;;white-space: normal\"><span style=\";padding: 0px;font-family: 宋体, simsun;font-size: 18px\">【科学研究】近年来，学校共获得各类科研项目1500余项，其中，国家级项目105项，省（部）级项目249项；先后有500余项科研成果获奖，其中获省（部）级奖励91项；出版专著、教材650余部；在国内外学术刊物上发表科研论文9000余篇，其中，在SCI、EI源刊物发表论文500余篇，CSSCI源刊物发表论文500余篇。主办的学术刊物《天水师范学院学报》先后多次荣获“全国优秀社科学报”称号，“陇右文化研究”栏目多次荣获“全国社科学报优秀栏目”称号。</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;text-indent: 2em;line-height: 35px;color: rgb(85, 85, 85);font-size: 15px;font-family: &#39;Microsoft YaHei&#39;;white-space: normal\"><span style=\";padding: 0px;font-size: 18px\">&nbsp; &nbsp; &nbsp; &nbsp;</span>&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;text-indent: 2em;line-height: 35px;color: rgb(85, 85, 85);font-size: 15px;font-family: &#39;Microsoft YaHei&#39;;white-space: normal\"><span style=\";padding: 0px;font-family: 宋体, simsun;font-size: 18px\">【国际合作】学校坚持走国际化办学的道路，先后与英国、美国、法国、澳大利亚、乌克兰等国及台湾地区的多所高校签署了国际教育交流合作协议。近年来，已选派30余名优秀学生赴乌克兰、波兰、斯洛伐克、阿塞拜疆、摩尔多瓦等国家公费留学。自2003年开始招收外国留学生，至今已有来自多个国家的40余名外国留学生来校学习。</span></p><p><br/> </p>', '明德新民', 'gx', 3, 0, 'org/2019/02/3ac79f3df8dcd1000c8ec0f8728b4710b8122fdc.jpg', '甘肃省天水市秦州区藉河南路105号', 0, 0, '2019-02-16 21:25:00.000000', 3);
INSERT INTO `organization_courseorg` VALUES (5, '清华大学', '<p style=\"border: 0px; padding: 0px 0px 0.75em; font-size: 14px; margin-top: 0px; margin-bottom: 0px; font-family: &quot;Lucida Sans Unicode&quot;, &quot;Lucida Grande&quot;, Tahoma, Arial, Helvetica, sans-serif; -webkit-font-smoothing: subpixel-antialiased; color: rgb(68, 68, 68); white-space: normal; background-color: rgb(255, 255, 255);\">清华大学的前身清华学堂始建于1911年，1912年更名为清华学校。1928年更名为国立清华大学。1937年抗日战争全面爆发后南迁长沙，与北京大学、南开大学组建国立长沙临时大学，1938年迁至昆明改名为国立西南联合大学。1946年迁回清华园，设有文、法、理、工、农等5个学院、26个系。</p><p style=\"border: 0px; padding: 0.75em 0px; font-size: 14px; margin-top: 0px; margin-bottom: 0px; font-family: &quot;Lucida Sans Unicode&quot;, &quot;Lucida Grande&quot;, Tahoma, Arial, Helvetica, sans-serif; -webkit-font-smoothing: subpixel-antialiased; color: rgb(68, 68, 68); white-space: normal; background-color: rgb(255, 255, 255);\">　　1952年全国高等学校院系调整后，清华大学成为一所多科性工业大学，重点为国家培养工程技术人才，被誉为“红色工程师的摇篮”。改革开放以来，清华大学逐步确立了建设世界一流大学的长远目标，进入了蓬勃发展的新时期。学校先后恢复或新建了理科、经济、管理和文科类学科，并成立了研究生院和继续教育学院。1999年，与中央工艺美术学院合并成立清华大学美术学院。2012年，原中国人民银行研究生部并入，成为清华大学五道口金融学院。在国家和社会的大力支持下，通过实施“211工程”“985工程”，开展“双一流”建设，清华大学在人才培养、科学研究、社会服务、文化传承创新、国际合作交流等方面都取得了长足进展。目前，清华大学共设20个学院、58个系，已成为一所具有理学、工学、文学、艺术学、历史学、哲学、经济学、管理学、法学、教育学和医学等11个学科门类的综合性、研究型大学。</p><p style=\"border: 0px; padding: 0.75em 0px; font-size: 14px; margin-top: 0px; margin-bottom: 0px; font-family: &quot;Lucida Sans Unicode&quot;, &quot;Lucida Grande&quot;, Tahoma, Arial, Helvetica, sans-serif; -webkit-font-smoothing: subpixel-antialiased; color: rgb(68, 68, 68); white-space: normal; background-color: rgb(255, 255, 255);\">　　面向未来，清华大学将秉持“自强不息、厚德载物”的校训和“行胜于言”的校风，坚持“中西融汇、古今贯通、文理渗透”的办学风格和“又红又专、全面发展”的培养特色，弘扬“爱国奉献、追求卓越”传统和“人文日新”精神，以习近平新时代中国特色社会主义思想为指引，深入学习贯彻党的十九大精神，坚持正确方向、坚持立德树人、坚持服务国家、坚持改革创新，持续深入推进综合改革和“双一流”建设，努力在创建世界一流大学方面走在前列，为实现高等教育内涵式发展、建设高等教育强国作出新的更大的贡献。</p><p><br/></p>', '厚德载物', 'gx', 3, 0, 'org/2019/02/32fa828ba61ea8d34792ac8c9c0a304e241f5882.png', '北京市海淀区清华大学', 0, 0, '2019-02-16 21:29:00.000000', 1);
INSERT INTO `organization_courseorg` VALUES (6, '四川外国语大学成都学院', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; text-indent: 2em; color: rgb(33, 37, 41); font-family: -apple-system, system-ui, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; white-space: normal; background-color: rgb(255, 255, 255);\">四川外国语大学成都学院是国家教育部批准设立的全日制普通本科高校。学院位于成都都江堰，紧邻国家5A景区、世界文化遗产地——青城山，校园环境幽雅，空气清新，具有得天独厚的人文自然环境，是读书治学的理想园地。</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; text-indent: 2em; color: rgb(33, 37, 41); font-family: -apple-system, system-ui, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; white-space: normal; background-color: rgb(255, 255, 255);\">学院全面贯彻党的教育方针，切实把立德树人的根本任务落到实处，党建工作制度健全，思想政治工作扎实开展。学院以“创建特色鲜明的一流应用型大学”为发展目标，大力弘扬“团结、勤奋、求实、创新”的校训，坚持“传播世界先进文化，促进国际交流合作，培养时代创新人才，服务经济社会发展”的办学理念，坚持“立足四川，面向全国，融入世界”和“走国际化道路，全方位、多层次、宽领域地开放办学、合作办学”的办学策略，努力培养“德才兼备，一专多能，具有国际视野的高素质复合型涉外人才”。</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; text-indent: 2em; color: rgb(33, 37, 41); font-family: -apple-system, system-ui, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; white-space: normal; background-color: rgb(255, 255, 255);\">学院是四川省唯一的专业外语院校，也是四川省开设语种最多的普通高校，外语特色鲜明，学科优势突出。学院现有全日制在校生15500余名，开设有英语、日语、德语、西班牙语、法语、葡萄牙语、朝鲜语（韩语）、俄语、越南语、泰语、意大利语、阿拉伯语、波兰语、捷克语、匈牙利语等15个外语语种和翻译、商务英语、汉语国际教育、新闻学、国际经济与贸易、国际商务、会展经济与管理、体育服务与管理、酒店管理等与外语相关的本专科专业，以及经济与贸易、国际物流管理、外事管理、跨境电商、国际新闻、涉外旅游、国际酒店管理、师范、涉外文秘、学前英语教育管理、中小学英语教学、商务翻译、国际高尔夫运营与管理、国际足球运营与管理、国际网球运营与管理等专业方向。学院已形成以外国语言文学学科专业为重点，与中国语言文学类、经济与贸易类、工商管理类、新闻传播学类、旅游管理类、体育学类学科专业互为支撑、相互融合、协调发展的学科专业布局。</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; text-indent: 2em; color: rgb(33, 37, 41); font-family: -apple-system, system-ui, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; white-space: normal; background-color: rgb(255, 255, 255);\">学院构建了一支德才兼备、教学精湛、结构合理、充满活力的高素质专业化教师队伍，常年聘有来自十多个国家的外籍专家和教师。学院拥有功能齐全的专业化、现代化教学设施设备，多媒体覆盖所有教室，配备有多语种同声传译实验室、综合语言实验室、工程技术法语实训室、俄语高级翻译实训室、国际商务英语实训室、高尔夫虚拟仿真实验室、新闻录播实训室等实验室。学院实行融知识、能力、素质于一体的“1+N”人才培养模式，持续推进“外语+”内涵的融通发展和创新发展，人才培养质量受到了各界的充分肯定。学院每年毕业生就业率均保持在95%左右，国际第三方调查公司麦可思发布的高校就业能力排行榜，学院位列四川省普通高校第三名；学生在全国外语专业等级考试中屡次远超全国平均合格率，在各类专业竞赛中屡次荣获第一名。</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; text-indent: 2em; color: rgb(33, 37, 41); font-family: -apple-system, system-ui, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; white-space: normal; background-color: rgb(255, 255, 255);\">学院不断深化国际化办学的发展战略，广泛开展国际交流与合作，与法国、德国、西班牙、荷兰、美国、英国、日本、韩国、加拿大、新西兰、俄罗斯、泰国、越南、马来西亚等20余个国家的70余所高校建立了友好关系，开设了适应各语种、不同层次的本升硕、双学位、交换生、专升本、专升硕、国际班等留学项目，每年都要派出数百名学生赴国外高校留学。同时，学院先后招收了来自俄罗斯、韩国、意大利、哈萨克斯坦、尼泊尔、法国、新加坡、日本、墨西哥、德国等国家的学生前来留学和交流。</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; text-indent: 2em; color: rgb(33, 37, 41); font-family: -apple-system, system-ui, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; white-space: normal; background-color: rgb(255, 255, 255);\">学院发挥外语资源优势和外语人才优势，积极为经济社会发展服务，如为四川省国税局、青海省国税局、东方电器集团、中铁二局、攀钢集团、四川省运动技术学院等众多单位举办了外语培训；与遂宁市、简阳市、凉山彝族自治州、都江堰市、崇州市等地合作，开展了中小学师资培训、他语种教育等；选派了众多学生参与欧洽会、西博会、世界审计组织理事会、中国-西班牙论坛、新加坡“春城洋溢华夏情”文化艺术旅游展等大型活动的多语言服务和志愿服务工作。</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; text-indent: 2em; color: rgb(33, 37, 41); font-family: -apple-system, system-ui, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; white-space: normal; background-color: rgb(255, 255, 255);\">学院形成了内涵丰富、百花齐放的校园文化，开展了各具特色、丰富多彩的各类活动。如聘请了著名演员、周恩来总理扮演者刘劲等担任客座教授和主办讲座，邀请了战旗文工团、佛山粤剧院等演出弘扬社会主义核心价值观的剧目；打造了以外语晚会、口译大赛、外语影视配音大赛等为代表十大外语专业赛事；成立了以民管乐团、合唱团、声乐队、民舞队、戏剧队等组成大学生艺术团，设立了CIMUN模拟联合国协会、VOC校园之声广播站、国旗护卫队、青年志愿者协会、口语协会、彼岸诗社、环保协会等学生社团；原创歌曲文化、多语种歌曲文化已形成了良好影响，学院创作的《独立学院之歌》已经传唱于全国的独立学院，学生多语种歌曲曾多次走红网络，并应邀参加了中央电视台的《星光大道》和《出彩中国人》。</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; text-indent: 2em; color: rgb(33, 37, 41); font-family: -apple-system, system-ui, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; white-space: normal; background-color: rgb(255, 255, 255);\">学院是中国独立学院协作会常务理事、副会长单位，四川省独立学院协作会会长单位，四川省高等教育学会副会长单位，四川省民办教育协会副会长单位，中国高校外语慕课联盟理事单位，全国独立学院及转设高校外语教学研究会副会长单位，四川省应用外语研究会副会长单位，四川省高等教育学会高校外语教学研究会副会长单位，先后获评“全国先进独立学院”、 四川省“高校毕业生就业工作优秀单位”、四川省“省级职教师资培养培训基地”、亚洲教育论坛“国际教育交流基地”、四川省“健康活力教育优秀单位”、 成都市“涉外管理工作先进单位”、 四川教育品牌榜中榜“中国西部十大高校品牌”、成都翻译协会“最佳战略支持单位”等荣誉。在武书连中国高校排行榜、艾瑞深中国校友会高校排行榜等榜单中，学院均位列中国语言类独立学院第一名。</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; text-indent: 2em; color: rgb(33, 37, 41); font-family: -apple-system, system-ui, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; white-space: normal; background-color: rgb(255, 255, 255);\">为人民立校，为祖国立教，为学子勇攀高峰，为中华寰宇巍然。学院将继续深化内涵建设，打造鲜明特色，立德树人，教书育人，办好人民满意的教育，努力创建特色鲜明的一流应用型大学。</p><p><br/></p>', '求实创新', 'gx', 4, 0, 'org/2019/02/37d3d539b6003af3ff2c7c96372ac65c1138b6b6.jpg', '四川省成都市都江堰市大观镇高尔夫大道367号', 0, 0, '2019-02-16 21:31:00.000000', 2);
INSERT INTO `organization_courseorg` VALUES (7, '达内教育', '<p>隶属于加拿大达内IT培训集团，于2007年成立 ，是达内IT培训集团直属学院。学院位于北京中关村，与北大、清华、中科院为邻，学术氛围浓厚。学院成立旨在建立软件高级人才培养的快速通道，促进我国信息产业迅速发展。</p><p>依托达内集团国内领先的课程体系（TTS6.0），雄厚的师资力量，广阔的就业平台，迄今为止已与国内上万家IT企业进行人才输送合作，其中紧密合作企业4000余家、深入合作企业200余家、订单输送联盟企业107家。</p><p>截止到2010年年底，学院已收到：联盟中65家会员企业的1231个PHP开发工程师、.NET开发工程师的招聘需求。在先进的课程体系、雄厚的师资力量的保障下，达内PHP学院学员专业就业率达到98%，学员毕业首月薪资平均达到3800元/月。</p><p>做为国内IT培训的领导品牌，达内集团的每一名员工都以“帮助每一个学员成就梦想”为己任，也正因为达内人的执着与努力，达内集团已成功为社会输送了50000余名合格人才，为中国IT行业的发展做出了巨大的贡献。</p><p>在21世纪的IT长河中，达内这艘IT培训航母将以劈风斩浪之势前行，希望达内学员和准学员们能在IT行业迅速发展的浪潮中，乘着达内这艘航母成就一番宏图伟业！</p><p>经过年运营，达内在多伦多、北京、上海、杭州、南京、广州等30个城市，建设50个分中心，拥有近20000平米培训场地，几千名学员同时在校学习。自2002年进入中国以来，已经为IBM、微软、摩托罗拉、华为、Yahoo、NEC、用友、神州数码、联想、新浪、搜狐、亚信、中国电信、中国银行、花旗银行等中外知名IT公司培养输送数五万名中高级软件人才。</p><p>基于成熟、规范的IT人才培训体系和储备过万的专业开发工程师人才库，达内面向国际、国内中高端IT公司提供人才推荐、人才外包、校园招聘、定单培训等多项IT人才服务。</p><p><br/></p>', '开放合作', 'pxjg', 4, 0, 'org/2019/02/logo.png', '北京中关村', 0, 0, '2019-02-16 21:35:00.000000', 1);
INSERT INTO `organization_courseorg` VALUES (8, '黑马程序员', '<p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; line-height: 28px; color: rgb(86, 86, 86); text-indent: 2em; font-family: arial, 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; white-space: normal;\">黑马程序员是传智播客旗下高端IT教育品牌，以务实、质量、创新、分享、专注、责任为核心价值观，致力于服务各大软件企业，解决当前软件开发技术飞速发展，而企业招不到优秀人才的困扰。 目前，“中关村黑马程序员训练营”已成长为行业“学员质量好、课程内容深、企业满意”的移动开发高端训练基地，并被评为中关村软件园重点扶持人才企业。</p><p><br style=\"color: rgb(51, 51, 51); font-family: arial, 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; white-space: normal;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; line-height: 28px; color: rgb(86, 86, 86); text-indent: 2em; font-family: arial, 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; white-space: normal;\">黑马程序员不仅着重培养学员的基础理论知识，更注重培养项目实施管理能力，并密切关注技术革新，不断引入先进的技术，研发更新技术课程，确保学员进入企业后不仅能独立从事开发工作，更能给企业带来新的技术体系和理念。</p><p><br style=\"color: rgb(51, 51, 51); font-family: arial, 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; white-space: normal;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; line-height: 28px; color: rgb(86, 86, 86); text-indent: 2em; font-family: arial, 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; white-space: normal;\">黑马程序员的学员多为大学毕业后，想从事IT行业，但各方面条件还不成熟的年轻人。黑马程序员的学员筛选制度非常严格，包括了严格的技术测试、自学能力测试，还包括性格测试、压力测试、品德测试等。百里挑一的残酷筛选制度确保了学员质量，并降低了企业的用人风险。</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; line-height: 28px; color: rgb(86, 86, 86); text-indent: 2em; font-family: arial, 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; white-space: normal;\">一直以来，黑马程序员的教学研发团队一直致力于打造精品课程资源，不断在产、学、研三个层面创新自己的职教理念与教学方针，并集中黑马程序员的优势力量，有针对性的出版了计算机系列书籍30多册，制作了配套教学视频数十套，并发表各类技术文章数百篇。</p><p><br style=\"color: rgb(51, 51, 51); font-family: arial, 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; white-space: normal;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; line-height: 28px; color: rgb(86, 86, 86); text-indent: 2em; font-family: arial, 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; white-space: normal;\">黑马程序员分享的免费视频教程累计时长10余万小时；率先在业内推出免费公开课，现已经开设700多节；印制现有学科的光盘，并且面向全国范围内免费给学员发放，累计发出去的光盘数量已经突破300万，通过免费提供的资源已经影响了近5000万IT爱好者。</p><p><br style=\"color: rgb(51, 51, 51); font-family: arial, 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; white-space: normal;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; font-size: 14px; line-height: 28px; color: rgb(86, 86, 86); text-indent: 2em; font-family: arial, 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; white-space: normal;\">黑马程序员始终秉承“为莘莘学子改变命运而讲课，为千万学生少走弯路而著书”的使命，以技术视角关注IT产业发展，以深度分享推进产业技术成长，致力于弘扬技术创新，倡导分享、开放和协作，努力打造高质量的IT人才服务平台。</p><p><br/></p>', '专注责任', 'pxjg', 7, 0, 'org/2019/02/f31fbe096b63f6249cd6445e8f44ebf81b4ca3e0.png', '北京市昌平区建材城西路金燕龙办公楼一层', 0, 0, '2019-02-16 21:38:00.000000', 1);
INSERT INTO `organization_courseorg` VALUES (9, '兰州大学', '<p style=\"color: rgb(68, 68, 68); font-family: &quot;Lantinghei SC&quot;, &quot;Open Sans&quot;, Monaco, Arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, STHeiti, &quot;WenQuanYi Micro Hei&quot;, SimSun; font-size: 14px; white-space: normal; text-indent: 2em;\">学校创建于1909年，其前身是清末新政期间设立的甘肃法政学堂，是甘肃近代高等教育开端之标志，开启了西北高等教育的先河。1928年扩建为兰州中山大学，1945年定名为国立兰州大学。新中国成立后，兰州大学坚持党的教育方针，坚持正确的办学方向，发展壮大，迅速崛起。在高等学校院系调整中，被确定为国家十四所综合性大学之一；在“开发大西北” “建立战略后方”的战略目标指引下，成为国家高等教育格局中具有重要战略地位的一所大学，肩负起为国家特别是西部培养高级专门人才与发展科学、技术和文化的历史重任。改革开放以来，学校紧紧抓住国家实施“科教兴国” “人才强国”战略和“211工程” “985工程”的历史机遇，以解放思想为先导，以改革开放为动力，全面提高办学水平，2002年和2004年，原甘肃省草原生态研究所、兰州医学院先后并入兰州大学，使学校的学科更加齐全，综合优势更加突出，迎来了历史上的快速发展时期。2017年，成功入选“双一流”建设高校名单（A类），化学、大气科学、生态学、草学4个一流学科入选“双一流”学科建设名单，学校发展进入了新时代。</p><p style=\"color: rgb(68, 68, 68); font-family: &quot;Lantinghei SC&quot;, &quot;Open Sans&quot;, Monaco, Arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, STHeiti, &quot;WenQuanYi Micro Hei&quot;, SimSun; font-size: 14px; white-space: normal; text-indent: 2em;\">校园面积3545.298亩，建有2个校区，3所附属医院。学校现有本科生19775人，硕士研究生10,572人，博士研究生2,559人。学校现有在职教职工3,718人，其中教学科研人员2,135人，专职管理人员836人，在站博士后142人，其中师资博士后45人。教授等正高职588人，副教授等副高职927人，临床医学教授101人，副教授252人。研究生导师1,695人，其中博士研究生指导教师578人，硕士研究生指导教师1117人。两院院士15人，“千人计划”特聘教授11人，“万人计划”领军人才10人，教育部”长江学者奖励计划“特聘教授18人，国家杰出青年基金获得者22人，百千万人才工程国家级人选12人，“创新人才推进计划”中青年科技创新领军人才8人，教育部“高等学校教学名师”4人，“千人计划“青年项目人选6人，“万人计划”青年拔尖人才5人，“万人计划”教学名师3名，教育部”长江学者奖励计划“青年学者4人，国家优秀青年科学基金获得者23人，教育部新世纪(跨世纪)人才110人，甘肃省高等学校教学名师27人，甘肃省领军人才88人，国家自然科学基金委创新研究群体4个，教育部创新团队8个，国家级教学团队5个。</p><p style=\"color: rgb(68, 68, 68); font-family: &quot;Lantinghei SC&quot;, &quot;Open Sans&quot;, Monaco, Arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, STHeiti, &quot;WenQuanYi Micro Hei&quot;, SimSun; font-size: 14px; white-space: normal; text-indent: 2em;\">兰州大学学科门类齐全，学科特色鲜明，涵盖了12个学科门类。现有8个国家重点学科，2个国家重点（培育）学科，35个省级重点学科，3个省级重点（培育）学科。有2个国家重点实验室，2个国家地方联合工程实验室，1个国家联合实验室， 5个国家国际科技合作基地，7个高等学校学科创新引智基地，6个教育部重点实验室，4个教育部工程研究中心，1个农业农村部重点实验室，17个甘肃省重点实验室，2个甘肃省技术创新中心，4个甘肃省临床医学研究中心，4个甘肃省科技创新服务平台，8个甘肃省野外科学观测研究站，9个甘肃省工程研究中心（工程实验室），2个甘肃省高校重点实验室，13个甘肃省国际科技合作基地，2个教育部人文社会科学重点研究基地，1个教育部区域和国别研究培育基地，4个教育部国别和区域研究中心（备案），1个省级2011协同创新中心，5个甘肃省高等学校人文社会科学重点研究基地，1个甘肃省哲学社会科学重大研究基地，1个甘肃高校精准扶贫智库，4个甘肃高校新型智库。</p><p><br/> </p>', '独树一帜', 'gx', 3, 0, 'org/2019/02/9f510fb30f2442a76324e122d443ad4bd113020a.jpg', '兰州市城关区天水南路222号', 0, 0, '2019-02-16 21:45:00.000000', 4);
INSERT INTO `organization_courseorg` VALUES (10, '西安电子科技大学', '<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-align: justify; text-indent: 2em; line-height: 2em; color: rgb(49, 49, 49); font-family: 微软雅黑; font-size: 14px; white-space: normal; background-color: rgb(249, 247, 248);\"><span style=\"margin: 0px; padding: 0px; font-family: 微软雅黑, &quot;microsoft yahei&quot;;\">西安电子科技大学是以信息与电子学科为主，工、理、管、文多学科协调发展的全国重点大学，直属教育部，是国家“优势学科创新平台”项目和“211工程”项目重点建设高校之一、<span style=\"margin: 0px; padding: 0px; color: rgb(38, 38, 38);\">国家双创示范基地之一、首批35所示范性软件学院、首批9所示范性微电子学院、首批9所获批设立集成电路人才培养基地和首批一流网络安全学院建设示范项目的高校之一。<span style=\"margin: 0px; padding: 0px;\"></span></span></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-align: justify; text-indent: 2em; line-height: 2em; color: rgb(49, 49, 49); font-family: 微软雅黑; font-size: 14px; white-space: normal; background-color: rgb(249, 247, 248);\"><span style=\"margin: 0px; padding: 0px; font-family: 微软雅黑, &quot;microsoft yahei&quot;;\">学校前身是1931年诞生于江西瑞金的中央军委无线电学校，是毛泽东等老一辈革命家亲手创建的第一所工程技术学校。1958年学校迁址西安，1966年转为地方建制，1988年定为现名。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-align: justify; text-indent: 2em; line-height: 30px; color: rgb(49, 49, 49); font-family: 微软雅黑; font-size: 14px; white-space: normal; background-color: rgb(249, 247, 248);\"><span style=\"margin: 0px; padding: 0px; font-family: 微软雅黑, &quot;microsoft yahei&quot;;\"></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-align: justify; text-indent: 2em; line-height: 2em; color: rgb(49, 49, 49); font-family: 微软雅黑; font-size: 14px; white-space: normal; background-color: rgb(249, 247, 248);\"><img border=\"0\" hspace=\"20\" vspace=\"20\" src=\"https://www.xidian.edu.cn/_mediafile/xadzkjdx2/2016/02/04/2y9qq7camw.jpg\" width=\"251\" height=\"183\" vsbhref=\"vurl\" vurl=\"/_mediafile/${ownername}/2016/02/04/2y9qq7camw.jpg\" vheight=\"183\" vwidth=\"251\" orisrc=\"/_mediafile/xadzkjdx2/2016/02/04/source/2y9qq7camw.jpg\" class=\"img_vsb_content\" style=\"border: 0px; float: left;\"/><span style=\"margin: 0px; padding: 0px; font-family: 微软雅黑, &quot;microsoft yahei&quot;;\">建校87年来，学校始终得到了党和国家的高度重视，是我国“一五”重点建设的项目之一，也是1959年中央批准的全国20所重点大学之一。20世纪60年代，学校就以“西军电”之称蜚声海内外。毛泽东同志曾先后两次为学校题词：“全心全意为人民服务”、“艰苦朴素”。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-align: justify; text-indent: 2em; line-height: 2em; color: rgb(49, 49, 49); font-family: 微软雅黑; font-size: 14px; white-space: normal; background-color: rgb(249, 247, 248);\"><span style=\"margin: 0px; padding: 0px; font-family: 微软雅黑, &quot;microsoft yahei&quot;;\">学校现建设有南北两个校区，总占地面积约270公顷，校舍建筑面积130多万平方米。图书馆馆藏文献约1033万册，其中纸质文献约285万册，电子文献约747万册；拥有90余种平台的中外文数字资源，数据库256个，内容覆盖了学校各个学科或专业。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-align: justify; text-indent: 2em; line-height: 2em; color: rgb(49, 49, 49); font-family: 微软雅黑; font-size: 14px; white-space: normal; background-color: rgb(249, 247, 248);\"><span style=\"margin: 0px; padding: 0px; font-family: 微软雅黑, &quot;microsoft yahei&quot;;\"></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-align: justify; text-indent: 2em; line-height: 2em; color: rgb(49, 49, 49); font-family: 微软雅黑; font-size: 14px; white-space: normal; background-color: rgb(249, 247, 248);\"><span style=\"margin: 0px; padding: 0px; font-family: 微软雅黑, &quot;microsoft yahei&quot;;\">学校现有各类在校生3万余人，其中博士研究生2000余人，硕士研究生10000余人。设有研究生院。设有通信工程学院、电子工程学院、计算机科学与技术学院（示范性软件学院）、机电工程学院、物理与光电工程学院、经济与管理学院、数学与统计学院、人文学院、外国语学院、软件学院、微电子学院、生命科学技术学院、空间科学与技术学院、先进材料与纳米科技学院、网络与信息安全学院、马克思主义学院、<span style=\"margin: 0px; padding: 0px; text-indent: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; color: rgb(38, 38, 38);\">人工智能学院、</span>国际教育学院、网络与继续教育学院等18个学院。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-align: justify; text-indent: 2em; line-height: 2em; color: rgb(49, 49, 49); font-family: 微软雅黑; font-size: 14px; white-space: normal; background-color: rgb(249, 247, 248);\"><span style=\"margin: 0px; padding: 0px; font-family: 微软雅黑, &quot;microsoft yahei&quot;;\">学校是国内最早建立信息论、信息系统工程、雷达、微波天线、电子机械、电子对抗等专业的高校之一，开辟了我国IT学科的先河，形成了鲜明的电子与信息学科特色与优势。现<span style=\"margin: 0px; padding: 0px; color: rgb(12, 12, 12);\">有<span style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0);\"><span style=\"margin: 0px; padding: 0px; color: rgb(73, 68, 41);\">2<span style=\"margin: 0px; padding: 0px; text-indent: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; color: rgb(63, 63, 63);\">个国家</span></span><span style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px; text-indent: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; color: rgb(63, 63, 63);\">“双一流”</span><span style=\"margin: 0px; padding: 0px; text-indent: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; color: rgb(63, 63, 63);\">重点建设学科</span><span style=\"margin: 0px; padding: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; color: rgb(63, 63, 63);\"><span style=\"margin: 0px; padding: 0px; text-indent: 0px; color: rgb(229, 51, 51);\"></span><span style=\"margin: 0px; padding: 0px; text-indent: 0px; color: rgb(0, 0, 0);\">，</span></span></span></span><span style=\"margin: 0px; padding: 0px; color: rgb(38, 38, 38);\"><span style=\"margin: 0px; padding: 0px; text-indent: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; color: rgb(0, 0, 0);\"></span>2</span></span>个国家一级重点学科（覆盖6个二级学科），1个国家二级重点学科，34个省部级重点学科，14个博士学位授权一级学科，26个硕士学位授权一级学科，具有工程博士专业学位授权，有17个硕士专业学位授权点，9个博士后科研流动站，55个本科专业。全国第四轮一级学科评估结果中，<span style=\"margin: 0px; padding: 0px; text-indent: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; color: rgb(0, 0, 0);\">3个学科获评A类：电子科学与技术学科评估结果为A+档，并列全国第1；信息与通信工程学科位于A档；计算机科学与技术学科评估结果为A-档，学校电子信息类学科继续保持国内领先水平。<br style=\"font-family: 宋体, arial, Verdana, sans-serif;\"/></span></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-align: justify; text-indent: 2em; line-height: 2em; color: rgb(49, 49, 49); font-family: 微软雅黑; font-size: 14px; white-space: normal; background-color: rgb(249, 247, 248);\"><span style=\"margin: 0px; padding: 0px; font-family: 微软雅黑, &quot;microsoft yahei&quot;;\">学校树立了以人为本、教师是大学核心竞争力的理念，锻造了一支结构合理、富有创新精神的教师队伍。现有专任教师2100余名，其中，博士生导师430余人，硕士生导师1200余人。学校有院士4人，双聘院士15人，“万人计划”入选者15人（含“青年拔尖人才计划”入选者5人），“千人计划”入选者22人（含“青年千人计划”入选者11人），长江学者30人，国家自然科学基金创新研究群体1个，科技部重点创新团队3个，教育部创新团队6个，国家杰出青年基金获得者14人，优秀青年科学基金获得者13人，国家级教学名师4人，国家级教学团队6个，973项目首席科学家3人，教育部新世纪优秀人才52人，中国青年科技奖获得者4人，“何梁何利”科学与技术奖获得者5人，国家“百千万人才工程”培养对象11人，陕西青年科技奖获得者22人，教育部教学指导委员会委员19人，享受政府特殊津贴160人。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-align: justify; text-indent: 2em; line-height: 2em; color: rgb(49, 49, 49); font-family: 微软雅黑; font-size: 14px; white-space: normal; background-color: rgb(249, 247, 248);\"><span style=\"margin: 0px; padding: 0px; font-family: 微软雅黑, &quot;microsoft yahei&quot;;\">学校不断地创新教育理念，深化教学内容、课程体系与实践教学改革，大力推进素质教育，取得了显著成果。现有<span style=\"margin: 0px; padding: 0px; text-indent: 0px; font-family: 微软雅黑; color: rgb(0, 0, 0);\">国家级特色专业建设点</span>15个，国家级精品课程13门，国家级精品资源共享课11门，国家级视频公开课3门，<span style=\"margin: 0px; padding: 0px; text-indent: 0px; font-family: 微软雅黑; color: rgb(0, 0, 0);\">国家精品在线开放课程3门，</span>建设有3个国家人才培养及教学基地、6个国家级实验教学示范中心、3个国家级虚拟仿真实验中心，以及3个国家级人才培养模式创新实验区。学校人才培养素以理论基础扎实、工程实践能力突出、创新意识强等特色在全国高校中形成了“品牌”。学校坚持“因材施教、分类培养”的教育理念，积极探索实施“卓越工程师教育培养计划”、“钱学森空间科学实验班”和“科教结合协同育人行动计划”等一系列创新型人才培养模式改革。近年来，学校本科生参与课外科技活动的普及率高，获得各类省级、国家级学科和科技竞赛奖1600余项，研究生和本科毕业生就业率一直保持在98%和96%以上，位居全国高校前列。2006年，学校顺利通过教育部本科教学工作水平评估并获得“优秀”；2012年，学校入选全国50所毕业生就业典型经验高校之一</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-align: justify; text-indent: 2em; line-height: 2em; color: rgb(49, 49, 49); font-family: 微软雅黑; font-size: 14px; white-space: normal; background-color: rgb(249, 247, 248);\"><span style=\"margin: 0px; padding: 0px; font-family: 微软雅黑, &quot;microsoft yahei&quot;;\">多年来，学校致力于电子信息技术领域的系统研制、科技攻关、工程研发等，创造了我国电子与信息技术领域等多项第一，包括第一台气象雷达、第一套流星余迹通讯系统、第一台可编程雷达信号处理机、第一台毫米波通讯机，以及我军通信装备史上第一部“塞绳电报互换机”、第一台“塔型管空腔振荡器”、第一套“三坐标相控阵雷达”等，为我国信息化、国防现代化做出了重要的贡献。学校现有6个国家级</span><span style=\"margin: 0px; padding: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">科技创新基地、1个科工局科技创新基地，9个教育部科技创新基地、21个陕西省科技创新基地，2013年入选国家级创新人才培养示范基地。</span><span style=\"margin: 0px; padding: 0px; font-family: 微软雅黑, &quot;microsoft yahei&quot;;\">先后牵头单位承担了“973”、“863”、重大专项、国家自然科学基金重大项目等重大、重点项目，产生了一批标志性的研究成果。十八大以来，学校科研指标稳步提升，在认知雷达、移动通讯、网络信息安全、高功率微波集成器件、智能计算、大型天线机电耦合等方面取得了卓有成效的成果，获国家科技奖励15项，省部级科技奖励一等奖以上30项。2014年，学校牵头的“信息感知技术协同创新中心”通过国家“2011计划”认定，位列行业产业类第一，进一步奠定了学校在全国高校中突出的国防科研特色优势地位。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-align: justify; text-indent: 2em; line-height: 2em; color: rgb(49, 49, 49); font-family: 微软雅黑; font-size: 14px; white-space: normal; background-color: rgb(249, 247, 248);\"><span style=\"margin: 0px; padding: 0px; font-family: 微软雅黑, &quot;microsoft yahei&quot;;\">学校大力加强产学研相结合，不断增强科技创新能力。<span style=\"margin: 0px; padding: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; color: rgb(12, 12, 12);\">建设有中国西部军民融合创新谷暨西安电子谷、</span>陕西工业研究院、国家大学科技园，同时与国内大型知名企事业单位联合建立股份制公司，成立战略联盟、设立企业基金、建立联合实验室及研究生实习基地，有力促进了科技成果的转化。学校积极开展国际国内的交流与合作，拓展外部发展空间。学校先后成为中电集团，西安市，国防科工委、陕西省与教育部共建高校，与70多个国家、地区的大学及研究机构建立友好关系，建有7个国家“高等学校学科创新引智计划”引智基地，与国内电子、航空行业的10余个研究所、研究中心、企业集团建立了长期战略合作伙伴关系，英飞凌、Intel、IBM、惠普等跨国公司在学校建立74个联合实验室。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-align: justify; text-indent: 2em; line-height: 2em; color: rgb(49, 49, 49); font-family: 微软雅黑; font-size: 14px; white-space: normal; background-color: rgb(249, 247, 248);\"><span style=\"margin: 0px; padding: 0px; font-family: 微软雅黑, &quot;microsoft yahei&quot;;\"></span><span style=\"margin: 0px; padding: 0px; font-family: 微软雅黑, &quot;microsoft yahei&quot;;\">建校87年来，学校先后为国家输送了20余万名电子信息领域的高级人才，产生了120多位解放军将领，成长起了19位两院院士（1977年恢复高考以后院士校友11位，位列全国前茅），10余位国家副部级以上领导，培养了联想集团董事局主席柳传志，国际GSM奖获得者李默芳，欧洲科学院院士、著名的纳米技术专家王中林，“神五”和“神六”飞船副总设计师、“天宫一号”目标飞行器总设计师杨宏等一大批IT行业领军人物和技术骨干，以及数十位科研院所所长和大学校长等，为国家建设和社会进步做出了重要贡献。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-align: justify; text-indent: 2em; line-height: 2em; color: rgb(49, 49, 49); font-family: 微软雅黑; font-size: 14px; white-space: normal; background-color: rgb(249, 247, 248);\"><span style=\"margin: 0px; padding: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; color: rgb(12, 12, 12);\"><span style=\"margin: 0px; padding: 0px; text-indent: 0px; color: rgb(0, 0, 0);\">在</span><span style=\"margin: 0px; padding: 0px; text-indent: 0px; color: rgb(38, 38, 38);\">全面建设社会主义现代化国家新征程中，西安电子科技大学将继续坚持走内涵式发展道路，秉承“全心全意为人民服务”的办学宗旨，坚持“立足西部、育人育才、强军拓民、</span><span style=\"margin: 0px; padding: 0px; text-indent: 0px;\">服务引领、团结实干”的发展思路，</span><span style=\"margin: 0px; padding: 0px; text-indent: 0px; color: rgb(38, 38, 38);\">坚持立德树人根本任务，全面提升教育质量，为把学校建设成为电子信息特色鲜明的一流大学而不懈奋斗！</span></span></p><p><br/></p>', '砺学笃行', 'gx', 3, 0, 'org/2019/02/7aec54e736d12f2ec1809b2345c2d562843568ef.jpg', '西安市雁塔区太白南路2号', 0, 0, '2019-02-16 21:52:00.000000', 5);
INSERT INTO `organization_courseorg` VALUES (11, '四川大学', '<p>&nbsp; &nbsp; &nbsp; 岷峨挺秀，锦水含章。巍巍学府，德渥群芳。 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br style=\"padding: 0px; margin: 0px; outline: 0px; box-sizing: border-box;\"/>　　四川大学是教育部直属全国重点大学，是国家布局在中国西部的重点建设的高水平研究型综合大学。四川大学地处中国历史文化名城——“天府之国”的成都，有望江、华西和江安三个校区，占地面积7050亩，校舍建筑面积256.3万平方米。校园环境幽雅、花木繁茂、碧草如茵、景色宜人，是读书治学的理想园地。 &nbsp;&nbsp;</p><p>　　四川大学由原四川大学、原成都科技大学、原华西医科大学三所全国重点大学经过两次合并而成。原四川大学起始于1896年四川总督鹿传霖奉光绪特旨创办的四川中西学堂，是西南地区最早的近代高等学校；原成都科技大学是新中国院系调整时组建的第一批多科型工科院校；原华西医科大学源于1910年由西方基督教会组织在成都创办的华西协合大学，是西南地区最早的西式大学和国内最早培养研究生的大学之一。1994年，原四川大学和原成都科技大学合并为四川联合大学，1998年更名为四川大学，江泽民、李鹏等党和国家领导人就两校合并为学校题词并寄予深切厚望。2000年，四川大学与原华西医科大学合并，组建了新的四川大学。李岚清同志在考察新四川大学时说：“四川大学是我们改革最早的大学，对我国高校的改革做出了历史性的贡献，可以说是高校体制改革的先锋。”在2008年“5·12”汶川特大地震抗震救灾期间，吴邦国、温家宝等党和国家领导人先后到四川大学视察慰问。2016年，李克强总理来校视察，勉励川大要为全国“双创”带头，多出世界一流学科。</p><p><br/></p>', '有容乃大', 'gx', 4, 0, 'org/2019/02/f11f3a292df5e0fe7b1d08b45e6034a85edf727a.jpg', '武侯区一环路南一段24号', 0, 0, '2019-02-16 21:56:00.000000', 2);
INSERT INTO `organization_courseorg` VALUES (12, '莫烦PYTHON', '<p style=\"line-height: 1.7em; padding: 0px; text-align: justify; color: rgb(65, 88, 73); font-family: &quot;Hiragino Sans GB&quot;, Tahoma, Helvetica, Arial, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, 黑体, 宋体, sans-serif; white-space: normal; background-color: rgb(250, 250, 250);\"><strong>周沫凡 Mofan Zhou</strong>&nbsp;, 所以&nbsp;<em>&quot;莫烦&quot;</em>&nbsp;这个名字也是取了个谐音而已. 我就用我的名字鼓励大家. 即使遇到再多再大的困难, 我们还是要抱着一种<em>莫烦</em>&nbsp;的态度, 努力到底.</p><p style=\"line-height: 1.7em; padding: 0px; text-align: justify; color: rgb(65, 88, 73); font-family: &quot;Hiragino Sans GB&quot;, Tahoma, Helvetica, Arial, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, 黑体, 宋体, sans-serif; white-space: normal; background-color: rgb(250, 250, 250);\">原本, 我只是一名普普通通的 PhD 学生, 因为专业不对口, 之前学的东西在 PhD 的时候统统用不上, 然后我就开始了我漫长的自学道路. 你在这个网页看到的所有内容, 都是我在网上探索, 自学而来的. 所以说, 真正的大学, 其实就是锻炼你自学能力的地方. 我很欣赏网上那些默默奉献的人们, 分享自己所学的东西给了我. 所以这就是我创建&nbsp;<a href=\"http://i.youku.com/pythontutorial\" target=\"_blank\" style=\"color: rgb(245, 97, 0); text-decoration-line: none;\"><em>优酷</em></a>&nbsp;和&nbsp;<a href=\"https://www.youtube.com/channel/UCdyjiB5H8Pu7aDTNVXTTpcg\" target=\"_blank\" style=\"color: rgb(245, 97, 0); text-decoration-line: none;\"><em>Youtube</em></a>&nbsp;个人频道的萌芽. 我也要回报那些奉献的人们, 将我的所学奉献给大家~</p><p style=\"line-height: 1.7em; padding: 0px; text-align: justify; color: rgb(65, 88, 73); font-family: &quot;Hiragino Sans GB&quot;, Tahoma, Helvetica, Arial, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, 黑体, 宋体, sans-serif; white-space: normal; background-color: rgb(250, 250, 250);\">我曾多次被很多在线教育机构邀请作为他们的讲师, 比如<em>优达学城, 中科院在线教育, 炼数成金, 七月在线, MOOC</em>&nbsp;等. 想要合作出书的也有很多,&nbsp;<em>机械工业出版社, 人民邮电出版社</em>等. 很感谢他们的邀请, 不过我还是谢绝了. 原因很简单, 我不是为了名气而做教程的, 我也喜欢自己的教学模式. 我每天看到知乎上, 各种网页上发帖奋斗的人们. 就觉得他们应该很辛苦. 我比较懒, 在外站发帖比较少, 不太想一起挤进去, 所以自己搭了个 &quot;莫烦 Python&quot; 来做点与世无争的教学.</p><p style=\"line-height: 1.7em; padding: 0px; text-align: justify; color: rgb(65, 88, 73); font-family: &quot;Hiragino Sans GB&quot;, Tahoma, Helvetica, Arial, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, 黑体, 宋体, sans-serif; white-space: normal; background-color: rgb(250, 250, 250);\">有很多网友都问我: &quot;你的教学做得比网上大部分的教学都要好, 可是为什么获得的关注却比他们少?&quot; 我想主要的原因是我不想做 Marketing 这方面的事. 上面也提到谢绝了很多邀请, 自然出名的机会就少了很多. 个人认为, 我未来更愿意在工业界摸爬滚打, 而不是学术界, 不过爱分享的性格, 让我能有机会分享这些有趣的内容给大家, 帮助大家, 我也很开心~</p><p><br/></p>', '莫烦老师', 'gr', 3, 0, 'org/2019/02/1E26773C-12E0-4F8A-BC3B-F1879914CCAD.png', '深圳', 0, 1, '2019-02-16 22:03:00.000000', 6);
INSERT INTO `organization_courseorg` VALUES (13, '廖雪峰的官方网站', '<p>毕业于北京邮电大学（2000年）信息工程系；</p><p>先后就职于西门子、摩托罗拉、惠普、Brightcove、火币网等公司。</p><p>2018年5月，廖雪峰作为内容合伙人和战略顾问加盟开课吧，专注研究Python、Java、区块链等品类的课程体系搭建，把控Python、Web、Java、区块链的课程研发，在其原教程内容基础上结合开课吧特性，加强课程的实践性与在线性，将职业技能前置课程内容，帮助学习者学到实用的职业技能。</p><p><br/></p>', '技术专家', 'gr', 5, 0, 'org/2019/02/46035403-B63C-4627-8462-35CC3B9EBC83.png', '北京', 0, 1, '2019-02-16 22:09:00.000000', 1);
INSERT INTO `organization_courseorg` VALUES (14, '阮一峰的网络日志', '<p>从2003年开始在网络上写日志，文章包含的内容非常广博，涉及读书、版权制度、经济学、英语、历史、IT技术、医学、电影、音乐和美术、政治学、科学、创业、互联网等23个大的分类，其中有的分类还包括一些更细的子条目。至2013年9月15日，他一共写了1580篇文章，收到32694条留言。除了理性地书写各种庞杂的知识外，他的文章亦充满了人文关怀，对专制强权更是批判有加，他试图以个人单薄的力量向社会传达一种向善的理想。他多次在文章中提到过，希望通过这些文章来教大家如何做一个独立思考者。</p><p>阮一峰自学了网站制作，并在学习期间编写了一些互联网小应用，可以在他的博客中看到。</p><p><br/></p>', '良知良能', 'gr', 3, 0, 'org/2019/02/34E0249D-80EB-4F6A-9946-AA4E0514BD90.png', '上海', 0, 1, '2019-02-16 22:17:00.000000', 7);
INSERT INTO `organization_courseorg` VALUES (15, '浙江大学', '<p class=\"p_text_indent_2\" style=\"margin-top: 0px; padding: 0px; list-style-type: none; text-indent: 2em; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, Arial, Simsun; font-size: 13px; white-space: normal; background-color: rgb(245, 239, 229);\">浙江大学是一所历史悠久、声誉卓著的高等学府，坐落于中国历史文化名城、风景旅游胜地杭州。浙江大学的前身求是书院创立于1897年，为中国人自己最早创办的新式高等学校之一。1928年，定名国立浙江大学。抗战期间，浙大举校西迁，在贵州遵义、湄潭等地办学七年，1946年秋回迁杭州。1952年全国高等学校院系调整时，浙江大学部分系科转入兄弟高校和中国科学院，留在杭州的主体部分被分为多所单科性院校，后分别发展为原浙江大学、杭州大学、浙江农业大学和浙江医科大学。1998年，同根同源的四校实现合并，组建了新浙江大学，迈上了创建世界一流大学的新征程。习近平总书记主政浙江期间，亲自联系浙江大学，18次莅临指导，对学校改革发展作出了一系列重要指示，描绘了高水平建成中国特色世界一流大学的宏伟蓝图。在120年的办学历程中，浙江大学始终秉承“求是创新”为校训的优良传统，以天下为己任、以真理为依归，逐步形成了“勤学、修德、明辨、笃实”的浙大人共同价值观和“海纳江河、启真厚德、开物前民、树我邦国”的浙大精神。</p><p class=\"p_text_indent_2\" style=\"margin-top: 0px; padding: 0px; list-style-type: none; text-indent: 2em; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, Arial, Simsun; font-size: 13px; white-space: normal; background-color: rgb(245, 239, 229);\">浙江大学是一所特色鲜明、在海内外有较大影响的综合型、研究型、创新型大学，其学科涵盖哲学、经济学、法学、教育学、文学、历史学、艺术学、理学、工学、农学、医学、管理学等十二个门类。设有7个学部、36个专业学院（系）、1个工程师学院、2个中外合作办学学院、7家附属医院。学校现有紫金港、玉泉、西溪、华家池、之江、舟山、海宁等7个校区，占地面积5739978平方米，校舍总建筑面积2575983平方米，图书馆总藏书量708.4万册。截至2017年底，浙江大学现有全日制在校学生53673人（其中：本科生24878人，硕士研究生18048人，博士研究生10747人），在校留学生（含非学历留学生）6843人（其中：攻读学位的留学生4116人）。有教职工8657人（其中：专任教师3611人），教师中有中国科学院院士21人、中国工程院院士20人、文科资深教授9人、国家“千人计划”入选者（含青年项目）237人、教育部“长江学者奖励计划”入选者（含青年学者）101人、国家杰出青年科学基金获得者129人。在国家公布的“双一流”建设名单中，学校入选一流大学建设高校（A类），18个学科入选一流建设学科，居全国高校第三。据ESI公布的数据，截至2018年3月，学校18个学科进入世界学术机构前1%，7个学科进入ESI前100位，均居全国高校第二；8个学科进入前1‰，5个学科进入ESI前50位，均居全国高校第一。</p><p class=\"p_text_indent_2\" style=\"margin-top: 0px; padding: 0px; list-style-type: none; text-indent: 2em; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, Arial, Simsun; font-size: 13px; white-space: normal; background-color: rgb(245, 239, 229);\">浙江大学紧紧围绕“德才兼备、全面发展”的核心要求，全面落实立德树人根本任务，着力培养德智体美劳全面发展、具有全球竞争力的高素质创新人才和领导者。在长期的办学历程中，涌现出大批著名科学家、文化大师以及各行各业的精英翘楚，校友中当选为两院院士的有200余人。学校与时俱进的教育思想，引领教育教学模式改革始终走在全国高校前列；丰富的校园文化、先进的教学设施和广泛的国际交流为学生成长创造了优越条件。2017届毕业生初次就业率达到97.22%，本科毕业生海内外深造率达到61.97%。</p><p class=\"p_text_indent_2\" style=\"margin-top: 0px; padding: 0px; list-style-type: none; text-indent: 2em; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, Arial, Simsun; font-size: 13px; white-space: normal; background-color: rgb(245, 239, 229);\">浙江大学注重精研学术和科技创新，建设了一批开放性、国际化的高端学术平台，汇聚了各学科的学者大师和高水平研究团队。近年来，学校发明专利授权数、权威学术期刊论文发表数、科研总经费等主要科研指标保持全国高校领先地位，在科学技术和人文社科领域取得了丰硕成果。学校主动对接国家和区域重大战略需求，着力打造高水平的创新源、人才泵和思想库。“十二五”以来，学校作为牵头单位获得国家科技进步特等奖1项、一等奖6项、二等奖37项；《中国历代绘画大系》、《中华礼藏》、敦煌学等文化传承创新成果在海内外产生了广泛影响。</p><p class=\"p_text_indent_2\" style=\"margin-top: 0px; padding: 0px; list-style-type: none; text-indent: 2em; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, Arial, Simsun; font-size: 13px; white-space: normal; background-color: rgb(245, 239, 229);\">“国有成均，在浙之滨”。今天的浙江大学，将坚持以习近平新时代中国特色社会主义思想为指导，秉承求是创新精神，按照学校第十四次党代会确立的目标任务，牢固树立一流意识、紧紧围绕一流目标、认真贯彻一流标准，致力于传播与创造知识，弘扬与引领文化，服务与奉献社会，坚定不移地为加快进入中国特色世界一流大学行列、迈向世界一流大学前列而奋斗，为实现中华民族伟大复兴、促进人类文明进步作出卓越贡献。</p><p><br/></p>', '求是创新', 'gx', 4, 0, 'org/2019/02/8644ebf81a4c510ffd63cb656d59252dd42aa52d.png', '杭州市西湖区余杭塘路866号', 0, 0, '2019-02-16 22:24:00.000000', 8);
COMMIT;

-- ----------------------------
-- Table structure for organization_teacher
-- ----------------------------
DROP TABLE IF EXISTS `organization_teacher`;
CREATE TABLE `organization_teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `work_years` int(11) NOT NULL,
  `work_company` varchar(50) NOT NULL,
  `work_position` varchar(50) NOT NULL,
  `points` varchar(50) NOT NULL,
  `click_nums` int(11) NOT NULL,
  `fav_nums` int(11) NOT NULL,
  `age` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `org_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `organization_teacher_org_id_cd000a1a_fk_organizat` (`org_id`),
  CONSTRAINT `organization_teacher_org_id_cd000a1a_fk_organizat` FOREIGN KEY (`org_id`) REFERENCES `organization_courseorg` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of organization_teacher
-- ----------------------------
BEGIN;
INSERT INTO `organization_teacher` VALUES (1, 'teacher/2019/02/github04.jpg', '王浩', 1, '成都东软学院', '15级软件工程2班学生', '瞎讲乱说', 21, 1, 22, '2019-02-16 15:49:00.000000', 1);
INSERT INTO `organization_teacher` VALUES (2, 'teacher/2019/02/github03.jpg', '周鑫', 1, '成都东软学院', '15级软件工程2班学生', '幽默风趣', 5, 0, 23, '2019-02-16 15:52:00.000000', 1);
INSERT INTO `organization_teacher` VALUES (3, 'teacher/2019/02/github02.png', '李文凯', 5, '千锋教育', '缤纷生活首席技术官', '通俗易懂', 4, 0, 32, '2019-02-16 16:40:00.000000', 2);
INSERT INTO `organization_teacher` VALUES (4, 'teacher/2019/02/v2-ac49330f173b5b715ef4e5361a10c9a6_xl.jpg', '周沫凡', 5, '腾讯', '深度学习', '莫烦', 4, 0, 27, '2019-02-16 22:04:00.000000', 12);
INSERT INTO `organization_teacher` VALUES (5, 'teacher/2019/02/78310a55b319ebc4bc29a7ba8f26cffc1e1716bb.png', '廖雪峰', 10, '开课吧', '内容合伙人', '技术专家', 3, 0, 33, '2019-02-16 22:10:00.000000', 13);
INSERT INTO `organization_teacher` VALUES (6, 'teacher/2019/02/person2_s.jpg', '阮一峰', 15, '上海金融学院 国际经贸学院', '教授', '良知良能', 5, 0, 49, '2019-02-16 22:18:00.000000', 14);
COMMIT;

-- ----------------------------
-- Table structure for users_banner
-- ----------------------------
DROP TABLE IF EXISTS `users_banner`;
CREATE TABLE `users_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `url` varchar(200) NOT NULL,
  `index` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_banner
-- ----------------------------
BEGIN;
INSERT INTO `users_banner` VALUES (1, 'Python基础', 'banner/2019/02/01riseofpythonv021-27f80e05.png', 'http://127.0.0.1:8000/course/detail/1/', 1, '2019-02-16 20:51:00.000000');
INSERT INTO `users_banner` VALUES (2, 'django入门与实践', 'banner/2019/02/v2-32b5775c7b3acf4a5abd4f428b810d1c_1200x500.jpg', 'http://127.0.0.1:8000/course/detail/2/', 2, '2019-02-16 22:43:00.000000');
INSERT INTO `users_banner` VALUES (3, '爬虫框架Scrapy入门与实践', 'banner/2019/02/989492_a0ff_2.jpg', 'http://127.0.0.1:8000/course/detail/3/', 3, '2019-02-16 23:23:00.000000');
INSERT INTO `users_banner` VALUES (4, '从零做一个前端开源项目', 'banner/2019/02/151020_3LfC_2896879.png', 'http://127.0.0.1:8000/course/detail/4/', 4, '2019-02-16 23:43:00.000000');
COMMIT;

-- ----------------------------
-- Table structure for users_emailverifyrecord
-- ----------------------------
DROP TABLE IF EXISTS `users_emailverifyrecord`;
CREATE TABLE `users_emailverifyrecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `send_type` varchar(30) NOT NULL,
  `send_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_emailverifyrecord
-- ----------------------------
BEGIN;
INSERT INTO `users_emailverifyrecord` VALUES (1, 'GeAlIVcD46dPhFPO', 'kingvast.wh@gmail.com', 'register', '2019-01-31 14:10:17.245401');
INSERT INTO `users_emailverifyrecord` VALUES (2, 'EFVnaYkJqIt3pIWP', '1429900133@qq.com', 'register', '2019-02-15 15:22:01.980564');
INSERT INTO `users_emailverifyrecord` VALUES (3, 'PZqfcXKqKOcfdiGs', '904275764@qq.com', 'register', '2019-02-18 12:46:43.434338');
COMMIT;

-- ----------------------------
-- Table structure for users_userprofile
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile`;
CREATE TABLE `users_userprofile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `nick_name` varchar(50) NOT NULL,
  `birday` date DEFAULT NULL,
  `gender` varchar(6) NOT NULL,
  `address` varchar(100) NOT NULL,
  `mobile` varchar(11) DEFAULT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_userprofile
-- ----------------------------
BEGIN;
INSERT INTO `users_userprofile` VALUES (1, 'pbkdf2_sha256$100000$vb30iDbvmvGS$RK5TH79BJRNxxN/PsZrpke5eI1vm5lW+uwrCS+1icGo=', '2019-05-29 00:26:07.729019', 1, 'admin', '', '', '', 1, 1, '2019-01-29 11:38:41.120820', '', NULL, 'male', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (2, 'pbkdf2_sha256$100000$Q0qCyxOYM6a7$BdPSx71T5Y5zamumke2/iQgAEHiqHLfHxKA4KP3zlHw=', '2019-05-29 00:27:20.226142', 0, 'kingvast.wh@gmail.com', '', '', 'kingvast.wh@gmail.com', 0, 1, '2019-01-31 14:10:16.948154', 'Charon', '1997-05-21', 'male', '青城山镇, 东软大道一号', '17602852734', 'image/2019/02/github05.jpg');
INSERT INTO `users_userprofile` VALUES (3, 'pbkdf2_sha256$100000$6IHJDmSrmvLW$VbgxLSNYcyGIY7bR5bMoi9JVgcu60Is6MfCbabpLGkM=', NULL, 0, '904275764@qq.com', '', '', '904275764@qq.com', 0, 0, '2019-02-18 12:46:43.127723', '', NULL, 'male', '', NULL, 'image/default.png');
COMMIT;

-- ----------------------------
-- Table structure for users_userprofile_groups
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile_groups`;
CREATE TABLE `users_userprofile_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_userprofile_groups_userprofile_id_group_id_823cf2fc_uniq` (`userprofile_id`,`group_id`),
  KEY `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id` (`group_id`),
  CONSTRAINT `users_userprofile_gr_userprofile_id_a4496a80_fk_users_use` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`),
  CONSTRAINT `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for users_userprofile_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile_user_permissions`;
CREATE TABLE `users_userprofile_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_userprofile_user_p_userprofile_id_permissio_d0215190_uniq` (`userprofile_id`,`permission_id`),
  KEY `users_userprofile_us_permission_id_393136b6_fk_auth_perm` (`permission_id`),
  CONSTRAINT `users_userprofile_us_permission_id_393136b6_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `users_userprofile_us_userprofile_id_34544737_fk_users_use` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for xadmin_bookmark
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_bookmark`;
CREATE TABLE `xadmin_bookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `url_name` varchar(64) NOT NULL,
  `query` varchar(1000) NOT NULL,
  `is_share` tinyint(1) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_bookmark_content_type_id_60941679_fk_django_co` (`content_type_id`),
  KEY `xadmin_bookmark_user_id_42d307fc_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_bookmark_content_type_id_60941679_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_bookmark_user_id_42d307fc_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for xadmin_log
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_log`;
CREATE TABLE `xadmin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `ip_addr` char(39) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` varchar(32) NOT NULL,
  `message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` (`content_type_id`),
  KEY `xadmin_log_user_id_bb16a176_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_log_user_id_bb16a176_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_log
-- ----------------------------
BEGIN;
INSERT INTO `xadmin_log` VALUES (1, '2019-02-11 18:20:52.356491', '67.216.200.82', '1', '北京', 'create', '已添加。', 14, 1);
INSERT INTO `xadmin_log` VALUES (2, '2019-02-11 18:21:00.730441', '67.216.200.82', '2', '成都', 'create', '已添加。', 14, 1);
INSERT INTO `xadmin_log` VALUES (3, '2019-02-15 15:26:22.744513', '67.216.200.82', NULL, '', 'delete', 'Batch delete 1 用户信息.', NULL, 1);
INSERT INTO `xadmin_log` VALUES (4, '2019-02-16 15:22:00.133568', '67.216.200.82', '1', '课程机构: 成都东软学院', 'create', '已添加。', 15, 1);
INSERT INTO `xadmin_log` VALUES (5, '2019-02-16 15:50:43.725560', '67.216.200.82', '1', '教师: 王浩', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (6, '2019-02-16 15:52:32.878511', '67.216.200.82', '2', '教师: 周鑫', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (7, '2019-02-16 16:34:59.321524', '67.216.200.82', '2', '课程机构: 千锋教育', 'create', '已添加。', 15, 1);
INSERT INTO `xadmin_log` VALUES (8, '2019-02-16 16:45:05.902658', '67.216.200.82', '3', '教师: 李文凯', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (9, '2019-02-16 16:57:39.682923', '67.216.200.82', '1', 'Python基础教程', 'change', 'Changed is_banner.', 13, 1);
INSERT INTO `xadmin_log` VALUES (10, '2019-02-16 16:59:47.565406', '67.216.200.82', '1', '《Python基础教程》课程的章节 >> python基础 1 安装', 'create', '已添加。', 11, 1);
INSERT INTO `xadmin_log` VALUES (11, '2019-02-16 17:00:33.059451', '67.216.200.82', '1', '《Python基础教程》课程的章节 >> python基础 1 安装章节的视频 >> python基础 1 安装', 'create', '已添加。', 12, 1);
INSERT INTO `xadmin_log` VALUES (12, '2019-02-16 17:09:55.159734', '67.216.200.82', '1', '《Python基础教程》课程的章节 >> python基础 1 安装章节的视频 >> python基础 1 安装', 'change', 'Changed url.', 12, 1);
INSERT INTO `xadmin_log` VALUES (13, '2019-02-16 17:13:43.643753', '119.28.43.84', '1', '《Python基础教程》课程的章节 >> python基础 1 安装章节的视频 >> python基础 1 安装', 'change', 'Changed url.', 12, 1);
INSERT INTO `xadmin_log` VALUES (14, '2019-02-16 17:16:52.305822', '67.216.200.82', '1', '《Python基础教程》课程的章节 >> python基础 1 安装章节的视频 >> python基础 1 安装', 'change', 'Changed url.', 12, 1);
INSERT INTO `xadmin_log` VALUES (15, '2019-02-16 17:22:13.130110', '67.216.200.82', '1', '《Python基础教程》课程的章节 >> python基础 1 安装章节的视频 >> python基础 1 安装', 'change', 'Changed url.', 12, 1);
INSERT INTO `xadmin_log` VALUES (16, '2019-02-16 17:25:36.181710', '67.216.200.82', '1', '《Python基础教程》课程的章节 >> python基础 1 安装章节的视频 >> python基础 1 安装', 'change', 'Changed url.', 12, 1);
INSERT INTO `xadmin_log` VALUES (17, '2019-02-16 17:48:32.581806', '67.216.200.82', '1', '《Python基础教程》课程的章节 >> python基础 1 安装章节的视频 >> python基础 1 安装', 'change', 'Changed url.', 12, 1);
INSERT INTO `xadmin_log` VALUES (18, '2019-02-16 17:57:16.862736', '67.216.200.82', '1', '《Python基础教程》课程的章节 >> python基础 1 安装章节的视频 >> python基础 1 安装', 'change', 'Changed url.', 12, 1);
INSERT INTO `xadmin_log` VALUES (19, '2019-02-16 20:44:20.946365', '67.216.200.82', '2', '《初识Python》课程的章节 >> 2-1 选择Python版本章节的视频 >> 选择Python版本', 'create', '已添加。', 12, 1);
INSERT INTO `xadmin_log` VALUES (20, '2019-02-16 20:44:57.709440', '67.216.200.82', '3', '《初识Python》课程的章节 >> 2-2 Windows上安装Python章节的视频 >> Windows上安装Python', 'create', '已添加。', 12, 1);
INSERT INTO `xadmin_log` VALUES (21, '2019-02-16 20:45:50.499696', '67.216.200.82', '4', '《初识Python》课程的章节 >> 2-3 第一个Python程序章节的视频 >> 第一个Python程序', 'create', '已添加。', 12, 1);
INSERT INTO `xadmin_log` VALUES (22, '2019-02-16 20:48:05.843711', '67.216.200.82', '1', '《初识Python》课程的章节 >> 1-1 Python入门课程介绍章节的视频 >> Python基础 1 安装', 'change', 'Changed name.', 12, 1);
INSERT INTO `xadmin_log` VALUES (23, '2019-02-16 20:48:39.888700', '67.216.200.82', '1', '《初识Python》课程的章节 >> 1-1 Python入门课程介绍章节的视频 >> Python基础 1 安装', 'change', 'Changed learn_times.', 12, 1);
INSERT INTO `xadmin_log` VALUES (24, '2019-02-16 20:52:12.409488', '67.216.200.82', '1', 'Python基础(位于第1位)', 'create', '已添加。', 7, 1);
INSERT INTO `xadmin_log` VALUES (25, '2019-02-16 21:02:11.627806', '67.216.200.82', '1', '初识Python', 'change', 'Changed image.', 13, 1);
INSERT INTO `xadmin_log` VALUES (26, '2019-02-16 21:18:25.913476', '67.216.200.82', '1', '《初识Python》课程的资源: 测试资源', 'create', '已添加。', 10, 1);
INSERT INTO `xadmin_log` VALUES (27, '2019-02-16 21:22:16.095425', '67.216.200.82', '3', '课程机构: 北京大学', 'create', '已添加。', 15, 1);
INSERT INTO `xadmin_log` VALUES (28, '2019-02-16 21:24:58.029784', '67.216.200.82', '3', '天水', 'create', '已添加。', 14, 1);
INSERT INTO `xadmin_log` VALUES (29, '2019-02-16 21:25:55.864065', '67.216.200.82', '4', '课程机构: 天水师范学院', 'create', '已添加。', 15, 1);
INSERT INTO `xadmin_log` VALUES (30, '2019-02-16 21:27:31.356880', '67.216.200.82', '4', '课程机构: 天水师范学院', 'change', 'Changed desc 和 tag.', 15, 1);
INSERT INTO `xadmin_log` VALUES (31, '2019-02-16 21:27:56.975734', '67.216.200.82', '2', '课程机构: 千锋教育', 'change', 'Changed desc 和 tag.', 15, 1);
INSERT INTO `xadmin_log` VALUES (32, '2019-02-16 21:28:16.632804', '67.216.200.82', '1', '课程机构: 成都东软学院', 'change', 'Changed desc 和 tag.', 15, 1);
INSERT INTO `xadmin_log` VALUES (33, '2019-02-16 21:30:32.994200', '67.216.200.82', '5', '课程机构: 清华大学', 'create', '已添加。', 15, 1);
INSERT INTO `xadmin_log` VALUES (34, '2019-02-16 21:34:07.393501', '67.216.200.82', '6', '课程机构: 四川外国语大学成都学院', 'create', '已添加。', 15, 1);
INSERT INTO `xadmin_log` VALUES (35, '2019-02-16 21:37:00.110015', '67.216.200.82', '7', '课程机构: 达内教育', 'create', '已添加。', 15, 1);
INSERT INTO `xadmin_log` VALUES (36, '2019-02-16 21:41:04.337506', '67.216.200.82', '8', '课程机构: 黑马程序员', 'create', '已添加。', 15, 1);
INSERT INTO `xadmin_log` VALUES (37, '2019-02-16 21:45:45.378472', '67.216.200.82', '4', '兰州', 'create', '已添加。', 14, 1);
INSERT INTO `xadmin_log` VALUES (38, '2019-02-16 21:47:32.967061', '67.216.200.82', '9', '课程机构: 兰州大学', 'create', '已添加。', 15, 1);
INSERT INTO `xadmin_log` VALUES (39, '2019-02-16 21:51:48.881337', '67.216.200.82', '5', '西安', 'create', '已添加。', 14, 1);
INSERT INTO `xadmin_log` VALUES (40, '2019-02-16 21:54:34.516505', '67.216.200.82', '10', '课程机构: 西安电子科技大学', 'create', '已添加。', 15, 1);
INSERT INTO `xadmin_log` VALUES (41, '2019-02-16 21:57:47.353369', '67.216.200.82', '11', '课程机构: 四川大学', 'create', '已添加。', 15, 1);
INSERT INTO `xadmin_log` VALUES (42, '2019-02-16 21:59:08.559034', '67.216.200.82', '9', '课程机构: 兰州大学', 'change', 'Changed desc 和 category.', 15, 1);
INSERT INTO `xadmin_log` VALUES (43, '2019-02-16 22:03:04.994820', '67.216.200.82', '6', '深圳', 'create', '已添加。', 14, 1);
INSERT INTO `xadmin_log` VALUES (44, '2019-02-16 22:04:42.215873', '67.216.200.82', '12', '课程机构: 莫烦PYTHON', 'create', '已添加。', 15, 1);
INSERT INTO `xadmin_log` VALUES (45, '2019-02-16 22:06:54.877418', '67.216.200.82', '4', '教师: 周沫凡', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (46, '2019-02-16 22:10:28.542377', '67.216.200.82', '13', '课程机构: 廖雪峰的官方网站', 'create', '已添加。', 15, 1);
INSERT INTO `xadmin_log` VALUES (47, '2019-02-16 22:13:57.400417', '67.216.200.82', '5', '教师: 廖雪峰', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (48, '2019-02-16 22:17:06.820452', '67.216.200.82', '7', '上海', 'create', '已添加。', 14, 1);
INSERT INTO `xadmin_log` VALUES (49, '2019-02-16 22:18:10.089354', '67.216.200.82', '14', '课程机构: 阮一峰的网络日志', 'create', '已添加。', 15, 1);
INSERT INTO `xadmin_log` VALUES (50, '2019-02-16 22:20:16.132161', '67.216.200.82', '6', '教师: 阮一峰', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (51, '2019-02-16 22:24:45.420909', '67.216.200.82', '8', '杭州', 'create', '已添加。', 14, 1);
INSERT INTO `xadmin_log` VALUES (52, '2019-02-16 22:26:02.408299', '67.216.200.82', '15', '课程机构: 浙江大学', 'create', '已添加。', 15, 1);
INSERT INTO `xadmin_log` VALUES (53, '2019-02-16 22:27:10.028395', '67.216.200.82', '9', '济南', 'create', '已添加。', 14, 1);
INSERT INTO `xadmin_log` VALUES (54, '2019-02-16 22:27:24.328666', '67.216.200.82', '10', '青岛', 'create', '已添加。', 14, 1);
INSERT INTO `xadmin_log` VALUES (55, '2019-02-16 22:27:38.421448', '67.216.200.82', '11', '烟台', 'create', '已添加。', 14, 1);
INSERT INTO `xadmin_log` VALUES (56, '2019-02-16 22:27:53.927429', '67.216.200.82', '12', '曲阜', 'create', '已添加。', 14, 1);
INSERT INTO `xadmin_log` VALUES (57, '2019-02-16 22:28:29.239386', '67.216.200.82', '13', '丹东', 'create', '已添加。', 14, 1);
INSERT INTO `xadmin_log` VALUES (58, '2019-02-16 22:29:24.057448', '67.216.200.82', '14', '舟山', 'create', '已添加。', 14, 1);
INSERT INTO `xadmin_log` VALUES (59, '2019-02-16 22:30:05.484028', '67.216.200.82', NULL, '', 'delete', 'Batch delete 2 城市.', NULL, 1);
INSERT INTO `xadmin_log` VALUES (60, '2019-02-16 22:39:56.645749', '67.216.200.82', '1', '初识Python', 'change', 'Changed image.', 13, 1);
INSERT INTO `xadmin_log` VALUES (61, '2019-02-16 22:41:20.321838', '67.216.200.82', '2', 'django入门与实践', 'change', 'Changed image.', 13, 1);
INSERT INTO `xadmin_log` VALUES (62, '2019-02-16 22:44:29.473373', '67.216.200.82', '2', 'django入门与实践(位于第2位)', 'create', '已添加。', 7, 1);
INSERT INTO `xadmin_log` VALUES (63, '2019-02-16 22:47:20.318840', '67.216.200.82', '2', 'django入门与实践', 'change', 'Changed image.', 13, 1);
INSERT INTO `xadmin_log` VALUES (64, '2019-02-16 22:51:41.938557', '67.216.200.82', '5', '《django入门与实践》课程的章节 >> 第1章 介绍课程目标及学习内容', 'create', '已添加。', 11, 1);
INSERT INTO `xadmin_log` VALUES (65, '2019-02-16 22:52:12.378476', '67.216.200.82', '5', '《django入门与实践》课程的章节 >> 第1章 介绍课程目标及学习内容章节的视频 >> 1-1 课程介绍', 'create', '已添加。', 12, 1);
INSERT INTO `xadmin_log` VALUES (66, '2019-02-16 22:52:29.104426', '67.216.200.82', '6', '《django入门与实践》课程的章节 >> 第1章 介绍课程目标及学习内容章节的视频 >> 2-1', 'create', '已添加。', 12, 1);
INSERT INTO `xadmin_log` VALUES (67, '2019-02-16 22:52:39.453939', '67.216.200.82', NULL, '', 'delete', 'Batch delete 1 视频.', NULL, 1);
INSERT INTO `xadmin_log` VALUES (68, '2019-02-16 22:54:29.945735', '67.216.200.82', '1', '《初识Python》课程的章节 >> 第1章 课程介绍', 'change', 'Changed name.', 11, 1);
INSERT INTO `xadmin_log` VALUES (69, '2019-02-16 22:55:16.001765', '67.216.200.82', '2', '《初识Python》课程的章节 >> 第2章 安装Python', 'change', 'Changed name 和 learn_times.', 11, 1);
INSERT INTO `xadmin_log` VALUES (70, '2019-02-16 22:55:42.950719', '67.216.200.82', '1', '《初识Python》课程的章节 >> 第1章 课程介绍章节的视频 >> 1-1 Python基础 1 安装', 'change', 'Changed name.', 12, 1);
INSERT INTO `xadmin_log` VALUES (71, '2019-02-16 22:56:11.624911', '67.216.200.82', '1', '《初识Python》课程的章节 >> 第1章 课程介绍章节的视频 >> 1-1 Python入门课程介绍', 'change', 'Changed name.', 12, 1);
INSERT INTO `xadmin_log` VALUES (72, '2019-02-16 22:56:28.571477', '67.216.200.82', '2', '《初识Python》课程的章节 >> 第2章 安装Python章节的视频 >> 2-1 选择Python版本', 'change', 'Changed name.', 12, 1);
INSERT INTO `xadmin_log` VALUES (73, '2019-02-16 22:56:51.072090', '67.216.200.82', '3', '《初识Python》课程的章节 >> 第2章 安装Python章节的视频 >> 2-2 Windows上安装Python', 'change', 'Changed lesson 和 name.', 12, 1);
INSERT INTO `xadmin_log` VALUES (74, '2019-02-16 22:57:08.729900', '67.216.200.82', '4', '《初识Python》课程的章节 >> 第2章 安装Python章节的视频 >> 第一个Python程序', 'change', 'Changed lesson.', 12, 1);
INSERT INTO `xadmin_log` VALUES (75, '2019-02-16 22:57:43.438698', '67.216.200.82', '4', '《初识Python》课程的章节 >> 第2章 安装Python章节的视频 >> 2-3 第一个Python程序', 'change', 'Changed name.', 12, 1);
INSERT INTO `xadmin_log` VALUES (76, '2019-02-16 22:59:04.349147', '67.216.200.82', '3', '《初识Python》课程的章节 >> 第3章 Python变量和数据类型', 'change', 'Changed name 和 learn_times.', 11, 1);
INSERT INTO `xadmin_log` VALUES (77, '2019-02-16 22:59:34.053726', '67.216.200.82', '4', '《初识Python》课程的章节 >> 第4章 List 和Tuple类型', 'change', 'Changed name 和 learn_times.', 11, 1);
INSERT INTO `xadmin_log` VALUES (78, '2019-02-16 23:00:57.497059', '67.216.200.82', '7', '《初识Python》课程的章节 >> 第3章 Python变量和数据类型章节的视频 >> 3-1 Python中数据类型', 'create', '已添加。', 12, 1);
INSERT INTO `xadmin_log` VALUES (79, '2019-02-16 23:01:20.992395', '67.216.200.82', '8', '《初识Python》课程的章节 >> 第3章 Python变量和数据类型章节的视频 >> 3-2 Python之print语句', 'create', '已添加。', 12, 1);
INSERT INTO `xadmin_log` VALUES (80, '2019-02-16 23:02:02.668137', '67.216.200.82', '9', '《初识Python》课程的章节 >> 第4章 List 和Tuple类型章节的视频 >> 4-1 Python创建list', 'create', '已添加。', 12, 1);
INSERT INTO `xadmin_log` VALUES (81, '2019-02-16 23:02:25.182347', '67.216.200.82', '10', '《初识Python》课程的章节 >> 第4章 List 和Tuple类型章节的视频 >> 4-2 Python按照索引访问list', 'create', '已添加。', 12, 1);
INSERT INTO `xadmin_log` VALUES (82, '2019-02-16 23:03:06.241425', '67.216.200.82', '11', '《初识Python》课程的章节 >> 第3章 Python变量和数据类型章节的视频 >> 3-3 Python的注释', 'create', '已添加。', 12, 1);
INSERT INTO `xadmin_log` VALUES (83, '2019-02-16 23:03:36.721537', '67.216.200.82', '12', '《初识Python》课程的章节 >> 第3章 Python变量和数据类型章节的视频 >> 3-4 Python中什么是变量', 'create', '已添加。', 12, 1);
INSERT INTO `xadmin_log` VALUES (84, '2019-02-16 23:04:44.227469', '67.216.200.82', '13', '《初识Python》课程的章节 >> 第3章 Python变量和数据类型章节的视频 >> 3-5 Python中定义字符串', 'create', '已添加。', 12, 1);
INSERT INTO `xadmin_log` VALUES (85, '2019-02-16 23:05:56.101389', '67.216.200.82', '14', '《初识Python》课程的章节 >> 第3章 Python变量和数据类型章节的视频 >> 3-6 Python中raw字符串与多行字符串', 'create', '已添加。', 12, 1);
INSERT INTO `xadmin_log` VALUES (86, '2019-02-16 23:06:39.641302', '67.216.200.82', '15', '《初识Python》课程的章节 >> 第3章 Python变量和数据类型章节的视频 >> 3-7 Python中Unicode字符串', 'create', '已添加。', 12, 1);
INSERT INTO `xadmin_log` VALUES (87, '2019-02-16 23:07:08.509423', '67.216.200.82', '16', '《初识Python》课程的章节 >> 第3章 Python变量和数据类型章节的视频 >> 3-8 Python中整数和浮点数', 'create', '已添加。', 12, 1);
INSERT INTO `xadmin_log` VALUES (88, '2019-02-16 23:07:44.247955', '67.216.200.82', '17', '《初识Python》课程的章节 >> 第3章 Python变量和数据类型章节的视频 >> 3-9 Python中布尔类型', 'create', '已添加。', 12, 1);
INSERT INTO `xadmin_log` VALUES (89, '2019-02-16 23:08:27.900432', '67.216.200.82', '6', '《django入门与实践》课程的章节 >> 第2章 课前准备', 'create', '已添加。', 11, 1);
INSERT INTO `xadmin_log` VALUES (90, '2019-02-16 23:09:01.994489', '67.216.200.82', '7', '《django入门与实践》课程的章节 >> 第三章 开发环境搭建', 'create', '已添加。', 11, 1);
INSERT INTO `xadmin_log` VALUES (91, '2019-02-16 23:09:37.954349', '67.216.200.82', '18', '《django入门与实践》课程的章节 >> 第1章 介绍课程目标及学习内容章节的视频 >> 1-1 课程介绍', 'create', '已添加。', 12, 1);
INSERT INTO `xadmin_log` VALUES (92, '2019-02-16 23:10:50.315089', '67.216.200.82', NULL, '', 'delete', 'Batch delete 1 视频.', NULL, 1);
INSERT INTO `xadmin_log` VALUES (93, '2019-02-16 23:11:08.929703', '67.216.200.82', '7', '《django入门与实践》课程的章节 >> 第3章 开发环境搭建', 'change', 'Changed name.', 11, 1);
INSERT INTO `xadmin_log` VALUES (94, '2019-02-16 23:11:20.751764', '67.216.200.82', '5', '《django入门与实践》课程的章节 >> 第1章 介绍课程目标及学习内容', 'change', 'Changed learn_times.', 11, 1);
INSERT INTO `xadmin_log` VALUES (95, '2019-02-16 23:11:48.439427', '67.216.200.82', '19', '《django入门与实践》课程的章节 >> 第2章 课前准备章节的视频 >> 2-1 课前准备', 'create', '已添加。', 12, 1);
INSERT INTO `xadmin_log` VALUES (96, '2019-02-16 23:12:11.476291', '67.216.200.82', '20', '《django入门与实践》课程的章节 >> 第3章 开发环境搭建章节的视频 >> 3-1 环境搭建', 'create', '已添加。', 12, 1);
INSERT INTO `xadmin_log` VALUES (97, '2019-02-16 23:12:21.533960', '67.216.200.82', '19', '《django入门与实践》课程的章节 >> 第2章 课前准备章节的视频 >> 2-1 课前准备', 'change', 'Changed learn_times.', 12, 1);
INSERT INTO `xadmin_log` VALUES (98, '2019-02-16 23:24:32.347434', '67.216.200.82', '3', '爬虫框架Scrapy入门与实践(位于第3位)', 'create', '已添加。', 7, 1);
INSERT INTO `xadmin_log` VALUES (99, '2019-02-16 23:25:49.109710', '67.216.200.82', '3', '爬虫框架Scrapy入门与实践(位于第100位)', 'change', 'Changed index.', 7, 1);
INSERT INTO `xadmin_log` VALUES (100, '2019-02-16 23:26:02.212004', '67.216.200.82', '2', 'django入门与实践(位于第100位)', 'change', 'Changed index.', 7, 1);
INSERT INTO `xadmin_log` VALUES (101, '2019-02-16 23:26:14.319655', '67.216.200.82', '1', 'Python基础(位于第100位)', 'change', 'Changed index.', 7, 1);
INSERT INTO `xadmin_log` VALUES (102, '2019-02-16 23:26:35.768639', '67.216.200.82', '1', 'Python基础(位于第0位)', 'change', 'Changed index.', 7, 1);
INSERT INTO `xadmin_log` VALUES (103, '2019-02-16 23:26:50.821737', '67.216.200.82', '2', 'django入门与实践(位于第1位)', 'change', 'Changed index.', 7, 1);
INSERT INTO `xadmin_log` VALUES (104, '2019-02-16 23:27:07.919702', '67.216.200.82', '3', '爬虫框架Scrapy入门与实践(位于第0位)', 'change', 'Changed index.', 7, 1);
INSERT INTO `xadmin_log` VALUES (105, '2019-02-16 23:27:23.323492', '67.216.200.82', '1', 'Python基础(位于第1位)', 'change', 'Changed index.', 7, 1);
INSERT INTO `xadmin_log` VALUES (106, '2019-02-16 23:27:30.131281', '67.216.200.82', '2', 'django入门与实践(位于第2位)', 'change', 'Changed index.', 7, 1);
INSERT INTO `xadmin_log` VALUES (107, '2019-02-16 23:27:36.312773', '67.216.200.82', '3', '爬虫框架Scrapy入门与实践(位于第3位)', 'change', 'Changed index.', 7, 1);
INSERT INTO `xadmin_log` VALUES (108, '2019-02-16 23:34:29.063458', '67.216.200.82', '8', '《爬虫框架Scrapy入门与实践》课程的章节 >> 第1章 课程介绍', 'create', '已添加。', 11, 1);
INSERT INTO `xadmin_log` VALUES (109, '2019-02-16 23:35:06.870422', '67.216.200.82', '9', '《爬虫框架Scrapy入门与实践》课程的章节 >> 第2章 scrapy框架、mongodb数据库的安装及scrapy实践', 'create', '已添加。', 11, 1);
INSERT INTO `xadmin_log` VALUES (110, '2019-02-16 23:36:16.470399', '67.216.200.82', '21', '《爬虫框架Scrapy入门与实践》课程的章节 >> 第1章 课程介绍章节的视频 >> 1-1 《Python最火爬虫框架Scrapy入门与实践》课程简介', 'create', '已添加。', 12, 1);
INSERT INTO `xadmin_log` VALUES (111, '2019-02-16 23:36:17.250349', '67.216.200.82', '22', '《爬虫框架Scrapy入门与实践》课程的章节 >> 第1章 课程介绍章节的视频 >> 1-1 《Python最火爬虫框架Scrapy入门与实践》课程简介', 'create', '已添加。', 12, 1);
INSERT INTO `xadmin_log` VALUES (112, '2019-02-16 23:36:57.530294', '67.216.200.82', '23', '《爬虫框架Scrapy入门与实践》课程的章节 >> 第2章 scrapy框架、mongodb数据库的安装及scrapy实践章节的视频 >> 2-1 scrpay的安装、和安装中遇到的问题', 'create', '已添加。', 12, 1);
INSERT INTO `xadmin_log` VALUES (113, '2019-02-16 23:37:37.458476', '67.216.200.82', '24', '《爬虫框架Scrapy入门与实践》课程的章节 >> 第2章 scrapy框架、mongodb数据库的安装及scrapy实践章节的视频 >> 2-2 scrapy的介绍、组件、数据流', 'create', '已添加。', 12, 1);
INSERT INTO `xadmin_log` VALUES (114, '2019-02-16 23:44:16.849995', '67.216.200.82', '4', '从零做一个前端开源项目(位于第4位)', 'create', '已添加。', 7, 1);
INSERT INTO `xadmin_log` VALUES (115, '2019-02-16 23:47:10.677274', '67.216.200.82', '1', '初识Python', 'change', 'Changed course_org 和 teacher.', 13, 1);
INSERT INTO `xadmin_log` VALUES (116, '2019-02-16 23:47:59.923867', '67.216.200.82', '2', 'django入门与实践', 'change', 'Changed course_org 和 teacher.', 13, 1);
INSERT INTO `xadmin_log` VALUES (117, '2019-05-29 00:19:15.736218', '127.0.0.1', '4', '从零做一个前端开源项目(位于第4位)', 'change', '修改 url', 7, 1);
INSERT INTO `xadmin_log` VALUES (118, '2019-05-29 00:19:22.751440', '127.0.0.1', '3', '爬虫框架Scrapy入门与实践(位于第3位)', 'change', '修改 url', 7, 1);
INSERT INTO `xadmin_log` VALUES (119, '2019-05-29 00:19:29.487472', '127.0.0.1', '2', 'django入门与实践(位于第2位)', 'change', '修改 url', 7, 1);
INSERT INTO `xadmin_log` VALUES (120, '2019-05-29 00:19:35.168474', '127.0.0.1', '1', 'Python基础(位于第1位)', 'change', '修改 url', 7, 1);
INSERT INTO `xadmin_log` VALUES (121, '2019-05-29 00:22:10.969293', '127.0.0.1', '4', '从零做一个前端开源项目(位于第4位)', 'change', '修改 url', 7, 1);
INSERT INTO `xadmin_log` VALUES (122, '2019-05-29 00:22:13.901513', '127.0.0.1', '4', '从零做一个前端开源项目(位于第4位)', 'change', '没有字段被修改。', 7, 1);
INSERT INTO `xadmin_log` VALUES (123, '2019-05-29 00:22:21.473675', '127.0.0.1', '3', '爬虫框架Scrapy入门与实践(位于第3位)', 'change', '修改 url', 7, 1);
INSERT INTO `xadmin_log` VALUES (124, '2019-05-29 00:22:26.337134', '127.0.0.1', '2', 'django入门与实践(位于第2位)', 'change', '修改 url', 7, 1);
INSERT INTO `xadmin_log` VALUES (125, '2019-05-29 00:22:32.165953', '127.0.0.1', '1', 'Python基础(位于第1位)', 'change', '修改 url', 7, 1);
COMMIT;

-- ----------------------------
-- Table structure for xadmin_usersettings
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_usersettings`;
CREATE TABLE `xadmin_usersettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(256) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_usersettings_user_id_edeabe4a_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_usersettings_user_id_edeabe4a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_usersettings
-- ----------------------------
BEGIN;
INSERT INTO `xadmin_usersettings` VALUES (1, 'dashboard:home:pos', '', 1);
INSERT INTO `xadmin_usersettings` VALUES (2, 'site-theme', 'https://bootswatch.com/3/lumen/bootstrap.min.css', 1);
INSERT INTO `xadmin_usersettings` VALUES (3, 'courses_bannercourse_editform_portal', 'box-0,lesson_set-group,,courseresource_set-group,', 1);
INSERT INTO `xadmin_usersettings` VALUES (4, 'courses_course_editform_portal', 'box-0,lesson_set-group,,courseresource_set-group,', 1);
COMMIT;

-- ----------------------------
-- Table structure for xadmin_userwidget
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_userwidget`;
CREATE TABLE `xadmin_userwidget` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` varchar(256) NOT NULL,
  `widget_type` varchar(50) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_userwidget_user_id_c159233a_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_userwidget_user_id_c159233a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

SET FOREIGN_KEY_CHECKS = 1;
