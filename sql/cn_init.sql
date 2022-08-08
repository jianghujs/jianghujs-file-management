/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50710
 Source Host           : localhost:3306
 Source Schema         : jianghujs-file-management

 Target Server Type    : MySQL
 Target Server Version : 50710
 File Encoding         : 65001

 Date: 14/07/2022 15:54:22
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for _cache
-- ----------------------------
DROP TABLE IF EXISTS `_cache`;
CREATE TABLE `_cache` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(255) NOT NULL COMMENT '用户Id',
  `content` longtext COMMENT '缓存数据',
  `recordStatus` varchar(255) DEFAULT 'active',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='缓存表';

-- ----------------------------
-- Records of _cache
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for _constant
-- ----------------------------
DROP TABLE IF EXISTS `_constant`;
CREATE TABLE `_constant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `constantKey` varchar(255) DEFAULT NULL,
  `constantType` varchar(255) DEFAULT NULL COMMENT '常量类型; object, array',
  `desc` varchar(255) DEFAULT NULL COMMENT '描述',
  `constantValue` text COMMENT '常量内容; object, array',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COMMENT='常量表;';

-- ----------------------------
-- Records of _constant
-- ----------------------------
BEGIN;
INSERT INTO `_constant` (`id`, `constantKey`, `constantType`, `desc`, `constantValue`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (6, 'notice', 'object', '', '{\"title\":\"4.3.7 版本发布\",\"content\":\"快来使用吧！\\n测试12123123\\n快来使用吧！\\n测试12123123\\n快来使用吧！\\n测试12123123\\n快来使用吧！\\n测试12123123\\n\",\"imageSrc\":\"/noticeImage/1647076649263_719911_noticeImage.jpeg\",\"isImageShown\":false,\"isTextShown\":true}', 'update', 'admin01', 'admin01', '2022-03-12T17:19:50+08:00');
INSERT INTO `_constant` (`id`, `constantKey`, `constantType`, `desc`, `constantValue`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (59, 'userStatus', 'array', NULL, '[{\"value\": \"active\", \"text\": \"正常\"}, {\"value\": \"banned\", \"text\": \"禁用\"}]', 'insert', NULL, NULL, NULL);
INSERT INTO `_constant` (`id`, `constantKey`, `constantType`, `desc`, `constantValue`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (60, 'userType', 'array', NULL, '[{\"value\": \"common\", \"text\": \"普通用户\"},{\"value\": \"xiaochengxu\", \"text\": \"小程序机器人\"}]', 'insert', NULL, NULL, NULL);
INSERT INTO `_constant` (`id`, `constantKey`, `constantType`, `desc`, `constantValue`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (61, 'gender', 'array', NULL, '[{\"value\": \"male\", \"text\": \"男\"}, {\"value\": \"female\", \"text\": \"女\"}]', 'insert', NULL, NULL, NULL);
INSERT INTO `_constant` (`id`, `constantKey`, `constantType`, `desc`, `constantValue`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (62, 'version', 'object', NULL, '{\"testUserIdList\": \"\",\"version\": \"4.3.11\", \"title\": \"4.3.7 版本发布\", \"note\": \"新版本介绍\\n 1. 聊天输入优化\", \"apkVersion\": \"5.0.20\", \"apkLink\": \"https://duoxing.openjianghu.org/duoxing/upload/10002/1647840662817_956853_D多星MD-4.7.10.apk\", \"apkNote\": \"\", \"desktopVersion\": \"4.3.2\", \"desktopLink\": \"http://192.168.110.215:8082/duoxing/upload/duoxing-1.0.1.dmg.zip\", \"desktopNote\": \"测试桌面客户端升级\" }', 'insert', NULL, NULL, NULL);
INSERT INTO `_constant` (`id`, `constantKey`, `constantType`, `desc`, `constantValue`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (64, 'emotion', 'array', NULL, '[\n  {\n    \"dir\":\"face01\",\n    \"cover\":\"face-lbl\",\n    \"ext\":\"png\",\n    \"cols\":5,\n    \"total\":86\n  },\n  {\n    \"dir\":\"face02\",\n    \"cover\":\"face-lbl\",\n    \"ext\":\"gif\",\n    \"cols\":2,\n    \"total\":16\n  },\n  {\n    \"dir\":\"face03\",\n    \"cover\":\"face-lbl\",\n    \"ext\":\"gif\",\n    \"cols\":2,\n    \"total\":16\n  },\n  {\n    \"dir\":\"face04\",\n    \"cover\":\"face-lbl\",\n    \"ext\":\"gif\",\n    \"cols\":2,\n    \"total\":16\n  },\n  {\n    \"dir\":\"face05\",\n    \"cover\":\"face-lbl\",\n    \"ext\":\"gif\",\n    \"cols\":1,\n    \"total\":7\n  },\n  {\n    \"dir\":\"face06\",\n    \"cover\":\"face-lbl\",\n    \"ext\":\"gif\",\n    \"cols\":3,\n    \"total\":24\n  },\n  {\n    \"dir\":\"face07\",\n    \"cover\":\"face-lbl\",\n    \"ext\":\"gif\",\n    \"cols\":2,\n    \"total\":16\n  },\n  {\n    \"dir\":\"face08\",\n    \"cover\":\"face-lbl\",\n    \"ext\":\"gif\",\n    \"cols\":3,\n    \"total\":23\n  },\n  {\n    \"dir\":\"face09\",\n    \"cover\":\"face-lbl\",\n    \"ext\":\"gif\",\n    \"cols\":2,\n    \"total\":16\n  },\n  {\n    \"dir\":\"face10\",\n    \"cover\":\"face-lbl\",\n    \"ext\":\"gif\",\n    \"cols\":3,\n    \"total\":20\n  },\n  {\n    \"dir\":\"face11\",\n    \"cover\":\"face-lbl\",\n    \"ext\":\"gif\",\n    \"cols\":2,\n    \"total\":13\n  },\n  {\n    \"dir\":\"face12\",\n    \"cover\":\"face-lbl\",\n    \"ext\":\"gif\",\n    \"cols\":2,\n    \"total\":16\n  },\n  {\n    \"dir\":\"face13\",\n    \"cover\":\"face-lbl\",\n    \"ext\":\"gif\",\n    \"cols\":2,\n    \"total\":15\n  },\n  {\n    \"dir\":\"face14\",\n    \"cover\":\"face-lbl\",\n    \"ext\":\"gif\",\n    \"cols\":2,\n    \"total\":16\n  }\n]\n', 'insert', NULL, NULL, NULL);
INSERT INTO `_constant` (`id`, `constantKey`, `constantType`, `desc`, `constantValue`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (65, 'appLinkActionConfig', 'array', NULL, '[{\"regex\":\".openjianghu.org\\/*\", \"action\": \"internal\"}, {\"regex\":\"http:\\/\\/192.168.\\/*\", \"action\": \"internal\"}]', 'insert', NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for _constant_ui
-- ----------------------------
DROP TABLE IF EXISTS `_constant_ui`;
CREATE TABLE `_constant_ui` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `constantKey` varchar(255) DEFAULT NULL,
  `constantType` varchar(255) DEFAULT NULL COMMENT '常量类型; object, array',
  `pageId` varchar(255) DEFAULT 'all' COMMENT '页面id',
  `desc` varchar(255) DEFAULT NULL COMMENT '描述',
  `en` text COMMENT '常量内容; object, array',
  `zh` text COMMENT '常量内容; object, array',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `pageId_constantKey_unique` (`constantKey`,`pageId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COMMENT='常量表;';

-- ----------------------------
-- Records of _constant_ui
-- ----------------------------
BEGIN;
INSERT INTO `_constant_ui` (`id`, `constantKey`, `constantType`, `pageId`, `desc`, `en`, `zh`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (1, 'btn', 'object', 'all', '按钮', '{\"upload\":\"upload\", \"createFolder\":\"folder\",\"material\":\"material\",\"materialManagement\":\"material management\",\"logout\":\"logout\",\"logoutSuccess\":\"logout succeeded\",\"fileName\":\"file name\",\"rename\":\"rename\",\"cancel\":\"cancel\",\"paste\":\"paste\",\"create\":\"create\",\"fileName\":\"file name\",\"use\":\"use\",\"selectFile\":\"Please select a folder or file\",\"file\":\"file\",\"fileNotFound\":\"File or folder not found\",\"folderEmpty\":\"folder is empty\",\"enterFileName\":\"Please enter a file name\",\"fileRename\":\"file rename\",\"renamedSuccess\":\"File renamed successfully\",\"uploadProgress\":\"upload progress\",\"movedSuccess\":\"File moved successfully\",\"uploadTo\":\"upload to\",\"maxFileSize\":\"Max file size\",\"maxFilesCount\":\"Max files count\",\"delete\":\"delete\",\"sureDelete\":\"Are you sure you want to delete this \",\"yes\":\"yes\",\"folder\":\"folder\",,\"uploadAll\":\"upload all\",\"removeAll\":\"remove all\"}', '{\"upload\":\"上传\", \"createFolder\":\"创建文件夹\",\"material\":\"素材\",\"materialManagement\":\"素材管理\",\"logout\":\"退出登录\",\"logoutSuccess\":\"退出登录成功\",\"rename\":\"重命名\",\"cancel\":\"取消\",\"paste\":\"粘贴\",\"create\":\"创建\",\"fileName\":\"文件名\",\"use\":\"使用\",\"selectFile\":\"请选择一个文件夹或文件\",\"file\":\"文件\",\"fileNotFound\":\"找不到文件或文件夹\",\"folderEmpty\":\"文件夹为空\",\"enterFileName\":\"请输入文件名\",\"fileRename\":\"文件重命名\",\"renamedSuccess\":\"文件重命名成功\",\"uploadProgress\":\"上传进度\",\"movedSuccess\":\"文件移动成功\",\"uploadTo\":\"上传至\",\"maxFileSize\":\"最大文件大小\",\"maxFilesCount\":\"最大文件数\",\"delete\":\"删除\",\"sureDelete\":\"确定你想要删除这个\",\"yes\":\"是的\",\"folder\":\"文件夹\",\"uploadAll\":\"全部上传\",\"removeAll\":\"全部移除\"}', 'insert', NULL, NULL, NULL);
INSERT INTO `_constant_ui` (`id`, `constantKey`, `constantType`, `pageId`, `desc`, `en`, `zh`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (2, 'common', 'object', 'all', '公共', '{\n\"add\":\"add\",\n\"view\":\"view\",\n\"modify\":\"modify\",\n\"delete\":\"delete\",\n\"recycle\":\"recycle\",\n\"recover\":\"recover\",\n\"cancel\":\"cancel\",\n\"sure\":\"sure\",\n\"manage\":\"manage\",\n\"save\":\"save\",\n\"saveAndPreview\":\"saveAndPreview\",\n\"moveToRecycleBin\":\"move to recycle bin\",\n\"operate\":\"operate\",\n\"select\":\"select\"\n}', '{\n\"add\":\"新增\",\n\"view\":\"查看\",\n\"modify\":\"修改\",\n\"delete\":\"删除\",\n\"recycle\":\"回收站\",\n\"recover\":\"恢复\",\n\"cancel\":\"取消\",\n\"sure\":\"确定\",\n\"manage\":\"管理\",\n\"save\":\"保存\",\n\"saveAndPreview\":\"保存并预览\",\n\"moveToRecycleBin\":\"移到回收站\",\n\"operate\":\"操作\",\n\"select\":\"选择\"\n}', 'insert', NULL, NULL, NULL);
COMMIT;
-- ----------------------------
-- Table structure for _file
-- ----------------------------
DROP TABLE IF EXISTS `_file`;
CREATE TABLE `_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fileId` varchar(255) DEFAULT NULL COMMENT 'fileId',
  `fileDirectory` varchar(255) DEFAULT NULL COMMENT '文件保存路径;',
  `filename` varchar(255) DEFAULT NULL COMMENT '文件名;',
  `filenameStorage` varchar(255) DEFAULT NULL COMMENT '文件保存名',
  `downloadPath` varchar(255) DEFAULT NULL COMMENT '文件下载路径',
  `fileType` varchar(255) DEFAULT NULL COMMENT '文件类型;(预留字段)',
  `fileDesc` varchar(255) DEFAULT NULL COMMENT '文件描述',
  `binarySize` varchar(255) DEFAULT NULL COMMENT '文件二进制大小',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `fileId_index` (`fileId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=193 DEFAULT CHARSET=utf8mb4 COMMENT='文件表; 软删除未启用;';

-- ----------------------------
-- Records of _file
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for _group
-- ----------------------------
DROP TABLE IF EXISTS `_group`;
CREATE TABLE `_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupId` varchar(255) NOT NULL COMMENT 'groupId',
  `groupName` varchar(255) DEFAULT NULL COMMENT '群组名',
  `groupDesc` varchar(255) DEFAULT NULL COMMENT '群组描述',
  `groupAvatar` varchar(255) DEFAULT NULL COMMENT '群logo',
  `groupExtend` varchar(1024) DEFAULT '{}' COMMENT '拓展字段; { groupNotice: ''xx'' }',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `groupId_index` (`groupId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='群组表; 软删除未启用;';

-- ----------------------------
-- Records of _group
-- ----------------------------
BEGIN;
INSERT INTO `_group` (`id`, `groupId`, `groupName`, `groupDesc`, `groupAvatar`, `groupExtend`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (1, 'adminGroup', '管理组', '管理组', NULL, '{}', 'insert', NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for _page
-- ----------------------------
DROP TABLE IF EXISTS `_page`;
CREATE TABLE `_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pageId` varchar(255) DEFAULT NULL COMMENT 'pageId',
  `pageName` varchar(255) DEFAULT NULL COMMENT 'page name',
  `pageType` varchar(255) DEFAULT NULL COMMENT '页面类型; showInMenu, dynamicInMenu',
  `sort` varchar(255) DEFAULT NULL,
  `pageHook` text COMMENT '{\n  "beforeHook":[\n  {"field": "doc", "service": "doc", "serviceFunc": "getDoc"}\n  ]\n}',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COMMENT='页面表; 软删除未启用;';

-- ----------------------------
-- Records of _page
-- ----------------------------
BEGIN;
INSERT INTO `_page` (`id`, `pageId`, `pageName`, `pageType`, `sort`, `pageHook`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (2, 'help', '帮助', 'dynamicInMenu', '11', NULL, 'insert', NULL, NULL, NULL);
INSERT INTO `_page` (`id`, `pageId`, `pageName`, `pageType`, `sort`, `pageHook`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (3, 'login', '登陆', '', '', NULL, 'insert', NULL, NULL, NULL);
INSERT INTO `_page` (`id`, `pageId`, `pageName`, `pageType`, `sort`, `pageHook`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (45, 'materialManagement', '素材管理', 'showInMenu', '5', '{\n  \"beforeHook\":[\r\n    {\"field\": \"constantUiMap\", \"service\": \"constantUi\", \"serviceFunc\": \"getConstantUiMap\"},\n		{\"field\": \"userInfo\", \"service\": \"user\", \"serviceFunc\": \"userInfo\"}\n  ]\n}', 'insert', NULL, NULL, NULL);
INSERT INTO `_page` (`id`, `pageId`, `pageName`, `pageType`, `sort`, `pageHook`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (59, 'materialUpload', '素材上传', 'showInMenu', '6', '{\n  \"beforeHook\":[\r\n    {\"field\": \"constantUiMap\", \"service\": \"constantUi\", \"serviceFunc\": \"getConstantUiMap\"},\n		{\"field\": \"userInfo\", \"service\": \"user\", \"serviceFunc\": \"userInfo\"}\n  ]\n}', 'insert', NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for _record_history
-- ----------------------------
DROP TABLE IF EXISTS `_record_history`;
CREATE TABLE `_record_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `table` varchar(255) DEFAULT NULL COMMENT '表',
  `recordId` int(11) DEFAULT NULL COMMENT '数据在table中的主键id; recordContent.id',
  `recordContent` longtext COMMENT '数据JSON',
  `packageContent` longtext COMMENT '当时请求的 package JSON',
  `operation` varchar(255) DEFAULT NULL COMMENT '操作; jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId; recordContent.operationByUserId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名; recordContent.operationByUser',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; recordContent.operationAt; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `index_record_id` (`recordId`) USING BTREE,
  KEY `index_table_action` (`table`,`operation`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3810 DEFAULT CHARSET=utf8mb4 COMMENT='数据历史表';

-- ----------------------------
-- Records of _record_history
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for _resource
-- ----------------------------
DROP TABLE IF EXISTS `_resource`;
CREATE TABLE `_resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `accessControlTable` varchar(255) DEFAULT NULL COMMENT '数据规则控制表',
  `resourceHook` text COMMENT '{ "before": [{"service": "xx", "serviceFunction": "xxx"}], "after": [] }',
  `pageId` varchar(255) DEFAULT NULL COMMENT 'page id; E.g: index',
  `actionId` varchar(255) DEFAULT NULL COMMENT 'action id; E.g: selectXXXByXXX',
  `desc` varchar(255) DEFAULT NULL COMMENT '描述',
  `resourceType` varchar(255) DEFAULT NULL COMMENT 'resource 类型; E.g: auth service sql',
  `appDataSchema` text COMMENT 'appData 参数校验',
  `resourceData` text COMMENT 'resource 数据; { "service": "auth", "serviceFunction": "passwordLogin" } or  { "table": "${tableName}", "action": "select", "whereCondition": ".where(function() {this.whereNot( { recordStatus: \\"active\\" })})" }',
  `requestDemo` text COMMENT '请求Demo',
  `responseDemo` text COMMENT '响应Demo',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=506 DEFAULT CHARSET=utf8mb4 COMMENT='请求资源表; 软删除未启用; resourceId=`${appId}.${pageId}.${actionId}`';

-- ----------------------------
-- Records of _resource
-- ----------------------------
BEGIN;
INSERT INTO `_resource` (`id`, `accessControlTable`, `resourceHook`, `pageId`, `actionId`, `desc`, `resourceType`, `appDataSchema`, `resourceData`, `requestDemo`, `responseDemo`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (101, NULL, NULL, 'allPage', 'getChunkInfo', '✅ 文件分片下载-获取分片信息', 'service', '{}', '{ \"service\": \"file\", \"serviceFunction\": \"getChunkInfo\" }', '', '', 'update', NULL, NULL, '2022-03-10T22:27:32+08:00');
INSERT INTO `_resource` (`id`, `accessControlTable`, `resourceHook`, `pageId`, `actionId`, `desc`, `resourceType`, `appDataSchema`, `resourceData`, `requestDemo`, `responseDemo`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (102, NULL, NULL, 'allPage', 'uploadFileDone', '✅ 文件分片上传-所有分片上传完毕', 'service', '{}', '{ \"service\": \"file\", \"serviceFunction\": \"uploadFileDone\" }', '', '', 'insert', NULL, NULL, NULL);
INSERT INTO `_resource` (`id`, `accessControlTable`, `resourceHook`, `pageId`, `actionId`, `desc`, `resourceType`, `appDataSchema`, `resourceData`, `requestDemo`, `responseDemo`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (105, NULL, NULL, 'allPage', 'httpUploadByStream', '✅ 文件分片上传-http文件流', 'service', '{}', '{ \"service\": \"file\", \"serviceFunction\": \"uploadFileChunkByStream\" }', '', '', 'update', NULL, NULL, '2022-03-10T22:27:32+08:00');
INSERT INTO `_resource` (`id`, `accessControlTable`, `resourceHook`, `pageId`, `actionId`, `desc`, `resourceType`, `appDataSchema`, `resourceData`, `requestDemo`, `responseDemo`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (106, NULL, NULL, 'allPage', 'httpUploadByBase64', '✅ 文件分片上传-http base64', 'service', '{}', '{ \"service\": \"file\", \"serviceFunction\": \"uploadFileChunkByBase64\" }', '', '', 'update', NULL, NULL, '2022-03-10T22:27:32+08:00');
INSERT INTO `_resource` (`id`, `accessControlTable`, `resourceHook`, `pageId`, `actionId`, `desc`, `resourceType`, `appDataSchema`, `resourceData`, `requestDemo`, `responseDemo`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (112, NULL, NULL, 'allPage', 'httpDownloadByBase64', '✅ 文件分片下载-http base64', 'service', '{}', '{ \"service\": \"file\", \"serviceFunction\": \"downloadFileChunkByBase64\" }', '', '', 'update', NULL, NULL, '2022-03-10T22:27:32+08:00');
INSERT INTO `_resource` (`id`, `accessControlTable`, `resourceHook`, `pageId`, `actionId`, `desc`, `resourceType`, `appDataSchema`, `resourceData`, `requestDemo`, `responseDemo`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (231, NULL, NULL, 'login', 'passwordLogin', '✅登陆', 'service', '{}', '{ \"service\": \"user\", \"serviceFunction\": \"passwordLogin\" }', '', '', 'insert', NULL, NULL, NULL);
INSERT INTO `_resource` (`id`, `accessControlTable`, `resourceHook`, `pageId`, `actionId`, `desc`, `resourceType`, `appDataSchema`, `resourceData`, `requestDemo`, `responseDemo`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (251, NULL, NULL, 'allPage', 'logout', '✅登出', 'service', '{}', '{ \"service\": \"user\", \"serviceFunction\": \"logout\" }', '', '', 'insert', NULL, NULL, NULL);
INSERT INTO `_resource` (`id`, `accessControlTable`, `resourceHook`, `pageId`, `actionId`, `desc`, `resourceType`, `appDataSchema`, `resourceData`, `requestDemo`, `responseDemo`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (253, NULL, NULL, 'allPage', 'userInfo', '✅获取用户信息', 'service', '{}', '{ \"service\": \"user\", \"serviceFunction\": \"userInfo\" }', '', '', 'insert', NULL, NULL, NULL);
INSERT INTO `_resource` (`id`, `accessControlTable`, `resourceHook`, `pageId`, `actionId`, `desc`, `resourceType`, `appDataSchema`, `resourceData`, `requestDemo`, `responseDemo`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (254, NULL, NULL, 'allPage', 'resetPassword', '✅修改用户密码', 'service', '{}', '{ \"service\": \"user\", \"serviceFunction\": \"resetPassword\" }', NULL, NULL, 'insert', NULL, NULL, NULL);
INSERT INTO `_resource` (`id`, `accessControlTable`, `resourceHook`, `pageId`, `actionId`, `desc`, `resourceType`, `appDataSchema`, `resourceData`, `requestDemo`, `responseDemo`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (258, NULL, NULL, 'allPage', 'getConstantList', '✅查询常量', 'sql', '{}', '{ \"table\": \"_constant\", \"operation\": \"select\" }', '', '', 'insert', NULL, NULL, NULL);
INSERT INTO `_resource` (`id`, `accessControlTable`, `resourceHook`, `pageId`, `actionId`, `desc`, `resourceType`, `appDataSchema`, `resourceData`, `requestDemo`, `responseDemo`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (354, NULL, NULL, 'userManagement', 'selectItemList', '✅用户管理-查询信息', 'sql', NULL, '{ \"table\": \"_user\", \"operation\": \"select\" }', '{\"appData\":{\"pageId\":\"userManagement\",\"actionId\":\"selectItemList\",\"actionData\":{},\"where\":{},\"orderBy\":[{\"column\":\"operationAt\",\"order\":\"desc\"}],\"appId\":\"demo_advanced\",\"userAgent\":\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36\"},\"packageId\":\"1650871878788_6841435\",\"packageType\":\"httpRequest\"}', '{\"packageId\":\"1650871878788_6841435\",\"packageType\":\"httpResponse\",\"status\":\"success\",\"timestamp\":\"2022-04-25T15:31:19+08:00\",\"appData\":{\"rows\":[{\"id\":1,\"idSequence\":null,\"userId\":\"admin\",\"username\":\"admin\",\"clearTextPassword\":\"123456\",\"password\":\"f0cc7a42ef0c399737c024202b1aaa3f\",\"md5Salt\":\"9PMF7J7VPsUy\",\"userStatus\":\"active\",\"userType\":\"common\",\"config\":null,\"operation\":\"jhUpdate\",\"operationByUserId\":\"admin\",\"operationByUser\":\"admin\",\"operationAt\":\"2022-04-25T15:31:11+08:00\",\"initPassword\":null},{\"id\":68,\"idSequence\":\"26260000\",\"userId\":\"001\",\"username\":\"小华\",\"clearTextPassword\":\"1234567\",\"password\":\"b9e96d6ebc84dd51f2bd1fb56a79d8cb\",\"md5Salt\":\"ZsPkQcHpYZQT\",\"userStatus\":\"active\",\"userType\":\"common\",\"config\":null,\"operation\":\"update\",\"operationByUserId\":\"admin\",\"operationByUser\":\"admin\",\"operationAt\":\"2022-04-25T14:40:49+08:00\",\"initPassword\":null}],\"resultData\":{\"rows\":[{\"id\":1,\"idSequence\":null,\"userId\":\"admin\",\"username\":\"admin\",\"clearTextPassword\":\"123456\",\"password\":\"f0cc7a42ef0c399737c024202b1aaa3f\",\"md5Salt\":\"9PMF7J7VPsUy\",\"userStatus\":\"active\",\"userType\":\"common\",\"config\":null,\"operation\":\"jhUpdate\",\"operationByUserId\":\"admin\",\"operationByUser\":\"admin\",\"operationAt\":\"2022-04-25T15:31:11+08:00\",\"initPassword\":null},{\"id\":68,\"idSequence\":\"26260000\",\"userId\":\"001\",\"username\":\"小华\",\"clearTextPassword\":\"1234567\",\"password\":\"b9e96d6ebc84dd51f2bd1fb56a79d8cb\",\"md5Salt\":\"ZsPkQcHpYZQT\",\"userStatus\":\"active\",\"userType\":\"common\",\"config\":null,\"operation\":\"update\",\"operationByUserId\":\"admin\",\"operationByUser\":\"admin\",\"operationAt\":\"2022-04-25T14:40:49+08:00\",\"initPassword\":null}]},\"appId\":\"demo_advanced\",\"pageId\":\"userManagement\",\"actionId\":\"selectItemList\"}}', 'update', NULL, NULL, '2022-04-25T15:31:19+08:00');
INSERT INTO `_resource` (`id`, `accessControlTable`, `resourceHook`, `pageId`, `actionId`, `desc`, `resourceType`, `appDataSchema`, `resourceData`, `requestDemo`, `responseDemo`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (355, NULL, NULL, 'userManagement', 'insertItem', '✅用户管理-查询信息', 'service', NULL, '{ \"service\": \"userManagement\", \"serviceFunction\": \"addUser\" }', NULL, NULL, 'update', NULL, NULL, '2022-02-18T20:19:24+08:00');
INSERT INTO `_resource` (`id`, `accessControlTable`, `resourceHook`, `pageId`, `actionId`, `desc`, `resourceType`, `appDataSchema`, `resourceData`, `requestDemo`, `responseDemo`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (356, NULL, NULL, 'userManagement', 'resetUserPassword', '✅用户管理-修改密码', 'service', NULL, '{ \"service\": \"userManagement\", \"serviceFunction\": \"resetUserPassword\" }', '{\"appData\":{\"pageId\":\"userManagement\",\"actionId\":\"resetUserPassword\",\"actionData\":{\"userId\":\"001\",\"clearTextPassword\":\"1234567\"},\"appId\":\"demo_advanced\",\"userAgent\":\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36\"},\"packageId\":\"1650868849466_1403837\",\"packageType\":\"httpRequest\"}', '{\"packageId\":\"1650868849466_1403837\",\"packageType\":\"httpResponse\",\"status\":\"success\",\"timestamp\":\"2022-04-25T14:40:49+08:00\",\"appData\":{\"appId\":\"demo_advanced\",\"pageId\":\"userManagement\",\"actionId\":\"resetUserPassword\"}}', 'update', NULL, NULL, '2022-04-25T14:40:49+08:00');
INSERT INTO `_resource` (`id`, `accessControlTable`, `resourceHook`, `pageId`, `actionId`, `desc`, `resourceType`, `appDataSchema`, `resourceData`, `requestDemo`, `responseDemo`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (357, NULL, NULL, 'userManagement', 'updateItem', '✅用户管理-更新用户', 'sql', NULL, '{ \"table\": \"_user\", \"operation\": \"jhUpdate\" }', '{\"appData\":{\"pageId\":\"userManagement\",\"actionId\":\"updateItem\",\"actionData\":{\"idSequence\":\"26260000\",\"username\":\"小华\",\"clearTextPassword\":\"123456\",\"password\":\"891f5a52508153b06adce61736863ad3\",\"md5Salt\":\"FWhG88C2KSCz\",\"userStatus\":\"active\",\"userType\":\"common\",\"config\":null,\"operation\":\"jhRestore\",\"operationByUserId\":\"admin\",\"operationByUser\":\"admin\",\"operationAt\":\"2022-02-21T00:47:08+08:00\",\"initPassword\":null},\"where\":{\"id\":68},\"appId\":\"demo_advanced\",\"userAgent\":\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36\"},\"packageId\":\"1650868688492_7978792\",\"packageType\":\"httpRequest\"}', '{\"packageId\":\"1650868688492_7978792\",\"packageType\":\"httpResponse\",\"status\":\"success\",\"timestamp\":\"2022-04-25T14:38:08+08:00\",\"appData\":{\"rows\":1,\"appId\":\"demo_advanced\",\"pageId\":\"userManagement\",\"actionId\":\"updateItem\"}}', 'update', NULL, NULL, '2022-04-25T14:38:08+08:00');
INSERT INTO `_resource` (`id`, `accessControlTable`, `resourceHook`, `pageId`, `actionId`, `desc`, `resourceType`, `appDataSchema`, `resourceData`, `requestDemo`, `responseDemo`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (401, NULL, NULL, 'materialManagement', 'list', '✅素材管理-文件列表', 'service', '{}', '{ \"service\": \"material\", \"serviceFunction\": \"list\" }', '', '', 'insert', NULL, NULL, NULL);
INSERT INTO `_resource` (`id`, `accessControlTable`, `resourceHook`, `pageId`, `actionId`, `desc`, `resourceType`, `appDataSchema`, `resourceData`, `requestDemo`, `responseDemo`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (403, NULL, NULL, 'materialManagement', 'mkdir', '✅素材管理-创建文件夹', 'service', '{}', '{ \"service\": \"material\", \"serviceFunction\": \"mkdir\" }', '', '', 'insert', NULL, NULL, NULL);
INSERT INTO `_resource` (`id`, `accessControlTable`, `resourceHook`, `pageId`, `actionId`, `desc`, `resourceType`, `appDataSchema`, `resourceData`, `requestDemo`, `responseDemo`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (404, NULL, NULL, 'materialManagement', 'delete', '✅素材管理-删除', 'service', '{}', '{ \"service\": \"material\", \"serviceFunction\": \"delete\" }', '', '', 'insert', NULL, NULL, NULL);
INSERT INTO `_resource` (`id`, `accessControlTable`, `resourceHook`, `pageId`, `actionId`, `desc`, `resourceType`, `appDataSchema`, `resourceData`, `requestDemo`, `responseDemo`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (405, NULL, NULL, 'materialManagement', 'clearRecycle', '✅素材管理-清空回收站', 'service', '{}', '{ \"service\": \"material\", \"serviceFunction\": \"clearRecycle\" }', '', '', 'insert', NULL, NULL, NULL);
INSERT INTO `_resource` (`id`, `accessControlTable`, `resourceHook`, `pageId`, `actionId`, `desc`, `resourceType`, `appDataSchema`, `resourceData`, `requestDemo`, `responseDemo`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (406, NULL, NULL, 'materialManagement', 'renameFile', '✅素材管理-文件重命名', 'service', '{}', '{ \"service\": \"material\", \"serviceFunction\": \"renameFile\" }', '', '', 'insert', NULL, NULL, NULL);
INSERT INTO `_resource` (`id`, `accessControlTable`, `resourceHook`, `pageId`, `actionId`, `desc`, `resourceType`, `appDataSchema`, `resourceData`, `requestDemo`, `responseDemo`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (413, NULL, NULL, 'materialManagement', 'moveFile', '✅素材管理-移动文件', 'service', '{}', '{ \"service\": \"material\", \"serviceFunction\": \"moveFile\" }', '', '', 'insert', NULL, NULL, NULL);
INSERT INTO `_resource` (`id`, `accessControlTable`, `resourceHook`, `pageId`, `actionId`, `desc`, `resourceType`, `appDataSchema`, `resourceData`, `requestDemo`, `responseDemo`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (416, NULL, NULL, 'materialManagement', 'copyFile', '✅素材管理-复制文件', 'service', '{}', '{ \"service\": \"material\", \"serviceFunction\": \"copyFile\" }', '', '', 'insert', NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for _resource_request_log
-- ----------------------------
DROP TABLE IF EXISTS `_resource_request_log`;
CREATE TABLE `_resource_request_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `resourceId` varchar(255) DEFAULT NULL COMMENT 'resource id;',
  `packageId` varchar(255) DEFAULT NULL COMMENT 'resource package id',
  `userIp` varchar(255) DEFAULT NULL COMMENT '用户ip;',
  `userAgent` varchar(255) DEFAULT NULL COMMENT '设备信息',
  `userId` varchar(255) DEFAULT NULL COMMENT '用户ID',
  `deviceId` varchar(255) DEFAULT NULL COMMENT '设备id',
  `userIpRegion` varchar(255) DEFAULT NULL COMMENT '用户Ip区域',
  `executeSql` varchar(255) DEFAULT NULL COMMENT '执行的sql',
  `requestBody` mediumtext COMMENT '请求body',
  `responseBody` mediumtext COMMENT '响应body',
  `responseStatus` varchar(255) DEFAULT NULL COMMENT '执行的结果;  success, fail',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `resourceId_index` (`resourceId`) USING BTREE,
  KEY `packageId_index` (`packageId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=25012 DEFAULT CHARSET=utf8mb4 COMMENT='文件表; 软删除未启用;';

-- ----------------------------
-- Records of _resource_request_log
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for _role
-- ----------------------------
DROP TABLE IF EXISTS `_role`;
CREATE TABLE `_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roleId` varchar(255) DEFAULT NULL COMMENT 'roleId',
  `roleName` varchar(255) DEFAULT NULL COMMENT 'role name',
  `roleDesc` varchar(255) DEFAULT NULL COMMENT 'role desc',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COMMENT='角色表; 软删除未启用;';

-- ----------------------------
-- Records of _role
-- ----------------------------
BEGIN;
INSERT INTO `_role` (`id`, `roleId`, `roleName`, `roleDesc`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (3, 'appAdmin', '系统管理员', '', 'insert', NULL, NULL, NULL);
INSERT INTO `_role` (`id`, `roleId`, `roleName`, `roleDesc`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (8, 'editor', '可编辑', NULL, 'insert', NULL, NULL, NULL);
INSERT INTO `_role` (`id`, `roleId`, `roleName`, `roleDesc`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (9, 'viewer', '可查看', NULL, 'insert', NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for _ui
-- ----------------------------
DROP TABLE IF EXISTS `_ui`;
CREATE TABLE `_ui` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pageId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'page id; E.g: index',
  `uiActionType` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'ui 动作类型，如：fetchData, postData, changeUi',
  `uiActionId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'action id; E.g: selectXXXByXXX',
  `desc` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '描述',
  `uiActionConfig` text COLLATE utf8mb4_bin COMMENT 'ui 动作数据',
  `appDataSchema` text COLLATE utf8mb4_bin COMMENT 'ui 校验数据',
  `operation` varchar(255) COLLATE utf8mb4_bin DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=230 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='ui 施工方案';

-- ----------------------------
-- Records of _ui
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for _user
-- ----------------------------
DROP TABLE IF EXISTS `_user`;
CREATE TABLE `_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idSequence` varchar(255) DEFAULT NULL,
  `userId` varchar(255) DEFAULT NULL COMMENT '用户id',
  `username` varchar(255) DEFAULT NULL COMMENT '用户名',
  `userAvatar` varchar(255) DEFAULT NULL COMMENT '用户头像',
  `contactNumber` varchar(255) DEFAULT NULL COMMENT '联系方式',
  `gender` varchar(255) DEFAULT 'male' COMMENT '性别; male, female',
  `birthday` varchar(255) DEFAULT NULL COMMENT '生日E.g: 2021-05-28T10:24:54+08:00 ',
  `signature` varchar(255) DEFAULT NULL COMMENT '签名',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `clearTextPassword` varchar(255) DEFAULT NULL COMMENT '初始明文密码',
  `password` varchar(255) DEFAULT NULL COMMENT 'password',
  `md5Salt` varchar(255) DEFAULT NULL COMMENT 'md5Salt',
  `userType` varchar(255) DEFAULT 'common' COMMENT '用户类型; common, xiaochengxu',
  `userStatus` varchar(255) DEFAULT 'active' COMMENT '用户类型; active, banned',
  `config` mediumtext COMMENT '置顶信息',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `userId_unique` (`userId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=176 DEFAULT CHARSET=utf8mb4 COMMENT='用户表;';

-- ----------------------------
-- Records of _user
-- ----------------------------
BEGIN;
INSERT INTO `_user` (`id`, `idSequence`, `userId`, `username`, `userAvatar`, `contactNumber`, `gender`, `birthday`, `signature`, `email`, `clearTextPassword`, `password`, `md5Salt`, `userType`, `userStatus`, `config`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (1, NULL, 'admin', '武林盟主', '/userAvatar/2022/4/4//1649055579149_130916_1.gif', '17177777001', 'male', '2022-04-15T00:00:00.000Z', 'FX啊水电费', '电饭锅回电话', '123456', '9d868aad4af212de6a26e39efbdd86ee', '4ThJGJbAPe5m', 'common', 'active', NULL, 'update', 'm3611F', 'Colin', '2022-05-05T15:55:27+08:00');
INSERT INTO `_user` (`id`, `idSequence`, `userId`, `username`, `userAvatar`, `contactNumber`, `gender`, `birthday`, `signature`, `email`, `clearTextPassword`, `password`, `md5Salt`, `userType`, `userStatus`, `config`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (5, NULL, '10000Q', '伽勒', '/userAvatar/2022/4/8//1649422517016_792036_11.jpeg', '17177777001', 'male', '2022-04-15T00:00:00.000Z', 'FX啊水电费', '电饭锅回电话', '123456', '9d868aad4af212de6a26e39efbdd86ee', '4ThJGJbAPe5m', 'common', 'active', NULL, 'jhUpdate', 'admin', '武林盟主', '2022-04-08T20:55:17+08:00');
INSERT INTO `_user` (`id`, `idSequence`, `userId`, `username`, `userAvatar`, `contactNumber`, `gender`, `birthday`, `signature`, `email`, `clearTextPassword`, `password`, `md5Salt`, `userType`, `userStatus`, `config`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (6, NULL, 'm3995Q', '雪园', '/userAvatar/2022/4/8//1649422517016_792036_11.jpeg', '17177777001', 'male', '2022-04-15T00:00:00.000Z', 'FX啊水电费', '电饭锅回电话', '123456', '9d868aad4af212de6a26e39efbdd86ee', '4ThJGJbAPe5m', 'common', 'active', NULL, 'jhUpdate', 'admin', '武林盟主', '2022-04-08T20:55:17+08:00');
INSERT INTO `_user` (`id`, `idSequence`, `userId`, `username`, `userAvatar`, `contactNumber`, `gender`, `birthday`, `signature`, `email`, `clearTextPassword`, `password`, `md5Salt`, `userType`, `userStatus`, `config`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (7, NULL, 'm3862G', 'louis', '/userAvatar/2022/4/8//1649422517016_792036_11.jpeg', '17177777001', 'male', '2022-04-15T00:00:00.000Z', 'FX啊水电费', '电饭锅回电话', '123456', '9d868aad4af212de6a26e39efbdd86ee', '4ThJGJbAPe5m', 'common', 'active', NULL, 'jhUpdate', 'admin', '武林盟主', '2022-04-08T20:55:17+08:00');
INSERT INTO `_user` (`id`, `idSequence`, `userId`, `username`, `userAvatar`, `contactNumber`, `gender`, `birthday`, `signature`, `email`, `clearTextPassword`, `password`, `md5Salt`, `userType`, `userStatus`, `config`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (9, NULL, 'm3662X', '张超', '/userAvatar/2022/4/8//1649422517016_792036_11.jpeg', '17177777001', 'male', '2022-04-15T00:00:00.000Z', 'FX啊水电费', '电饭锅回电话', '123456', '9d868aad4af212de6a26e39efbdd86ee', '4ThJGJbAPe5m', 'common', 'active', NULL, 'jhUpdate', 'admin', '武林盟主', '2022-04-08T20:55:17+08:00');
INSERT INTO `_user` (`id`, `idSequence`, `userId`, `username`, `userAvatar`, `contactNumber`, `gender`, `birthday`, `signature`, `email`, `clearTextPassword`, `password`, `md5Salt`, `userType`, `userStatus`, `config`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (10, NULL, 'm3659N', '汗蒸', '/userAvatar/2022/4/8//1649422517016_792036_11.jpeg', '17177777001', 'male', '2022-04-15T00:00:00.000Z', 'FX啊水电费', '电饭锅回电话', '123456', '9d868aad4af212de6a26e39efbdd86ee', '4ThJGJbAPe5m', 'common', 'active', NULL, 'jhUpdate', 'admin', '武林盟主', '2022-04-08T20:55:17+08:00');
INSERT INTO `_user` (`id`, `idSequence`, `userId`, `username`, `userAvatar`, `contactNumber`, `gender`, `birthday`, `signature`, `email`, `clearTextPassword`, `password`, `md5Salt`, `userType`, `userStatus`, `config`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (11, NULL, 'm3658K', '本善', '/userAvatar/2022/4/8//1649422517016_792036_11.jpeg', '17177777001', 'male', '2022-04-15T00:00:00.000Z', 'FX啊水电费', '电饭锅回电话', '123456', '9d868aad4af212de6a26e39efbdd86ee', '4ThJGJbAPe5m', 'common', 'active', NULL, 'jhUpdate', 'admin', '武林盟主', '2022-04-08T20:55:17+08:00');
INSERT INTO `_user` (`id`, `idSequence`, `userId`, `username`, `userAvatar`, `contactNumber`, `gender`, `birthday`, `signature`, `email`, `clearTextPassword`, `password`, `md5Salt`, `userType`, `userStatus`, `config`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (12, NULL, 'm3611F', 'Colin', '/userAvatar/2022/4/8//1649422517016_792036_11.jpeg', '17177777001', 'male', '2022-04-15T00:00:00.000Z', 'FX啊水电费', '电饭锅回电话', '123456', '9d868aad4af212de6a26e39efbdd86ee', '4ThJGJbAPe5m', 'common', 'active', NULL, 'jhUpdate', 'm3611F', 'Colin', '2022-05-05T15:52:43+08:00');
INSERT INTO `_user` (`id`, `idSequence`, `userId`, `username`, `userAvatar`, `contactNumber`, `gender`, `birthday`, `signature`, `email`, `clearTextPassword`, `password`, `md5Salt`, `userType`, `userStatus`, `config`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (173, '26260000', '100005W', '安宁', NULL, NULL, 'male', NULL, NULL, NULL, '123456', '9d868aad4af212de6a26e39efbdd86ee', '4ThJGJbAPe5m', 'common', 'active', NULL, 'insert', 'admin', '武林盟主', '2022-04-28T17:03:01+08:00');
INSERT INTO `_user` (`id`, `idSequence`, `userId`, `username`, `userAvatar`, `contactNumber`, `gender`, `birthday`, `signature`, `email`, `clearTextPassword`, `password`, `md5Salt`, `userType`, `userStatus`, `config`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (174, '26260001', '100002D', '王番', NULL, NULL, 'male', NULL, NULL, NULL, '123456', '9d868aad4af212de6a26e39efbdd86ee', '4ThJGJbAPe5m', 'common', 'active', NULL, 'insert', '100005W', '安宁', '2022-05-15T23:10:47+08:00');
INSERT INTO `_user` (`id`, `idSequence`, `userId`, `username`, `userAvatar`, `contactNumber`, `gender`, `birthday`, `signature`, `email`, `clearTextPassword`, `password`, `md5Salt`, `userType`, `userStatus`, `config`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (175, '26260002', '100062Y', '雅飒', NULL, NULL, 'male', NULL, NULL, NULL, '123456', '9d868aad4af212de6a26e39efbdd86ee', '4ThJGJbAPe5m', 'common', 'active', NULL, 'insert', '100005W', '安宁', '2022-05-15T23:11:31+08:00');
COMMIT;

-- ----------------------------
-- Table structure for _user_group_role
-- ----------------------------
DROP TABLE IF EXISTS `_user_group_role`;
CREATE TABLE `_user_group_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(255) NOT NULL COMMENT '用户id',
  `groupId` varchar(255) NOT NULL COMMENT '群组Id',
  `roleId` varchar(255) DEFAULT NULL COMMENT '角色Id',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `groupId_index` (`groupId`) USING BTREE,
  KEY `userId_index` (`userId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户群组角色关联表; 软删除未启用;';

-- ----------------------------
-- Records of _user_group_role
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for _user_group_role_page
-- ----------------------------
DROP TABLE IF EXISTS `_user_group_role_page`;
CREATE TABLE `_user_group_role_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) DEFAULT NULL COMMENT 'userId 或者 通配符; 通配符: *',
  `group` varchar(255) DEFAULT NULL COMMENT 'groupId 或者 通配符; 通配符: *',
  `role` varchar(255) DEFAULT NULL COMMENT 'roleId 或者 通配符; 通配符: *',
  `page` varchar(255) DEFAULT NULL COMMENT 'pageId id',
  `allowOrDeny` varchar(255) DEFAULT NULL COMMENT '用户群组角色 匹配后 执行动作; allow、deny',
  `desc` varchar(255) DEFAULT NULL COMMENT '映射描述',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COMMENT='用户群组角色 - 页面 映射表; 软删除未启用;';

-- ----------------------------
-- Records of _user_group_role_page
-- ----------------------------
BEGIN;
INSERT INTO `_user_group_role_page` (`id`, `user`, `group`, `role`, `page`, `allowOrDeny`, `desc`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (17, '*', 'public', '*', 'login', 'allow', '登录页面公开', 'insert', NULL, NULL, NULL);
INSERT INTO `_user_group_role_page` (`id`, `user`, `group`, `role`, `page`, `allowOrDeny`, `desc`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (18, '*', 'login', '*', 'manual', 'allow', '操作手册页; 开放给登陆用户;', 'insert', NULL, NULL, NULL);
INSERT INTO `_user_group_role_page` (`id`, `user`, `group`, `role`, `page`, `allowOrDeny`, `desc`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (19, '*', 'public', '*', 'help', 'allow', '帮助页; 开放给登陆用户;', 'insert', NULL, NULL, NULL);
INSERT INTO `_user_group_role_page` (`id`, `user`, `group`, `role`, `page`, `allowOrDeny`, `desc`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (53, '*', 'login', '*', '*', 'allow', '给予登录用户所有页面权限', 'insert', NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for _user_group_role_resource
-- ----------------------------
DROP TABLE IF EXISTS `_user_group_role_resource`;
CREATE TABLE `_user_group_role_resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) DEFAULT NULL COMMENT 'userId 或者 通配符; 通配符: *',
  `group` varchar(255) DEFAULT NULL COMMENT 'groupId 或者 通配符; 通配符: *',
  `role` varchar(255) DEFAULT NULL COMMENT 'roleId 或者 通配符; 通配符: *',
  `resource` varchar(255) DEFAULT NULL COMMENT 'resourceId 或者 通配符; 通配符: *, !resourceId',
  `allowOrDeny` varchar(255) DEFAULT NULL COMMENT '用户群组角色 匹配后 执行动作; allow、deny',
  `desc` varchar(255) DEFAULT NULL COMMENT '映射描述',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COMMENT='用户群组角色 - 请求资源 映射表; 软删除未启用;';

-- ----------------------------
-- Records of _user_group_role_resource
-- ----------------------------
BEGIN;
INSERT INTO `_user_group_role_resource` (`id`, `user`, `group`, `role`, `resource`, `allowOrDeny`, `desc`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (1, '*', 'public', '*', 'login.passwordLogin', 'allow', '登陆resource, 开放给所有用户', 'insert', NULL, NULL, NULL);
INSERT INTO `_user_group_role_resource` (`id`, `user`, `group`, `role`, `resource`, `allowOrDeny`, `desc`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (11, '*', 'public', '*', 'allPage.getConstantList', 'allow', '查询常量resource, 开放给所有登陆成功的用户', 'insert', NULL, NULL, NULL);
INSERT INTO `_user_group_role_resource` (`id`, `user`, `group`, `role`, `resource`, `allowOrDeny`, `desc`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (31, '*', 'login', '*', 'allPage.logout', 'allow', '登出resource, 开放给所有登陆成功的用户', 'insert', NULL, NULL, NULL);
INSERT INTO `_user_group_role_resource` (`id`, `user`, `group`, `role`, `resource`, `allowOrDeny`, `desc`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (32, '*', 'login', '*', 'allPage.refreshToken', 'allow', '刷新authToken resource, 开放给所有登陆成功的用户', 'insert', NULL, NULL, NULL);
INSERT INTO `_user_group_role_resource` (`id`, `user`, `group`, `role`, `resource`, `allowOrDeny`, `desc`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (33, '*', 'login', '*', 'allPage.userInfo', 'allow', '用户个人信息resource, 开放给所有登陆成功的用户', 'insert', NULL, NULL, NULL);
INSERT INTO `_user_group_role_resource` (`id`, `user`, `group`, `role`, `resource`, `allowOrDeny`, `desc`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (34, '*', 'login', '*', 'allPage.uploadByBase64', 'allow', '上传文件resource, 开放给所有登陆成功的用户', 'insert', NULL, NULL, NULL);
INSERT INTO `_user_group_role_resource` (`id`, `user`, `group`, `role`, `resource`, `allowOrDeny`, `desc`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (35, '*', 'login', '*', 'allPage.uploadByStream', 'allow', '上传文件resource, 开放给所有登陆成功的用户', 'insert', NULL, NULL, NULL);
INSERT INTO `_user_group_role_resource` (`id`, `user`, `group`, `role`, `resource`, `allowOrDeny`, `desc`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (51, '*', 'login', '*', '*', 'allow', '赋予登录用户所有resource权限', 'insert', NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for _user_session
-- ----------------------------
DROP TABLE IF EXISTS `_user_session`;
CREATE TABLE `_user_session` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(255) DEFAULT NULL COMMENT '用户id',
  `userIp` varchar(255) DEFAULT NULL COMMENT '用户ip',
  `userAgent` varchar(255) DEFAULT NULL COMMENT '请求的 agent',
  `deviceId` varchar(255) DEFAULT NULL COMMENT '设备id',
  `deviceType` varchar(255) DEFAULT NULL COMMENT '设备类型',
  `userIpRegion` varchar(255) DEFAULT NULL,
  `socketStatus` varchar(255) NOT NULL DEFAULT 'offline' COMMENT 'socket状态',
  `authToken` varchar(2048) DEFAULT NULL COMMENT 'auth token',
  `refreshToken` varchar(2048) DEFAULT NULL COMMENT 'refresh token',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `userId_index` (`userId`) USING BTREE,
  KEY `userId_deviceId_unique` (`userId`,`deviceId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COMMENT='用户session表; deviceId 维度;软删除未启用;';

-- ----------------------------
-- Records of _user_session
-- ----------------------------
BEGIN;
INSERT INTO `_user_session` (`id`, `userId`, `userIp`, `userAgent`, `deviceId`, `deviceType`, `userIpRegion`, `socketStatus`, `authToken`, `refreshToken`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (27, 'admin', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.4997.0 Safari/537.36', '127.0.0.1:8301_Mac.10.15.7_0c6e017c_chrome', NULL, '', 'offline', '1U91mJJvK0FtDab_O36AQMOJsv4R8hCZuaEa', NULL, 'jhUpdate', 'admin', '武林盟主', '2022-04-12T11:30:51+08:00');
INSERT INTO `_user_session` (`id`, `userId`, `userIp`, `userAgent`, `deviceId`, `deviceType`, `userIpRegion`, `socketStatus`, `authToken`, `refreshToken`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (28, 'admin', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'local.liujiji.com:8301_Mac.10.15.7_730201a3_chrome', NULL, '', 'offline', 'c7YBI6YF9f320uynrKuxFt_vQ_LijZESYrXy', NULL, 'jhInsert', NULL, NULL, '2022-04-08T19:52:23+08:00');
INSERT INTO `_user_session` (`id`, `userId`, `userIp`, `userAgent`, `deviceId`, `deviceType`, `userIpRegion`, `socketStatus`, `authToken`, `refreshToken`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (29, 'admin', '116.14.77.217', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.88 Safari/537.36', 'admin.jhxf.org_Mac.10.15.7_13469b1a_chrome', NULL, 'SG||Asia/Singapore|Kampong Bukit Panjang|1.3745,103.7678|1947094016,1947094527', 'offline', 'PgNHkR5mAPVfKwdHBLdmrEM6ro5sOGcsFQ42', NULL, 'jhUpdate', NULL, NULL, '2022-04-17T10:31:58+08:00');
INSERT INTO `_user_session` (`id`, `userId`, `userIp`, `userAgent`, `deviceId`, `deviceType`, `userIpRegion`, `socketStatus`, `authToken`, `refreshToken`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (30, 'admin', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.4987.0 Safari/537.36', 'localhost:8301_Mac.10.15.7_5deb24c1_chrome', NULL, '', 'offline', 'w2XWPozR2hWxV_sDcNyYQ2Ov2lCs6iEIWe_a', NULL, 'jhUpdate', NULL, NULL, '2022-04-08T20:48:19+08:00');
INSERT INTO `_user_session` (`id`, `userId`, `userIp`, `userAgent`, `deviceId`, `deviceType`, `userIpRegion`, `socketStatus`, `authToken`, `refreshToken`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (31, 'admin', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', '127.0.0.1:8301_Mac.10.15.7_d1e67d42_chrome', NULL, '', 'offline', 'pqJTbCFT9UnrOussHTxpFrgUX7B3wMcmZg7b', NULL, 'jhInsert', NULL, NULL, '2022-04-09T23:03:54+08:00');
INSERT INTO `_user_session` (`id`, `userId`, `userIp`, `userAgent`, `deviceId`, `deviceType`, `userIpRegion`, `socketStatus`, `authToken`, `refreshToken`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (32, 'colin', '103.117.103.143', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'admin.jhxf.org_Mac.10.15.7_13469b1a_chrome', NULL, 'HK|HCW|Asia/Hong_Kong|Central|22.2909,114.15|1735746560,1735747583', 'offline', 'HTUIKNcZmY1wJwtmhwAGnBDgIFo4MlA4-eEb', NULL, 'jhInsert', NULL, NULL, '2022-04-11T14:16:06+08:00');
INSERT INTO `_user_session` (`id`, `userId`, `userIp`, `userAgent`, `deviceId`, `deviceType`, `userIpRegion`, `socketStatus`, `authToken`, `refreshToken`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (33, 'm3611F', '223.18.153.231', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'admin.jhxf.org_Mac.10.15.7_13469b1a_chrome', NULL, 'HK|NTW|Asia/Hong_Kong|Ma Yau Tong|22.3,114.2333|3742537728,3742539775', 'offline', '', NULL, 'jhUpdate', 'm3611F', 'Colin', '2022-05-05T15:52:43+08:00');
INSERT INTO `_user_session` (`id`, `userId`, `userIp`, `userAgent`, `deviceId`, `deviceType`, `userIpRegion`, `socketStatus`, `authToken`, `refreshToken`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (34, 'm3611F', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.88 Safari/537.36', '127.0.0.1:8301_Mac.10.15.7_0c6e017c_chrome', NULL, '', 'offline', '', NULL, 'jhUpdate', 'm3611F', 'Colin', '2022-05-05T15:52:43+08:00');
INSERT INTO `_user_session` (`id`, `userId`, `userIp`, `userAgent`, `deviceId`, `deviceType`, `userIpRegion`, `socketStatus`, `authToken`, `refreshToken`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (35, 'admin', '103.117.103.143', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:99.0) Gecko/20100101 Firefox/99.0', 'admin.jhxf.org_Mac.10_5a25b0dc_firefox', NULL, 'HK|HCW|Asia/Hong_Kong|Central|22.2909,114.15|1735746560,1735747583', 'offline', 'JtRZgq6gWRG7rULRbUjKcqqoapdYpNn7dIde', NULL, 'jhInsert', NULL, NULL, '2022-04-12T11:14:11+08:00');
INSERT INTO `_user_session` (`id`, `userId`, `userIp`, `userAgent`, `deviceId`, `deviceType`, `userIpRegion`, `socketStatus`, `authToken`, `refreshToken`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (36, 'admin', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.88 Safari/537.36', '127.0.0.1:8301_Mac.10.15.7_861d9775_chrome', NULL, '', 'offline', '', NULL, 'jhUpdate', 'admin', '武林盟主', '2022-04-16T20:33:09+08:00');
INSERT INTO `_user_session` (`id`, `userId`, `userIp`, `userAgent`, `deviceId`, `deviceType`, `userIpRegion`, `socketStatus`, `authToken`, `refreshToken`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (37, 'admin', '115.60.5.119', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.88 Safari/537.36', 'admin.jhxf.org_Mac.10.15.7_3db3094d_chrome', NULL, 'CN|HA|Asia/Shanghai|Zhengzhou|34.6836,113.5325|1933313024,1933313535', 'offline', '77HgQuCg1G2M6Zerk_JnkmBdSAsfldIJllsD', NULL, 'jhInsert', NULL, NULL, '2022-04-13T21:55:29+08:00');
INSERT INTO `_user_session` (`id`, `userId`, `userIp`, `userAgent`, `deviceId`, `deviceType`, `userIpRegion`, `socketStatus`, `authToken`, `refreshToken`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (38, '100013V', '183.158.188.157', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'admin.jhxf.org_Mac.10.15.7_3db3094d_chrome', NULL, 'CN|ZJ|Asia/Shanghai|Hangzhou|30.294,120.1619|3080617984,3080634367', 'offline', 'MFKuulZYg9PsWbe_RqwJSPgltotirO9XiIZt', NULL, 'jhInsert', NULL, NULL, '2022-04-14T11:19:14+08:00');
INSERT INTO `_user_session` (`id`, `userId`, `userIp`, `userAgent`, `deviceId`, `deviceType`, `userIpRegion`, `socketStatus`, `authToken`, `refreshToken`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (39, '100002d', '121.7.148.241', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.88 Safari/537.36', 'admin.jhxf.org_Mac.10.15.7_3db3094d_chrome', NULL, 'SG||Asia/Singapore|Woodlands New Town|1.4342,103.7835|2030539776,2030540287', 'offline', 'RdkDoeRYMn9betrat988d132M0S-z0nWAxEA', NULL, 'jhInsert', NULL, NULL, '2022-04-15T13:37:45+08:00');
INSERT INTO `_user_session` (`id`, `userId`, `userIp`, `userAgent`, `deviceId`, `deviceType`, `userIpRegion`, `socketStatus`, `authToken`, `refreshToken`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (40, '100054z', '111.47.3.185', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36 NetType/WIFI Mic', 'admin.jhxf.org_Windows.7_8008bf20_chrome', NULL, 'CN||Asia/Shanghai||34.7725,113.7266|1865285632,1865416703', 'offline', 'tcPrEnBHdhq3hZs3t-fY-aYJqmoWXOLXg44J', NULL, 'jhInsert', NULL, NULL, '2022-04-15T16:12:39+08:00');
INSERT INTO `_user_session` (`id`, `userId`, `userIp`, `userAgent`, `deviceId`, `deviceType`, `userIpRegion`, `socketStatus`, `authToken`, `refreshToken`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (41, 'm3862G', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.88 Safari/537.36', '127.0.0.1:8301_Mac.10.15.7_861d9775_chrome', NULL, '', 'offline', '2-2imry783uA2evmC7nBD6X7z1UX1Bm8EN6L', NULL, 'jhInsert', NULL, NULL, '2022-04-16T20:33:13+08:00');
INSERT INTO `_user_session` (`id`, `userId`, `userIp`, `userAgent`, `deviceId`, `deviceType`, `userIpRegion`, `socketStatus`, `authToken`, `refreshToken`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (42, '100002d', '121.7.148.241', 'Mozilla/5.0 (Linux; Android 12; SM-N975F Build/SP1A.210812.016; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/', 'admin.jhxf.org_Unix.Unknown_a5b5a710_chrome', NULL, 'SG||Asia/Singapore|Woodlands New Town|1.4342,103.7835|2030539776,2030540287', 'offline', 'wXXwtpfQL8TycILbhybZjtDCaZE1H4UjF-Am', NULL, 'jhInsert', NULL, NULL, '2022-04-16T23:24:39+08:00');
INSERT INTO `_user_session` (`id`, `userId`, `userIp`, `userAgent`, `deviceId`, `deviceType`, `userIpRegion`, `socketStatus`, `authToken`, `refreshToken`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (43, 'm3611F', '223.18.153.98', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.88 Safari/537.36', 'xuanfeng-admin-v5.openjianghu.org_Mac.10.15.7_f93fc01c_chrome', NULL, 'HK|NTW|Asia/Hong_Kong|Ma Yau Tong|22.3,114.2333|3742537728,3742539775', 'offline', '', NULL, 'jhUpdate', 'm3611F', 'Colin', '2022-05-05T15:52:43+08:00');
INSERT INTO `_user_session` (`id`, `userId`, `userIp`, `userAgent`, `deviceId`, `deviceType`, `userIpRegion`, `socketStatus`, `authToken`, `refreshToken`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (44, 'm3611F', '223.18.153.98', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.88 Safari/537.36', 'xuanfeng-v5.openjianghu.org_Mac.10.15.7_01c82167_chrome', NULL, 'HK|NTW|Asia/Hong_Kong|Ma Yau Tong|22.3,114.2333|3742537728,3742539775', 'offline', '', NULL, 'jhUpdate', 'm3611F', 'Colin', '2022-05-05T15:52:43+08:00');
INSERT INTO `_user_session` (`id`, `userId`, `userIp`, `userAgent`, `deviceId`, `deviceType`, `userIpRegion`, `socketStatus`, `authToken`, `refreshToken`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (45, 'admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.88 Safari/537.36', '127.0.0.1:8301_Windows.10.0_bbcf68e6_chrome', NULL, '', 'offline', 'Z7oZJ6JM51luL0BDJi8nLLlBEtVBLlcZ6-NO', NULL, 'jhInsert', NULL, NULL, '2022-04-20T20:10:05+08:00');
INSERT INTO `_user_session` (`id`, `userId`, `userIp`, `userAgent`, `deviceId`, `deviceType`, `userIpRegion`, `socketStatus`, `authToken`, `refreshToken`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (46, 'W00001', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.88 Safari/537.36', '127.0.0.1:8301_Windows.10.0_bbcf68e6_chrome', NULL, '', 'offline', 'YGQF0_BCczSdOXsItlBHWqf4aohBOL5gAhRn', NULL, 'jhInsert', 'admin', '武林盟主', '2022-04-21T15:00:45+08:00');
INSERT INTO `_user_session` (`id`, `userId`, `userIp`, `userAgent`, `deviceId`, `deviceType`, `userIpRegion`, `socketStatus`, `authToken`, `refreshToken`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (47, 'm3611F', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.61 Safari/537.36', '127.0.0.1:8306_Mac.10.15.7_6b8b79e4_chrome', NULL, '', 'offline', 'wmFkS-Pb5VlBsxuRJTOgly7aNjE5yLU4eOu8', NULL, 'jhUpdate', 'm3611F', 'Colin', '2022-06-12T14:40:53+08:00');
INSERT INTO `_user_session` (`id`, `userId`, `userIp`, `userAgent`, `deviceId`, `deviceType`, `userIpRegion`, `socketStatus`, `authToken`, `refreshToken`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (48, 'W00001', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '127.0.0.1:8306_Windows.10.0_8b3a8050_chrome', NULL, '', 'offline', 'GlZ6ZjEnisrlasvfgwSTfRXQWXYKSacODBOb', NULL, 'jhUpdate', 'W00001', '张三丰', '2022-04-25T21:03:14+08:00');
INSERT INTO `_user_session` (`id`, `userId`, `userIp`, `userAgent`, `deviceId`, `deviceType`, `userIpRegion`, `socketStatus`, `authToken`, `refreshToken`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (49, 'm3611F', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '127.0.0.1:8306_Windows.10.0_8b3a8050_chrome', NULL, '', 'offline', '', NULL, 'jhUpdate', 'm3611F', 'Colin', '2022-05-05T15:52:43+08:00');
INSERT INTO `_user_session` (`id`, `userId`, `userIp`, `userAgent`, `deviceId`, `deviceType`, `userIpRegion`, `socketStatus`, `authToken`, `refreshToken`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (50, 'm3611F', '103.142.141.97', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 'openjianghu.org_Mac.10.15.7_4e031325_chrome', NULL, '', 'offline', 'ZoFXy4pDPOmqKJ8FBWr4I3NMlfEo2h1aQLYG', NULL, 'jhUpdate', 'm3611F', 'Colin', '2022-05-05T15:54:01+08:00');
INSERT INTO `_user_session` (`id`, `userId`, `userIp`, `userAgent`, `deviceId`, `deviceType`, `userIpRegion`, `socketStatus`, `authToken`, `refreshToken`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (51, 'm3659N', '103.117.103.143', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5024.0 Safari/537.36', 'openjianghu.org_Mac.10.15.7_4e031325_chrome', NULL, 'HK|HCW|Asia/Hong_Kong|Central|22.2909,114.15|1735746560,1735747583', 'offline', '6QwHstCcO9YNDxk1PPBfCRcWghyY1o59ZiB7', NULL, 'jhUpdate', 'm3659N', '汗蒸', '2022-04-25T20:36:50+08:00');
INSERT INTO `_user_session` (`id`, `userId`, `userIp`, `userAgent`, `deviceId`, `deviceType`, `userIpRegion`, `socketStatus`, `authToken`, `refreshToken`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (52, 'H00001', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:99.0) Gecko/20100101 Firefox/99.0', '127.0.0.1:8306_Mac.10_293146ae_firefox', NULL, '', 'offline', 'mF6pZ7P9_2ZOKwl1jT8sJS4yiOPBBjqO7of2', NULL, 'jhInsert', NULL, NULL, '2022-04-25T16:09:26+08:00');
INSERT INTO `_user_session` (`id`, `userId`, `userIp`, `userAgent`, `deviceId`, `deviceType`, `userIpRegion`, `socketStatus`, `authToken`, `refreshToken`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (53, '10001', '223.18.153.231', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:99.0) Gecko/20100101 Firefox/99.0', 'openjianghu.org_Mac.10_3fb87c9d_firefox', NULL, 'HK|NTW|Asia/Hong_Kong|Ma Yau Tong|22.3,114.2333|3742537728,3742539775', 'offline', 'thwCeKTFwIxcQ3wgKuIkGJgy91zMtHVJwF_4', NULL, 'jhInsert', NULL, NULL, '2022-04-26T17:10:39+08:00');
INSERT INTO `_user_session` (`id`, `userId`, `userIp`, `userAgent`, `deviceId`, `deviceType`, `userIpRegion`, `socketStatus`, `authToken`, `refreshToken`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (54, 'admin', '111.65.35.219', 'Mozilla/5.0 (Linux; Android 11; CPH1917) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Mobile Safari/537.36', 'openjianghu.org_Android.11_07adbf11_chrome', NULL, 'SG||Asia/Singapore|Singapore|1.2996,103.8549|1866539008,1866541055', 'offline', '', NULL, 'jhUpdate', 'admin', '武林盟主', '2022-04-28T17:03:12+08:00');
INSERT INTO `_user_session` (`id`, `userId`, `userIp`, `userAgent`, `deviceId`, `deviceType`, `userIpRegion`, `socketStatus`, `authToken`, `refreshToken`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (55, '100005W', '111.65.35.219', 'Mozilla/5.0 (Linux; Android 11; CPH1917) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Mobile Safari/537.36', 'openjianghu.org_Android.11_c7a946ba_chrome', NULL, 'SG||Asia/Singapore|Singapore|1.2996,103.8549|1866539008,1866541055', 'offline', '03M1L-QtWpKhZ1fdNptiMXQ7mFtpnl9XY4MZ', NULL, 'jhInsert', NULL, NULL, '2022-04-28T17:06:19+08:00');
INSERT INTO `_user_session` (`id`, `userId`, `userIp`, `userAgent`, `deviceId`, `deviceType`, `userIpRegion`, `socketStatus`, `authToken`, `refreshToken`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (56, 'admin', '42.61.157.111', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.4 Safari/605.1.15', 'openjianghu.org_Mac.10.15.7_e254aeb2_safari', NULL, 'SG||Asia/Singapore|Kampong Bukit Panjang|1.3745,103.7678|708679680,708681727', 'offline', '2BlAQlgJhzGO2FTkEn4TieUcWaNiEUFuDtcM', NULL, 'jhInsert', NULL, NULL, '2022-05-01T22:40:09+08:00');
INSERT INTO `_user_session` (`id`, `userId`, `userIp`, `userAgent`, `deviceId`, `deviceType`, `userIpRegion`, `socketStatus`, `authToken`, `refreshToken`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (57, 'm3995Q', '223.18.153.98', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 'openjianghu.org_Mac.10.15.7_4e031325_chrome', NULL, 'HK|NTW|Asia/Hong_Kong|Ma Yau Tong|22.3,114.2333|3742537728,3742539775', 'offline', '', NULL, 'jhUpdate', 'm3995Q', '雪园', '2022-05-04T14:11:19+08:00');
INSERT INTO `_user_session` (`id`, `userId`, `userIp`, `userAgent`, `deviceId`, `deviceType`, `userIpRegion`, `socketStatus`, `authToken`, `refreshToken`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (58, 'm3862G', '115.60.6.149', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 'openjianghu.org_Mac.10.15.7_f551d3d8_chrome', NULL, 'CN|HA|Asia/Shanghai|Zhengzhou|34.6836,113.5325|1933313536,1933314047', 'offline', 'Rzc1qlLdb7G4QF0hlP9c_JGyQXApaeDxs2sW', NULL, 'jhInsert', NULL, NULL, '2022-05-05T20:19:14+08:00');
INSERT INTO `_user_session` (`id`, `userId`, `userIp`, `userAgent`, `deviceId`, `deviceType`, `userIpRegion`, `socketStatus`, `authToken`, `refreshToken`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (59, '100005W', '119.74.163.133', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', 'openjianghu.org_Windows.10.0_b47e3ba8_chrome', NULL, 'SG||Asia/Singapore|Singapore|1.2996,103.8549|2001379840,2001380351', 'offline', '5sH944WknXnFtZ6FuHgMviR9iqLRQC9Bcs0v', NULL, 'jhInsert', NULL, NULL, '2022-05-09T22:56:48+08:00');
INSERT INTO `_user_session` (`id`, `userId`, `userIp`, `userAgent`, `deviceId`, `deviceType`, `userIpRegion`, `socketStatus`, `authToken`, `refreshToken`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (60, '100062Y', '42.61.157.111', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36 Edg/101.0.', 'openjianghu.org_Windows.10.0_aa9e96a1_chrome', NULL, 'SG||Asia/Singapore|Kampong Bukit Panjang|1.3745,103.7678|708679680,708681727', 'offline', 'YjEy-N8YfEULGpXL32_KGUkSlFAe9PA6XRM3', NULL, 'jhInsert', NULL, NULL, '2022-05-15T23:12:49+08:00');
INSERT INTO `_user_session` (`id`, `userId`, `userIp`, `userAgent`, `deviceId`, `deviceType`, `userIpRegion`, `socketStatus`, `authToken`, `refreshToken`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (61, '100002D', '42.61.157.111', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 'openjianghu.org_Mac.10.15.7_f551d3d8_chrome', NULL, 'SG||Asia/Singapore|Kampong Bukit Panjang|1.3745,103.7678|708679680,708681727', 'offline', 'aupHU35azKF6F87ITsigi5errnb97Ish-eGG', NULL, 'jhInsert', NULL, NULL, '2022-05-15T23:22:03+08:00');
INSERT INTO `_user_session` (`id`, `userId`, `userIp`, `userAgent`, `deviceId`, `deviceType`, `userIpRegion`, `socketStatus`, `authToken`, `refreshToken`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (62, 'm3995Q', '125.44.64.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', 'openjianghu.org_Windows.10.0_0ce314e4_chrome', NULL, 'CN|HA|Asia/Shanghai|Luohe|33.5639,114.0427|2100035584,2100068351', 'offline', '-U11R_Qn2qXN3VTJOnOLIwBtWgDUdkU-cn0R', NULL, 'jhInsert', NULL, NULL, '2022-05-16T14:42:11+08:00');
INSERT INTO `_user_session` (`id`, `userId`, `userIp`, `userAgent`, `deviceId`, `deviceType`, `userIpRegion`, `socketStatus`, `authToken`, `refreshToken`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (63, '100005W', '42.61.156.145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', 'cn.openjianghu.org_Windows.10.0_6d5438f5_chrome', NULL, 'SG||Asia/Singapore|Kampong Bukit Panjang|1.3745,103.7678|708679680,708681727', 'offline', 'c7T3t6P62y5L8_mZJ0qiJOaaIQdSRX4On2we', NULL, 'jhInsert', NULL, NULL, '2022-05-26T04:40:57+08:00');
INSERT INTO `_user_session` (`id`, `userId`, `userIp`, `userAgent`, `deviceId`, `deviceType`, `userIpRegion`, `socketStatus`, `authToken`, `refreshToken`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (64, 'm3611F', '185.14.47.64', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 'cn.openjianghu.org_Mac.10.15.7_664a0a21_chrome', NULL, 'RU||Europe/Moscow||55.7386,37.6068|3104712704,3104714751', 'offline', 'lQ3-yaY_M72m7SgZCRsLsYyozj-NNWWZt_C9', NULL, 'jhUpdate', NULL, NULL, '2022-05-26T19:45:40+08:00');
INSERT INTO `_user_session` (`id`, `userId`, `userIp`, `userAgent`, `deviceId`, `deviceType`, `userIpRegion`, `socketStatus`, `authToken`, `refreshToken`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (65, '100062Y', '101.78.81.181', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.61 Safari/537.36', 'cn.openjianghu.org_Mac.10.15.7_0bfa0cb1_chrome', NULL, 'SG||Asia/Singapore|Kampong Bukit Panjang|1.3745,103.7678|1699631104,1699633151', 'offline', '', NULL, 'jhUpdate', '100062Y', '雅飒', '2022-06-15T02:29:37+08:00');
INSERT INTO `_user_session` (`id`, `userId`, `userIp`, `userAgent`, `deviceId`, `deviceType`, `userIpRegion`, `socketStatus`, `authToken`, `refreshToken`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (66, 'm3995Q', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', '127.0.0.1:8306_Windows.10.0_8b3a8050_chrome', NULL, '', 'offline', 'LLHViHYvUpZ3sVR1kxi6DdJZAQrIpvV4mU0Y', NULL, 'jhInsert', NULL, NULL, '2022-05-28T19:42:16+08:00');
INSERT INTO `_user_session` (`id`, `userId`, `userIp`, `userAgent`, `deviceId`, `deviceType`, `userIpRegion`, `socketStatus`, `authToken`, `refreshToken`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (67, 'admin', '101.78.81.181', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.5 Safari/605.1.15', 'cn.openjianghu.org_Mac.10.15.7_cf1a276c_safari', NULL, 'SG||Asia/Singapore|Kampong Bukit Panjang|1.3745,103.7678|1699631104,1699633151', 'offline', 'hOXJMnO5ZLnsu18nPx6NpE6DHcl8_8vGtmK_', NULL, 'jhUpdate', NULL, NULL, '2022-06-12T04:55:17+08:00');
INSERT INTO `_user_session` (`id`, `userId`, `userIp`, `userAgent`, `deviceId`, `deviceType`, `userIpRegion`, `socketStatus`, `authToken`, `refreshToken`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (68, 'm3995Q', '182.120.192.243', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', 'cn.openjianghu.org_Windows.10.0_51960ba9_chrome', NULL, 'CN|HA|Asia/Shanghai||34.6836,113.5325|3061366784,3061383167', 'offline', '0vN-YW9DCN8Nq_o-g5RMiXuThUH3jpbqZ1hQ', NULL, 'jhInsert', NULL, NULL, '2022-05-30T15:09:33+08:00');
INSERT INTO `_user_session` (`id`, `userId`, `userIp`, `userAgent`, `deviceId`, `deviceType`, `userIpRegion`, `socketStatus`, `authToken`, `refreshToken`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (69, 'm3659N', '193.110.203.171', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5099.0 Safari/537.36', 'cn.openjianghu.org_Mac.10.15.7_664a0a21_chrome', NULL, 'HK|HCW|Asia/Hong_Kong|Central|22.2909,114.15|3245262848,3245263871', 'offline', 'cCtySPLn7R_KTh_f6NVjIWCJcapctUWTQhgS', NULL, 'jhInsert', NULL, NULL, '2022-06-07T15:37:23+08:00');
INSERT INTO `_user_session` (`id`, `userId`, `userIp`, `userAgent`, `deviceId`, `deviceType`, `userIpRegion`, `socketStatus`, `authToken`, `refreshToken`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (70, '100005W', '101.78.81.181', 'Mozilla/5.0 (Linux; Android 12; SM-X700) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'cn.openjianghu.org_Android.12_344db09a_chrome', NULL, 'SG||Asia/Singapore|Kampong Bukit Panjang|1.3745,103.7678|1699631104,1699633151', 'offline', '_XzAkaB74_TcaHtOXomJlKhBoEXsMh9ZaDDt', NULL, 'jhInsert', NULL, NULL, '2022-06-16T19:35:40+08:00');
INSERT INTO `_user_session` (`id`, `userId`, `userIp`, `userAgent`, `deviceId`, `deviceType`, `userIpRegion`, `socketStatus`, `authToken`, `refreshToken`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (71, 'admin', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '127.0.0.1:8306_Mac.10.15.7_6b8b79e4_chrome', NULL, '', 'offline', 'JvzG2Jc8kToeHy8u2azMHg1rtddXdHiONBxQ', NULL, 'jhInsert', NULL, NULL, '2022-06-28T15:41:07+08:00');
INSERT INTO `_user_session` (`id`, `userId`, `userIp`, `userAgent`, `deviceId`, `deviceType`, `userIpRegion`, `socketStatus`, `authToken`, `refreshToken`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (72, 'admin', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '127.0.0.1:8306_Mac.10.15.7_635a9165_chrome', NULL, '', 'offline', 'yqlGmgf4BNoWlF-Md1YpkeLuTC-Be82aoMKA', NULL, 'jhUpdate', NULL, NULL, '2022-07-14T15:28:13+08:00');
INSERT INTO `_user_session` (`id`, `userId`, `userIp`, `userAgent`, `deviceId`, `deviceType`, `userIpRegion`, `socketStatus`, `authToken`, `refreshToken`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (73, 'm3611F', '223.18.153.188', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'dev.openjianghu.org_Mac.10.15.7_1d508024_chrome', NULL, 'HK|NTW|Asia/Hong_Kong|Ma Yau Tong|22.3,114.2333|3742537728,3742539775', 'offline', 'PX2Y61E844bzA4yc6Q8TKfYIOjIeiXWeHGAm', NULL, 'jhInsert', NULL, NULL, '2022-07-01T13:51:23+08:00');
INSERT INTO `_user_session` (`id`, `userId`, `userIp`, `userAgent`, `deviceId`, `deviceType`, `userIpRegion`, `socketStatus`, `authToken`, `refreshToken`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (74, 'admin', '193.110.202.52', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'dev.openjianghu.org_Mac.10.15.7_1d508024_chrome', NULL, 'HK|HCW|Asia/Hong_Kong|Central|22.2909,114.15|3245262848,3245263871', 'offline', 'JVcnDIB4vzVIydLRBfgOHq2-SUo3Ts7U4ZUh', NULL, 'jhInsert', NULL, NULL, '2022-07-08T14:35:06+08:00');
COMMIT;

-- ----------------------------
-- View structure for _view01_user
-- ----------------------------
DROP VIEW IF EXISTS `_view01_user`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `_view01_user` AS select `_user`.`id` AS `id`,`_user`.`userId` AS `userId`,`_user`.`username` AS `username`,`_user`.`userAvatar` AS `userAvatar`,`_user`.`contactNumber` AS `contactNumber`,`_user`.`gender` AS `gender`,`_user`.`birthday` AS `birthday`,`_user`.`signature` AS `signature`,`_user`.`email` AS `email`,`_user`.`clearTextPassword` AS `clearTextPassword`,`_user`.`password` AS `password`,`_user`.`md5Salt` AS `md5Salt`,`_user`.`userType` AS `userType`,`_user`.`userStatus` AS `userStatus`,`_user`.`config` AS `config`,`_user`.`operation` AS `operation`,`_user`.`operationByUserId` AS `operationByUserId`,`_user`.`operationByUser` AS `operationByUser`,`_user`.`operationAt` AS `operationAt` from `_user`;

SET FOREIGN_KEY_CHECKS = 1;
