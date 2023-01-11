/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `graduate`;
CREATE DATABASE IF NOT EXISTS `graduate` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_croatian_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `graduate`;

DROP TABLE IF EXISTS `a_certificate`;
CREATE TABLE IF NOT EXISTS `a_certificate` (
  `id` varchar(255) COLLATE utf8_croatian_ci NOT NULL,
  `create_by` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `del_flag` int NOT NULL,
  `update_by` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `date` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `remark` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `student_id` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `student_name` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_croatian_ci;

DELETE FROM `a_certificate`;
INSERT INTO `a_certificate` (`id`, `create_by`, `create_time`, `del_flag`, `update_by`, `update_time`, `date`, `remark`, `student_id`, `student_name`, `title`) VALUES
	('1612989592322052096', 'admin', '2023-01-11 09:47:41.368000', 0, NULL, NULL, '2023-01-11 09:47:41', '测试', '', '张三', '英语四级证书'),
	('1612991715076083712', 'admin', '2023-01-11 09:56:07.000000', 0, 'admin', '2023-01-11 09:56:10.209000', '2023-01-11 09:56:10', '测试', '', '张三', '计算机二级证书');

DROP TABLE IF EXISTS `a_department`;
CREATE TABLE IF NOT EXISTS `a_department` (
  `id` bigint unsigned NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` int DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `parent_id` bigint unsigned DEFAULT NULL,
  `sort_order` decimal(10,2) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `is_parent` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

DELETE FROM `a_department`;
INSERT INTO `a_department` (`id`, `create_by`, `create_time`, `del_flag`, `update_by`, `update_time`, `parent_id`, `sort_order`, `status`, `title`, `is_parent`) VALUES
	(1464487288363945985, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 0, 1.00, 0, '人力资源部', b'1'),
	(1464487332064399361, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 0, 2.00, 0, '行政综合部', b'1'),
	(1464487379074158593, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 0, 3.00, 0, '设计研发部', b'1'),
	(1464487406328745985, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 0, 4.00, 0, '财务部', b'0'),
	(1464487432169852929, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 0, 5.00, 0, '综合发展部', b'0'),
	(1464487524662644737, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 1464487288363945985, 1.00, 0, 'HRBP部', b'0'),
	(1464487559647334401, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 1464487288363945985, 2.00, 0, '招聘部', b'0'),
	(1464487623933431809, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 1464487332064399361, 1.00, 0, '安保部', b'0'),
	(1464487656678363137, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 1464487332064399361, 2.00, 0, '保洁部', b'0'),
	(1464487691780493313, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 1464487332064399361, 3.00, 0, '设备维修部', b'0'),
	(1464487733895499777, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 1464487379074158593, 1.00, 0, '视频剪辑部', b'0'),
	(1464487807572643841, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 1464487379074158593, 2.00, 0, '产品应用部', b'0'),
	(1527834362656198656, 'admin', '2022-05-21 10:11:13', 0, NULL, NULL, 0, 6.00, 0, '客服部', b'0');

DROP TABLE IF EXISTS `a_department_header`;
CREATE TABLE IF NOT EXISTS `a_department_header` (
  `id` bigint unsigned NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` tinyint(1) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `department_id` bigint unsigned DEFAULT NULL,
  `type` tinyint(1) DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

DELETE FROM `a_department_header`;

DROP TABLE IF EXISTS `a_dict`;
CREATE TABLE IF NOT EXISTS `a_dict` (
  `id` bigint unsigned NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` tinyint(1) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `sort_order` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

DELETE FROM `a_dict`;
INSERT INTO `a_dict` (`id`, `create_by`, `create_time`, `del_flag`, `update_by`, `update_time`, `description`, `title`, `type`, `sort_order`) VALUES
	(75135930788220928, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', '性别', 'sex', 0.00),
	(75388696739713024, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', '分权限', 'permission_type', 2.00),
	(1536612750841745408, 'admin', '2022-06-14 15:33:23', 0, NULL, NULL, '', '学历', 'education', 3.00),
	(1536613395229446144, 'admin', '2022-06-14 15:35:57', 0, NULL, NULL, '', '在职状态', 'occupationStatus', 4.00);

DROP TABLE IF EXISTS `a_dict_data`;
CREATE TABLE IF NOT EXISTS `a_dict_data` (
  `id` bigint unsigned NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` tinyint(1) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `dict_id` bigint unsigned DEFAULT NULL,
  `sort_order` decimal(10,2) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sort_order` (`sort_order`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

DELETE FROM `a_dict_data`;
INSERT INTO `a_dict_data` (`id`, `create_by`, `create_time`, `del_flag`, `update_by`, `update_time`, `description`, `dict_id`, `sort_order`, `status`, `title`, `value`) VALUES
	(75158227712479232, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', 75135930788220928, 0.00, 0, '男', '男'),
	(75159254272577536, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', 75135930788220928, 1.00, 0, '女', '女'),
	(75159898425397248, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', 75135930788220928, 2.00, -1, '保密', '保密'),
	(75390787835138048, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', 75388696739713024, 0.00, 0, '查看操作(view)', 'view'),
	(75390886501945344, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', 75388696739713024, 1.00, 0, '添加操作(add)', 'add'),
	(75390993939042304, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', 75388696739713024, 2.00, 0, '编辑操作(edit)', 'edit'),
	(75391067532300288, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', 75388696739713024, 3.00, 0, '删除操作(delete)', 'delete'),
	(75391126902673408, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', 75388696739713024, 4.00, 0, '清空操作(clear)', 'clear'),
	(75391192883269632, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', 75388696739713024, 5.00, 0, '启用操作(enable)', 'enable'),
	(75391251024711680, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', 75388696739713024, 6.00, 0, '禁用操作(disable)', 'disable'),
	(75391297124306944, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', 75388696739713024, 7.00, 0, '搜索操作(search)', 'search'),
	(75391343379091456, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', 75388696739713024, 8.00, 0, '上传文件(upload)', 'upload'),
	(75391407526776832, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', 75388696739713024, 9.00, 0, '导出操作(output)', 'output'),
	(75391475042488320, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', 75388696739713024, 10.00, 0, '导入操作(input)', 'input'),
	(75391522182270976, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', 75388696739713024, 11.00, 0, '分配权限(editPerm)', 'editPerm'),
	(75391576364290048, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', 75388696739713024, 12.00, 0, '设为默认(setDefault)', 'setDefault'),
	(75391798033256448, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', 75388696739713024, 13.00, 0, '其他操作(other)', 'other'),
	(1536612796106674176, 'admin', '2022-06-14 15:33:34', 0, NULL, NULL, '', 1536612750841745408, 1.00, 0, '博士', '博士'),
	(1536612834962706432, 'admin', '2022-06-14 15:33:43', 0, NULL, NULL, '', 1536612750841745408, 2.00, 0, '硕士', '硕士'),
	(1536612883465637888, 'admin', '2022-06-14 15:33:55', 0, 'admin', '2022-06-14 15:34:13', '', 1536612750841745408, 3.00, 0, '本科', '本科'),
	(1536612930576060416, 'admin', '2022-06-14 15:34:06', 0, 'admin', '2022-06-14 15:34:11', '', 1536612750841745408, 4.00, 0, '专科', '专科'),
	(1536612993519980544, 'admin', '2022-06-14 15:34:21', 0, '', NULL, '', 1536612750841745408, 5.00, 0, '高中及以下', '高中及以下'),
	(1536613425902391296, 'admin', '2022-06-14 15:36:04', 0, NULL, NULL, '', 1536613395229446144, 1.00, 0, '在职', '在职'),
	(1536613447544999936, 'admin', '2022-06-14 15:36:09', 0, NULL, NULL, '', 1536613395229446144, 2.00, 0, '离职', '离职');

DROP TABLE IF EXISTS `a_employment_status`;
CREATE TABLE IF NOT EXISTS `a_employment_status` (
  `id` varchar(255) COLLATE utf8_croatian_ci NOT NULL,
  `create_by` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `del_flag` int NOT NULL,
  `update_by` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `civil_title` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `county` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `date` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `grade` decimal(19,2) DEFAULT NULL,
  `legal` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `license` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `no_reason` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `remark` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `status` int DEFAULT NULL,
  `three_image` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `troops_title` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `university_level` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `university_title` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_croatian_ci;

DELETE FROM `a_employment_status`;
INSERT INTO `a_employment_status` (`id`, `create_by`, `create_time`, `del_flag`, `update_by`, `update_time`, `address`, `civil_title`, `company`, `county`, `date`, `grade`, `legal`, `license`, `mobile`, `no_reason`, `remark`, `status`, `three_image`, `troops_title`, `university_level`, `university_title`, `user_id`) VALUES
	('1612988777918238720', 'admin', '2023-01-11 09:44:27.000000', 0, '17859654125', '2023-01-11 09:49:12.748000', '', '', '', '', '', 777.00, '', '', '', '', '', 2, '', '', '双一流', '南京大学', '1464764315201572865'),
	('1612988777964376064', 'admin', '2023-01-11 09:44:27.000000', 0, '17859654121', '2023-01-11 09:48:16.604000', '', '', '', '', '', 666.00, '', '', '', '', '', 2, '', '', '双一流', '浙江大学', '1464772465946398721'),
	('1612988777972764672', 'admin', '2023-01-11 09:44:27.000000', 0, 'user4', '2023-01-11 09:54:48.913000', '', '', '', '', '', 0.00, '', '', '0571-66666666', '', '测试', 3, '', 'XXX部队', '', '', '1527830053524738048');

DROP TABLE IF EXISTS `a_file`;
CREATE TABLE IF NOT EXISTS `a_file` (
  `id` bigint unsigned NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` tinyint(1) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `size` bigint unsigned DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `f_key` varchar(255) DEFAULT NULL,
  `location` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `create_time` (`create_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

DELETE FROM `a_file`;
INSERT INTO `a_file` (`id`, `create_by`, `create_time`, `del_flag`, `update_by`, `update_time`, `name`, `size`, `type`, `url`, `f_key`, `location`) VALUES
	(1527897791781801984, 'admin', '2022-05-21 14:23:15', 0, NULL, NULL, 'gh_57ba35562a20_258.jpg', 43531, 'image/jpeg', 'C:\\oa-file/20220521/1e07b00ffc20427fbdf2c434231c1e1e.jpg', '1e07b00ffc20427fbdf2c434231c1e1e.jpg', 0),
	(1527897840372813824, 'admin', '2022-05-21 14:23:27', 0, NULL, NULL, '美术版权.xlsx', 3605123, 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 'C:\\oa-file/20220521/4c1dadd45a8a4aca9a9ebd5f3256ba45.xlsx', '4c1dadd45a8a4aca9a9ebd5f3256ba45.xlsx', 0),
	(1527897921570344960, 'admin', '2022-05-21 14:23:46', 0, NULL, NULL, '公司大门通行设备使用说明-V1.pdf', 914877, 'application/pdf', 'C:\\oa-file/20220521/74e865aed9594ea9a9a0536161e40066.pdf', '74e865aed9594ea9a9a0536161e40066.pdf', 0),
	(1527898199690448896, 'admin', '2022-05-21 14:24:52', 0, NULL, NULL, '111.mp4', 180593, 'video/mp4', 'C:\\oa-file/20220521/113344a2389349ed8d02fb7dacfa058f.mp4', '113344a2389349ed8d02fb7dacfa058f.mp4', 0),
	(1527899386892390400, 'admin', '2022-05-21 14:29:36', 0, NULL, NULL, '【模版】需求文档.md.zip', 3104, 'application/x-zip-compressed', 'C:\\oa-file/20220521/dacc0bc61cf34bc18d1259b4ce60d52c.zip', 'dacc0bc61cf34bc18d1259b4ce60d52c.zip', 0),
	(1536614206311370752, 'admin', '2022-06-14 15:39:10', 0, NULL, NULL, '张三签名.png', 1686, 'image/png', 'C:\\\\oa-file/20220614/62a6f2fde5994e5fac6a78aa5ad070ad.png', '62a6f2fde5994e5fac6a78aa5ad070ad.png', 0),
	(1536614698903015424, 'admin', '2022-06-14 15:41:08', 0, NULL, NULL, '张三简历.pdf', 28091, 'application/pdf', 'C:\\\\oa-file/20220614/2a643018f08a4a4bbfacbb19218ab1e2.pdf', '2a643018f08a4a4bbfacbb19218ab1e2.pdf', 0);

DROP TABLE IF EXISTS `a_honor`;
CREATE TABLE IF NOT EXISTS `a_honor` (
  `id` varchar(255) COLLATE utf8_croatian_ci NOT NULL,
  `create_by` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `del_flag` int NOT NULL,
  `update_by` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `date` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `remark` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `student_id` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `student_name` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_croatian_ci;

DELETE FROM `a_honor`;
INSERT INTO `a_honor` (`id`, `create_by`, `create_time`, `del_flag`, `update_by`, `update_time`, `date`, `remark`, `student_id`, `student_name`, `title`) VALUES
	('1612989525028638720', 'admin', '2023-01-11 09:47:25.393000', 0, NULL, NULL, '2023-01-11 09:47:25', '测试', '', '张三', '市三好学生'),
	('1612991654648745984', 'admin', '2023-01-11 09:55:53.000000', 0, 'admin', '2023-01-11 09:55:56.999000', '2023-01-11 09:55:56', '测试！', '', '张三', '省优秀学生干部');

DROP TABLE IF EXISTS `a_log`;
CREATE TABLE IF NOT EXISTS `a_log` (
  `id` bigint unsigned NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` tinyint(1) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `cost_time` int unsigned DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `ip_info` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `request_param` longtext,
  `request_type` varchar(255) DEFAULT NULL,
  `request_url` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `log_type` tinyint(1) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `device` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `create_time` (`create_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

DELETE FROM `a_log`;
INSERT INTO `a_log` (`id`, `create_by`, `create_time`, `del_flag`, `update_by`, `update_time`, `cost_time`, `ip`, `ip_info`, `name`, `request_param`, `request_type`, `request_url`, `username`, `log_type`, `code`, `device`) VALUES
	(1536883393592168448, NULL, '2022-06-15 09:28:50', 0, NULL, '2022-06-15 09:28:50', 287, '127.0.0.1', '本地测试', '登录系统', '{"password":"密码隐藏","code":"8817","saveLogin":"true","captchaId":"ef9e5437ff544c8b91d9810febcb58e7","username":"admin"}', 'POST', '/zwz/login', 'admin', 1, '', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883393592168449, NULL, '2022-06-15 09:28:50', 0, NULL, '2022-06-15 09:28:50', 263, '127.0.0.1', '本地测试', '获取当前登录用户', '{}', 'GET', '/zwz/user/info', 'admin', 2, 'USER-02', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883394787545090, NULL, '2022-06-15 09:28:50', 0, NULL, '2022-06-15 09:28:50', 43, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883395219558400, NULL, '2022-06-15 09:28:50', 0, NULL, '2022-06-15 09:28:50', 69, '127.0.0.1', '本地测试', '查询个人门户菜单B', '{}', 'POST', '/zwz/myDoor/getMyDoorList6', 'admin', 2, 'MY-DOOR-02', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883401452294144, NULL, '2022-06-15 09:28:52', 0, NULL, '2022-06-15 09:28:52', 76, '127.0.0.1', '本地测试', '查询日志', '{"logType":"1","pageNumber":"1","endDate":"","pageSize":"15","sort":"createTime","ipInfo":"","startDate":"","key":"","order":"desc"}', 'GET', '/zwz/log/getAllByPage', 'admin', 2, 'LOG-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883413934542848, NULL, '2022-06-15 09:28:54', 0, NULL, '2022-06-15 09:28:54', 40, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', 'admin', 2, 'DEP-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883415226388480, NULL, '2022-06-15 09:28:55', 0, NULL, '2022-06-15 09:28:55', 39, '127.0.0.1', '本地测试', '查询全部角色', '{}', 'GET', '/zwz/role/getAllList', 'admin', 2, 'ROLE-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883415259942913, NULL, '2022-06-15 09:28:55', 0, NULL, '2022-06-15 09:28:55', 49, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/sex', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883415280914432, NULL, '2022-06-15 09:28:55', 0, NULL, '2022-06-15 09:28:55', 94, '127.0.0.1', '本地测试', '查询用户', '{"pageNumber":"1","departmentId":"","nickname":"","pageSize":"20","sort":"createTime","order":"desc"}', 'GET', '/zwz/user/getUserList', 'admin', 2, 'USER-07', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883415444492288, NULL, '2022-06-15 09:28:55', 0, NULL, '2022-06-15 09:28:55', 36, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', 'admin', 2, 'DEP-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883420095975424, NULL, '2022-06-15 09:28:56', 0, NULL, '2022-06-15 09:28:56', 40, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', 'admin', 2, 'DEP-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883420171472896, NULL, '2022-06-15 09:28:56', 0, NULL, '2022-06-15 09:28:56', 58, '127.0.0.1', '本地测试', '查询用户', '{"pageNumber":"1","departmentId":"","pageSize":"10","sort":"createTime","order":"desc"}', 'GET', '/zwz/myUser/getByPage', 'admin', 2, 'USER-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883421131968513, NULL, '2022-06-15 09:28:56', 0, NULL, '2022-06-15 09:28:56', 38, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', 'admin', 2, 'DEP-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883423262674944, NULL, '2022-06-15 09:28:57', 0, NULL, '2022-06-15 09:28:57', 50, '127.0.0.1', '本地测试', '查询系统文件', '{"pageNumber":"1","endDate":"","fkey":"","name":"","pageSize":"15","sort":"createTime","type":"","startDate":"","order":"desc"}', 'GET', '/zwz/file/getByCondition', 'admin', 2, 'FILE-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883424516771840, NULL, '2022-06-15 09:28:57', 0, NULL, '2022-06-15 09:28:57', 41, '127.0.0.1', '本地测试', '查看单个配置', '{"id":"FILE_HTTP"}', 'GET', '/zwz/setting/getOne', 'admin', 2, 'SETTING-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883424516771841, NULL, '2022-06-15 09:28:57', 0, NULL, '2022-06-15 09:28:57', 34, '127.0.0.1', '本地测试', '查看单个配置', '{"id":"FILE_PATH"}', 'GET', '/zwz/setting/getOne', 'admin', 2, 'SETTING-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883424516771842, NULL, '2022-06-15 09:28:57', 0, NULL, '2022-06-15 09:28:57', 44, '127.0.0.1', '本地测试', '查看单个配置', '{"id":"FILE_VIEW"}', 'GET', '/zwz/setting/getOne', 'admin', 2, 'SETTING-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883426920108032, NULL, '2022-06-15 09:28:58', 0, NULL, '2022-06-15 09:28:58', 55, '127.0.0.1', '本地测试', '查询角色', '{"pageNumber":"1","pageSize":"15","sort":"createTime","order":"desc"}', 'GET', '/zwz/role/getAllByPage', 'admin', 2, 'ROLE-02', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883430367825920, NULL, '2022-06-15 09:28:58', 0, NULL, '2022-06-15 09:28:58', 45, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/permission_type', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883433186398208, NULL, '2022-06-15 09:28:59', 0, NULL, '2022-06-15 09:28:59', 43, '127.0.0.1', '本地测试', '查询日志', '{"logType":"1","pageNumber":"1","endDate":"","pageSize":"15","sort":"createTime","ipInfo":"","startDate":"","key":"","order":"desc"}', 'GET', '/zwz/log/getAllByPage', 'admin', 2, 'LOG-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883444859146240, NULL, '2022-06-15 09:29:02', 0, NULL, '2022-06-15 09:29:02', 50, '127.0.0.1', '本地测试', '查询所有数据字典', '{}', 'GET', '/zwz/dict/getAll', 'admin', 2, 'DICT-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883444947226624, NULL, '2022-06-15 09:29:02', 0, NULL, '2022-06-15 09:29:02', 59, '127.0.0.1', '本地测试', '查询数据字典值', '{"pageNumber":"1","name":"","pageSize":"10","sort":"sortOrder","status":"","order":"asc"}', 'GET', '/zwz/dictData/getByCondition', 'admin', 2, 'DICT_DATA-02', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883446968881152, NULL, '2022-06-15 09:29:02', 0, NULL, '2022-06-15 09:29:02', 43, '127.0.0.1', '本地测试', '查询个人门户菜单B', '{}', 'POST', '/zwz/myDoor/getMyDoorList6', 'admin', 2, 'MY-DOOR-02', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883451238682624, NULL, '2022-06-15 09:29:03', 0, NULL, '2022-06-15 09:29:03', 52, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/sex', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883451347734528, NULL, '2022-06-15 09:29:03', 0, NULL, '2022-06-15 09:29:03', 65, '127.0.0.1', '本地测试', '查询学生', '{"pageNumber":"1","pageSize":"15","sort":"createTime","order":"desc"}', 'GET', '/zwz/student/getByPage', 'admin', 3, 'STUDENT-04', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883452538916864, NULL, '2022-06-15 09:29:04', 0, NULL, '2022-06-15 09:29:04', 43, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/education', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883453881094144, NULL, '2022-06-15 09:29:04', 0, NULL, '2022-06-15 09:29:04', 48, '127.0.0.1', '本地测试', '查询教师', '{"pageNumber":"1","pageSize":"15","sort":"createTime","order":"desc"}', 'GET', '/zwz/teacher/getByPage', 'admin', 3, 'TEACHER-04', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883466526920704, NULL, '2022-06-15 09:29:07', 0, NULL, '2022-06-15 09:29:07', 42, '127.0.0.1', '本地测试', '查询图表数据', '{}', 'GET', '/zwz/teacher/getAntvVoList', 'admin', 4, 'CHART-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883470083690496, NULL, '2022-06-15 09:29:08', 0, NULL, '2022-06-15 09:29:08', 46, '127.0.0.1', '本地测试', '查询个人门户菜单B', '{}', 'POST', '/zwz/myDoor/getMyDoorList6', 'admin', 2, 'MY-DOOR-02', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883482377195520, NULL, '2022-06-15 09:29:11', 0, NULL, '2022-06-15 09:29:11', 41, '127.0.0.1', '本地测试', '查询日志', '{"logType":"1","pageNumber":"1","endDate":"","pageSize":"15","sort":"createTime","ipInfo":"","startDate":"","key":"","order":"desc"}', 'GET', '/zwz/log/getAllByPage', 'admin', 2, 'LOG-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883484109443072, NULL, '2022-06-15 09:29:11', 0, NULL, '2022-06-15 09:29:11', 50, '127.0.0.1', '本地测试', '查询日志', '{"logType":"2","pageNumber":"1","endDate":"","pageSize":"15","sort":"createTime","ipInfo":"","startDate":"","key":"","order":"desc"}', 'GET', '/zwz/log/getAllByPage', 'admin', 2, 'LOG-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883506003709952, NULL, '2022-06-15 09:29:16', 0, NULL, '2022-06-15 09:29:16', 86, '127.0.0.1', '本地测试', '查询日志', '{"logType":"3","pageNumber":"1","endDate":"","pageSize":"15","sort":"createTime","ipInfo":"","startDate":"","key":"","order":"desc"}', 'GET', '/zwz/log/getAllByPage', 'admin', 2, 'LOG-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883509954744320, NULL, '2022-06-15 09:29:17', 0, NULL, '2022-06-15 09:29:17', 38, '127.0.0.1', '本地测试', '查询日志', '{"logType":"4","pageNumber":"1","endDate":"","pageSize":"15","sort":"createTime","ipInfo":"","startDate":"","key":"","order":"desc"}', 'GET', '/zwz/log/getAllByPage', 'admin', 2, 'LOG-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883517961670656, NULL, '2022-06-15 09:29:19', 0, NULL, '2022-06-15 09:29:19', 39, '127.0.0.1', '本地测试', '查询日志', '{"logType":"1","pageNumber":"1","endDate":"","pageSize":"15","sort":"createTime","ipInfo":"","startDate":"","key":"","order":"desc"}', 'GET', '/zwz/log/getAllByPage', 'admin', 2, 'LOG-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612987263669637120, NULL, '2023-01-11 09:38:27', 0, NULL, '2023-01-11 09:38:27', 501, '127.0.0.1', '本地测试', '登录系统', '{"username":"admin","password":"","code":"4357","captchaId":"bd261009c26a487498e069cbaa1564b6","saveLogin":"true"}', 'POST', '/zwz/login', 'admin', 1, '', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612987264999231489, NULL, '2023-01-11 09:38:27', 0, NULL, '2023-01-11 09:38:27', 167, '127.0.0.1', '本地测试', '获取当前登录用户', '{}', 'GET', '/zwz/user/info', 'admin', 2, 'USER-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612987266471432192, NULL, '2023-01-11 09:38:27', 0, NULL, '2023-01-11 09:38:27', 150, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612987269302587392, NULL, '2023-01-11 09:38:28', 0, NULL, '2023-01-11 09:38:28', 51, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612987269633937408, NULL, '2023-01-11 09:38:28', 0, NULL, '2023-01-11 09:38:28', 65, '127.0.0.1', '本地测试', '查询个人门户菜单B', '{}', 'POST', '/zwz/myDoor/getMyDoorList6', 'admin', 2, 'MY-DOOR-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612987642507563008, NULL, '2023-01-11 09:39:57', 0, NULL, '2023-01-11 09:39:57', 76, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/permission_type', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612987642616614912, NULL, '2023-01-11 09:39:57', 0, NULL, '2023-01-11 09:39:57', 99, '127.0.0.1', '本地测试', '查询全部菜单', '{}', 'GET', '/zwz/permission/getAllList', 'admin', 2, 'PERMISSION-04', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612987647037411335, NULL, '2023-01-11 09:39:58', 0, NULL, '2023-01-11 09:39:58', 31, '127.0.0.1', '本地测试', '查询菜单权限拥有者', '{"permissionId":"125909152017944576"}', 'GET', '/zwz/permission/getUserByPermission', 'admin', 2, 'PERMISSION-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612987670093500416, NULL, '2023-01-11 09:40:03', 0, NULL, '2023-01-11 09:40:03', 85, '127.0.0.1', '本地测试', '编辑菜单', '{"id":"125909152017944576","updateBy":"admin","createBy":"admin","createTime":"2022-03-20 09:46:20","delFlag":"0","name":"zwz","title":"毕业生追踪","level":"0","status":"0","type":"-1","component":"","path":"","icon":"md-home","parentId":"0","buttonType":"","description":"","sortOrder":"1","expand":"true","selected":"true","checked":"false","permTypes":"","nodeKey":"0"}', 'POST', '/zwz/permission/edit', 'admin', 2, 'PERMISSION-07', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612987671423094784, NULL, '2023-01-11 09:40:03', 0, NULL, '2023-01-11 09:40:03', 116, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612987672261955606, NULL, '2023-01-11 09:40:04', 0, NULL, '2023-01-11 09:40:04', 49, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/permission_type', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612987672400367622, NULL, '2023-01-11 09:40:04', 0, NULL, '2023-01-11 09:40:04', 84, '127.0.0.1', '本地测试', '查询全部菜单', '{}', 'GET', '/zwz/permission/getAllList', 'admin', 2, 'PERMISSION-04', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612987681904660482, NULL, '2023-01-11 09:40:06', 0, NULL, '2023-01-11 09:40:06', 22, '127.0.0.1', '本地测试', '查询菜单权限拥有者', '{"permissionId":"1536599942410407936"}', 'GET', '/zwz/permission/getUserByPermission', 'admin', 2, 'PERMISSION-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612987696723136512, NULL, '2023-01-11 09:40:09', 0, NULL, '2023-01-11 09:40:09', 33, '127.0.0.1', '本地测试', '编辑菜单', '{"id":"1536599942410407936","updateBy":"","createBy":"admin","createTime":"2022-06-14 14:42:30","delFlag":"0","name":"demo","title":"二次开发","level":"0","status":"0","type":"-1","component":"","path":"","icon":"md-bulb","parentId":"0","buttonType":"","description":"","sortOrder":"2","expand":"true","selected":"true","checked":"false","permTypes":"","nodeKey":"16"}', 'POST', '/zwz/permission/edit', 'admin', 2, 'PERMISSION-07', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612987697985622023, NULL, '2023-01-11 09:40:10', 0, NULL, '2023-01-11 09:40:10', 99, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612987698329554945, NULL, '2023-01-11 09:40:10', 0, NULL, '2023-01-11 09:40:10', 34, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/permission_type', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612987698405052426, NULL, '2023-01-11 09:40:10', 0, NULL, '2023-01-11 09:40:10', 66, '127.0.0.1', '本地测试', '查询全部菜单', '{}', 'GET', '/zwz/permission/getAllList', 'admin', 2, 'PERMISSION-04', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612987700640616454, NULL, '2023-01-11 09:40:10', 0, NULL, '2023-01-11 09:40:10', 35, '127.0.0.1', '本地测试', '查询菜单权限拥有者', '{"permissionId":"1535166254703316992"}', 'GET', '/zwz/permission/getUserByPermission', 'admin', 2, 'PERMISSION-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612987707984842759, NULL, '2023-01-11 09:40:12', 0, NULL, '2023-01-11 09:40:12', 33, '127.0.0.1', '本地测试', '查询菜单权限拥有者', '{"permissionId":"125909152017944576"}', 'GET', '/zwz/permission/getUserByPermission', 'admin', 2, 'PERMISSION-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612987901208039424, NULL, '2023-01-11 09:40:58', 0, NULL, '2023-01-11 09:40:58', 67, '127.0.0.1', '本地测试', '添加菜单', '{"icon":"ios-apps","type":"0","parentId":"125909152017944576","level":"1","sortOrder":"8","buttonType":"","status":"0","path":"/emStu","component":"Main","title":"学生界面","name":"emStu"}', 'POST', '/zwz/permission/add', 'admin', 2, 'PERMISSION-06', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612987903036755968, NULL, '2023-01-11 09:40:59', 0, NULL, '2023-01-11 09:40:59', 46, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/permission_type', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612987903049338880, NULL, '2023-01-11 09:40:59', 0, NULL, '2023-01-11 09:40:59', 92, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612987903154196486, NULL, '2023-01-11 09:40:59', 0, NULL, '2023-01-11 09:40:59', 82, '127.0.0.1', '本地测试', '查询全部菜单', '{}', 'GET', '/zwz/permission/getAllList', 'admin', 2, 'PERMISSION-04', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612987912121618432, NULL, '2023-01-11 09:41:01', 0, NULL, '2023-01-11 09:41:01', 18, '127.0.0.1', '本地测试', '查询菜单权限拥有者', '{"permissionId":"125909152017944576"}', 'GET', '/zwz/permission/getUserByPermission', 'admin', 2, 'PERMISSION-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612987920103378944, NULL, '2023-01-11 09:41:03', 0, NULL, '2023-01-11 09:41:03', 31, '127.0.0.1', '本地测试', '查询菜单权限拥有者', '{"permissionId":"1612987901161902080"}', 'GET', '/zwz/permission/getUserByPermission', 'admin', 2, 'PERMISSION-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612987924721307648, NULL, '2023-01-11 09:41:04', 0, NULL, '2023-01-11 09:41:04', 33, '127.0.0.1', '本地测试', '查询菜单权限拥有者', '{"permissionId":"125909152017944576"}', 'GET', '/zwz/permission/getUserByPermission', 'admin', 2, 'PERMISSION-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612987972968386560, NULL, '2023-01-11 09:41:15', 0, NULL, '2023-01-11 09:41:15', 58, '127.0.0.1', '本地测试', '添加菜单', '{"icon":"ios-apps","type":"0","parentId":"125909152017944576","level":"1","sortOrder":"9","buttonType":"","status":"0","path":"/worker","component":"Main","title":"工作人员界面","name":"worker"}', 'POST', '/zwz/permission/add', 'admin', 2, 'PERMISSION-06', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612987974180540416, NULL, '2023-01-11 09:41:16', 0, NULL, '2023-01-11 09:41:16', 36, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612987974633525248, NULL, '2023-01-11 09:41:16', 0, NULL, '2023-01-11 09:41:16', 23, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/permission_type', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612987974717411328, NULL, '2023-01-11 09:41:16', 0, NULL, '2023-01-11 09:41:16', 46, '127.0.0.1', '本地测试', '查询全部菜单', '{}', 'GET', '/zwz/permission/getAllList', 'admin', 2, 'PERMISSION-04', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612987977628258305, NULL, '2023-01-11 09:41:16', 0, NULL, '2023-01-11 09:41:16', 29, '127.0.0.1', '本地测试', '查询菜单权限拥有者', '{"permissionId":"1612987901161902080"}', 'GET', '/zwz/permission/getUserByPermission', 'admin', 2, 'PERMISSION-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612988041704640513, NULL, '2023-01-11 09:41:32', 0, NULL, '2023-01-11 09:41:32', 100, '127.0.0.1', '本地测试', '添加菜单', '{"icon":"md-aperture","type":"0","parentId":"1612987901161902080","level":"2","sortOrder":"1","buttonType":"","status":"0","title":"我的毕业去向","component":"emp/myEmploymentStatus/index","name":"myEmploymentStatus","path":"myEmploymentStatus"}', 'POST', '/zwz/permission/add', 'admin', 2, 'PERMISSION-06', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612988042929377280, NULL, '2023-01-11 09:41:32', 0, NULL, '2023-01-11 09:41:32', 51, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612988043562717210, NULL, '2023-01-11 09:41:32', 0, NULL, '2023-01-11 09:41:32', 47, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/permission_type', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612988043692740608, NULL, '2023-01-11 09:41:32', 0, NULL, '2023-01-11 09:41:32', 109, '127.0.0.1', '本地测试', '查询全部菜单', '{}', 'GET', '/zwz/permission/getAllList', 'admin', 2, 'PERMISSION-04', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612988110629638144, NULL, '2023-01-11 09:41:48', 0, NULL, '2023-01-11 09:41:48', 67, '127.0.0.1', '本地测试', '添加菜单', '{"icon":"md-aperture","type":"0","parentId":"1612987901161902080","level":"2","sortOrder":"2","buttonType":"","status":"0","title":"校友论坛","component":"emp/userBoard/index","name":"userBoard","path":"userBoard"}', 'POST', '/zwz/permission/add', 'admin', 2, 'PERMISSION-06', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612988112378662940, NULL, '2023-01-11 09:41:49', 0, NULL, '2023-01-11 09:41:49', 48, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/permission_type', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612988112378662943, NULL, '2023-01-11 09:41:49', 0, NULL, '2023-01-11 09:41:49', 83, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612988112512880640, NULL, '2023-01-11 09:41:49', 0, NULL, '2023-01-11 09:41:49', 117, '127.0.0.1', '本地测试', '查询全部菜单', '{}', 'GET', '/zwz/permission/getAllList', 'admin', 2, 'PERMISSION-04', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612988119383150593, NULL, '2023-01-11 09:41:50', 0, NULL, '2023-01-11 09:41:50', 30, '127.0.0.1', '本地测试', '查询菜单权限拥有者', '{"permissionId":"1612987972951609344"}', 'GET', '/zwz/permission/getUserByPermission', 'admin', 2, 'PERMISSION-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612988223473192960, NULL, '2023-01-11 09:42:15', 0, NULL, '2023-01-11 09:42:15', 83, '127.0.0.1', '本地测试', '添加菜单', '{"icon":"md-aperture","type":"0","parentId":"1612987972951609344","level":"2","sortOrder":"1","buttonType":"","status":"0","title":"毕业去向统计","component":"emp/employmentStatus/index","name":"employmentStatus","path":"employmentStatus"}', 'POST', '/zwz/permission/add', 'admin', 2, 'PERMISSION-06', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612988224614043648, NULL, '2023-01-11 09:42:15', 0, NULL, '2023-01-11 09:42:15', 36, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612988225427738651, NULL, '2023-01-11 09:42:16', 0, NULL, '2023-01-11 09:42:16', 32, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/permission_type', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612988225561956365, NULL, '2023-01-11 09:42:16', 0, NULL, '2023-01-11 09:42:16', 63, '127.0.0.1', '本地测试', '查询全部菜单', '{}', 'GET', '/zwz/permission/getAllList', 'admin', 2, 'PERMISSION-04', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612988281417502721, NULL, '2023-01-11 09:42:29', 0, NULL, '2023-01-11 09:42:29', 47, '127.0.0.1', '本地测试', '添加菜单', '{"icon":"md-aperture","type":"0","parentId":"1612987972951609344","level":"2","sortOrder":"2","buttonType":"","status":"0","title":"学历深造","component":"emp/employmentSheng/index","name":"employmentSheng","path":"employmentSheng"}', 'POST', '/zwz/permission/add', 'admin', 2, 'PERMISSION-06', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612988283112001536, NULL, '2023-01-11 09:42:29', 0, NULL, '2023-01-11 09:42:29', 14, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/permission_type', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612988283120390144, NULL, '2023-01-11 09:42:29', 0, NULL, '2023-01-11 09:42:29', 77, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612988283216859136, NULL, '2023-01-11 09:42:29', 0, NULL, '2023-01-11 09:42:29', 46, '127.0.0.1', '本地测试', '查询全部菜单', '{}', 'GET', '/zwz/permission/getAllList', 'admin', 2, 'PERMISSION-04', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612988348333428736, NULL, '2023-01-11 09:42:45', 0, NULL, '2023-01-11 09:42:45', 63, '127.0.0.1', '本地测试', '添加菜单', '{"icon":"md-aperture","type":"0","parentId":"1612987972951609344","level":"2","sortOrder":"3","buttonType":"","status":"0","title":"校友论坛管理","component":"emp/messageBoard/index","name":"messageBoard","path":"messageBoard"}', 'POST', '/zwz/permission/add', 'admin', 2, 'PERMISSION-06', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612988350120202268, NULL, '2023-01-11 09:42:45', 0, NULL, '2023-01-11 09:42:45', 37, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/permission_type', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612988350120202270, NULL, '2023-01-11 09:42:45', 0, NULL, '2023-01-11 09:42:45', 100, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612988350409609216, NULL, '2023-01-11 09:42:45', 0, NULL, '2023-01-11 09:42:45', 84, '127.0.0.1', '本地测试', '查询全部菜单', '{}', 'GET', '/zwz/permission/getAllList', 'admin', 2, 'PERMISSION-04', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612988405086556160, NULL, '2023-01-11 09:42:58', 0, NULL, '2023-01-11 09:42:58', 62, '127.0.0.1', '本地测试', '添加菜单', '{"icon":"md-aperture","type":"0","parentId":"1612987972951609344","level":"2","sortOrder":"4","buttonType":"","status":"0","title":"学生荣誉","component":"emp/honor/index","name":"honor","path":"honor"}', 'POST', '/zwz/permission/add', 'admin', 2, 'PERMISSION-06', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612988406806220800, NULL, '2023-01-11 09:42:59', 0, NULL, '2023-01-11 09:42:59', 26, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/permission_type', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612988406810415104, NULL, '2023-01-11 09:42:59', 0, NULL, '2023-01-11 09:42:59', 73, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612988406919467008, NULL, '2023-01-11 09:42:59', 0, NULL, '2023-01-11 09:42:59', 54, '127.0.0.1', '本地测试', '查询全部菜单', '{}', 'GET', '/zwz/permission/getAllList', 'admin', 2, 'PERMISSION-04', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612988460573003776, NULL, '2023-01-11 09:43:12', 0, NULL, '2023-01-11 09:43:12', 76, '127.0.0.1', '本地测试', '添加菜单', '{"icon":"md-aperture","type":"0","parentId":"1612987972951609344","level":"2","sortOrder":"5","buttonType":"","status":"0","title":"学生证书","component":"emp/certificate/index","name":"certificate","path":"certificate"}', 'POST', '/zwz/permission/add', 'admin', 2, 'PERMISSION-06', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612988462246531100, NULL, '2023-01-11 09:43:12', 0, NULL, '2023-01-11 09:43:12', 33, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/permission_type', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612988462246531102, NULL, '2023-01-11 09:43:12', 0, NULL, '2023-01-11 09:43:12', 67, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612988462384943114, NULL, '2023-01-11 09:43:12', 0, NULL, '2023-01-11 09:43:12', 84, '127.0.0.1', '本地测试', '查询全部菜单', '{}', 'GET', '/zwz/permission/getAllList', 'admin', 2, 'PERMISSION-04', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612988629607649280, NULL, '2023-01-11 09:43:52', 0, NULL, '2023-01-11 09:43:52', 54, '127.0.0.1', '本地测试', '查询个人门户菜单B', '{}', 'POST', '/zwz/myDoor/getMyDoorList6', 'admin', 2, 'MY-DOOR-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612988647949340672, NULL, '2023-01-11 09:43:56', 0, NULL, '2023-01-11 09:43:56', 33, '127.0.0.1', '本地测试', '查询图表数据', '{}', 'GET', '/zwz/teacher/getAntvVoList', 'admin', 4, 'CHART-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612988655180320768, NULL, '2023-01-11 09:43:58', 0, NULL, '2023-01-11 09:43:58', 29, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/sex', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612988655390035972, NULL, '2023-01-11 09:43:58', 0, NULL, '2023-01-11 09:43:58', 81, '127.0.0.1', '本地测试', '查询学生', '{"pageNumber":"1","pageSize":"15","sort":"createTime","order":"desc"}', 'GET', '/zwz/student/getByPage', 'admin', 3, 'STUDENT-04', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612988657076146214, NULL, '2023-01-11 09:43:58', 0, NULL, '2023-01-11 09:43:58', 33, '127.0.0.1', '本地测试', '查询个人门户菜单B', '{}', 'POST', '/zwz/myDoor/getMyDoorList6', 'admin', 2, 'MY-DOOR-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612988666282643456, NULL, '2023-01-11 09:44:01', 0, NULL, '2023-01-11 09:44:01', 31, '127.0.0.1', '本地测试', '查询角色', '{"pageNumber":"1","pageSize":"15","sort":"createTime","order":"desc"}', 'GET', '/zwz/role/getAllByPage', 'admin', 2, 'ROLE-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612988687837171712, NULL, '2023-01-11 09:44:06', 0, NULL, '2023-01-11 09:44:06', 56, '127.0.0.1', '本地测试', '编辑角色', '{"id":"496138616573953","updateBy":"admin","updateTime":"2022-03-20 09:46:20","createBy":"","createTime":"2022-03-20 09:46:20","delFlag":"0","name":"ROLE_USER","dataType":"0","defaultRole":"true","description":"学生","_index":"1","_rowKey":"18"}', 'POST', '/zwz/role/edit', 'admin', 2, 'ROLE-06', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612988689493921792, NULL, '2023-01-11 09:44:06', 0, NULL, '2023-01-11 09:44:06', 30, '127.0.0.1', '本地测试', '查询角色', '{"pageNumber":"1","pageSize":"15","sort":"createTime","order":"desc"}', 'GET', '/zwz/role/getAllByPage', 'admin', 2, 'ROLE-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612988711555960832, NULL, '2023-01-11 09:44:11', 0, NULL, '2023-01-11 09:44:11', 69, '127.0.0.1', '本地测试', '编辑角色', '{"id":"496138616573952","updateBy":"admin","updateTime":"2022-03-20 09:46:20","createBy":"","createTime":"2022-03-20 09:46:20","delFlag":"0","name":"ROLE_ADMIN","dataType":"0","defaultRole":"","description":"工作人员","_index":"0","_rowKey":"19"}', 'POST', '/zwz/role/edit', 'admin', 2, 'ROLE-06', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612988713342734336, NULL, '2023-01-11 09:44:12', 0, NULL, '2023-01-11 09:44:12', 39, '127.0.0.1', '本地测试', '查询角色', '{"pageNumber":"1","pageSize":"15","sort":"createTime","order":"desc"}', 'GET', '/zwz/role/getAllByPage', 'admin', 2, 'ROLE-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612988744703545344, NULL, '2023-01-11 09:44:19', 0, NULL, '2023-01-11 09:44:19', 85, '127.0.0.1', '本地测试', '修改菜单权限', '{"roleId":"496138616573952","permIds":"125909152017944576,1464484663442673664,5129710648430593,1464485105081913345,40238597734928384,1464485485316542465,56309618086776832,5129710648430592,5129710648430594,5129710648430595,1530689520276738048,1530689602321518592,39915540965232640,41363147411427328,1535166254703316992,1535166438371889152,1612987901161902080,1612988041704640512,1612988110621249536,1612987972951609344,1612988223401889792,1612988281417502720,1612988348316651520,1612988405057196032,1612988460556226560,1536599942410407936,1536600125332393984,1536600268379131904,1536604417711804416,1536606273959759872,1536606372668510208,1536606464712511488,1536606550951596032,1536606637815631872,1536875505901506560"}', 'POST', '/zwz/role/editRolePerm', 'admin', 2, 'ROLE-04', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612988746519678978, NULL, '2023-01-11 09:44:20', 0, NULL, '2023-01-11 09:44:20', 48, '127.0.0.1', '本地测试', '查询角色', '{"pageNumber":"1","pageSize":"15","sort":"createTime","order":"desc"}', 'GET', '/zwz/role/getAllByPage', 'admin', 2, 'ROLE-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612988746632925184, NULL, '2023-01-11 09:44:20', 0, NULL, '2023-01-11 09:44:20', 72, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612988770720813056, NULL, '2023-01-11 09:44:26', 0, NULL, '2023-01-11 09:44:26', 74, '127.0.0.1', '本地测试', '修改菜单权限', '{"roleId":"496138616573953","permIds":"125909152017944576,1612987901161902080,1612988041704640512,1612988110621249536"}', 'POST', '/zwz/role/editRolePerm', 'admin', 2, 'ROLE-04', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612988772520169473, NULL, '2023-01-11 09:44:26', 0, NULL, '2023-01-11 09:44:26', 47, '127.0.0.1', '本地测试', '查询角色', '{"pageNumber":"1","pageSize":"15","sort":"createTime","order":"desc"}', 'GET', '/zwz/role/getAllByPage', 'admin', 2, 'ROLE-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612988772713107456, NULL, '2023-01-11 09:44:26', 0, NULL, '2023-01-11 09:44:26', 95, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612988913352314880, NULL, '2023-01-11 09:45:00', 0, NULL, '2023-01-11 09:45:00', 67, '127.0.0.1', '本地测试', '查询全部角色', '{}', 'GET', '/zwz/role/getAllList', 'admin', 2, 'ROLE-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612988913360703488, NULL, '2023-01-11 09:45:00', 0, NULL, '2023-01-11 09:45:00', 49, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/sex', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612988913444589569, NULL, '2023-01-11 09:45:00', 0, NULL, '2023-01-11 09:45:00', 75, '127.0.0.1', '本地测试', '查询用户', '{"nickname":"","departmentId":"","pageNumber":"1","pageSize":"20","sort":"createTime","order":"desc"}', 'GET', '/zwz/user/getUserList', 'admin', 2, 'USER-07', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612988913473949696, NULL, '2023-01-11 09:45:00', 0, NULL, '2023-01-11 09:45:00', 98, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', 'admin', 2, 'DEP-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612988915181031425, NULL, '2023-01-11 09:45:00', 0, NULL, '2023-01-11 09:45:00', 35, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', 'admin', 2, 'DEP-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612988948076957696, NULL, '2023-01-11 09:45:08', 0, NULL, '2023-01-11 09:45:08', 73, '127.0.0.1', '本地测试', '管理员修改资料', '{"id":"1527830053524738048","updateBy":"","updateTime":"","createBy":"admin","createTime":"2022-05-21 09:54:05","delFlag":"0","nickname":"user4","username":"user4","password":"","passStrength":"弱","mobile":"17896525487","departmentId":"1464487332064399361","departmentTitle":"行政综合部","email":"user4@qq.com","sex":"男","address":"[\\"110000\\",\\"110100\\",\\"110106\\"]","type":"0","myDoor":"","status":"0","avatar":"https://wx.qlogo.cn/mmhead/PiajxSqBRaEKjc639z2lRF4DqweNw2aDRLbAL7yLlSgrdZeKBCwLHDQ/0","defaultRole":"","_index":"0","_rowKey":"30","addressArray":"110000,110100,110106","roleIds":"496138616573953"}', 'POST', '/zwz/user/admin/edit', 'admin', 2, 'USER-11', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612988949796622337, NULL, '2023-01-11 09:45:08', 0, NULL, '2023-01-11 09:45:08', 29, '127.0.0.1', '本地测试', '查询用户', '{"nickname":"","departmentId":"","pageNumber":"1","pageSize":"20","sort":"createTime","order":"desc"}', 'GET', '/zwz/user/getUserList', 'admin', 2, 'USER-07', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612989050417975296, NULL, '2023-01-11 09:45:32', 0, NULL, '2023-01-11 09:45:32', 64, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/sex', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612989051604963328, NULL, '2023-01-11 09:45:32', 0, NULL, '2023-01-11 09:45:32', 33, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', 'admin', 2, 'DEP-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612989051722403840, NULL, '2023-01-11 09:45:33', 0, NULL, '2023-01-11 09:45:33', 37, '127.0.0.1', '本地测试', '查询全部角色', '{}', 'GET', '/zwz/role/getAllList', 'admin', 2, 'ROLE-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612989072001863680, NULL, '2023-01-11 09:45:37', 0, NULL, '2023-01-11 09:45:37', 29, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', 'admin', 2, 'DEP-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612989072891056131, NULL, '2023-01-11 09:45:38', 0, NULL, '2023-01-11 09:45:38', 34, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/sex', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612989073385984000, NULL, '2023-01-11 09:45:38', 0, NULL, '2023-01-11 09:45:38', 28, '127.0.0.1', '本地测试', '查询全部角色', '{}', 'GET', '/zwz/role/getAllList', 'admin', 2, 'ROLE-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612989073402761216, NULL, '2023-01-11 09:45:38', 0, NULL, '2023-01-11 09:45:38', 69, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', 'admin', 2, 'DEP-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612989073436315648, NULL, '2023-01-11 09:45:38', 0, NULL, '2023-01-11 09:45:38', 85, '127.0.0.1', '本地测试', '查询用户', '{"nickname":"","departmentId":"","pageNumber":"1","pageSize":"20","sort":"createTime","order":"desc"}', 'GET', '/zwz/user/getUserList', 'admin', 2, 'USER-07', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612989119078731776, NULL, '2023-01-11 09:45:49', 0, NULL, '2023-01-11 09:45:49', 71, '127.0.0.1', '本地测试', '启用用户', '{"id":"1464764315201572865"}', 'POST', '/zwz/user/enable', 'admin', 2, 'USER-14', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612989120949391360, NULL, '2023-01-11 09:45:49', 0, NULL, '2023-01-11 09:45:49', 53, '127.0.0.1', '本地测试', '查询用户', '{"nickname":"","departmentId":"","pageNumber":"1","pageSize":"20","sort":"createTime","order":"desc"}', 'GET', '/zwz/user/getUserList', 'admin', 2, 'USER-07', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612989619488559105, NULL, '2023-01-11 09:47:48', 0, NULL, '2023-01-11 09:47:48', 105, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', 'admin', 2, 'DEP-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612989620872679424, NULL, '2023-01-11 09:47:48', 0, NULL, '2023-01-11 09:47:48', 47, '127.0.0.1', '本地测试', '查询全部角色', '{}', 'GET', '/zwz/role/getAllList', 'admin', 2, 'ROLE-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612989620897845249, NULL, '2023-01-11 09:47:48', 0, NULL, '2023-01-11 09:47:48', 96, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/sex', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612989620952371200, NULL, '2023-01-11 09:47:48', 0, NULL, '2023-01-11 09:47:48', 111, '127.0.0.1', '本地测试', '查询用户', '{"nickname":"","departmentId":"","pageNumber":"1","pageSize":"20","sort":"createTime","order":"desc"}', 'GET', '/zwz/user/getUserList', 'admin', 2, 'USER-07', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612989621250166784, NULL, '2023-01-11 09:47:48', 0, NULL, '2023-01-11 09:47:48', 50, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', 'admin', 2, 'DEP-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612989649196814336, NULL, '2023-01-11 09:47:55', 0, NULL, '2023-01-11 09:47:55', 75, '127.0.0.1', '本地测试', '登录系统', '{"username":"17859654121","password":"","code":"2718","captchaId":"276742aff32e4346934667ff95787116","saveLogin":"true"}', 'POST', '/zwz/login', '17859654121', 1, '', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612989650635460608, NULL, '2023-01-11 09:47:55', 0, NULL, '2023-01-11 09:47:55', 52, '127.0.0.1', '本地测试', '获取当前登录用户', '{}', 'GET', '/zwz/user/info', '17859654121', 2, 'USER-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612989651793088512, NULL, '2023-01-11 09:47:56', 0, NULL, '2023-01-11 09:47:56', 63, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', '17859654121', 2, 'PERMISSION-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612989656381657088, NULL, '2023-01-11 09:47:57', 0, NULL, '2023-01-11 09:47:57', 41, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', '17859654121', 2, 'PERMISSION-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612989656830447616, NULL, '2023-01-11 09:47:57', 0, NULL, '2023-01-11 09:47:57', 41, '127.0.0.1', '本地测试', '查询个人门户菜单B', '{}', 'POST', '/zwz/myDoor/getMyDoorList6', '17859654121', 2, 'MY-DOOR-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612989812002918400, NULL, '2023-01-11 09:48:34', 0, NULL, '2023-01-11 09:48:34', 82, '127.0.0.1', '本地测试', '登录系统', '{"username":"admin","password":"","code":"8731","captchaId":"4a42762376f640508da3f9bf9a234a64","saveLogin":"true"}', 'POST', '/zwz/login', 'admin', 1, '', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612989812036472832, NULL, '2023-01-11 09:48:34', 0, NULL, '2023-01-11 09:48:34', 83, '127.0.0.1', '本地测试', '获取当前登录用户', '{}', 'GET', '/zwz/user/info', 'admin', 2, 'USER-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612989812472680448, NULL, '2023-01-11 09:48:34', 0, NULL, '2023-01-11 09:48:34', 46, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612989813806469120, NULL, '2023-01-11 09:48:34', 0, NULL, '2023-01-11 09:48:34', 54, '127.0.0.1', '本地测试', '查询个人门户菜单B', '{}', 'POST', '/zwz/myDoor/getMyDoorList6', 'admin', 2, 'MY-DOOR-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612989897352810496, NULL, '2023-01-11 09:48:54', 0, NULL, '2023-01-11 09:48:54', 69, '127.0.0.1', '本地测试', '登录系统', '{"username":"17859654125","password":"","code":"2788","captchaId":"04d16688b69745139a4ddf3bf3ad7da0","saveLogin":"true"}', 'POST', '/zwz/login', '17859654125', 1, '', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612989898736930816, NULL, '2023-01-11 09:48:54', 0, NULL, '2023-01-11 09:48:54', 44, '127.0.0.1', '本地测试', '获取当前登录用户', '{}', 'GET', '/zwz/user/info', '17859654125', 2, 'USER-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612989899881975808, NULL, '2023-01-11 09:48:55', 0, NULL, '2023-01-11 09:48:55', 54, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', '17859654125', 2, 'PERMISSION-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612989901073158144, NULL, '2023-01-11 09:48:55', 0, NULL, '2023-01-11 09:48:55', 35, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', '17859654125', 2, 'PERMISSION-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612989901568086016, NULL, '2023-01-11 09:48:55', 0, NULL, '2023-01-11 09:48:55', 39, '127.0.0.1', '本地测试', '查询个人门户菜单B', '{}', 'POST', '/zwz/myDoor/getMyDoorList6', '17859654125', 2, 'MY-DOOR-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612989978734891008, NULL, '2023-01-11 09:49:14', 0, NULL, '2023-01-11 09:49:14', 85, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', '17859654125', 2, 'PERMISSION-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612990013165932544, NULL, '2023-01-11 09:49:22', 0, NULL, '2023-01-11 09:49:22', 83, '127.0.0.1', '本地测试', '登录系统', '{"username":"admin","password":"","code":"5701","captchaId":"884b032491d446eeb17f99fbd5bc8506","saveLogin":"true"}', 'POST', '/zwz/login', 'admin', 1, '', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612990013207875584, NULL, '2023-01-11 09:49:22', 0, NULL, '2023-01-11 09:49:22', 79, '127.0.0.1', '本地测试', '获取当前登录用户', '{}', 'GET', '/zwz/user/info', 'admin', 2, 'USER-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612990015078535168, NULL, '2023-01-11 09:49:22', 0, NULL, '2023-01-11 09:49:22', 39, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612990015619600385, NULL, '2023-01-11 09:49:22', 0, NULL, '2023-01-11 09:49:22', 46, '127.0.0.1', '本地测试', '查询个人门户菜单B', '{}', 'POST', '/zwz/myDoor/getMyDoorList6', 'admin', 2, 'MY-DOOR-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612990017905496064, NULL, '2023-01-11 09:49:23', 0, NULL, '2023-01-11 09:49:23', 39, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612990018144571392, NULL, '2023-01-11 09:49:23', 0, NULL, '2023-01-11 09:49:23', 52, '127.0.0.1', '本地测试', '查询个人门户菜单B', '{}', 'POST', '/zwz/myDoor/getMyDoorList6', 'admin', 2, 'MY-DOOR-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612990724125626369, NULL, '2023-01-11 09:52:11', 0, NULL, '2023-01-11 09:52:11', 109, '127.0.0.1', '本地测试', '查询角色', '{"pageNumber":"1","pageSize":"15","sort":"createTime","order":"desc"}', 'GET', '/zwz/role/getAllByPage', 'admin', 2, 'ROLE-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612990749719269376, NULL, '2023-01-11 09:52:17', 0, NULL, '2023-01-11 09:52:17', 93, '127.0.0.1', '本地测试', '修改菜单权限', '{"roleId":"496138616573952","permIds":"125909152017944576,1464484663442673664,5129710648430593,1464485105081913345,40238597734928384,1464485485316542465,56309618086776832,5129710648430592,5129710648430594,5129710648430595,1530689520276738048,1530689602321518592,39915540965232640,41363147411427328,1535166254703316992,1535166438371889152,1612987972951609344,1612988223401889792,1612988281417502720,1612988348316651520,1612988405057196032,1612988460556226560,1536599942410407936,1536600125332393984,1536600268379131904,1536604417711804416,1536606273959759872,1536606372668510208,1536606464712511488,1536606550951596032,1536606637815631872,1536875505901506560"}', 'POST', '/zwz/role/editRolePerm', 'admin', 2, 'ROLE-04', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612990750998532096, NULL, '2023-01-11 09:52:18', 0, NULL, '2023-01-11 09:52:18', 88, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612990751539597312, NULL, '2023-01-11 09:52:18', 0, NULL, '2023-01-11 09:52:18', 44, '127.0.0.1', '本地测试', '查询角色', '{"pageNumber":"1","pageSize":"15","sort":"createTime","order":"desc"}', 'GET', '/zwz/role/getAllByPage', 'admin', 2, 'ROLE-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612990757931716608, NULL, '2023-01-11 09:52:19', 0, NULL, '2023-01-11 09:52:19', 43, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612990758783160320, NULL, '2023-01-11 09:52:20', 0, NULL, '2023-01-11 09:52:20', 49, '127.0.0.1', '本地测试', '查询角色', '{"pageNumber":"1","pageSize":"15","sort":"createTime","order":"desc"}', 'GET', '/zwz/role/getAllByPage', 'admin', 2, 'ROLE-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612990767159185408, NULL, '2023-01-11 09:52:22', 0, NULL, '2023-01-11 09:52:22', 50, '127.0.0.1', '本地测试', '查询个人门户菜单B', '{}', 'POST', '/zwz/myDoor/getMyDoorList6', 'admin', 2, 'MY-DOOR-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612990842421776384, NULL, '2023-01-11 09:52:39', 0, NULL, '2023-01-11 09:52:39', 73, '127.0.0.1', '本地测试', '查询个人门户菜单B', '{}', 'POST', '/zwz/myDoor/getMyDoorList6', 'admin', 2, 'MY-DOOR-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612990900340920321, NULL, '2023-01-11 09:52:53', 0, NULL, '2023-01-11 09:52:53', 84, '127.0.0.1', '本地测试', '查询全部角色', '{}', 'GET', '/zwz/role/getAllList', 'admin', 2, 'ROLE-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612990900361891840, NULL, '2023-01-11 09:52:53', 0, NULL, '2023-01-11 09:52:53', 84, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/sex', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612990900366086144, NULL, '2023-01-11 09:52:53', 0, NULL, '2023-01-11 09:52:53', 79, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', 'admin', 2, 'DEP-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612990900403834880, NULL, '2023-01-11 09:52:53', 0, NULL, '2023-01-11 09:52:53', 100, '127.0.0.1', '本地测试', '查询用户', '{"nickname":"","departmentId":"","pageNumber":"1","pageSize":"20","sort":"createTime","order":"desc"}', 'GET', '/zwz/user/getUserList', 'admin', 2, 'USER-07', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612990902060584960, NULL, '2023-01-11 09:52:54', 0, NULL, '2023-01-11 09:52:54', 54, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', 'admin', 2, 'DEP-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612990905973870592, NULL, '2023-01-11 09:52:55', 0, NULL, '2023-01-11 09:52:55', 49, '127.0.0.1', '本地测试', '查询个人门户菜单B', '{}', 'POST', '/zwz/myDoor/getMyDoorList6', 'admin', 2, 'MY-DOOR-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612990910440804352, NULL, '2023-01-11 09:52:56', 0, NULL, '2023-01-11 09:52:56', 39, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/sex', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612990982746411008, NULL, '2023-01-11 09:53:13', 0, NULL, '2023-01-11 09:53:13', 75, '127.0.0.1', '本地测试', '修改个人门户菜单', '{"str":"employmentStatusZWZ666employmentShengZWZ666messageBoardZWZ666honorZWZ666certificateZWZ666user-admin"}', 'POST', '/zwz/myDoor/setMyDoorList', 'admin', 2, 'MY-DOOR-03', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612990989981585414, NULL, '2023-01-11 09:53:15', 0, NULL, '2023-01-11 09:53:15', 45, '127.0.0.1', '本地测试', '查询个人门户菜单B', '{}', 'POST', '/zwz/myDoor/getMyDoorList6', 'admin', 2, 'MY-DOOR-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612991022659407872, NULL, '2023-01-11 09:53:22', 0, NULL, '2023-01-11 09:53:22', 92, '127.0.0.1', '本地测试', '登录系统', '{"username":"user4","password":"","code":"5856","captchaId":"b7ff8c07fd1b4ee09065706eb594fd76","saveLogin":"true"}', 'POST', '/zwz/login', 'user4', 1, '', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612991024093859840, NULL, '2023-01-11 09:53:23', 0, NULL, '2023-01-11 09:53:23', 55, '127.0.0.1', '本地测试', '获取当前登录用户', '{}', 'GET', '/zwz/user/info', 'user4', 2, 'USER-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612991025272459264, NULL, '2023-01-11 09:53:23', 0, NULL, '2023-01-11 09:53:23', 69, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'user4', 2, 'PERMISSION-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612991027231199232, NULL, '2023-01-11 09:53:24', 0, NULL, '2023-01-11 09:53:24', 45, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'user4', 2, 'PERMISSION-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612991028028116992, NULL, '2023-01-11 09:53:24', 0, NULL, '2023-01-11 09:53:24', 44, '127.0.0.1', '本地测试', '查询个人门户菜单B', '{}', 'POST', '/zwz/myDoor/getMyDoorList6', 'user4', 2, 'MY-DOOR-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612991034185355267, NULL, '2023-01-11 09:53:25', 0, NULL, '2023-01-11 09:53:25', 47, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/sex', 'user4', 2, 'DICT_DATA-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612991050731884544, NULL, '2023-01-11 09:53:29', 0, NULL, '2023-01-11 09:53:29', 63, '127.0.0.1', '本地测试', '修改个人门户菜单', '{"str":"myEmploymentStatusZWZ666userBoard"}', 'POST', '/zwz/myDoor/setMyDoorList', 'user4', 2, 'MY-DOOR-03', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612991190561591296, NULL, '2023-01-11 09:54:02', 0, NULL, '2023-01-11 09:54:02', 80, '127.0.0.1', '本地测试', '登录系统', '{"username":"admin","password":"","code":"1162","captchaId":"4982cc646541434994ec9d0c897d44c7","saveLogin":"true"}', 'POST', '/zwz/login', 'admin', 1, '', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612991191891185664, NULL, '2023-01-11 09:54:03', 0, NULL, '2023-01-11 09:54:03', 42, '127.0.0.1', '本地测试', '获取当前登录用户', '{}', 'GET', '/zwz/user/info', 'admin', 2, 'USER-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612991193044619264, NULL, '2023-01-11 09:54:03', 0, NULL, '2023-01-11 09:54:03', 49, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612991196865630208, NULL, '2023-01-11 09:54:04', 0, NULL, '2023-01-11 09:54:04', 41, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612991197159231488, NULL, '2023-01-11 09:54:04', 0, NULL, '2023-01-11 09:54:04', 57, '127.0.0.1', '本地测试', '查询个人门户菜单B', '{}', 'POST', '/zwz/myDoor/getMyDoorList6', 'admin', 2, 'MY-DOOR-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612991236019458048, NULL, '2023-01-11 09:54:13', 0, NULL, '2023-01-11 09:54:13', 103, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', 'admin', 2, 'DEP-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612991236149481472, NULL, '2023-01-11 09:54:13', 0, NULL, '2023-01-11 09:54:13', 85, '127.0.0.1', '本地测试', '查询全部角色', '{}', 'GET', '/zwz/role/getAllList', 'admin', 2, 'ROLE-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612991236166258688, NULL, '2023-01-11 09:54:13', 0, NULL, '2023-01-11 09:54:13', 80, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/sex', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612991237328080898, NULL, '2023-01-11 09:54:14', 0, NULL, '2023-01-11 09:54:14', 53, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', 'admin', 2, 'DEP-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612991237344858113, NULL, '2023-01-11 09:54:14', 0, NULL, '2023-01-11 09:54:14', 47, '127.0.0.1', '本地测试', '查询用户', '{"nickname":"","departmentId":"","pageNumber":"1","pageSize":"20","sort":"createTime","order":"desc"}', 'GET', '/zwz/user/getUserList', 'admin', 2, 'USER-07', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612991261575352320, NULL, '2023-01-11 09:54:19', 0, NULL, '2023-01-11 09:54:19', 67, '127.0.0.1', '本地测试', '登录系统', '{"username":"user4","password":"","code":"1468","captchaId":"63c88222b13d48218552894a4166b934","saveLogin":"true"}', 'POST', '/zwz/login', 'user4', 1, '', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612991261617295360, NULL, '2023-01-11 09:54:19', 0, NULL, '2023-01-11 09:54:19', 106, '127.0.0.1', '本地测试', '获取当前登录用户', '{}', 'GET', '/zwz/user/info', 'user4', 2, 'USER-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612991263479566336, NULL, '2023-01-11 09:54:20', 0, NULL, '2023-01-11 09:54:20', 52, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'user4', 2, 'PERMISSION-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612991264129683456, NULL, '2023-01-11 09:54:20', 0, NULL, '2023-01-11 09:54:20', 54, '127.0.0.1', '本地测试', '查询个人门户菜单B', '{}', 'POST', '/zwz/myDoor/getMyDoorList6', 'user4', 2, 'MY-DOOR-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612991266218446848, NULL, '2023-01-11 09:54:20', 0, NULL, '2023-01-11 09:54:20', 48, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'user4', 2, 'PERMISSION-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612991266503659520, NULL, '2023-01-11 09:54:21', 0, NULL, '2023-01-11 09:54:21', 43, '127.0.0.1', '本地测试', '查询个人门户菜单B', '{}', 'POST', '/zwz/myDoor/getMyDoorList6', 'user4', 2, 'MY-DOOR-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612991434284208128, NULL, '2023-01-11 09:55:01', 0, NULL, '2023-01-11 09:55:01', 90, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/sex', 'user4', 2, 'DICT_DATA-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612991453766750208, NULL, '2023-01-11 09:55:05', 0, NULL, '2023-01-11 09:55:05', 46, '127.0.0.1', '本地测试', '登录系统', '{"username":"admin","password":"","code":"8058","captchaId":"42af737af97e4a84a0e3e5b6bff18c27","saveLogin":"true"}', 'POST', '/zwz/login', 'admin', 1, '', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612991455176036352, NULL, '2023-01-11 09:55:06', 0, NULL, '2023-01-11 09:55:06', 41, '127.0.0.1', '本地测试', '获取当前登录用户', '{}', 'GET', '/zwz/user/info', 'admin', 2, 'USER-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612991456228806656, NULL, '2023-01-11 09:55:06', 0, NULL, '2023-01-11 09:55:06', 42, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612991460087566336, NULL, '2023-01-11 09:55:07', 0, NULL, '2023-01-11 09:55:07', 44, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612991460414722048, NULL, '2023-01-11 09:55:07', 0, NULL, '2023-01-11 09:55:07', 53, '127.0.0.1', '本地测试', '查询个人门户菜单B', '{}', 'POST', '/zwz/myDoor/getMyDoorList6', 'admin', 2, 'MY-DOOR-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612991759120470018, NULL, '2023-01-11 09:56:18', 0, NULL, '2023-01-11 09:56:18', 88, '127.0.0.1', '本地测试', '查询全部角色', '{}', 'GET', '/zwz/role/getAllList', 'admin', 2, 'ROLE-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612991759133052928, NULL, '2023-01-11 09:56:18', 0, NULL, '2023-01-11 09:56:18', 106, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/sex', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612991759137247232, NULL, '2023-01-11 09:56:18', 0, NULL, '2023-01-11 09:56:18', 100, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', 'admin', 2, 'DEP-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612991759200161792, NULL, '2023-01-11 09:56:18', 0, NULL, '2023-01-11 09:56:18', 107, '127.0.0.1', '本地测试', '查询用户', '{"nickname":"","departmentId":"","pageNumber":"1","pageSize":"20","sort":"createTime","order":"desc"}', 'GET', '/zwz/user/getUserList', 'admin', 2, 'USER-07', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612991760869494784, NULL, '2023-01-11 09:56:18', 0, NULL, '2023-01-11 09:56:18', 43, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', 'admin', 2, 'DEP-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612991786924511232, NULL, '2023-01-11 09:56:25', 0, NULL, '2023-01-11 09:56:25', 95, '127.0.0.1', '本地测试', '禁用用户', '{"id":"1464764315201572865"}', 'POST', '/zwz/user/disable', 'admin', 2, 'USER-13', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612991788103110656, NULL, '2023-01-11 09:56:25', 0, NULL, '2023-01-11 09:56:25', 57, '127.0.0.1', '本地测试', '查询用户', '{"nickname":"","departmentId":"","pageNumber":"1","pageSize":"20","sort":"createTime","order":"desc"}', 'GET', '/zwz/user/getUserList', 'admin', 2, 'USER-07', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612991793320824832, NULL, '2023-01-11 09:56:26', 0, NULL, '2023-01-11 09:56:26', 45, '127.0.0.1', '本地测试', '启用用户', '{"id":"1464764315201572865"}', 'POST', '/zwz/user/enable', 'admin', 2, 'USER-14', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612991794948214785, NULL, '2023-01-11 09:56:27', 0, NULL, '2023-01-11 09:56:27', 52, '127.0.0.1', '本地测试', '查询用户', '{"nickname":"","departmentId":"","pageNumber":"1","pageSize":"20","sort":"createTime","order":"desc"}', 'GET', '/zwz/user/getUserList', 'admin', 2, 'USER-07', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612991799599697920, NULL, '2023-01-11 09:56:28', 0, NULL, '2023-01-11 09:56:28', 50, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', 'admin', 2, 'DEP-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612991800946069504, NULL, '2023-01-11 09:56:28', 0, NULL, '2023-01-11 09:56:28', 52, '127.0.0.1', '本地测试', '查询用户', '{"pageNumber":"1","pageSize":"10","sort":"createTime","order":"desc","departmentId":""}', 'GET', '/zwz/myUser/getByPage', 'admin', 2, 'USER-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612991801164173312, NULL, '2023-01-11 09:56:28', 0, NULL, '2023-01-11 09:56:28', 49, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', 'admin', 2, 'DEP-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612991807644372993, NULL, '2023-01-11 09:56:30', 0, NULL, '2023-01-11 09:56:30', 61, '127.0.0.1', '本地测试', '查询系统文件', '{"name":"","fkey":"","type":"","pageNumber":"1","pageSize":"15","sort":"createTime","order":"desc","startDate":"","endDate":""}', 'GET', '/zwz/file/getByCondition', 'admin', 2, 'FILE-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612991808273518592, NULL, '2023-01-11 09:56:30', 0, NULL, '2023-01-11 09:56:30', 51, '127.0.0.1', '本地测试', '查看单个配置', '{"id":"FILE_PATH"}', 'GET', '/zwz/setting/getOne', 'admin', 2, 'SETTING-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612991808898469888, NULL, '2023-01-11 09:56:30', 0, NULL, '2023-01-11 09:56:30', 86, '127.0.0.1', '本地测试', '查看单个配置', '{"id":"FILE_VIEW"}', 'GET', '/zwz/setting/getOne', 'admin', 2, 'SETTING-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612991808898469889, NULL, '2023-01-11 09:56:30', 0, NULL, '2023-01-11 09:56:30', 44, '127.0.0.1', '本地测试', '查看单个配置', '{"id":"FILE_HTTP"}', 'GET', '/zwz/setting/getOne', 'admin', 2, 'SETTING-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612991813541564419, NULL, '2023-01-11 09:56:31', 0, NULL, '2023-01-11 09:56:31', 46, '127.0.0.1', '本地测试', '查询角色', '{"pageNumber":"1","pageSize":"15","sort":"createTime","order":"desc"}', 'GET', '/zwz/role/getAllByPage', 'admin', 2, 'ROLE-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612991832206217219, NULL, '2023-01-11 09:56:35', 0, NULL, '2023-01-11 09:56:35', 48, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/permission_type', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612991836350189568, NULL, '2023-01-11 09:56:36', 0, NULL, '2023-01-11 09:56:36', 45, '127.0.0.1', '本地测试', '查询菜单权限拥有者', '{"permissionId":"5129710648430592"}', 'GET', '/zwz/permission/getUserByPermission', 'admin', 2, 'PERMISSION-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612991842595508224, NULL, '2023-01-11 09:56:38', 0, NULL, '2023-01-11 09:56:38', 68, '127.0.0.1', '本地测试', '查询日志', '{"logType":"1","pageNumber":"1","pageSize":"15","startDate":"","endDate":"","sort":"createTime","order":"desc","ipInfo":"","key":""}', 'GET', '/zwz/log/getAllByPage', 'admin', 2, 'LOG-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612991849264451587, NULL, '2023-01-11 09:56:40', 0, NULL, '2023-01-11 09:56:40', 42, '127.0.0.1', '本地测试', '查询日志', '{"logType":"2","pageNumber":"1","pageSize":"15","startDate":"","endDate":"","sort":"createTime","order":"desc","ipInfo":"","key":""}', 'GET', '/zwz/log/getAllByPage', 'admin', 2, 'LOG-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612991856910667779, NULL, '2023-01-11 09:56:41', 0, NULL, '2023-01-11 09:56:41', 46, '127.0.0.1', '本地测试', '查询日志', '{"logType":"3","pageNumber":"1","pageSize":"15","startDate":"","endDate":"","sort":"createTime","order":"desc","ipInfo":"","key":""}', 'GET', '/zwz/log/getAllByPage', 'admin', 2, 'LOG-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612991859473387520, NULL, '2023-01-11 09:56:42', 0, NULL, '2023-01-11 09:56:42', 45, '127.0.0.1', '本地测试', '查询日志', '{"logType":"1","pageNumber":"1","pageSize":"15","startDate":"","endDate":"","sort":"createTime","order":"desc","ipInfo":"","key":""}', 'GET', '/zwz/log/getAllByPage', 'admin', 2, 'LOG-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612991866729533440, NULL, '2023-01-11 09:56:44', 0, NULL, '2023-01-11 09:56:44', 56, '127.0.0.1', '本地测试', '查询所有数据字典', '{}', 'GET', '/zwz/dict/getAll', 'admin', 2, 'DICT-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612991867375456256, NULL, '2023-01-11 09:56:44', 0, NULL, '2023-01-11 09:56:44', 49, '127.0.0.1', '本地测试', '查询数据字典值', '{"name":"","status":"","pageNumber":"1","pageSize":"10","sort":"sortOrder","order":"asc"}', 'GET', '/zwz/dictData/getByCondition', 'admin', 2, 'DICT_DATA-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612991881254408192, NULL, '2023-01-11 09:56:47', 0, NULL, '2023-01-11 09:56:47', 46, '127.0.0.1', '本地测试', '查询个人门户菜单B', '{}', 'POST', '/zwz/myDoor/getMyDoorList6', 'admin', 2, 'MY-DOOR-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612993371423510528, NULL, '2023-01-11 10:02:42', 0, NULL, '2023-01-11 10:02:42', 52, '127.0.0.1', '本地测试', '登录系统', '{"username":"admin","password":"","code":"1121","captchaId":"ec373a17f3e14a469fec66b2c75c33ed","saveLogin":"true"}', 'POST', '/zwz/login', 'admin', 1, '', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612993372849573888, NULL, '2023-01-11 10:02:43', 0, NULL, '2023-01-11 10:02:43', 33, '127.0.0.1', '本地测试', '获取当前登录用户', '{}', 'GET', '/zwz/user/info', 'admin', 2, 'USER-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612993373969453056, NULL, '2023-01-11 10:02:43', 0, NULL, '2023-01-11 10:02:43', 31, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612993377446531072, NULL, '2023-01-11 10:02:44', 0, NULL, '2023-01-11 10:02:44', 23, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612993377673023490, NULL, '2023-01-11 10:02:44', 0, NULL, '2023-01-11 10:02:44', 24, '127.0.0.1', '本地测试', '查询个人门户菜单B', '{}', 'POST', '/zwz/myDoor/getMyDoorList6', 'admin', 2, 'MY-DOOR-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612993467259162624, NULL, '2023-01-11 10:03:05', 0, NULL, '2023-01-11 10:03:05', 54, '127.0.0.1', '本地测试', '登录系统', '{"username":"user4","password":"","code":"4252","captchaId":"a2518bba570f4b8c8960970939f290ff","saveLogin":"true"}', 'POST', '/zwz/login', 'user4', 1, '', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612993467301105664, NULL, '2023-01-11 10:03:05', 0, NULL, '2023-01-11 10:03:05', 63, '127.0.0.1', '本地测试', '获取当前登录用户', '{}', 'GET', '/zwz/user/info', 'user4', 2, 'USER-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612993469003993088, NULL, '2023-01-11 10:03:06', 0, NULL, '2023-01-11 10:03:06', 29, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'user4', 2, 'PERMISSION-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612993473215074304, NULL, '2023-01-11 10:03:07', 0, NULL, '2023-01-11 10:03:07', 27, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'user4', 2, 'PERMISSION-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612993473579978752, NULL, '2023-01-11 10:03:07', 0, NULL, '2023-01-11 10:03:07', 33, '127.0.0.1', '本地测试', '查询个人门户菜单B', '{}', 'POST', '/zwz/myDoor/getMyDoorList6', 'user4', 2, 'MY-DOOR-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612994120618479616, NULL, '2023-01-11 10:05:41', 0, NULL, '2023-01-11 10:05:41', 47, '127.0.0.1', '本地测试', '登录系统', '{"username":"admin","password":"","code":"2430","captchaId":"3c9609219d2e40be8cbac3e992d7c186","saveLogin":"true"}', 'POST', '/zwz/login', 'admin', 1, '', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612994120656228352, NULL, '2023-01-11 10:05:41', 0, NULL, '2023-01-11 10:05:41', 65, '127.0.0.1', '本地测试', '获取当前登录用户', '{}', 'GET', '/zwz/user/info', 'admin', 2, 'USER-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612994122329755648, NULL, '2023-01-11 10:05:41', 0, NULL, '2023-01-11 10:05:41', 29, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612994122837266432, NULL, '2023-01-11 10:05:42', 0, NULL, '2023-01-11 10:05:42', 31, '127.0.0.1', '本地测试', '查询个人门户菜单B', '{}', 'POST', '/zwz/myDoor/getMyDoorList6', 'admin', 2, 'MY-DOOR-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612994124980555776, NULL, '2023-01-11 10:05:42', 0, NULL, '2023-01-11 10:05:42', 26, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612994125211242496, NULL, '2023-01-11 10:05:42', 0, NULL, '2023-01-11 10:05:42', 28, '127.0.0.1', '本地测试', '查询个人门户菜单B', '{}', 'POST', '/zwz/myDoor/getMyDoorList6', 'admin', 2, 'MY-DOOR-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612994515159879680, NULL, '2023-01-11 10:07:15', 0, NULL, '2023-01-11 10:07:15', 64, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/sex', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612994579563417600, NULL, '2023-01-11 10:07:30', 0, NULL, '2023-01-11 10:07:30', 66, '127.0.0.1', '本地测试', '查询系统文件', '{"name":"","fkey":"","type":"","pageNumber":"1","pageSize":"15","sort":"createTime","order":"desc","startDate":"","endDate":""}', 'GET', '/zwz/file/getByCondition', 'admin', 2, 'FILE-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612994580855263235, NULL, '2023-01-11 10:07:31', 0, NULL, '2023-01-11 10:07:31', 61, '127.0.0.1', '本地测试', '查看单个配置', '{"id":"FILE_HTTP"}', 'GET', '/zwz/setting/getOne', 'admin', 2, 'SETTING-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612994580855263236, NULL, '2023-01-11 10:07:31', 0, NULL, '2023-01-11 10:07:31', 53, '127.0.0.1', '本地测试', '查看单个配置', '{"id":"FILE_VIEW"}', 'GET', '/zwz/setting/getOne', 'admin', 2, 'SETTING-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612994580855263237, NULL, '2023-01-11 10:07:31', 0, NULL, '2023-01-11 10:07:31', 22, '127.0.0.1', '本地测试', '查看单个配置', '{"id":"FILE_PATH"}', 'GET', '/zwz/setting/getOne', 'admin', 2, 'SETTING-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612994632885604353, NULL, '2023-01-11 10:07:43', 0, NULL, '2023-01-11 10:07:43', 62, '127.0.0.1', '本地测试', '查询日志', '{"logType":"1","pageNumber":"1","pageSize":"15","startDate":"","endDate":"","sort":"createTime","order":"desc","ipInfo":"","key":""}', 'GET', '/zwz/log/getAllByPage', 'admin', 2, 'LOG-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612994680964911104, NULL, '2023-01-11 10:07:55', 0, NULL, '2023-01-11 10:07:55', 85, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', 'admin', 2, 'DEP-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612994681233346561, NULL, '2023-01-11 10:07:55', 0, NULL, '2023-01-11 10:07:55', 82, '127.0.0.1', '本地测试', '查询全部角色', '{}', 'GET', '/zwz/role/getAllList', 'admin', 2, 'ROLE-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612994681237540864, NULL, '2023-01-11 10:07:55', 0, NULL, '2023-01-11 10:07:55', 86, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/sex', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612994682311282688, NULL, '2023-01-11 10:07:55', 0, NULL, '2023-01-11 10:07:55', 55, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', 'admin', 2, 'DEP-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612994682357420032, NULL, '2023-01-11 10:07:55', 0, NULL, '2023-01-11 10:07:55', 56, '127.0.0.1', '本地测试', '查询用户', '{"nickname":"","departmentId":"","pageNumber":"1","pageSize":"20","sort":"createTime","order":"desc"}', 'GET', '/zwz/user/getUserList', 'admin', 2, 'USER-07', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016');

DROP TABLE IF EXISTS `a_message_board`;
CREATE TABLE IF NOT EXISTS `a_message_board` (
  `id` varchar(255) COLLATE utf8_croatian_ci NOT NULL,
  `create_by` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `del_flag` int NOT NULL,
  `update_by` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `content` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `date` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `reply_id` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `user_name` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_croatian_ci;

DELETE FROM `a_message_board`;
INSERT INTO `a_message_board` (`id`, `create_by`, `create_time`, `del_flag`, `update_by`, `update_time`, `content`, `date`, `reply_id`, `user_id`, `user_name`) VALUES
	('1612989418950496256', 'admin', '2023-01-11 09:47:00.040000', 0, NULL, NULL, '我毕业了哈哈哈哈哈哈哈哈！', '2023-01-11 9:47:00', '', '682265633886208', '管理员'),
	('1612989455587741696', 'admin', '2023-01-11 09:47:08.766000', 0, NULL, NULL, '我毕业了哈哈哈哈哈哈哈哈！！！！！！！！！！！！！', '2023-01-11 9:47:08', '', '682265633886208', '管理员'),
	('1612989763885862912', '17859654121', '2023-01-11 09:48:22.269000', 0, NULL, NULL, '测试啊啊啊', '2023-01-11 9:48:22', '', '1464772465946398721', '测试2'),
	('1612989779098603520', '17859654121', '2023-01-11 09:48:25.896000', 0, NULL, NULL, '111', '2023-01-11 9:48:25', '1612989455587741696', '1464772465946398721', '测试2'),
	('1612991402533326848', 'user4', '2023-01-11 09:54:52.953000', 0, NULL, NULL, '1111', '2023-01-11 9:54:52', '', '1527830053524738048', 'user4'),
	('1612991527934627841', 'admin', '2023-01-11 09:55:22.851000', 0, NULL, NULL, '666', '2023-01-11 9:55:22', '1612991419633504256', '682265633886208', '管理员');

DROP TABLE IF EXISTS `a_permission`;
CREATE TABLE IF NOT EXISTS `a_permission` (
  `id` bigint unsigned NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` tinyint(1) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `parent_id` bigint unsigned DEFAULT NULL,
  `type` tinyint(1) DEFAULT NULL,
  `sort_order` decimal(10,2) DEFAULT NULL,
  `component` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `level` int unsigned DEFAULT NULL,
  `button_type` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `show_always` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

DELETE FROM `a_permission`;
INSERT INTO `a_permission` (`id`, `create_by`, `create_time`, `del_flag`, `update_by`, `update_time`, `description`, `name`, `parent_id`, `type`, `sort_order`, `component`, `path`, `title`, `icon`, `level`, `button_type`, `status`, `show_always`) VALUES
	(5129710648430592, '', '2022-03-20 09:46:20', 0, 'admin', '2022-05-29 13:05:28', '', 'roleMenu', 125909152017944576, 0, 4.00, 'Main', '/roleMenu', '权限管理', 'md-desktop', 1, '', 0, b'1'),
	(5129710648430593, '', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', 'user-admin', 1464484663442673664, 0, 1.10, 'roster/user/user', 'user', '用户管理', 'md-person', 2, '', 0, b'1'),
	(5129710648430594, '', '2022-03-20 09:46:20', 0, 'admin', '2022-06-14 11:23:18', '', 'role-manage', 5129710648430592, 0, 1.00, 'role/role/index', 'role', '角色支持', 'md-contacts', 2, '', 0, b'1'),
	(5129710648430595, '', '2022-03-20 09:46:20', 0, 'admin', '2022-06-14 11:23:13', '', 'menu-manage', 5129710648430592, 0, 2.00, 'menu/menu/index', 'menu', '菜单支持', 'md-menu', 2, '', 0, b'1'),
	(39915540965232640, '', '2022-03-20 09:46:20', 0, 'admin', '2022-06-10 15:45:37', '', 'monitor', 125909152017944576, 0, 6.00, 'Main', '/monitor', '日志管理', 'ios-analytics', 1, '', 0, b'1'),
	(40238597734928384, '', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', 'department-admin', 1464485105081913345, 0, 1.20, 'roster/department/department', 'department-admin', '部门管理', 'md-git-branch', 2, '', 0, b'1'),
	(41363147411427328, '', '2022-03-20 09:46:20', 0, 'admin', '2022-05-21 14:15:44', '', 'log-manage', 39915540965232640, 0, 2.20, 'log/log/index', 'log', '日志管理', 'md-list-box', 2, '', 0, b'1'),
	(56309618086776832, '', '2022-03-20 09:46:20', 0, 'admin', '2022-05-29 07:18:02', '', 'file-admin', 1464485485316542465, 0, 1.00, 'file/file/index', 'file', '云盘', 'ios-folder', 2, '', 0, b'1'),
	(125909152017944576, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2023-01-11 09:40:03', '', 'zwz', 0, -1, 1.00, '', '', '毕业生追踪', 'md-home', 0, '', 0, b'1'),
	(1464484663442673664, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', 'userTwoMenu', 125909152017944576, 0, 1.00, 'Main', '/userTwoMenu', '用户管理', 'md-analytics', 1, '', 0, b'1'),
	(1464485105081913345, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', NULL, 'depTwoMenu', 125909152017944576, 0, 2.00, 'Main', '/depTwoMenu', '部门管理', 'ios-apps', 1, '', 0, b'1'),
	(1464485485316542465, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-05-21 14:13:42', '', 'fileAdmin', 125909152017944576, 0, 3.00, 'Main', '/fileAdmin', '文件管理', 'md-basketball', 1, '', 0, b'1'),
	(1530689520276738048, 'admin', '2022-05-29 07:16:35', 0, NULL, NULL, NULL, 'dictMenu', 125909152017944576, 0, 5.00, 'Main', '/dictMenu', '数据字典', 'ios-apps', 1, '', 0, b'1'),
	(1530689602321518592, 'admin', '2022-05-29 07:16:55', 0, NULL, NULL, NULL, 'dict', 1530689520276738048, 0, 1.00, 'dict/dict/index', 'dict', '数据字典', 'ios-apps', 2, '', 0, b'1'),
	(1535166254703316992, 'admin', '2022-06-10 15:45:32', 0, NULL, NULL, NULL, 'codeCreate', 125909152017944576, 0, 7.00, 'Main', '/codeCreate', '代码生成', 'ios-brush', 1, '', 0, b'1'),
	(1535166438371889152, 'admin', '2022-06-10 15:46:16', 0, NULL, NULL, NULL, 'vue', 1535166254703316992, 0, 1.00, 'code/vue/index', 'vue', '前端表格', 'md-bug', 2, '', 0, b'1'),
	(1536599942410407936, 'admin', '2022-06-14 14:42:30', 0, 'admin', '2023-01-11 09:40:09', '', 'demo', 0, -1, 2.00, '', '', '二次开发', 'md-bulb', 0, '', 0, NULL),
	(1536600125332393984, 'admin', '2022-06-14 14:43:13', 0, 'admin', '2022-06-14 15:10:31', '', 'tableDemo', 1536599942410407936, 0, 1.00, 'Main', '/tableDemo', '数据展示', 'ios-apps', 1, '', 0, NULL),
	(1536600268379131904, 'admin', '2022-06-14 14:43:47', 0, NULL, NULL, NULL, 'demo1', 1536600125332393984, 0, 1.00, 'demo/demo1/index', 'demo1', '代码生成样例', 'md-finger-print', 2, '', 0, NULL),
	(1536604417711804416, 'admin', '2022-06-14 15:00:17', 0, 'admin', '2022-06-14 15:31:57', '', 'demo2', 1536600125332393984, 0, 2.00, 'demo/demo2/index', 'demo2', '复杂表格样例', 'md-archive', 2, '', 0, NULL),
	(1536606273959759872, 'admin', '2022-06-14 15:07:39', 0, 'admin', '2022-06-14 15:10:23', '', 'antv', 1536599942410407936, 0, 2.00, 'Main', '/antv', '图表展示', 'ios-pulse', 1, '', 0, NULL),
	(1536606372668510208, 'admin', '2022-06-14 15:08:03', 0, NULL, NULL, NULL, 'antv1', 1536606273959759872, 0, 1.00, 'demo/antv1/index', 'antv1', '条形图', 'md-pricetags', 2, '', 0, NULL),
	(1536606464712511488, 'admin', '2022-06-14 15:08:25', 0, NULL, NULL, NULL, 'antv2', 1536606273959759872, 0, 2.00, 'demo/antv2/index', 'antv2', '饼图', 'md-radio-button-off', 2, '', 0, NULL),
	(1536606550951596032, 'admin', '2022-06-14 15:08:45', 0, NULL, NULL, NULL, 'antv3', 1536606273959759872, 0, 3.00, 'demo/antv3/index', 'antv3', '折线图', 'ios-nutrition', 2, '', 0, NULL),
	(1536606637815631872, 'admin', '2022-06-14 15:09:06', 0, NULL, NULL, NULL, 'antv4', 1536606273959759872, 0, 4.00, 'demo/antv4/index', 'antv4', '柱状图', 'ios-phone-portrait', 2, '', 0, NULL),
	(1536875505901506560, 'admin', '2022-06-15 08:57:29', 0, 'admin', '2022-06-15 09:01:01', '', 'antvActive', 1536606273959759872, 0, 5.00, 'demo/antvActive/index', 'antvActive', '动态图表样例', 'ios-apps', 2, '', 0, NULL),
	(1612987901161902080, 'admin', '2023-01-11 09:40:58', 0, NULL, NULL, NULL, 'emStu', 125909152017944576, 0, 8.00, 'Main', '/emStu', '学生界面', 'ios-apps', 1, '', 0, NULL),
	(1612987972951609344, 'admin', '2023-01-11 09:41:15', 0, NULL, NULL, NULL, 'worker', 125909152017944576, 0, 9.00, 'Main', '/worker', '工作人员界面', 'ios-apps', 1, '', 0, NULL),
	(1612988041704640512, 'admin', '2023-01-11 09:41:32', 0, NULL, NULL, NULL, 'myEmploymentStatus', 1612987901161902080, 0, 1.00, 'emp/myEmploymentStatus/index', 'myEmploymentStatus', '我的毕业去向', 'md-aperture', 2, '', 0, NULL),
	(1612988110621249536, 'admin', '2023-01-11 09:41:48', 0, NULL, NULL, NULL, 'userBoard', 1612987901161902080, 0, 2.00, 'emp/userBoard/index', 'userBoard', '校友论坛', 'md-aperture', 2, '', 0, NULL),
	(1612988223401889792, 'admin', '2023-01-11 09:42:15', 0, NULL, NULL, NULL, 'employmentStatus', 1612987972951609344, 0, 1.00, 'emp/employmentStatus/index', 'employmentStatus', '毕业去向统计', 'md-aperture', 2, '', 0, NULL),
	(1612988281417502720, 'admin', '2023-01-11 09:42:29', 0, NULL, NULL, NULL, 'employmentSheng', 1612987972951609344, 0, 2.00, 'emp/employmentSheng/index', 'employmentSheng', '学历深造', 'md-aperture', 2, '', 0, NULL),
	(1612988348316651520, 'admin', '2023-01-11 09:42:45', 0, NULL, NULL, NULL, 'messageBoard', 1612987972951609344, 0, 3.00, 'emp/messageBoard/index', 'messageBoard', '校友论坛管理', 'md-aperture', 2, '', 0, NULL),
	(1612988405057196032, 'admin', '2023-01-11 09:42:58', 0, NULL, NULL, NULL, 'honor', 1612987972951609344, 0, 4.00, 'emp/honor/index', 'honor', '学生荣誉', 'md-aperture', 2, '', 0, NULL),
	(1612988460556226560, 'admin', '2023-01-11 09:43:12', 0, NULL, NULL, NULL, 'certificate', 1612987972951609344, 0, 5.00, 'emp/certificate/index', 'certificate', '学生证书', 'md-aperture', 2, '', 0, NULL);

DROP TABLE IF EXISTS `a_role`;
CREATE TABLE IF NOT EXISTS `a_role` (
  `id` bigint unsigned NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `del_flag` tinyint(1) DEFAULT NULL,
  `default_role` bit(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `data_type` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

DELETE FROM `a_role`;
INSERT INTO `a_role` (`id`, `create_by`, `create_time`, `update_by`, `update_time`, `name`, `del_flag`, `default_role`, `description`, `data_type`) VALUES
	(496138616573952, '', '2022-03-20 09:46:20', 'admin', '2023-01-11 09:44:11', 'ROLE_ADMIN', 0, NULL, '工作人员', 0),
	(496138616573953, '', '2022-03-20 09:46:20', 'admin', '2023-01-11 09:44:06', 'ROLE_USER', 0, b'1', '学生', 0);

DROP TABLE IF EXISTS `a_role_permission`;
CREATE TABLE IF NOT EXISTS `a_role_permission` (
  `id` bigint unsigned NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` tinyint(1) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `permission_id` bigint unsigned DEFAULT NULL,
  `role_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

DELETE FROM `a_role_permission`;
INSERT INTO `a_role_permission` (`id`, `create_by`, `create_time`, `del_flag`, `update_by`, `update_time`, `permission_id`, `role_id`) VALUES
	(1464514325862551552, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 125909152017944576, 496138616573952),
	(1464514325862551553, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 1464484663442673664, 496138616573952),
	(1464514325862551554, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 5129710648430593, 496138616573952),
	(1464514325862551563, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 1464485105081913345, 496138616573952),
	(1464514325862551564, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 40238597734928384, 496138616573952),
	(1464514325862551568, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 1464485485316542465, 496138616573952),
	(1464514325862551569, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 56309618086776832, 496138616573952),
	(1464514325862551583, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 5129710648430592, 496138616573952),
	(1464514325862551584, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 5129710648430594, 496138616573952),
	(1464514325862551590, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 5129710648430595, 496138616573952),
	(1464514325862551594, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 39915540965232640, 496138616573952),
	(1464514325862551595, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 41363147411427328, 496138616573952),
	(1530689746903371801, 'admin', '2022-05-29 07:17:29', 0, NULL, NULL, 1530689520276738048, 496138616573952),
	(1530689747004035072, 'admin', '2022-05-29 07:17:29', 0, NULL, NULL, 1530689602321518592, 496138616573952),
	(1535166468671541252, 'admin', '2022-06-10 15:46:23', 0, NULL, NULL, 1535166254703316992, 496138616573952),
	(1535166468684124160, 'admin', '2022-06-10 15:46:23', 0, NULL, NULL, 1535166438371889152, 496138616573952),
	(1536600292156641281, 'admin', '2022-06-14 14:43:53', 0, NULL, NULL, 1536599942410407936, 496138616573952),
	(1536600292173418496, 'admin', '2022-06-14 14:43:53', 0, NULL, NULL, 1536600125332393984, 496138616573952),
	(1536600292186001408, 'admin', '2022-06-14 14:43:53', 0, NULL, NULL, 1536600268379131904, 496138616573952),
	(1536604439178252292, 'admin', '2022-06-14 15:00:22', 0, NULL, NULL, 1536604417711804416, 496138616573952),
	(1536606659718287364, 'admin', '2022-06-14 15:09:11', 0, NULL, NULL, 1536606273959759872, 496138616573952),
	(1536606659730870272, 'admin', '2022-06-14 15:09:11', 0, NULL, NULL, 1536606372668510208, 496138616573952),
	(1536606659735064576, 'admin', '2022-06-14 15:09:11', 0, NULL, NULL, 1536606464712511488, 496138616573952),
	(1536606659743453184, 'admin', '2022-06-14 15:09:11', 0, NULL, NULL, 1536606550951596032, 496138616573952),
	(1536606659751841792, 'admin', '2022-06-14 15:09:11', 0, NULL, NULL, 1536606637815631872, 496138616573952),
	(1536875525769924610, 'admin', '2022-06-15 08:57:34', 0, NULL, NULL, 1536875505901506560, 496138616573952),
	(1612988744653213696, 'admin', '2023-01-11 09:44:19', 0, NULL, NULL, 1612987972951609344, 496138616573952),
	(1612988744665796608, 'admin', '2023-01-11 09:44:19', 0, NULL, NULL, 1612988223401889792, 496138616573952),
	(1612988744674185216, 'admin', '2023-01-11 09:44:19', 0, NULL, NULL, 1612988281417502720, 496138616573952),
	(1612988744682573824, 'admin', '2023-01-11 09:44:19', 0, NULL, NULL, 1612988348316651520, 496138616573952),
	(1612988744686768128, 'admin', '2023-01-11 09:44:19', 0, NULL, NULL, 1612988405057196032, 496138616573952),
	(1612988744695156736, 'admin', '2023-01-11 09:44:19', 0, NULL, NULL, 1612988460556226560, 496138616573952),
	(1612988770687258624, 'admin', '2023-01-11 09:44:25', 0, NULL, NULL, 125909152017944576, 496138616573953),
	(1612988770695647232, 'admin', '2023-01-11 09:44:25', 0, NULL, NULL, 1612987901161902080, 496138616573953),
	(1612988770704035840, 'admin', '2023-01-11 09:44:25', 0, NULL, NULL, 1612988041704640512, 496138616573953),
	(1612988770708230144, 'admin', '2023-01-11 09:44:25', 0, NULL, NULL, 1612988110621249536, 496138616573953);

DROP TABLE IF EXISTS `a_setting`;
CREATE TABLE IF NOT EXISTS `a_setting` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` tinyint(1) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `value` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

DELETE FROM `a_setting`;
INSERT INTO `a_setting` (`id`, `create_by`, `create_time`, `del_flag`, `update_by`, `update_time`, `value`) VALUES
	('FILE_HTTP', NULL, NULL, 0, 'admin', '2022-05-28 15:57:20', 'http://'),
	('FILE_PATH', NULL, NULL, 0, 'admin', '2022-05-28 15:57:19', 'C:\\\\oa-file'),
	('FILE_VIEW', NULL, NULL, 0, 'admin', '2022-05-28 15:57:20', '127.0.0.1:8080/zwz/file/view'),
	('LOCAL_OSS', 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '{"serviceName":"LOCAL_OSS","endpoint":"127.0.0.1:8080/zwz/file/view","http":"http://","filePath":"C:\\\\oa-file"}'),
	('OSS_USED', 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 'LOCAL_OSS');

DROP TABLE IF EXISTS `a_student`;
CREATE TABLE IF NOT EXISTS `a_student` (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `del_flag` int NOT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `number` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `school` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `age` decimal(19,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_croatian_ci;

DELETE FROM `a_student`;
INSERT INTO `a_student` (`id`, `create_by`, `create_time`, `del_flag`, `update_by`, `update_time`, `name`, `number`, `school`, `sex`, `age`) VALUES
	('1536601255475023872', 'admin', '2022-06-14 14:47:42.637000', 0, NULL, NULL, '张三', '001', '北京大学', '男', 18.00),
	('1536601308352614400', 'admin', '2022-06-14 14:47:55.244000', 0, NULL, NULL, '李四', '002', '清华大学', '女', 19.00),
	('1536601388044390400', 'admin', '2022-06-14 14:48:14.243000', 0, NULL, NULL, '王五', '003', '浙江大学', '男', 20.00),
	('1536601469879455744', 'admin', '2022-06-14 14:48:33.753000', 0, NULL, NULL, '赵六', '004', '宁波大学', '保密', 21.00);

DROP TABLE IF EXISTS `a_teacher`;
CREATE TABLE IF NOT EXISTS `a_teacher` (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `del_flag` int NOT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `age` decimal(19,2) DEFAULT NULL,
  `autograph` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `education` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `graduated` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `wages` decimal(19,2) DEFAULT NULL,
  `resume` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_croatian_ci;

DELETE FROM `a_teacher`;
INSERT INTO `a_teacher` (`id`, `create_by`, `create_time`, `del_flag`, `update_by`, `update_time`, `age`, `autograph`, `education`, `graduated`, `name`, `remark`, `status`, `wages`, `resume`) VALUES
	('1536614275123122176', 'admin', '2022-06-14 15:39:26.000000', 0, 'admin', '2022-06-14 15:41:09.841000', 30.00, 'http://127.0.0.1:8080/zwz/file/view/1536614206311370752', '博士', '同济大学', '张三', '测试', '在职', 9960.00, 'http://127.0.0.1:8080/zwz/file/view/1536614698903015424'),
	('1536614275123122177', 'admin', '2022-06-14 15:39:26.000000', 0, 'admin', '2022-06-14 15:41:09.841000', 30.00, 'http://127.0.0.1:8080/zwz/file/view/1536614206311370752', '本科', '同济大学', '李四', '测试', '在职', 7778.00, 'http://127.0.0.1:8080/zwz/file/view/1536614698903015424'),
	('1536614275123122178', 'admin', '2022-06-14 15:39:26.000000', 0, 'admin', '2022-06-14 15:41:09.841000', 30.00, 'http://127.0.0.1:8080/zwz/file/view/1536614206311370752', '硕士', '同济大学', '王五', '测试', '在职', 8889.00, 'http://127.0.0.1:8080/zwz/file/view/1536614698903015424'),
	('1536614275123122179', 'admin', '2022-06-14 15:39:26.000000', 0, 'admin', '2022-06-14 15:41:09.841000', 30.00, 'http://127.0.0.1:8080/zwz/file/view/1536614206311370752', '硕士', '同济大学', '赵六', '测试', '在职', 4445.00, 'http://127.0.0.1:8080/zwz/file/view/1536614698903015424'),
	('1536614275123122180', 'admin', '2022-06-14 15:39:26.000000', 0, 'admin', '2022-06-14 15:41:09.841000', 30.00, 'http://127.0.0.1:8080/zwz/file/view/1536614206311370752', '专科', '同济大学', '郑七', '测试', '在职', 1118.00, 'http://127.0.0.1:8080/zwz/file/view/1536614698903015424'),
	('1536614275123122181', 'admin', '2022-06-14 15:39:26.000000', 0, 'admin', '2022-06-14 15:41:09.841000', 30.00, 'http://127.0.0.1:8080/zwz/file/view/1536614206311370752', '专科', '同济大学', '龚八', '测试', '在职', 3337.00, 'http://127.0.0.1:8080/zwz/file/view/1536614698903015424');

DROP TABLE IF EXISTS `a_user`;
CREATE TABLE IF NOT EXISTS `a_user` (
  `id` bigint unsigned NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `status` int DEFAULT NULL,
  `type` int DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `del_flag` tinyint(1) DEFAULT NULL,
  `department_id` bigint unsigned DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `pass_strength` varchar(2) DEFAULT NULL,
  `department_title` varchar(255) DEFAULT NULL,
  `birth` datetime(6) DEFAULT NULL,
  `my_door` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`) USING BTREE,
  UNIQUE KEY `email` (`email`) USING BTREE,
  UNIQUE KEY `mobile` (`mobile`) USING BTREE,
  KEY `create_time` (`create_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

DELETE FROM `a_user`;
INSERT INTO `a_user` (`id`, `create_by`, `create_time`, `update_by`, `update_time`, `address`, `avatar`, `description`, `email`, `mobile`, `nickname`, `password`, `sex`, `status`, `type`, `username`, `del_flag`, `department_id`, `street`, `pass_strength`, `department_title`, `birth`, `my_door`) VALUES
	(682265633886208, '', '2022-03-20 09:46:20', 'admin', '2023-01-11 09:53:13', '["330000","330600","330602"]', 'https://wx.qlogo.cn/mmhead/PiajxSqBRaEKjc639z2lRF4DqweNw2aDRLbAL7yLlSgrdZeKBCwLHDQ/0', '北大', '916077357@qq.com', '17857054388', '管理员', '$2a$10$PS04ecXfknNd3V8d.ymLTObQciapMU4xU8.GADBZZsuTZr7ymnagy', '男', 0, 1, 'admin', 0, 1464487379074158593, '东西街道2', '弱', '设计研发部', '2000-01-08 00:00:00.000000', 'employmentStatusZWZ666employmentShengZWZ666messageBoardZWZ666honorZWZ666certificateZWZ666user-admin'),
	(1464764315201572865, '', '2022-03-20 09:46:20', 'admin', '2023-01-11 09:56:26', '', 'https://wx.qlogo.cn/mmhead/PiajxSqBRaEKjc639z2lRF4DqweNw2aDRLbAL7yLlSgrdZeKBCwLHDQ/0', '', '17859654125@qq.com', '17859654125', '测试', '$2a$10$E59nactOiILAzQvfcs0JFOYuZp06d4bLhugEadyQuygpmiLc0W.ha', '', 0, 0, '17859654125', 0, 1464487332064399361, '', '', '行政综合部', NULL, NULL),
	(1464772465946398721, '', '2022-03-20 09:46:20', 'admin', '2022-05-21 09:53:33', '["110000","110100","110105"]', 'https://wx.qlogo.cn/mmhead/PiajxSqBRaEKjc639z2lRF4DqweNw2aDRLbAL7yLlSgrdZeKBCwLHDQ/0', '', '17859654121@qq.com', '17859654121', '测试2', '$2a$10$vJyLo1RhFORH/SAu3sc9aeb37I5JRy5UugaN7fIt/e2vvsz6JWJCm', '', 0, 0, '17859654121', 0, 1464487432169852929, '', '', '综合发展部', NULL, ''),
	(1527830053524738048, 'admin', '2022-05-21 09:54:05', 'user4', '2023-01-11 09:53:29', '["110000","110100","110106"]', 'https://wx.qlogo.cn/mmhead/PiajxSqBRaEKjc639z2lRF4DqweNw2aDRLbAL7yLlSgrdZeKBCwLHDQ/0', NULL, 'user4@qq.com', '17896525487', 'user4', '$2a$10$oeP4aplYnswfQ44pK6lAO.Np9BuPYJGRwo17THO7CUNlIQoVGsPmy', '男', 0, 0, 'user4', 0, 1464487332064399361, NULL, '弱', '行政综合部', NULL, 'myEmploymentStatusZWZ666userBoard');

DROP TABLE IF EXISTS `a_user_role`;
CREATE TABLE IF NOT EXISTS `a_user_role` (
  `id` bigint unsigned NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` tinyint(1) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `role_id` bigint unsigned DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

DELETE FROM `a_user_role`;
INSERT INTO `a_user_role` (`id`, `create_by`, `create_time`, `del_flag`, `update_by`, `update_time`, `role_id`, `user_id`) VALUES
	(1464487931975700480, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 496138616573952, 682265633886208),
	(1486220872917323776, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 496138616573953, 1464764315201572865),
	(1526802492967489537, NULL, '2022-05-18 13:50:56', 0, NULL, NULL, 496138616573953, 1526802492443201536),
	(1526819095553642497, NULL, '2022-05-18 14:56:54', 0, NULL, NULL, 496138616573953, 1526819095159377920),
	(1527829917801254912, 'admin', '2022-05-21 09:53:33', 0, NULL, NULL, 496138616573953, 1464772465946398721),
	(1612988948064374784, 'admin', '2023-01-11 09:45:08', 0, NULL, NULL, 496138616573953, 1527830053524738048);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
