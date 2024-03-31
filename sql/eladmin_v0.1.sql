/*
 Navicat Premium Data Transfer

 Source Server         : 京东MySQL
 Source Server Type    : MySQL
 Source Server Version : 80300
 Source Host           : 117.72.46.231:3306
 Source Schema         : eladmin

 Target Server Type    : MySQL
 Target Server Version : 80300
 File Encoding         : 65001

 Date: 31/03/2024 12:40:02
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for code_column_config
-- ----------------------------
DROP TABLE IF EXISTS `code_column_config`;
CREATE TABLE `code_column_config`  (
  `column_id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `table_name` varchar(180) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `column_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `column_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `dict_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `extra` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `form_show` bit(1) NULL DEFAULT NULL,
  `form_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `key_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `list_show` bit(1) NULL DEFAULT NULL,
  `not_null` bit(1) NULL DEFAULT NULL,
  `query_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`column_id`) USING BTREE,
  INDEX `idx_table_name`(`table_name` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 216 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '代码生成字段信息存储' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of code_column_config
-- ----------------------------
INSERT INTO `code_column_config` VALUES (191, 'sys_user', 'user_id', 'bigint', NULL, 'auto_increment', b'1', NULL, 'PRI', b'1', b'0', NULL, 'ID');
INSERT INTO `code_column_config` VALUES (192, 'sys_user', 'dept_id', 'bigint', NULL, '', b'1', NULL, 'MUL', b'1', b'0', NULL, '部门名称');
INSERT INTO `code_column_config` VALUES (193, 'sys_user', 'username', 'varchar', NULL, '', b'1', NULL, 'UNI', b'1', b'0', NULL, '用户名');
INSERT INTO `code_column_config` VALUES (194, 'sys_user', 'nick_name', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '昵称');
INSERT INTO `code_column_config` VALUES (195, 'sys_user', 'gender', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '性别');
INSERT INTO `code_column_config` VALUES (196, 'sys_user', 'phone', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '手机号码');
INSERT INTO `code_column_config` VALUES (197, 'sys_user', 'email', 'varchar', NULL, '', b'1', NULL, 'UNI', b'1', b'0', NULL, '邮箱');
INSERT INTO `code_column_config` VALUES (198, 'sys_user', 'avatar_name', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '头像地址');
INSERT INTO `code_column_config` VALUES (199, 'sys_user', 'avatar_path', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '头像真实路径');
INSERT INTO `code_column_config` VALUES (200, 'sys_user', 'password', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '密码');
INSERT INTO `code_column_config` VALUES (201, 'sys_user', 'is_admin', 'bit', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '是否为admin账号');
INSERT INTO `code_column_config` VALUES (202, 'sys_user', 'enabled', 'bit', NULL, '', b'1', NULL, 'MUL', b'1', b'0', NULL, '状态：1启用、0禁用');
INSERT INTO `code_column_config` VALUES (203, 'sys_user', 'create_by', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '创建者');
INSERT INTO `code_column_config` VALUES (204, 'sys_user', 'update_by', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '更新者');
INSERT INTO `code_column_config` VALUES (205, 'sys_user', 'pwd_reset_time', 'datetime', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '修改密码的时间');
INSERT INTO `code_column_config` VALUES (206, 'sys_user', 'create_time', 'datetime', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '创建日期');
INSERT INTO `code_column_config` VALUES (207, 'sys_user', 'update_time', 'datetime', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '更新时间');
INSERT INTO `code_column_config` VALUES (208, 'tool_qiniu_content', 'content_id', 'bigint', NULL, 'auto_increment', b'1', NULL, 'PRI', b'1', b'0', NULL, 'ID');
INSERT INTO `code_column_config` VALUES (209, 'tool_qiniu_content', 'bucket', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, 'Bucket 识别符');
INSERT INTO `code_column_config` VALUES (210, 'tool_qiniu_content', 'name', 'varchar', NULL, '', b'1', NULL, 'UNI', b'1', b'0', NULL, '文件名称');
INSERT INTO `code_column_config` VALUES (211, 'tool_qiniu_content', 'size', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '文件大小');
INSERT INTO `code_column_config` VALUES (212, 'tool_qiniu_content', 'type', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '文件类型：私有或公开');
INSERT INTO `code_column_config` VALUES (213, 'tool_qiniu_content', 'url', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '文件url');
INSERT INTO `code_column_config` VALUES (214, 'tool_qiniu_content', 'suffix', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '文件后缀');
INSERT INTO `code_column_config` VALUES (215, 'tool_qiniu_content', 'update_time', 'datetime', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '上传或同步的时间');
INSERT INTO `code_column_config` VALUES (216, 'task_list', 'id', 'int', NULL, '', b'1', NULL, 'PRI', b'1', b'1', NULL, '');
INSERT INTO `code_column_config` VALUES (217, 'task_list', 'tag', 'varchar', NULL, '', b'1', NULL, '', b'1', b'1', NULL, '');
INSERT INTO `code_column_config` VALUES (218, 'task_list', 'content', 'varchar', NULL, '', b'1', NULL, '', b'1', b'1', NULL, '');
INSERT INTO `code_column_config` VALUES (219, 'task_list', 'money', 'int', NULL, '', b'1', NULL, '', b'1', b'1', NULL, '');
INSERT INTO `code_column_config` VALUES (220, 'task_list', 'description', 'varchar', NULL, '', b'1', NULL, '', b'1', b'1', NULL, '');
INSERT INTO `code_column_config` VALUES (221, 'task_list', 'main', 'tinyint', NULL, '', b'1', NULL, '', b'1', b'1', NULL, '');
INSERT INTO `code_column_config` VALUES (222, 'task_list', 'show', 'date', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '');
INSERT INTO `code_column_config` VALUES (223, 'task_list', 'cardshow', 'tinyint', NULL, '', b'1', NULL, '', b'1', b'1', NULL, '');

-- ----------------------------
-- Table structure for code_gen_config
-- ----------------------------
DROP TABLE IF EXISTS `code_gen_config`;
CREATE TABLE `code_gen_config`  (
  `config_id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '表名',
  `author` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '作者',
  `cover` bit(1) NULL DEFAULT NULL COMMENT '是否覆盖',
  `module_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '模块名称',
  `pack` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '至于哪个包下',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '前端代码生成的路径',
  `api_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '前端Api文件路径',
  `prefix` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '表前缀',
  `api_alias` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '接口名称',
  PRIMARY KEY (`config_id`) USING BTREE,
  INDEX `idx_table_name`(`table_name`(100) ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '代码生成器配置' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of code_gen_config
-- ----------------------------
INSERT INTO `code_gen_config` VALUES (7, 'task_list', 'hugo', b'1', 'freshmen-task', 'org.yuanshen', 'D:\\桌面\\ServerBackend\\eladmin-mp\\eladmin-web\\src\\views\\task_list', 'D:\\桌面\\ServerBackend\\eladmin-mp\\eladmin-web\\src\\api', NULL, 'task_api');

-- ----------------------------
-- Table structure for mnt_app
-- ----------------------------
DROP TABLE IF EXISTS `mnt_app`;
CREATE TABLE `mnt_app`  (
  `app_id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '应用名称',
  `upload_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '上传目录',
  `deploy_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '部署路径',
  `backup_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备份路径',
  `port` int NULL DEFAULT NULL COMMENT '应用端口',
  `start_script` varchar(4000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '启动脚本',
  `deploy_script` varchar(4000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '部署脚本',
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建者',
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '更新者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建日期',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`app_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '应用管理' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of mnt_app
-- ----------------------------

-- ----------------------------
-- Table structure for mnt_database
-- ----------------------------
DROP TABLE IF EXISTS `mnt_database`;
CREATE TABLE `mnt_database`  (
  `db_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '名称',
  `jdbc_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'jdbc连接',
  `user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '账号',
  `pwd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '密码',
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建者',
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '更新者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`db_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '数据库管理' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of mnt_database
-- ----------------------------

-- ----------------------------
-- Table structure for mnt_deploy
-- ----------------------------
DROP TABLE IF EXISTS `mnt_deploy`;
CREATE TABLE `mnt_deploy`  (
  `deploy_id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `app_id` bigint NULL DEFAULT NULL COMMENT '应用编号',
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建者',
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '更新者',
  `create_time` datetime NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`deploy_id`) USING BTREE,
  INDEX `FK6sy157pseoxx4fmcqr1vnvvhy`(`app_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '部署管理' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of mnt_deploy
-- ----------------------------

-- ----------------------------
-- Table structure for mnt_deploy_history
-- ----------------------------
DROP TABLE IF EXISTS `mnt_deploy_history`;
CREATE TABLE `mnt_deploy_history`  (
  `history_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'ID',
  `app_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '应用名称',
  `deploy_date` datetime NOT NULL COMMENT '部署日期',
  `deploy_user` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '部署用户',
  `ip` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '服务器IP',
  `deploy_id` bigint NULL DEFAULT NULL COMMENT '部署编号',
  PRIMARY KEY (`history_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '部署历史管理' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of mnt_deploy_history
-- ----------------------------

-- ----------------------------
-- Table structure for mnt_deploy_server
-- ----------------------------
DROP TABLE IF EXISTS `mnt_deploy_server`;
CREATE TABLE `mnt_deploy_server`  (
  `deploy_id` bigint NOT NULL COMMENT '部署ID',
  `server_id` bigint NOT NULL COMMENT '服务ID',
  PRIMARY KEY (`deploy_id`, `server_id`) USING BTREE,
  INDEX `FKeaaha7jew9a02b3bk9ghols53`(`server_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '应用与服务器关联' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of mnt_deploy_server
-- ----------------------------

-- ----------------------------
-- Table structure for mnt_server
-- ----------------------------
DROP TABLE IF EXISTS `mnt_server`;
CREATE TABLE `mnt_server`  (
  `server_id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `account` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '账号',
  `ip` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'IP地址',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '名称',
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '密码',
  `port` int NULL DEFAULT NULL COMMENT '端口',
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建者',
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '更新者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`server_id`) USING BTREE,
  INDEX `idx_ip`(`ip` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '服务器管理' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of mnt_server
-- ----------------------------

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `pid` bigint NULL DEFAULT NULL COMMENT '上级部门',
  `sub_count` int NULL DEFAULT 0 COMMENT '子部门数目',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '名称',
  `dept_sort` int NULL DEFAULT 999 COMMENT '排序',
  `enabled` bit(1) NOT NULL COMMENT '状态',
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建者',
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '更新者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建日期',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE,
  INDEX `inx_pid`(`pid` ASC) USING BTREE,
  INDEX `inx_enabled`(`enabled` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '部门' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (18, NULL, 0, '信息与软件工程学院', 0, b'1', 'admin', 'admin', '2024-03-30 17:41:14', '2024-03-30 17:41:14');
INSERT INTO `sys_dept` VALUES (19, NULL, 0, '计算机科学与工程学院', 1, b'1', 'admin', 'admin', '2024-03-30 17:41:32', '2024-03-30 17:41:32');
INSERT INTO `sys_dept` VALUES (20, NULL, 0, '信息与通信工程学院', 2, b'1', 'admin', 'admin', '2024-03-30 17:41:47', '2024-03-30 17:41:47');
INSERT INTO `sys_dept` VALUES (21, NULL, 0, '光电科学与工程学院', 3, b'1', 'admin', 'admin', '2024-03-31 12:22:35', '2024-03-31 12:22:35');
INSERT INTO `sys_dept` VALUES (22, NULL, 0, '外国语学院', 4, b'1', 'admin', 'admin', '2024-03-31 12:22:45', '2024-03-31 12:22:45');

-- ----------------------------
-- Table structure for sys_dict
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict`  (
  `dict_id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '字典名称',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '描述',
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建者',
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '更新者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建日期',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dict_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '数据字典' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
INSERT INTO `sys_dict` VALUES (1, 'user_status', '用户状态', NULL, NULL, '2019-10-27 20:31:36', NULL);
INSERT INTO `sys_dict` VALUES (4, 'dept_status', '学院状态', NULL, 'admin', '2019-10-27 20:31:36', '2024-03-31 12:24:26');
INSERT INTO `sys_dict` VALUES (5, 'job_status', '岗位状态', NULL, NULL, '2019-10-27 20:31:36', NULL);

-- ----------------------------
-- Table structure for sys_dict_detail
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_detail`;
CREATE TABLE `sys_dict_detail`  (
  `detail_id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `dict_id` bigint NULL DEFAULT NULL COMMENT '字典id',
  `label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '字典标签',
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '字典值',
  `dict_sort` int NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建者',
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '更新者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建日期',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`detail_id`) USING BTREE,
  INDEX `FK5tpkputc6d9nboxojdbgnpmyb`(`dict_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '数据字典详情' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of sys_dict_detail
-- ----------------------------
INSERT INTO `sys_dict_detail` VALUES (1, 1, '激活', 'true', 1, NULL, NULL, '2019-10-27 20:31:36', NULL);
INSERT INTO `sys_dict_detail` VALUES (2, 1, '禁用', 'false', 2, NULL, NULL, NULL, NULL);
INSERT INTO `sys_dict_detail` VALUES (3, 4, '启用', 'true', 1, NULL, NULL, NULL, NULL);
INSERT INTO `sys_dict_detail` VALUES (4, 4, '停用', 'false', 2, NULL, NULL, '2019-10-27 20:31:36', NULL);
INSERT INTO `sys_dict_detail` VALUES (5, 5, '启用', 'true', 1, NULL, NULL, NULL, NULL);
INSERT INTO `sys_dict_detail` VALUES (6, 5, '停用', 'false', 2, NULL, NULL, '2019-10-27 20:31:36', NULL);

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job`  (
  `job_id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(180) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '岗位名称',
  `enabled` bit(1) NOT NULL COMMENT '岗位状态',
  `job_sort` int NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建者',
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '更新者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建日期',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`job_id`) USING BTREE,
  UNIQUE INDEX `uniq_name`(`name` ASC) USING BTREE,
  INDEX `inx_enabled`(`enabled` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '岗位' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES (13, '老师', b'1', 0, 'admin', 'admin', '2024-03-30 17:43:01', '2024-03-30 17:43:01');
INSERT INTO `sys_job` VALUES (14, '学生', b'1', 1, 'admin', 'admin', '2024-03-30 17:43:08', '2024-03-30 17:43:08');
INSERT INTO `sys_job` VALUES (15, '管理员', b'1', 2, 'admin', 'admin', '2024-03-30 17:43:18', '2024-03-30 17:43:18');

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log`  (
  `log_id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `log_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `params` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `request_ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `time` bigint NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `browser` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `exception_detail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `create_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`log_id`) USING BTREE,
  INDEX `log_create_time_index`(`create_time` ASC) USING BTREE,
  INDEX `inx_log_type`(`log_type` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3568 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '系统日志' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES (3537, '用户登录', 'INFO', 'me.zhengjie.modules.security.rest.AuthorizationController.login()', '{\"username\":\"admin\"}', '192.168.137.1', 1680, 'admin', '内网IP', 'Chrome 123', NULL, '2024-03-30 17:39:56');
INSERT INTO `sys_log` VALUES (3538, '新增部门', 'INFO', 'me.zhengjie.modules.system.rest.DeptController.createDept()', '{\"createBy\":\"admin\",\"createTime\":1711791674409,\"deptSort\":0,\"enabled\":true,\"hasChildren\":false,\"id\":18,\"label\":\"信息与软件工程学院\",\"leaf\":true,\"name\":\"信息与软件工程学院\",\"subCount\":0,\"updateBy\":\"admin\",\"updateTime\":1711791674409}', '192.168.137.1', 818, 'admin', '内网IP', 'Chrome 123', NULL, '2024-03-30 17:41:15');
INSERT INTO `sys_log` VALUES (3539, '新增部门', 'INFO', 'me.zhengjie.modules.system.rest.DeptController.createDept()', '{\"createBy\":\"admin\",\"createTime\":1711791691611,\"deptSort\":1,\"enabled\":true,\"hasChildren\":false,\"id\":19,\"label\":\"计算机科学与工程学院\",\"leaf\":true,\"name\":\"计算机科学与工程学院\",\"subCount\":0,\"updateBy\":\"admin\",\"updateTime\":1711791691611}', '192.168.137.1', 820, 'admin', '内网IP', 'Chrome 123', NULL, '2024-03-30 17:41:32');
INSERT INTO `sys_log` VALUES (3540, '新增部门', 'INFO', 'me.zhengjie.modules.system.rest.DeptController.createDept()', '{\"createBy\":\"admin\",\"createTime\":1711791707484,\"deptSort\":2,\"enabled\":true,\"hasChildren\":false,\"id\":20,\"label\":\"信息与通信工程学院\",\"leaf\":true,\"name\":\"信息与通信工程学院\",\"subCount\":0,\"updateBy\":\"admin\",\"updateTime\":1711791707484}', '192.168.137.1', 855, 'admin', '内网IP', 'Chrome 123', NULL, '2024-03-30 17:41:48');
INSERT INTO `sys_log` VALUES (3541, '删除部门', 'ERROR', 'me.zhengjie.modules.system.rest.DeptController.deleteDept()', '[7]', '192.168.137.1', 1431, 'admin', '内网IP', 'Chrome 123', 'me.zhengjie.exception.BadRequestException: 所选部门存在用户关联，请解除后再试！\r\n	at me.zhengjie.modules.system.service.impl.DeptServiceImpl.verification(DeptServiceImpl.java:235)\r\n	at me.zhengjie.modules.system.service.impl.DeptServiceImpl$$FastClassBySpringCGLIB$$4d6d67d1.invoke(<generated>)\r\n	at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:218)\r\n	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:689)\r\n	at me.zhengjie.modules.system.service.impl.DeptServiceImpl$$EnhancerBySpringCGLIB$$dbf7ba4e.verification(<generated>)\r\n	at me.zhengjie.modules.system.rest.DeptController.deleteDept(DeptController.java:124)\r\n	at me.zhengjie.modules.system.rest.DeptController$$FastClassBySpringCGLIB$$9f3dcd45.invoke(<generated>)\r\n	at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:218)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.invokeJoinpoint(CglibAopProxy.java:783)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:753)\r\n	at org.springframework.aop.aspectj.AspectJAfterThrowingAdvice.invoke(AspectJAfterThrowingAdvice.java:64)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:753)\r\n	at org.springframework.aop.aspectj.MethodInvocationProceedingJoinPoint.proceed(MethodInvocationProceedingJoinPoint.java:89)\r\n	at me.zhengjie.aspect.LogAspect.logAround(LogAspect.java:68)\r\n	at java.base/jdk.internal.reflect.DirectMethodHandleAccessor.invoke(DirectMethodHandleAccessor.java:104)\r\n	at java.base/java.lang.reflect.Method.invoke(Method.java:578)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethodWithGivenArgs(AbstractAspectJAdvice.java:634)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethod(AbstractAspectJAdvice.java:624)\r\n	at org.springframework.aop.aspectj.AspectJAroundAdvice.invoke(AspectJAroundAdvice.java:72)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:753)\r\n	at org.springframework.security.access.intercept.aopalliance.MethodSecurityInterceptor.invoke(MethodSecurityInterceptor.java:61)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:753)\r\n	at org.springframework.aop.interceptor.ExposeInvocationInterceptor.invoke(ExposeInvocationInterceptor.java:97)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:753)\r\n	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:698)\r\n	at me.zhengjie.modules.system.rest.DeptController$$EnhancerBySpringCGLIB$$fd1d1091.deleteDept(<generated>)\r\n	at java.base/jdk.internal.reflect.DirectMethodHandleAccessor.invoke(DirectMethodHandleAccessor.java:104)\r\n	at java.base/java.lang.reflect.Method.invoke(Method.java:578)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.doInvoke(InvocableHandlerMethod.java:205)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.invokeForRequest(InvocableHandlerMethod.java:150)\r\n	at org.springframework.web.servlet.mvc.method.annotation.ServletInvocableHandlerMethod.invokeAndHandle(ServletInvocableHandlerMethod.java:117)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.invokeHandlerMethod(RequestMappingHandlerAdapter.java:895)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.handleInternal(RequestMappingHandlerAdapter.java:808)\r\n	at org.springframework.web.servlet.mvc.method.AbstractHandlerMethodAdapter.handle(AbstractHandlerMethodAdapter.java:87)\r\n	at org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:1067)\r\n	at org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:963)\r\n	at org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:1006)\r\n	at org.springframework.web.servlet.FrameworkServlet.doDelete(FrameworkServlet.java:931)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:687)\r\n	at org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:883)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:764)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:227)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:162)\r\n	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:53)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:189)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:162)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:111)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:189)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:162)\r\n	at com.alibaba.druid.support.http.WebStatFilter.doFilter(WebStatFilter.java:124)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:189)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:162)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:327)\r\n	at org.springframework.security.web.access.intercept.FilterSecurityInterceptor.invoke(FilterSecurityInterceptor.java:115)\r\n	at org.springframework.security.web.access.intercept.FilterSecurityInterceptor.doFilter(FilterSecurityInterceptor.java:81)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:336)\r\n	at org.springframework.security.web.access.ExceptionTranslationFilter.doFilter(ExceptionTranslationFilter.java:122)\r\n	at org.springframework.security.web.access.ExceptionTranslationFilter.doFilter(ExceptionTranslationFilter.java:116)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:336)\r\n	at org.springframework.security.web.session.SessionManagementFilter.doFilter(SessionManagementFilter.java:126)\r\n	at org.springframework.security.web.session.SessionManagementFilter.doFilter(SessionManagementFilter.java:81)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:336)\r\n	at org.springframework.security.web.authentication.AnonymousAuthenticationFilter.doFilter(AnonymousAuthenticationFilter.java:109)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:336)\r\n	at org.springframework.security.web.servletapi.SecurityContextHolderAwareRequestFilter.doFilter(SecurityContextHolderAwareRequestFilter.java:149)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:336)\r\n	at org.springframework.security.web.savedrequest.RequestCacheAwareFilter.doFilter(RequestCacheAwareFilter.java:63)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:336)\r\n	at me.zhengjie.modules.security.security.TokenFilter.doFilter(TokenFilter.java:90)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:336)\r\n	at org.springframework.web.filter.CorsFilter.doFilterInternal(CorsFilter.java:91)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:117)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:336)\r\n	at org.springframework.security.web.authentication.logout.LogoutFilter.doFilter(LogoutFilter.java:103)\r\n	at org.springframework.security.web.authentication.logout.LogoutFilter.doFilter(LogoutFilter.java:89)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:336)\r\n	at org.springframework.security.web.header.HeaderWriterFilter.doHeadersAfter(HeaderWriterFilter.java:90)\r\n	at org.springframework.security.web.header.HeaderWriterFilter.doFilterInternal(HeaderWriterFilter.java:75)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:117)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:336)\r\n	at org.springframework.security.web.context.SecurityContextPersistenceFilter.doFilter(SecurityContextPersistenceFilter.java:110)\r\n	at org.springframework.security.web.context.SecurityContextPersistenceFilter.doFilter(SecurityContextPersistenceFilter.java:80)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:336)\r\n	at org.springframework.security.web.context.request.async.WebAsyncManagerIntegrationFilter.doFilterInternal(WebAsyncManagerIntegrationFilter.java:55)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:117)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:336)\r\n	at org.springframework.security.web.FilterChainProxy.doFilterInternal(FilterChainProxy.java:211)\r\n	at org.springframework.security.web.FilterChainProxy.doFilter(FilterChainProxy.java:183)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.invokeDelegate(DelegatingFilterProxy.java:354)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.doFilter(DelegatingFilterProxy.java:267)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:189)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:162)\r\n	at org.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:201)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:117)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:189)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:162)\r\n	at org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:197)\r\n	at org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:97)\r\n	at org.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:540)\r\n	at org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:135)\r\n	at org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:92)\r\n	at org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:78)\r\n	at org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:359)\r\n	at org.apache.coyote.http11.Http11Processor.service(Http11Processor.java:399)\r\n	at org.apache.coyote.AbstractProcessorLight.process(AbstractProcessorLight.java:65)\r\n	at org.apache.coyote.AbstractProtocol$ConnectionHandler.process(AbstractProtocol.java:889)\r\n	at org.apache.tomcat.util.net.NioEndpoint$SocketProcessor.doRun(NioEndpoint.java:1735)\r\n	at org.apache.tomcat.util.net.SocketProcessorBase.run(SocketProcessorBase.java:49)\r\n	at org.apache.tomcat.util.threads.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1191)\r\n	at org.apache.tomcat.util.threads.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:659)\r\n	at org.apache.tomcat.util.threads.TaskThread$WrappingRunnable.run(TaskThread.java:61)\r\n	at java.base/java.lang.Thread.run(Thread.java:1589)\r\n', '2024-03-30 17:41:54');
INSERT INTO `sys_log` VALUES (3542, '修改用户', 'INFO', 'me.zhengjie.modules.system.rest.UserController.updateUser()', '{\"createBy\":\"admin\",\"createTime\":1588648549000,\"dept\":{\"hasChildren\":false,\"id\":18,\"label\":\"研发部\",\"leaf\":true,\"name\":\"研发部\",\"subCount\":0},\"deptId\":2,\"email\":\"231@qq.com\",\"enabled\":true,\"gender\":\"男\",\"id\":2,\"isAdmin\":false,\"jobs\":[{\"id\":12}],\"nickName\":\"测试\",\"phone\":\"19999999999\",\"roles\":[{\"dataScope\":\"本级\",\"id\":2,\"level\":3}],\"updateBy\":\"admin\",\"updateTime\":1599273818000,\"username\":\"test\"}', '192.168.137.1', 2858, 'admin', '内网IP', 'Chrome 123', NULL, '2024-03-30 17:42:08');
INSERT INTO `sys_log` VALUES (3543, '新增岗位', 'INFO', 'me.zhengjie.modules.system.rest.JobController.createJob()', '{\"createBy\":\"admin\",\"createTime\":1711791780805,\"enabled\":true,\"id\":13,\"jobSort\":0,\"name\":\"老师\",\"updateBy\":\"admin\",\"updateTime\":1711791780805}', '192.168.137.1', 720, 'admin', '内网IP', 'Chrome 123', NULL, '2024-03-30 17:43:01');
INSERT INTO `sys_log` VALUES (3544, '新增岗位', 'INFO', 'me.zhengjie.modules.system.rest.JobController.createJob()', '{\"createBy\":\"admin\",\"createTime\":1711791788174,\"enabled\":true,\"id\":14,\"jobSort\":1,\"name\":\"学生\",\"updateBy\":\"admin\",\"updateTime\":1711791788174}', '192.168.137.1', 719, 'admin', '内网IP', 'Chrome 123', NULL, '2024-03-30 17:43:09');
INSERT INTO `sys_log` VALUES (3545, '新增岗位', 'INFO', 'me.zhengjie.modules.system.rest.JobController.createJob()', '{\"createBy\":\"admin\",\"createTime\":1711791798315,\"enabled\":true,\"id\":15,\"jobSort\":2,\"name\":\"管理员\",\"updateBy\":\"admin\",\"updateTime\":1711791798315}', '192.168.137.1', 718, 'admin', '内网IP', 'Chrome 123', NULL, '2024-03-30 17:43:19');
INSERT INTO `sys_log` VALUES (3546, '修改用户', 'INFO', 'me.zhengjie.modules.system.rest.UserController.updateUser()', '{\"createBy\":\"admin\",\"createTime\":1588648549000,\"dept\":{\"hasChildren\":false,\"id\":18,\"label\":\"信息与软件工程学院\",\"leaf\":true,\"name\":\"信息与软件工程学院\",\"subCount\":0},\"deptId\":18,\"email\":\"231@qq.com\",\"enabled\":true,\"gender\":\"男\",\"id\":2,\"isAdmin\":false,\"jobs\":[{\"id\":13},{\"id\":15}],\"nickName\":\"测试\",\"phone\":\"19999999999\",\"roles\":[{\"dataScope\":\"本级\",\"id\":2,\"level\":3}],\"updateBy\":\"admin\",\"updateTime\":1599273818000,\"username\":\"test\"}', '192.168.137.1', 2446, 'admin', '内网IP', 'Chrome 123', NULL, '2024-03-30 17:44:46');
INSERT INTO `sys_log` VALUES (3547, '修改用户', 'INFO', 'me.zhengjie.modules.system.rest.UserController.updateUser()', '{\"avatarName\":\"avatar-20200806032259161.png\",\"avatarPath\":\"/Users/jie/Documents/work/me/admin/eladmin/~/avatar/avatar-20200806032259161.png\",\"createTime\":1534986716000,\"dept\":{\"hasChildren\":false,\"id\":18,\"label\":\"研发部\",\"leaf\":true,\"name\":\"研发部\",\"subCount\":0},\"deptId\":2,\"email\":\"201507802@qq.com\",\"enabled\":true,\"gender\":\"男\",\"id\":1,\"isAdmin\":false,\"jobs\":[{\"id\":13},{\"id\":15}],\"nickName\":\"管理员\",\"phone\":\"18888888888\",\"pwdResetTime\":1588495111000,\"roles\":[{\"dataScope\":\"本级\",\"id\":1,\"level\":3}],\"updateBy\":\"admin\",\"updateTime\":1599273811000,\"username\":\"admin\"}', '192.168.137.1', 2133, 'admin', '内网IP', 'Chrome 123', NULL, '2024-03-30 17:45:05');
INSERT INTO `sys_log` VALUES (3548, '用户登录', 'INFO', 'me.zhengjie.modules.security.rest.AuthorizationController.login()', '{\"username\":\"admin\"}', '192.168.137.1', 1677, 'admin', '内网IP', 'Chrome 123', NULL, '2024-03-30 18:02:15');
INSERT INTO `sys_log` VALUES (3549, '删除部门', 'INFO', 'me.zhengjie.modules.system.rest.DeptController.deleteDept()', '[7]', '192.168.137.1', 3436, 'admin', '内网IP', 'Chrome 123', NULL, '2024-03-30 18:02:42');
INSERT INTO `sys_log` VALUES (3550, '删除部门', 'INFO', 'me.zhengjie.modules.system.rest.DeptController.deleteDept()', '[8]', '192.168.137.1', 3067, 'admin', '内网IP', 'Chrome 123', NULL, '2024-03-30 18:02:49');
INSERT INTO `sys_log` VALUES (3551, '删除岗位', 'INFO', 'me.zhengjie.modules.system.rest.JobController.deleteJob()', '[11]', '192.168.137.1', 670, 'admin', '内网IP', 'Chrome 123', NULL, '2024-03-30 18:02:55');
INSERT INTO `sys_log` VALUES (3552, '删除岗位', 'INFO', 'me.zhengjie.modules.system.rest.JobController.deleteJob()', '[8]', '192.168.137.1', 692, 'admin', '内网IP', 'Chrome 123', NULL, '2024-03-30 18:02:58');
INSERT INTO `sys_log` VALUES (3553, '删除岗位', 'INFO', 'me.zhengjie.modules.system.rest.JobController.deleteJob()', '[12]', '192.168.137.1', 687, 'admin', '内网IP', 'Chrome 123', NULL, '2024-03-30 18:03:04');
INSERT INTO `sys_log` VALUES (3554, '删除岗位', 'INFO', 'me.zhengjie.modules.system.rest.JobController.deleteJob()', '[10]', '192.168.137.1', 668, 'admin', '内网IP', 'Chrome 123', NULL, '2024-03-30 18:03:08');
INSERT INTO `sys_log` VALUES (3555, '新增用户', 'INFO', 'me.zhengjie.modules.system.rest.UserController.createUser()', '{\"createBy\":\"admin\",\"createTime\":1711793045358,\"dept\":{\"hasChildren\":false,\"id\":18,\"leaf\":true,\"subCount\":0},\"deptId\":18,\"email\":\"646416@qq.con\",\"enabled\":false,\"gender\":\"男\",\"id\":3,\"isAdmin\":false,\"jobs\":[{\"id\":14}],\"nickName\":\"hugo\",\"password\":\"$2a$10$3MslbaCsiPBokqsSHQyRI.M7BLuB7tcPjO7RNd.qXVjdQGGc/jUSi\",\"phone\":\"13890066267\",\"roles\":[{\"dataScope\":\"本级\",\"id\":2,\"level\":3}],\"updateBy\":\"admin\",\"updateTime\":1711793045358,\"username\":\"2022091203012\"}', '192.168.137.1', 1455, 'admin', '内网IP', 'Chrome 123', NULL, '2024-03-30 18:04:06');
INSERT INTO `sys_log` VALUES (3556, '修改用户', 'INFO', 'me.zhengjie.modules.system.rest.UserController.updateUser()', '{\"createBy\":\"admin\",\"createTime\":1711793045000,\"dept\":{\"hasChildren\":false,\"id\":18,\"label\":\"信息与软件工程学院\",\"leaf\":true,\"name\":\"信息与软件工程学院\",\"subCount\":0},\"deptId\":18,\"email\":\"646416@qq.con\",\"enabled\":true,\"gender\":\"男\",\"id\":3,\"isAdmin\":false,\"jobs\":[{\"id\":14,\"name\":\"学生\"}],\"nickName\":\"hugo\",\"phone\":\"13890066267\",\"roles\":[{\"dataScope\":\"本级\",\"id\":2,\"level\":2,\"name\":\"普通用户\"}],\"updateBy\":\"admin\",\"updateTime\":1711793045000,\"username\":\"2022091203012\"}', '192.168.137.1', 2226, 'admin', '内网IP', 'Chrome 123', NULL, '2024-03-30 18:04:13');
INSERT INTO `sys_log` VALUES (3557, '新增用户', 'INFO', 'me.zhengjie.modules.system.rest.UserController.createUser()', '{\"createBy\":\"admin\",\"createTime\":1711793088305,\"dept\":{\"hasChildren\":false,\"id\":19,\"leaf\":true,\"subCount\":0},\"deptId\":19,\"email\":\"2616@qq.com\",\"enabled\":false,\"gender\":\"女\",\"id\":4,\"isAdmin\":false,\"jobs\":[{\"id\":14}],\"nickName\":\"yuanshen\",\"password\":\"$2a$10$j.769Tbw7kU8dKv5AZ3NuOEg5X0phwjrQYjidCTyuXyD2ul5y7AJi\",\"phone\":\"13890010123\",\"roles\":[{\"dataScope\":\"本级\",\"id\":2,\"level\":3}],\"updateBy\":\"admin\",\"updateTime\":1711793088305,\"username\":\"20220912064\"}', '192.168.137.1', 1533, 'admin', '内网IP', 'Chrome 123', NULL, '2024-03-30 18:04:49');
INSERT INTO `sys_log` VALUES (3558, '修改用户', 'INFO', 'me.zhengjie.modules.system.rest.UserController.updateUser()', '{\"createBy\":\"admin\",\"createTime\":1711793088000,\"dept\":{\"hasChildren\":false,\"id\":19,\"label\":\"计算机科学与工程学院\",\"leaf\":true,\"name\":\"计算机科学与工程学院\",\"subCount\":0},\"deptId\":19,\"email\":\"2616@qq.com\",\"enabled\":true,\"gender\":\"女\",\"id\":4,\"isAdmin\":false,\"jobs\":[{\"id\":14,\"name\":\"学生\"}],\"nickName\":\"yuanshen\",\"phone\":\"13890010123\",\"roles\":[{\"dataScope\":\"本级\",\"id\":2,\"level\":2,\"name\":\"普通用户\"}],\"updateBy\":\"admin\",\"updateTime\":1711793088000,\"username\":\"20220912064\"}', '192.168.137.1', 2150, 'admin', '内网IP', 'Chrome 123', NULL, '2024-03-30 18:04:56');
INSERT INTO `sys_log` VALUES (3559, '新增用户', 'INFO', 'me.zhengjie.modules.system.rest.UserController.createUser()', '{\"createBy\":\"admin\",\"createTime\":1711793142373,\"dept\":{\"hasChildren\":false,\"id\":20,\"leaf\":true,\"subCount\":0},\"deptId\":20,\"email\":\"964616164@qq.com\",\"enabled\":false,\"gender\":\"男\",\"id\":5,\"isAdmin\":false,\"jobs\":[{\"id\":14}],\"nickName\":\"guoyu\",\"password\":\"$2a$10$.N9BbIhNRIWuBMcnWXIpOeM6C/IaK1xVylSMWE7xRYp.iTq7uLQWm\",\"phone\":\"13561616231\",\"roles\":[{\"dataScope\":\"本级\",\"id\":2,\"level\":3}],\"updateBy\":\"admin\",\"updateTime\":1711793142373,\"username\":\"2023091201022\"}', '192.168.137.1', 1477, 'admin', '内网IP', 'Chrome 123', NULL, '2024-03-30 18:05:43');
INSERT INTO `sys_log` VALUES (3560, '修改用户', 'INFO', 'me.zhengjie.modules.system.rest.UserController.updateUser()', '{\"createBy\":\"admin\",\"createTime\":1711793142000,\"dept\":{\"hasChildren\":false,\"id\":20,\"label\":\"信息与通信工程学院\",\"leaf\":true,\"name\":\"信息与通信工程学院\",\"subCount\":0},\"deptId\":20,\"email\":\"964616164@qq.com\",\"enabled\":true,\"gender\":\"男\",\"id\":5,\"isAdmin\":false,\"jobs\":[{\"id\":14,\"name\":\"学生\"}],\"nickName\":\"guoyu\",\"phone\":\"13561616231\",\"roles\":[{\"dataScope\":\"本级\",\"id\":2,\"level\":2,\"name\":\"普通用户\"}],\"updateBy\":\"admin\",\"updateTime\":1711793142000,\"username\":\"2023091201022\"}', '192.168.137.1', 2147, 'admin', '内网IP', 'Chrome 123', NULL, '2024-03-30 18:05:48');
INSERT INTO `sys_log` VALUES (3561, '用户登录', 'INFO', 'me.zhengjie.modules.security.rest.AuthorizationController.login()', '{\"username\":\"admin\"}', '192.168.137.1', 1402, 'admin', '内网IP', 'Chrome 123', NULL, '2024-03-31 12:08:47');
INSERT INTO `sys_log` VALUES (3562, '修改用户', 'INFO', 'me.zhengjie.modules.system.rest.UserController.updateUser()', '{\"createBy\":\"admin\",\"createTime\":1711793088000,\"dept\":{\"hasChildren\":false,\"id\":19,\"label\":\"计算机科学与工程学院\",\"leaf\":true,\"name\":\"计算机科学与工程学院\",\"subCount\":0},\"deptId\":19,\"email\":\"2616@qq.com\",\"enabled\":true,\"gender\":\"女\",\"id\":4,\"isAdmin\":false,\"jobs\":[{\"id\":14}],\"nickName\":\"yuanshen\",\"phone\":\"13890010123\",\"roles\":[{\"dataScope\":\"本级\",\"id\":2,\"level\":3}],\"updateBy\":\"admin\",\"updateTime\":1711793088000,\"username\":\"2022091203044\"}', '192.168.137.1', 2339, 'admin', '内网IP', 'Chrome 123', NULL, '2024-03-31 12:21:35');
INSERT INTO `sys_log` VALUES (3563, '新增用户', 'INFO', 'me.zhengjie.modules.system.rest.UserController.createUser()', '{\"createBy\":\"admin\",\"createTime\":1711858937321,\"dept\":{\"hasChildren\":false,\"id\":20,\"leaf\":true,\"subCount\":0},\"deptId\":20,\"email\":\"1156564@qq.com\",\"enabled\":true,\"gender\":\"男\",\"id\":6,\"isAdmin\":false,\"jobs\":[{\"id\":14}],\"nickName\":\"Hugo\",\"password\":\"$2a$10$8Fo50cxeswb5qy0jAem.6OQ3jD9yuMJE8uUaQzWpr8bRac/1gqY0O\",\"phone\":\"16666666666\",\"roles\":[{\"dataScope\":\"本级\",\"id\":2,\"level\":3}],\"updateBy\":\"admin\",\"updateTime\":1711858937321,\"username\":\"202306330512\"}', '192.168.137.1', 2035, 'admin', '内网IP', 'Chrome 123', NULL, '2024-03-31 12:22:18');
INSERT INTO `sys_log` VALUES (3564, '新增部门', 'INFO', 'me.zhengjie.modules.system.rest.DeptController.createDept()', '{\"createBy\":\"admin\",\"createTime\":1711858954831,\"deptSort\":3,\"enabled\":true,\"hasChildren\":false,\"id\":21,\"label\":\"光电科学与工程学院\",\"leaf\":true,\"name\":\"光电科学与工程学院\",\"subCount\":0,\"updateBy\":\"admin\",\"updateTime\":1711858954831}', '192.168.137.1', 611, 'admin', '内网IP', 'Chrome 123', NULL, '2024-03-31 12:22:35');
INSERT INTO `sys_log` VALUES (3565, '新增部门', 'INFO', 'me.zhengjie.modules.system.rest.DeptController.createDept()', '{\"createBy\":\"admin\",\"createTime\":1711858964576,\"deptSort\":4,\"enabled\":true,\"hasChildren\":false,\"id\":22,\"label\":\"外国语学院\",\"leaf\":true,\"name\":\"外国语学院\",\"subCount\":0,\"updateBy\":\"admin\",\"updateTime\":1711858964576}', '192.168.137.1', 664, 'admin', '内网IP', 'Chrome 123', NULL, '2024-03-31 12:22:45');
INSERT INTO `sys_log` VALUES (3566, '修改菜单', 'INFO', 'me.zhengjie.modules.system.rest.MenuController.updateMenu()', '{\"cache\":false,\"component\":\"system/dept/index\",\"componentName\":\"Dept\",\"createTime\":1553478360000,\"hasChildren\":true,\"hidden\":false,\"iFrame\":false,\"icon\":\"dept\",\"id\":35,\"label\":\"学院管理\",\"leaf\":false,\"menuSort\":6,\"path\":\"dept\",\"permission\":\"dept:list\",\"pid\":1,\"subCount\":3,\"title\":\"学院管理\",\"type\":1}', '192.168.137.1', 1530, 'admin', '内网IP', 'Chrome 123', NULL, '2024-03-31 12:23:47');
INSERT INTO `sys_log` VALUES (3567, '修改字典', 'INFO', 'me.zhengjie.modules.system.rest.DictController.updateDict()', '{\"createTime\":1572179496000,\"description\":\"学院状态\",\"id\":4,\"name\":\"dept_status\"}', '192.168.137.1', 614, 'admin', '内网IP', 'Chrome 123', NULL, '2024-03-31 12:24:26');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `pid` bigint NULL DEFAULT NULL COMMENT '上级菜单ID',
  `sub_count` int NULL DEFAULT 0 COMMENT '子菜单数目',
  `type` int NULL DEFAULT NULL COMMENT '菜单类型',
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '菜单标题',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '组件名称',
  `component` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '组件',
  `menu_sort` int NULL DEFAULT NULL COMMENT '排序',
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '图标',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '链接地址',
  `i_frame` bit(1) NULL DEFAULT NULL COMMENT '是否外链',
  `cache` bit(1) NULL DEFAULT b'0' COMMENT '缓存',
  `hidden` bit(1) NULL DEFAULT b'0' COMMENT '隐藏',
  `permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '权限',
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建者',
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '更新者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建日期',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`menu_id`) USING BTREE,
  UNIQUE INDEX `uniq_title`(`title` ASC) USING BTREE,
  UNIQUE INDEX `uniq_name`(`name` ASC) USING BTREE,
  INDEX `inx_pid`(`pid` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 118 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '系统菜单' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, NULL, 7, 0, '系统管理', NULL, NULL, 1, 'system', 'system', b'0', b'0', b'0', NULL, NULL, NULL, '2018-12-18 15:11:29', NULL);
INSERT INTO `sys_menu` VALUES (2, 1, 3, 1, '用户管理', 'User', 'system/user/index', 2, 'peoples', 'user', b'0', b'0', b'0', 'user:list', NULL, NULL, '2018-12-18 15:14:44', NULL);
INSERT INTO `sys_menu` VALUES (3, 1, 3, 1, '角色管理', 'Role', 'system/role/index', 3, 'role', 'role', b'0', b'0', b'0', 'roles:list', NULL, NULL, '2018-12-18 15:16:07', NULL);
INSERT INTO `sys_menu` VALUES (5, 1, 3, 1, '菜单管理', 'Menu', 'system/menu/index', 5, 'menu', 'menu', b'0', b'0', b'0', 'menu:list', NULL, NULL, '2018-12-18 15:17:28', NULL);
INSERT INTO `sys_menu` VALUES (6, NULL, 5, 0, '系统监控', NULL, NULL, 10, 'monitor', 'monitor', b'0', b'0', b'0', NULL, NULL, NULL, '2018-12-18 15:17:48', NULL);
INSERT INTO `sys_menu` VALUES (7, 6, 0, 1, '操作日志', 'Log', 'monitor/log/index', 11, 'log', 'logs', b'0', b'1', b'0', NULL, NULL, 'admin', '2018-12-18 15:18:26', '2020-06-06 13:11:57');
INSERT INTO `sys_menu` VALUES (9, 6, 0, 1, 'SQL监控', 'Sql', 'monitor/sql/index', 18, 'sqlMonitor', 'druid', b'0', b'0', b'0', NULL, NULL, NULL, '2018-12-18 15:19:34', NULL);
INSERT INTO `sys_menu` VALUES (10, NULL, 5, 0, '组件管理', NULL, NULL, 50, 'zujian', 'components', b'0', b'0', b'0', NULL, NULL, NULL, '2018-12-19 13:38:16', NULL);
INSERT INTO `sys_menu` VALUES (11, 10, 0, 1, '图标库', 'Icons', 'components/icons/index', 51, 'icon', 'icon', b'0', b'0', b'0', NULL, NULL, NULL, '2018-12-19 13:38:49', NULL);
INSERT INTO `sys_menu` VALUES (14, 36, 0, 1, '邮件工具', 'Email', 'tools/email/index', 35, 'email', 'email', b'0', b'0', b'0', NULL, NULL, NULL, '2018-12-27 10:13:09', NULL);
INSERT INTO `sys_menu` VALUES (15, 10, 0, 1, '富文本', 'Editor', 'components/Editor', 52, 'fwb', 'tinymce', b'0', b'0', b'0', NULL, NULL, NULL, '2018-12-27 11:58:25', NULL);
INSERT INTO `sys_menu` VALUES (18, 36, 3, 1, '存储管理', 'Storage', 'tools/storage/index', 34, 'qiniu', 'storage', b'0', b'0', b'0', 'storage:list', NULL, NULL, '2018-12-31 11:12:15', NULL);
INSERT INTO `sys_menu` VALUES (19, 36, 0, 1, '支付宝工具', 'AliPay', 'tools/aliPay/index', 37, 'alipay', 'aliPay', b'0', b'0', b'0', NULL, NULL, NULL, '2018-12-31 14:52:38', NULL);
INSERT INTO `sys_menu` VALUES (21, NULL, 2, 0, '多级菜单', NULL, '', 900, 'menu', 'nested', b'0', b'0', b'0', NULL, NULL, 'admin', '2019-01-04 16:22:03', '2020-06-21 17:27:35');
INSERT INTO `sys_menu` VALUES (22, 21, 2, 0, '二级菜单1', NULL, '', 999, 'menu', 'menu1', b'0', b'0', b'0', NULL, NULL, 'admin', '2019-01-04 16:23:29', '2020-06-21 17:27:20');
INSERT INTO `sys_menu` VALUES (23, 21, 0, 1, '二级菜单2', NULL, 'nested/menu2/index', 999, 'menu', 'menu2', b'0', b'0', b'0', NULL, NULL, NULL, '2019-01-04 16:23:57', NULL);
INSERT INTO `sys_menu` VALUES (24, 22, 0, 1, '三级菜单1', 'Test', 'nested/menu1/menu1-1', 999, 'menu', 'menu1-1', b'0', b'0', b'0', NULL, NULL, NULL, '2019-01-04 16:24:48', NULL);
INSERT INTO `sys_menu` VALUES (27, 22, 0, 1, '三级菜单2', NULL, 'nested/menu1/menu1-2', 999, 'menu', 'menu1-2', b'0', b'0', b'0', NULL, NULL, NULL, '2019-01-07 17:27:32', NULL);
INSERT INTO `sys_menu` VALUES (28, 1, 3, 1, '任务调度', 'Timing', 'system/timing/index', 999, 'timing', 'timing', b'0', b'0', b'0', 'timing:list', NULL, NULL, '2019-01-07 20:34:40', NULL);
INSERT INTO `sys_menu` VALUES (30, 36, 0, 1, '代码生成', 'GeneratorIndex', 'generator/index', 32, 'dev', 'generator', b'0', b'1', b'0', NULL, NULL, NULL, '2019-01-11 15:45:55', NULL);
INSERT INTO `sys_menu` VALUES (32, 6, 0, 1, '异常日志', 'ErrorLog', 'monitor/log/errorLog', 12, 'error', 'errorLog', b'0', b'0', b'0', NULL, NULL, NULL, '2019-01-13 13:49:03', NULL);
INSERT INTO `sys_menu` VALUES (33, 10, 0, 1, 'Markdown', 'Markdown', 'components/MarkDown', 53, 'markdown', 'markdown', b'0', b'0', b'0', NULL, NULL, NULL, '2019-03-08 13:46:44', NULL);
INSERT INTO `sys_menu` VALUES (34, 10, 0, 1, 'Yaml编辑器', 'YamlEdit', 'components/YamlEdit', 54, 'dev', 'yaml', b'0', b'0', b'0', NULL, NULL, NULL, '2019-03-08 15:49:40', NULL);
INSERT INTO `sys_menu` VALUES (35, 1, 3, 1, '学院管理', 'Dept', 'system/dept/index', 6, 'dept', 'dept', b'0', b'0', b'0', 'dept:list', NULL, 'admin', '2019-03-25 09:46:00', '2024-03-31 12:23:46');
INSERT INTO `sys_menu` VALUES (36, NULL, 7, 0, '系统工具', NULL, '', 30, 'sys-tools', 'sys-tools', b'0', b'0', b'0', NULL, NULL, NULL, '2019-03-29 10:57:35', NULL);
INSERT INTO `sys_menu` VALUES (37, 1, 3, 1, '岗位管理', 'Job', 'system/job/index', 7, 'Steve-Jobs', 'job', b'0', b'0', b'0', 'job:list', NULL, NULL, '2019-03-29 13:51:18', NULL);
INSERT INTO `sys_menu` VALUES (38, 36, 0, 1, '接口文档', 'Swagger', 'tools/swagger/index', 36, 'swagger', 'swagger2', b'0', b'0', b'0', NULL, NULL, NULL, '2019-03-29 19:57:53', NULL);
INSERT INTO `sys_menu` VALUES (39, 1, 3, 1, '字典管理', 'Dict', 'system/dict/index', 8, 'dictionary', 'dict', b'0', b'0', b'0', 'dict:list', NULL, NULL, '2019-04-10 11:49:04', NULL);
INSERT INTO `sys_menu` VALUES (41, 6, 0, 1, '在线用户', 'OnlineUser', 'monitor/online/index', 10, 'Steve-Jobs', 'online', b'0', b'0', b'0', NULL, NULL, NULL, '2019-10-26 22:08:43', NULL);
INSERT INTO `sys_menu` VALUES (44, 2, 0, 2, '用户新增', NULL, '', 2, '', '', b'0', b'0', b'0', 'user:add', NULL, NULL, '2019-10-29 10:59:46', NULL);
INSERT INTO `sys_menu` VALUES (45, 2, 0, 2, '用户编辑', NULL, '', 3, '', '', b'0', b'0', b'0', 'user:edit', NULL, NULL, '2019-10-29 11:00:08', NULL);
INSERT INTO `sys_menu` VALUES (46, 2, 0, 2, '用户删除', NULL, '', 4, '', '', b'0', b'0', b'0', 'user:del', NULL, NULL, '2019-10-29 11:00:23', NULL);
INSERT INTO `sys_menu` VALUES (48, 3, 0, 2, '角色创建', NULL, '', 2, '', '', b'0', b'0', b'0', 'roles:add', NULL, NULL, '2019-10-29 12:45:34', NULL);
INSERT INTO `sys_menu` VALUES (49, 3, 0, 2, '角色修改', NULL, '', 3, '', '', b'0', b'0', b'0', 'roles:edit', NULL, NULL, '2019-10-29 12:46:16', NULL);
INSERT INTO `sys_menu` VALUES (50, 3, 0, 2, '角色删除', NULL, '', 4, '', '', b'0', b'0', b'0', 'roles:del', NULL, NULL, '2019-10-29 12:46:51', NULL);
INSERT INTO `sys_menu` VALUES (52, 5, 0, 2, '菜单新增', NULL, '', 2, '', '', b'0', b'0', b'0', 'menu:add', NULL, NULL, '2019-10-29 12:55:07', NULL);
INSERT INTO `sys_menu` VALUES (53, 5, 0, 2, '菜单编辑', NULL, '', 3, '', '', b'0', b'0', b'0', 'menu:edit', NULL, NULL, '2019-10-29 12:55:40', NULL);
INSERT INTO `sys_menu` VALUES (54, 5, 0, 2, '菜单删除', NULL, '', 4, '', '', b'0', b'0', b'0', 'menu:del', NULL, NULL, '2019-10-29 12:56:00', NULL);
INSERT INTO `sys_menu` VALUES (56, 35, 0, 2, '部门新增', NULL, '', 2, '', '', b'0', b'0', b'0', 'dept:add', NULL, NULL, '2019-10-29 12:57:09', NULL);
INSERT INTO `sys_menu` VALUES (57, 35, 0, 2, '部门编辑', NULL, '', 3, '', '', b'0', b'0', b'0', 'dept:edit', NULL, NULL, '2019-10-29 12:57:27', NULL);
INSERT INTO `sys_menu` VALUES (58, 35, 0, 2, '部门删除', NULL, '', 4, '', '', b'0', b'0', b'0', 'dept:del', NULL, NULL, '2019-10-29 12:57:41', NULL);
INSERT INTO `sys_menu` VALUES (60, 37, 0, 2, '岗位新增', NULL, '', 2, '', '', b'0', b'0', b'0', 'job:add', NULL, NULL, '2019-10-29 12:58:27', NULL);
INSERT INTO `sys_menu` VALUES (61, 37, 0, 2, '岗位编辑', NULL, '', 3, '', '', b'0', b'0', b'0', 'job:edit', NULL, NULL, '2019-10-29 12:58:45', NULL);
INSERT INTO `sys_menu` VALUES (62, 37, 0, 2, '岗位删除', NULL, '', 4, '', '', b'0', b'0', b'0', 'job:del', NULL, NULL, '2019-10-29 12:59:04', NULL);
INSERT INTO `sys_menu` VALUES (64, 39, 0, 2, '字典新增', NULL, '', 2, '', '', b'0', b'0', b'0', 'dict:add', NULL, NULL, '2019-10-29 13:00:17', NULL);
INSERT INTO `sys_menu` VALUES (65, 39, 0, 2, '字典编辑', NULL, '', 3, '', '', b'0', b'0', b'0', 'dict:edit', NULL, NULL, '2019-10-29 13:00:42', NULL);
INSERT INTO `sys_menu` VALUES (66, 39, 0, 2, '字典删除', NULL, '', 4, '', '', b'0', b'0', b'0', 'dict:del', NULL, NULL, '2019-10-29 13:00:59', NULL);
INSERT INTO `sys_menu` VALUES (73, 28, 0, 2, '任务新增', NULL, '', 2, '', '', b'0', b'0', b'0', 'timing:add', NULL, NULL, '2019-10-29 13:07:28', NULL);
INSERT INTO `sys_menu` VALUES (74, 28, 0, 2, '任务编辑', NULL, '', 3, '', '', b'0', b'0', b'0', 'timing:edit', NULL, NULL, '2019-10-29 13:07:41', NULL);
INSERT INTO `sys_menu` VALUES (75, 28, 0, 2, '任务删除', NULL, '', 4, '', '', b'0', b'0', b'0', 'timing:del', NULL, NULL, '2019-10-29 13:07:54', NULL);
INSERT INTO `sys_menu` VALUES (77, 18, 0, 2, '上传文件', NULL, '', 2, '', '', b'0', b'0', b'0', 'storage:add', NULL, NULL, '2019-10-29 13:09:09', NULL);
INSERT INTO `sys_menu` VALUES (78, 18, 0, 2, '文件编辑', NULL, '', 3, '', '', b'0', b'0', b'0', 'storage:edit', NULL, NULL, '2019-10-29 13:09:22', NULL);
INSERT INTO `sys_menu` VALUES (79, 18, 0, 2, '文件删除', NULL, '', 4, '', '', b'0', b'0', b'0', 'storage:del', NULL, NULL, '2019-10-29 13:09:34', NULL);
INSERT INTO `sys_menu` VALUES (80, 6, 0, 1, '服务监控', 'ServerMonitor', 'monitor/server/index', 14, 'codeConsole', 'server', b'0', b'0', b'0', 'monitor:list', NULL, 'admin', '2019-11-07 13:06:39', '2020-05-04 18:20:50');
INSERT INTO `sys_menu` VALUES (82, 36, 0, 1, '生成配置', 'GeneratorConfig', 'generator/config', 33, 'dev', 'generator/config/:tableName', b'0', b'1', b'1', '', NULL, NULL, '2019-11-17 20:08:56', NULL);
INSERT INTO `sys_menu` VALUES (83, 10, 0, 1, '图表库', 'Echarts', 'components/Echarts', 50, 'chart', 'echarts', b'0', b'1', b'0', '', NULL, NULL, '2019-11-21 09:04:32', NULL);
INSERT INTO `sys_menu` VALUES (90, NULL, 5, 1, '运维管理', 'Mnt', '', 20, 'mnt', 'mnt', b'0', b'0', b'0', NULL, NULL, NULL, '2019-11-09 10:31:08', NULL);
INSERT INTO `sys_menu` VALUES (92, 90, 3, 1, '服务器', 'ServerDeploy', 'mnt/server/index', 22, 'server', 'mnt/serverDeploy', b'0', b'0', b'0', 'serverDeploy:list', NULL, NULL, '2019-11-10 10:29:25', NULL);
INSERT INTO `sys_menu` VALUES (93, 90, 3, 1, '应用管理', 'App', 'mnt/app/index', 23, 'app', 'mnt/app', b'0', b'0', b'0', 'app:list', NULL, NULL, '2019-11-10 11:05:16', NULL);
INSERT INTO `sys_menu` VALUES (94, 90, 3, 1, '部署管理', 'Deploy', 'mnt/deploy/index', 24, 'deploy', 'mnt/deploy', b'0', b'0', b'0', 'deploy:list', NULL, NULL, '2019-11-10 15:56:55', NULL);
INSERT INTO `sys_menu` VALUES (97, 90, 1, 1, '部署备份', 'DeployHistory', 'mnt/deployHistory/index', 25, 'backup', 'mnt/deployHistory', b'0', b'0', b'0', 'deployHistory:list', NULL, NULL, '2019-11-10 16:49:44', NULL);
INSERT INTO `sys_menu` VALUES (98, 90, 3, 1, '数据库管理', 'Database', 'mnt/database/index', 26, 'database', 'mnt/database', b'0', b'0', b'0', 'database:list', NULL, NULL, '2019-11-10 20:40:04', NULL);
INSERT INTO `sys_menu` VALUES (102, 97, 0, 2, '删除', NULL, '', 999, '', '', b'0', b'0', b'0', 'deployHistory:del', NULL, NULL, '2019-11-17 09:32:48', NULL);
INSERT INTO `sys_menu` VALUES (103, 92, 0, 2, '服务器新增', NULL, '', 999, '', '', b'0', b'0', b'0', 'serverDeploy:add', NULL, NULL, '2019-11-17 11:08:33', NULL);
INSERT INTO `sys_menu` VALUES (104, 92, 0, 2, '服务器编辑', NULL, '', 999, '', '', b'0', b'0', b'0', 'serverDeploy:edit', NULL, NULL, '2019-11-17 11:08:57', NULL);
INSERT INTO `sys_menu` VALUES (105, 92, 0, 2, '服务器删除', NULL, '', 999, '', '', b'0', b'0', b'0', 'serverDeploy:del', NULL, NULL, '2019-11-17 11:09:15', NULL);
INSERT INTO `sys_menu` VALUES (106, 93, 0, 2, '应用新增', NULL, '', 999, '', '', b'0', b'0', b'0', 'app:add', NULL, NULL, '2019-11-17 11:10:03', NULL);
INSERT INTO `sys_menu` VALUES (107, 93, 0, 2, '应用编辑', NULL, '', 999, '', '', b'0', b'0', b'0', 'app:edit', NULL, NULL, '2019-11-17 11:10:28', NULL);
INSERT INTO `sys_menu` VALUES (108, 93, 0, 2, '应用删除', NULL, '', 999, '', '', b'0', b'0', b'0', 'app:del', NULL, NULL, '2019-11-17 11:10:55', NULL);
INSERT INTO `sys_menu` VALUES (109, 94, 0, 2, '部署新增', NULL, '', 999, '', '', b'0', b'0', b'0', 'deploy:add', NULL, NULL, '2019-11-17 11:11:22', NULL);
INSERT INTO `sys_menu` VALUES (110, 94, 0, 2, '部署编辑', NULL, '', 999, '', '', b'0', b'0', b'0', 'deploy:edit', NULL, NULL, '2019-11-17 11:11:41', NULL);
INSERT INTO `sys_menu` VALUES (111, 94, 0, 2, '部署删除', NULL, '', 999, '', '', b'0', b'0', b'0', 'deploy:del', NULL, NULL, '2019-11-17 11:12:01', NULL);
INSERT INTO `sys_menu` VALUES (112, 98, 0, 2, '数据库新增', NULL, '', 999, '', '', b'0', b'0', b'0', 'database:add', NULL, NULL, '2019-11-17 11:12:43', NULL);
INSERT INTO `sys_menu` VALUES (113, 98, 0, 2, '数据库编辑', NULL, '', 999, '', '', b'0', b'0', b'0', 'database:edit', NULL, NULL, '2019-11-17 11:12:58', NULL);
INSERT INTO `sys_menu` VALUES (114, 98, 0, 2, '数据库删除', NULL, '', 999, '', '', b'0', b'0', b'0', 'database:del', NULL, NULL, '2019-11-17 11:13:14', NULL);
INSERT INTO `sys_menu` VALUES (116, 36, 0, 1, '生成预览', 'Preview', 'generator/preview', 999, 'java', 'generator/preview/:tableName', b'0', b'1', b'1', NULL, NULL, NULL, '2019-11-26 14:54:36', NULL);

-- ----------------------------
-- Table structure for sys_quartz_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_quartz_job`;
CREATE TABLE `sys_quartz_job`  (
  `job_id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `bean_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'Spring Bean名称',
  `cron_expression` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'cron 表达式',
  `is_pause` bit(1) NULL DEFAULT NULL COMMENT '状态：1暂停、0启用',
  `job_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '任务名称',
  `method_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '方法名称',
  `params` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '参数',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  `person_in_charge` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '负责人',
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '报警邮箱',
  `sub_task` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '子任务ID',
  `pause_after_failure` bit(1) NULL DEFAULT NULL COMMENT '任务失败后是否暂停',
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建者',
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '更新者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建日期',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`job_id`) USING BTREE,
  INDEX `inx_is_pause`(`is_pause` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '定时任务' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of sys_quartz_job
-- ----------------------------
INSERT INTO `sys_quartz_job` VALUES (2, 'testTask', '0/5 * * * * ?', b'1', '测试1', 'run1', 'test', '带参测试，多参使用json', '测试', NULL, NULL, NULL, NULL, 'admin', '2019-08-22 14:08:29', '2020-05-24 13:58:33');
INSERT INTO `sys_quartz_job` VALUES (3, 'testTask', '0/5 * * * * ?', b'1', '测试', 'run', '', '不带参测试', 'Zheng Jie', '', '5,6', b'1', NULL, 'admin', '2019-09-26 16:44:39', '2020-05-24 14:48:12');
INSERT INTO `sys_quartz_job` VALUES (5, 'Test', '0/5 * * * * ?', b'1', '任务告警测试', 'run', NULL, '测试', 'test', '', NULL, b'1', 'admin', 'admin', '2020-05-05 20:32:41', '2020-05-05 20:36:13');
INSERT INTO `sys_quartz_job` VALUES (6, 'testTask', '0/5 * * * * ?', b'1', '测试3', 'run2', NULL, '测试3', 'Zheng Jie', '', NULL, b'1', 'admin', 'admin', '2020-05-05 20:35:41', '2020-05-05 20:36:07');

-- ----------------------------
-- Table structure for sys_quartz_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_quartz_log`;
CREATE TABLE `sys_quartz_log`  (
  `log_id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `bean_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `cron_expression` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `exception_detail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `is_success` bit(1) NULL DEFAULT NULL,
  `job_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `method_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `params` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `time` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 151 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '定时任务日志' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of sys_quartz_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '名称',
  `level` int NULL DEFAULT NULL COMMENT '角色级别',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '描述',
  `data_scope` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '数据权限',
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建者',
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '更新者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建日期',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`role_id`) USING BTREE,
  UNIQUE INDEX `uniq_name`(`name` ASC) USING BTREE,
  INDEX `role_name_index`(`name` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色表' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', 1, '-', '全部', NULL, 'admin', '2018-11-23 11:04:37', '2020-08-06 16:10:24');
INSERT INTO `sys_role` VALUES (2, '普通用户', 2, '-', '本级', NULL, 'admin', '2018-11-23 13:09:06', '2020-09-05 10:45:12');

-- ----------------------------
-- Table structure for sys_roles_depts
-- ----------------------------
DROP TABLE IF EXISTS `sys_roles_depts`;
CREATE TABLE `sys_roles_depts`  (
  `role_id` bigint NOT NULL,
  `dept_id` bigint NOT NULL,
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE,
  INDEX `FK7qg6itn5ajdoa9h9o78v9ksur`(`dept_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色部门关联' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of sys_roles_depts
-- ----------------------------

-- ----------------------------
-- Table structure for sys_roles_menus
-- ----------------------------
DROP TABLE IF EXISTS `sys_roles_menus`;
CREATE TABLE `sys_roles_menus`  (
  `menu_id` bigint NOT NULL COMMENT '菜单ID',
  `role_id` bigint NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`menu_id`, `role_id`) USING BTREE,
  INDEX `FKcngg2qadojhi3a651a5adkvbq`(`role_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色菜单关联' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of sys_roles_menus
-- ----------------------------
INSERT INTO `sys_roles_menus` VALUES (1, 1);
INSERT INTO `sys_roles_menus` VALUES (2, 1);
INSERT INTO `sys_roles_menus` VALUES (3, 1);
INSERT INTO `sys_roles_menus` VALUES (5, 1);
INSERT INTO `sys_roles_menus` VALUES (6, 1);
INSERT INTO `sys_roles_menus` VALUES (7, 1);
INSERT INTO `sys_roles_menus` VALUES (9, 1);
INSERT INTO `sys_roles_menus` VALUES (10, 1);
INSERT INTO `sys_roles_menus` VALUES (11, 1);
INSERT INTO `sys_roles_menus` VALUES (14, 1);
INSERT INTO `sys_roles_menus` VALUES (15, 1);
INSERT INTO `sys_roles_menus` VALUES (18, 1);
INSERT INTO `sys_roles_menus` VALUES (19, 1);
INSERT INTO `sys_roles_menus` VALUES (21, 1);
INSERT INTO `sys_roles_menus` VALUES (22, 1);
INSERT INTO `sys_roles_menus` VALUES (23, 1);
INSERT INTO `sys_roles_menus` VALUES (24, 1);
INSERT INTO `sys_roles_menus` VALUES (27, 1);
INSERT INTO `sys_roles_menus` VALUES (28, 1);
INSERT INTO `sys_roles_menus` VALUES (30, 1);
INSERT INTO `sys_roles_menus` VALUES (32, 1);
INSERT INTO `sys_roles_menus` VALUES (33, 1);
INSERT INTO `sys_roles_menus` VALUES (34, 1);
INSERT INTO `sys_roles_menus` VALUES (35, 1);
INSERT INTO `sys_roles_menus` VALUES (36, 1);
INSERT INTO `sys_roles_menus` VALUES (37, 1);
INSERT INTO `sys_roles_menus` VALUES (38, 1);
INSERT INTO `sys_roles_menus` VALUES (39, 1);
INSERT INTO `sys_roles_menus` VALUES (41, 1);
INSERT INTO `sys_roles_menus` VALUES (44, 1);
INSERT INTO `sys_roles_menus` VALUES (45, 1);
INSERT INTO `sys_roles_menus` VALUES (46, 1);
INSERT INTO `sys_roles_menus` VALUES (48, 1);
INSERT INTO `sys_roles_menus` VALUES (49, 1);
INSERT INTO `sys_roles_menus` VALUES (50, 1);
INSERT INTO `sys_roles_menus` VALUES (52, 1);
INSERT INTO `sys_roles_menus` VALUES (53, 1);
INSERT INTO `sys_roles_menus` VALUES (54, 1);
INSERT INTO `sys_roles_menus` VALUES (56, 1);
INSERT INTO `sys_roles_menus` VALUES (57, 1);
INSERT INTO `sys_roles_menus` VALUES (58, 1);
INSERT INTO `sys_roles_menus` VALUES (60, 1);
INSERT INTO `sys_roles_menus` VALUES (61, 1);
INSERT INTO `sys_roles_menus` VALUES (62, 1);
INSERT INTO `sys_roles_menus` VALUES (64, 1);
INSERT INTO `sys_roles_menus` VALUES (65, 1);
INSERT INTO `sys_roles_menus` VALUES (66, 1);
INSERT INTO `sys_roles_menus` VALUES (73, 1);
INSERT INTO `sys_roles_menus` VALUES (74, 1);
INSERT INTO `sys_roles_menus` VALUES (75, 1);
INSERT INTO `sys_roles_menus` VALUES (77, 1);
INSERT INTO `sys_roles_menus` VALUES (78, 1);
INSERT INTO `sys_roles_menus` VALUES (79, 1);
INSERT INTO `sys_roles_menus` VALUES (80, 1);
INSERT INTO `sys_roles_menus` VALUES (82, 1);
INSERT INTO `sys_roles_menus` VALUES (83, 1);
INSERT INTO `sys_roles_menus` VALUES (90, 1);
INSERT INTO `sys_roles_menus` VALUES (92, 1);
INSERT INTO `sys_roles_menus` VALUES (93, 1);
INSERT INTO `sys_roles_menus` VALUES (94, 1);
INSERT INTO `sys_roles_menus` VALUES (97, 1);
INSERT INTO `sys_roles_menus` VALUES (98, 1);
INSERT INTO `sys_roles_menus` VALUES (102, 1);
INSERT INTO `sys_roles_menus` VALUES (103, 1);
INSERT INTO `sys_roles_menus` VALUES (104, 1);
INSERT INTO `sys_roles_menus` VALUES (105, 1);
INSERT INTO `sys_roles_menus` VALUES (106, 1);
INSERT INTO `sys_roles_menus` VALUES (107, 1);
INSERT INTO `sys_roles_menus` VALUES (108, 1);
INSERT INTO `sys_roles_menus` VALUES (109, 1);
INSERT INTO `sys_roles_menus` VALUES (110, 1);
INSERT INTO `sys_roles_menus` VALUES (111, 1);
INSERT INTO `sys_roles_menus` VALUES (112, 1);
INSERT INTO `sys_roles_menus` VALUES (113, 1);
INSERT INTO `sys_roles_menus` VALUES (114, 1);
INSERT INTO `sys_roles_menus` VALUES (116, 1);
INSERT INTO `sys_roles_menus` VALUES (120, 1);
INSERT INTO `sys_roles_menus` VALUES (1, 2);
INSERT INTO `sys_roles_menus` VALUES (2, 2);
INSERT INTO `sys_roles_menus` VALUES (6, 2);
INSERT INTO `sys_roles_menus` VALUES (7, 2);
INSERT INTO `sys_roles_menus` VALUES (9, 2);
INSERT INTO `sys_roles_menus` VALUES (10, 2);
INSERT INTO `sys_roles_menus` VALUES (11, 2);
INSERT INTO `sys_roles_menus` VALUES (14, 2);
INSERT INTO `sys_roles_menus` VALUES (15, 2);
INSERT INTO `sys_roles_menus` VALUES (19, 2);
INSERT INTO `sys_roles_menus` VALUES (21, 2);
INSERT INTO `sys_roles_menus` VALUES (22, 2);
INSERT INTO `sys_roles_menus` VALUES (23, 2);
INSERT INTO `sys_roles_menus` VALUES (24, 2);
INSERT INTO `sys_roles_menus` VALUES (27, 2);
INSERT INTO `sys_roles_menus` VALUES (30, 2);
INSERT INTO `sys_roles_menus` VALUES (32, 2);
INSERT INTO `sys_roles_menus` VALUES (33, 2);
INSERT INTO `sys_roles_menus` VALUES (34, 2);
INSERT INTO `sys_roles_menus` VALUES (36, 2);
INSERT INTO `sys_roles_menus` VALUES (80, 2);
INSERT INTO `sys_roles_menus` VALUES (82, 2);
INSERT INTO `sys_roles_menus` VALUES (83, 2);
INSERT INTO `sys_roles_menus` VALUES (116, 2);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `dept_id` bigint NULL DEFAULT NULL COMMENT '部门名称',
  `username` varchar(180) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户名',
  `nick_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '昵称',
  `gender` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '性别',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '手机号码',
  `email` varchar(180) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '邮箱',
  `avatar_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '头像地址',
  `avatar_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '头像真实路径',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '密码',
  `is_admin` bit(1) NULL DEFAULT b'0' COMMENT '是否为admin账号',
  `enabled` bit(1) NULL DEFAULT NULL COMMENT '状态：1启用、0禁用',
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建者',
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '更新者',
  `pwd_reset_time` datetime NULL DEFAULT NULL COMMENT '修改密码的时间',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建日期',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`user_id`) USING BTREE,
  UNIQUE INDEX `UK_kpubos9gc2cvtkb0thktkbkes`(`email` ASC) USING BTREE,
  UNIQUE INDEX `username`(`username` ASC) USING BTREE,
  UNIQUE INDEX `uniq_username`(`username` ASC) USING BTREE,
  UNIQUE INDEX `uniq_email`(`email` ASC) USING BTREE,
  INDEX `FK5rwmryny6jthaaxkogownknqp`(`dept_id` ASC) USING BTREE,
  INDEX `inx_enabled`(`enabled` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '系统用户' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 18, 'admin', '管理员', '男', '18888888888', '201507802@qq.com', 'avatar-20200806032259161.png', '/Users/jie/Documents/work/me/admin/eladmin/~/avatar/avatar-20200806032259161.png', '$2a$10$Egp1/gvFlt7zhlXVfEFw4OfWQCGPw0ClmMcc6FjTnvXNRVf9zdMRa', b'1', b'1', NULL, 'admin', '2020-05-03 16:38:31', '2018-08-23 09:11:56', '2020-09-05 10:43:31');
INSERT INTO `sys_user` VALUES (2, 18, 'test', '测试', '男', '19999999999', '231@qq.com', NULL, NULL, '$2a$10$4XcyudOYTSz6fue6KFNMHeUQnCX5jbBQypLEnGk1PmekXt5c95JcK', b'0', b'1', 'admin', 'admin', NULL, '2020-05-05 11:15:49', '2020-09-05 10:43:38');
INSERT INTO `sys_user` VALUES (3, 18, '2022091203012', 'hugo', '男', '13890066267', '646416@qq.con', NULL, NULL, '$2a$10$3MslbaCsiPBokqsSHQyRI.M7BLuB7tcPjO7RNd.qXVjdQGGc/jUSi', b'0', b'1', 'admin', 'admin', NULL, '2024-03-30 18:04:05', '2024-03-30 18:04:05');
INSERT INTO `sys_user` VALUES (4, 19, '2022091203044', 'yuanshen', '女', '13890010123', '2616@qq.com', NULL, NULL, '$2a$10$j.769Tbw7kU8dKv5AZ3NuOEg5X0phwjrQYjidCTyuXyD2ul5y7AJi', b'0', b'1', 'admin', 'admin', NULL, '2024-03-30 18:04:48', '2024-03-30 18:04:48');
INSERT INTO `sys_user` VALUES (5, 20, '2023091201022', 'guoyu', '男', '13561616231', '964616164@qq.com', NULL, NULL, '$2a$10$.N9BbIhNRIWuBMcnWXIpOeM6C/IaK1xVylSMWE7xRYp.iTq7uLQWm', b'0', b'1', 'admin', 'admin', NULL, '2024-03-30 18:05:42', '2024-03-30 18:05:42');
INSERT INTO `sys_user` VALUES (6, 20, '202306330512', 'Hugo', '男', '16666666666', '1156564@qq.com', NULL, NULL, '$2a$10$8Fo50cxeswb5qy0jAem.6OQ3jD9yuMJE8uUaQzWpr8bRac/1gqY0O', b'0', b'1', 'admin', 'admin', NULL, '2024-03-31 12:22:17', '2024-03-31 12:22:17');

-- ----------------------------
-- Table structure for sys_users_jobs
-- ----------------------------
DROP TABLE IF EXISTS `sys_users_jobs`;
CREATE TABLE `sys_users_jobs`  (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `job_id` bigint NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`, `job_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_users_jobs
-- ----------------------------
INSERT INTO `sys_users_jobs` VALUES (1, 13);
INSERT INTO `sys_users_jobs` VALUES (1, 15);
INSERT INTO `sys_users_jobs` VALUES (2, 13);
INSERT INTO `sys_users_jobs` VALUES (2, 15);
INSERT INTO `sys_users_jobs` VALUES (3, 14);
INSERT INTO `sys_users_jobs` VALUES (4, 14);
INSERT INTO `sys_users_jobs` VALUES (5, 14);
INSERT INTO `sys_users_jobs` VALUES (6, 14);

-- ----------------------------
-- Table structure for sys_users_roles
-- ----------------------------
DROP TABLE IF EXISTS `sys_users_roles`;
CREATE TABLE `sys_users_roles`  (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `role_id` bigint NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE,
  INDEX `FKq4eq273l04bpu4efj0jd0jb98`(`role_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户角色关联' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of sys_users_roles
-- ----------------------------
INSERT INTO `sys_users_roles` VALUES (1, 1);
INSERT INTO `sys_users_roles` VALUES (2, 2);
INSERT INTO `sys_users_roles` VALUES (3, 2);
INSERT INTO `sys_users_roles` VALUES (4, 2);
INSERT INTO `sys_users_roles` VALUES (5, 2);
INSERT INTO `sys_users_roles` VALUES (6, 2);

-- ----------------------------
-- Table structure for task_list
-- ----------------------------
DROP TABLE IF EXISTS `task_list`;
CREATE TABLE `task_list`  (
  `id` int NOT NULL,
  `tag` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `content` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `money` int NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `main` tinyint NOT NULL,
  `show` date NULL DEFAULT NULL,
  `cardshow` tinyint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of task_list
-- ----------------------------

-- ----------------------------
-- Table structure for tool_alipay_config
-- ----------------------------
DROP TABLE IF EXISTS `tool_alipay_config`;
CREATE TABLE `tool_alipay_config`  (
  `config_id` bigint NOT NULL COMMENT 'ID',
  `app_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '应用ID',
  `charset` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '编码',
  `format` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '类型 固定格式json',
  `gateway_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '网关地址',
  `notify_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '异步回调',
  `private_key` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '私钥',
  `public_key` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '公钥',
  `return_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '回调地址',
  `sign_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '签名方式',
  `sys_service_provider_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '商户号',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '支付宝配置类' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of tool_alipay_config
-- ----------------------------
INSERT INTO `tool_alipay_config` VALUES (1, '2016091700532697', 'utf-8', 'JSON', 'https://openapi.alipaydev.com/gateway.do', 'http://api.auauz.net/api/aliPay/notify', 'MIIEvAIBADANBgkqhkiG9w0BAQEFAASCBKYwggSiAgEAAoIBAQC5js8sInU10AJ0cAQ8UMMyXrQ+oHZEkVt5lBwsStmTJ7YikVYgbskx1YYEXTojRsWCb+SH/kDmDU4pK/u91SJ4KFCRMF2411piYuXU/jF96zKrADznYh/zAraqT6hvAIVtQAlMHN53nx16rLzZ/8jDEkaSwT7+HvHiS+7sxSojnu/3oV7BtgISoUNstmSe8WpWHOaWv19xyS+Mce9MY4BfseFhzTICUymUQdd/8hXA28/H6osUfAgsnxAKv7Wil3aJSgaJczWuflYOve0dJ3InZkhw5Cvr0atwpk8YKBQjy5CdkoHqvkOcIB+cYHXJKzOE5tqU7inSwVbHzOLQ3XbnAgMBAAECggEAVJp5eT0Ixg1eYSqFs9568WdetUNCSUchNxDBu6wxAbhUgfRUGZuJnnAll63OCTGGck+EGkFh48JjRcBpGoeoHLL88QXlZZbC/iLrea6gcDIhuvfzzOffe1RcZtDFEj9hlotg8dQj1tS0gy9pN9g4+EBH7zeu+fyv+qb2e/v1l6FkISXUjpkD7RLQr3ykjiiEw9BpeKb7j5s7Kdx1NNIzhkcQKNqlk8JrTGDNInbDM6inZfwwIO2R1DHinwdfKWkvOTODTYa2MoAvVMFT9Bec9FbLpoWp7ogv1JMV9svgrcF9XLzANZ/OQvkbe9TV9GWYvIbxN6qwQioKCWO4GPnCAQKBgQDgW5MgfhX8yjXqoaUy/d1VjI8dHeIyw8d+OBAYwaxRSlCfyQ+tieWcR2HdTzPca0T0GkWcKZm0ei5xRURgxt4DUDLXNh26HG0qObbtLJdu/AuBUuCqgOiLqJ2f1uIbrz6OZUHns+bT/jGW2Ws8+C13zTCZkZt9CaQsrp3QOGDx5wKBgQDTul39hp3ZPwGNFeZdkGoUoViOSd5Lhowd5wYMGAEXWRLlU8z+smT5v0POz9JnIbCRchIY2FAPKRdVTICzmPk2EPJFxYTcwaNbVqL6lN7J2IlXXMiit5QbiLauo55w7plwV6LQmKm9KV7JsZs5XwqF7CEovI7GevFzyD3w+uizAQKBgC3LY1eRhOlpWOIAhpjG6qOoohmeXOphvdmMlfSHq6WYFqbWwmV4rS5d/6LNpNdL6fItXqIGd8I34jzql49taCmi+A2nlR/E559j0mvM20gjGDIYeZUz5MOE8k+K6/IcrhcgofgqZ2ZED1ksHdB/E8DNWCswZl16V1FrfvjeWSNnAoGAMrBplCrIW5xz+J0Hm9rZKrs+AkK5D4fUv8vxbK/KgxZ2KaUYbNm0xv39c+PZUYuFRCz1HDGdaSPDTE6WeWjkMQd5mS6ikl9hhpqFRkyh0d0fdGToO9yLftQKOGE/q3XUEktI1XvXF0xyPwNgUCnq0QkpHyGVZPtGFxwXiDvpvgECgYA5PoB+nY8iDiRaJNko9w0hL4AeKogwf+4TbCw+KWVEn6jhuJa4LFTdSqp89PktQaoVpwv92el/AhYjWOl/jVCm122f9b7GyoelbjMNolToDwe5pF5RnSpEuDdLy9MfE8LnE3PlbE7E5BipQ3UjSebkgNboLHH/lNZA5qvEtvbfvQ==', 'MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAut9evKRuHJ/2QNfDlLwvN/S8l9hRAgPbb0u61bm4AtzaTGsLeMtScetxTWJnVvAVpMS9luhEJjt+Sbk5TNLArsgzzwARgaTKOLMT1TvWAK5EbHyI+eSrc3s7Awe1VYGwcubRFWDm16eQLv0k7iqiw+4mweHSz/wWyvBJVgwLoQ02btVtAQErCfSJCOmt0Q/oJQjj08YNRV4EKzB19+f5A+HQVAKy72dSybTzAK+3FPtTtNen/+b5wGeat7c32dhYHnGorPkPeXLtsqqUTp1su5fMfd4lElNdZaoCI7osZxWWUo17vBCZnyeXc9fk0qwD9mK6yRAxNbrY72Xx5VqIqwIDAQAB', 'http://api.auauz.net/api/aliPay/return', 'RSA2', '2088102176044281');

-- ----------------------------
-- Table structure for tool_email_config
-- ----------------------------
DROP TABLE IF EXISTS `tool_email_config`;
CREATE TABLE `tool_email_config`  (
  `config_id` bigint NOT NULL COMMENT 'ID',
  `from_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '收件人',
  `host` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '邮件服务器SMTP地址',
  `pass` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '密码',
  `port` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '端口',
  `user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '发件者用户名',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '邮箱配置' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of tool_email_config
-- ----------------------------

-- ----------------------------
-- Table structure for tool_local_storage
-- ----------------------------
DROP TABLE IF EXISTS `tool_local_storage`;
CREATE TABLE `tool_local_storage`  (
  `storage_id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `real_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '文件真实的名称',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '文件名',
  `suffix` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '后缀',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '路径',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '类型',
  `size` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '大小',
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建者',
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '更新者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建日期',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`storage_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '本地存储' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of tool_local_storage
-- ----------------------------

-- ----------------------------
-- Table structure for tool_qiniu_config
-- ----------------------------
DROP TABLE IF EXISTS `tool_qiniu_config`;
CREATE TABLE `tool_qiniu_config`  (
  `config_id` bigint NOT NULL COMMENT 'ID',
  `access_key` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT 'accessKey',
  `bucket` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'Bucket 识别符',
  `host` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '外链域名',
  `secret_key` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT 'secretKey',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '空间类型',
  `zone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '机房',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '七牛云配置' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of tool_qiniu_config
-- ----------------------------

-- ----------------------------
-- Table structure for tool_qiniu_content
-- ----------------------------
DROP TABLE IF EXISTS `tool_qiniu_content`;
CREATE TABLE `tool_qiniu_content`  (
  `content_id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `bucket` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'Bucket 识别符',
  `name` varchar(180) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '文件名称',
  `size` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '文件大小',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '文件类型：私有或公开',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '文件url',
  `suffix` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '文件后缀',
  `update_time` datetime NULL DEFAULT NULL COMMENT '上传或同步的时间',
  PRIMARY KEY (`content_id`) USING BTREE,
  UNIQUE INDEX `uniq_name`(`name` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '七牛云文件存储' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of tool_qiniu_content
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
