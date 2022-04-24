/*
 Navicat Premium Data Transfer

 Source Server         : 本地
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : lianxi

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 06/12/2021 16:36:32
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course`  (
  `cid` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '课程id',
  `cname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '课程姓名',
  `teacherid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '代课老师',
  PRIMARY KEY (`cid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('01', '数学', '01');
INSERT INTO `course` VALUES ('02', '语文', '02');
INSERT INTO `course` VALUES ('03', '英语', '03');
INSERT INTO `course` VALUES ('04', '地理', '04');
INSERT INTO `course` VALUES ('05', '物理', '08');
INSERT INTO `course` VALUES ('06', '生物', '07');
INSERT INTO `course` VALUES ('07', '化学', '05');
INSERT INTO `course` VALUES ('11', ' fddcv', '11');

-- ----------------------------
-- Table structure for sc
-- ----------------------------
DROP TABLE IF EXISTS `sc`;
CREATE TABLE `sc`  (
  `sid` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '学生id',
  `cid` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT '课程id',
  `score` decimal(65, 0) NULL DEFAULT NULL COMMENT '成绩'
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of sc
-- ----------------------------
INSERT INTO `sc` VALUES ('01', '01', 80);
INSERT INTO `sc` VALUES ('01', '02', 90);
INSERT INTO `sc` VALUES ('01', '03', 99);
INSERT INTO `sc` VALUES ('02', '01', 70);
INSERT INTO `sc` VALUES ('02', '02', 60);
INSERT INTO `sc` VALUES ('02', '03', 80);
INSERT INTO `sc` VALUES ('03', '01', 80);
INSERT INTO `sc` VALUES ('03', '02', 80);
INSERT INTO `sc` VALUES ('03', '03', 80);
INSERT INTO `sc` VALUES ('04', '01', 50);
INSERT INTO `sc` VALUES ('04', '02', 69);
INSERT INTO `sc` VALUES ('04', '03', 20);
INSERT INTO `sc` VALUES ('05', '01', 76);
INSERT INTO `sc` VALUES ('05', '02', 87);
INSERT INTO `sc` VALUES ('06', '01', 31);
INSERT INTO `sc` VALUES ('06', '03', 34);
INSERT INTO `sc` VALUES ('07', '02', 89);
INSERT INTO `sc` VALUES ('07', '03', 98);
INSERT INTO `sc` VALUES ('51', '03', 98);

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `sid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '学生id',
  `sname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '学生姓名',
  `sage` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT '年龄',
  `ssex` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '学生性别',
  `phone` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT '手机号',
  PRIMARY KEY (`sid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('01', '亲王1', '15', '男', '13888888888');
INSERT INTO `student` VALUES ('02', '钱电', '17', '男', '13888888888');
INSERT INTO `student` VALUES ('03', '孙风', '17', '男', '13888888888');
INSERT INTO `student` VALUES ('04', '李云', '16', '男', '13888888888');
INSERT INTO `student` VALUES ('05', '周梅', '14', '女', '13888888888');
INSERT INTO `student` VALUES ('06', '吴兰', '12', '女', '13888888888');
INSERT INTO `student` VALUES ('07', '郑竹', '19', '女', '13888888888');
INSERT INTO `student` VALUES ('08', '王菊', '35', '女', '13888888888');
INSERT INTO `student` VALUES ('09', '文文', '54', '男', '13888888888');
INSERT INTO `student` VALUES ('10', '好的', '25', '女', '13888888888');
INSERT INTO `student` VALUES ('11', '唐桂兰', '42', '女', '13888888888');
INSERT INTO `student` VALUES ('12', '阙欢', '17', '女', '13888888888');
INSERT INTO `student` VALUES ('13', '丁桂兰', '19', '男', '13888888888');
INSERT INTO `student` VALUES ('14', ' 李建', '13', '男', '13888888888');
INSERT INTO `student` VALUES ('15', ' 萧淑珍', '10', '男', '13888888888');
INSERT INTO `student` VALUES ('17', '郭玉英', '9', '男', '13888888888');
INSERT INTO `student` VALUES ('18', '叶建华', '36', '女', '13888888888');
INSERT INTO `student` VALUES ('19', '夏凤英', '21', '男', '13888888888');
INSERT INTO `student` VALUES ('20', '杨杨', '22', '男', '13888888888');
INSERT INTO `student` VALUES ('21', '杨洁', '29', '男', '13888888888');
INSERT INTO `student` VALUES ('22', '董莉', '14', '男', '13888888888');
INSERT INTO `student` VALUES ('23', '曹芳', '13', '男', '17388888888');
INSERT INTO `student` VALUES ('24', '高淑英', '16', '男', '13888888888');
INSERT INTO `student` VALUES ('25', '朱冬梅', '17', '女', '18888888888');
INSERT INTO `student` VALUES ('26', '徐颖', '27', '男', '15288888888');
INSERT INTO `student` VALUES ('27', '雷丽', '26', '男', '18688888888');
INSERT INTO `student` VALUES ('28', '李小红', '21', '女', '13888888888');
INSERT INTO `student` VALUES ('29', '罗瑜', '22', '女', '13888888888');
INSERT INTO `student` VALUES ('30', '贺玉', '21', '男', '13888888888');
INSERT INTO `student` VALUES ('31', '徐桂英', '23', '男', '18688888888');
INSERT INTO `student` VALUES ('32', '甘斌', '28', '男', '18688888888');
INSERT INTO `student` VALUES ('33', '傅桂芳', '24', '男', '13888888888');
INSERT INTO `student` VALUES ('34', '李红梅', '26', '女', '17388888888');
INSERT INTO `student` VALUES ('35', '丁涛', '19', '女', '17388888888');
INSERT INTO `student` VALUES ('36', '高霞', '11', '女', '17388888888');
INSERT INTO `student` VALUES ('37', '王勇', '17', '女', '17388888888');
INSERT INTO `student` VALUES ('38', '罗玉', '16', '女', '13888888888');
INSERT INTO `student` VALUES ('39', '汪宇', '17', '男', '13888888888');
INSERT INTO `student` VALUES ('40', '孟红', '18', '女', '13888888888');
INSERT INTO `student` VALUES ('41', '王凯', '13', '女', '13888888888');
INSERT INTO `student` VALUES ('42', '李芳', '54', '男', '18888888888');
INSERT INTO `student` VALUES ('43', '程桂英', '9', '男', '18888888888');
INSERT INTO `student` VALUES ('44', '李欢', '52', '男', '18888888888');
INSERT INTO `student` VALUES ('45', '杨伟', '35', '男', '13888888888');
INSERT INTO `student` VALUES ('46', '陈阳', '45', '女', '13888888888');
INSERT INTO `student` VALUES ('47', '罗丽华', '25', '女', '15288888888');
INSERT INTO `student` VALUES ('48', '邵彬', '14', '男', '15288888888');
INSERT INTO `student` VALUES ('49', '刘玉兰', '15', '男', '15288888888');
INSERT INTO `student` VALUES ('50', '王飞虎', '18', '男', NULL);
INSERT INTO `student` VALUES ('51', '稻草人', '22', '女', NULL);
INSERT INTO `student` VALUES ('52', '孙二娘', '22', '女', '18637548156');
INSERT INTO `student` VALUES ('53', '蒲公英', '25', '女', '12454248156');
INSERT INTO `student` VALUES ('54', '翠花', '22', '女', '18637548156');
INSERT INTO `student` VALUES ('55', '阿凡达', '26', '男', '19637548156');

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher`  (
  `tid` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL COMMENT '教师id',
  `tname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '教师姓名',
  PRIMARY KEY (`tid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('01', '张三3');
INSERT INTO `teacher` VALUES ('02', '李四4');
INSERT INTO `teacher` VALUES ('03', '王五5');
INSERT INTO `teacher` VALUES ('04', '赵六5');
INSERT INTO `teacher` VALUES ('05', '赵丽8');
INSERT INTO `teacher` VALUES ('06', '黄埔星9');
INSERT INTO `teacher` VALUES ('07', '赵天逸3');

SET FOREIGN_KEY_CHECKS = 1;
