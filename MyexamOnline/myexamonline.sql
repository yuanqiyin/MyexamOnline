/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50718
 Source Host           : localhost:3306
 Source Schema         : myexamonline

 Target Server Type    : MySQL
 Target Server Version : 50718
 File Encoding         : 65001

 Date: 05/06/2019 10:03:43
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for administrator
-- ----------------------------
DROP TABLE IF EXISTS `administrator`;
CREATE TABLE `administrator`  (
  `aid` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `aname` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sex` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pwd` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `birthdate` date NULL DEFAULT NULL,
  `email` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`aid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of administrator
-- ----------------------------
INSERT INTO `administrator` VALUES ('admin', 'admin', '男', '000000', '13256239566', '山东', '2018-04-03', '1440713368@qq.com');

-- ----------------------------
-- Table structure for choicequestion
-- ----------------------------
DROP TABLE IF EXISTS `choicequestion`;
CREATE TABLE `choicequestion`  (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `c_question` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `c_choiceA` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `c_choiceB` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `c_choiceC` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `c_choiceD` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `c_answer` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `c_subjectid` int(11) NOT NULL,
  PRIMARY KEY (`c_id`) USING BTREE,
  INDEX `choicequestion_ibfk_1`(`c_subjectid`) USING BTREE,
  CONSTRAINT `choicequestion_ibfk_1` FOREIGN KEY (`c_subjectid`) REFERENCES `subject` (`subjectid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 98 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of choicequestion
-- ----------------------------
INSERT INTO `choicequestion` VALUES (85, '首次提出“马克思主义中国化”这一概念的是', '李大钊', '周恩来', '鲁迅', '毛泽东', 'D', 1);
INSERT INTO `choicequestion` VALUES (86, '毛泽东思想是？', '毛泽东同志的著作', '毛泽东同志的讲话', '关于中国革命和建设的理论原则和经验总结', '毛泽东同志的演讲', 'C', 1);
INSERT INTO `choicequestion` VALUES (87, '邓小平理论作为党的指导思想，是党的哪一次会议确立的？', '十三大', '十四大', '十五大', '十六大', 'C', 1);
INSERT INTO `choicequestion` VALUES (88, '“三个代表”重要思想作为党的指导思想，是党的哪一次会议确立的？', '十二大', '十四大', '十六大', '十七大', 'C', 1);
INSERT INTO `choicequestion` VALUES (89, '科学发展观的核心是？', '以人为本', '全面发展', '科学发展', '协调发展', 'A', 1);
INSERT INTO `choicequestion` VALUES (90, '第一次提出科学发展观是党的哪次会议？', '十六届二次会议', '十六届三次会议', '十六届四次会议', '十六届五次会议', 'B', 1);
INSERT INTO `choicequestion` VALUES (91, '社会主义社会发展的直接动力是？', '阶级斗争', '改革', '工业革命', '民主斗争', 'B', 1);
INSERT INTO `choicequestion` VALUES (92, '我国的国体是？', '政治协商制度', '民代表大会制', '人民民主专政', '其他', 'C', 1);
INSERT INTO `choicequestion` VALUES (93, '非公有制经济是？', '社会主义市场经济的补充', '社会主义市场经济的重要组成部分', '社会主义市场经济的一部分', '社会主义市场经济的权宜之计', 'B', 1);
INSERT INTO `choicequestion` VALUES (94, '社会主义初级阶段的个人收入分配制度是？', '以按劳分配为主体、多种分配方式并存', '以按生产要素分配为主', '以按资本收益分配为主', '以劳动者贡献为主', 'A', 1);
INSERT INTO `choicequestion` VALUES (95, '社会主义民主的本质是？', '党的领导 ', '人民当家作主', '依法治国', '坚持社会主义道路', 'B', 1);
INSERT INTO `choicequestion` VALUES (96, '我国人民代表大会制度的组织原则是？', '人民当家作主原则', '公平、公开、公正原则', '民主集中制原则', '在宪法和法律范围内活动原则', 'C', 1);
INSERT INTO `choicequestion` VALUES (97, '我国的政党制度是？', '共产党的一党制', '共产党和民主党派的多党制', '共产党领导下的多党合作和政治协商制度', '共产党和民主党派共同执政的两党制', 'C', 1);

-- ----------------------------
-- Table structure for class
-- ----------------------------
DROP TABLE IF EXISTS `class`;
CREATE TABLE `class`  (
  `classid` int(11) NOT NULL AUTO_INCREMENT,
  `classname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `major` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `college` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `grade` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`classid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of class
-- ----------------------------
INSERT INTO `class` VALUES (3, '计算机1班', '计算机科学与技术', '计算机学院', '2016');
INSERT INTO `class` VALUES (4, '专英1班', '专英英语', '外国语学院', '2017');
INSERT INTO `class` VALUES (5, '化学2班', '化学', '生科学院', '2014');
INSERT INTO `class` VALUES (6, '音乐3班', '音乐', '音乐学', '2016');
INSERT INTO `class` VALUES (10, '电气1班', '电气', '工程学院', '2015');
INSERT INTO `class` VALUES (11, '软件2班', '软件工程', '软件学院', '2015');

-- ----------------------------
-- Table structure for fillquestion
-- ----------------------------
DROP TABLE IF EXISTS `fillquestion`;
CREATE TABLE `fillquestion`  (
  `f_id` int(11) NOT NULL AUTO_INCREMENT,
  `f_question` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `f_answer` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `f_subjectid` int(11) NOT NULL,
  PRIMARY KEY (`f_id`) USING BTREE,
  INDEX `fillquestion_ibfk_1`(`f_subjectid`) USING BTREE,
  CONSTRAINT `fillquestion_ibfk_1` FOREIGN KEY (`f_subjectid`) REFERENCES `subject` (`subjectid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 46 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fillquestion
-- ----------------------------
INSERT INTO `fillquestion` VALUES (39, '毛泽东思想的精髓和根本出发点是____?', '实事求是', 1);
INSERT INTO `fillquestion` VALUES (40, '率先批判“两个凡是”的是_____?', '毛泽东', 1);
INSERT INTO `fillquestion` VALUES (41, '邓小平指出，农业的发展，一靠政策，二靠___?', '科学', 1);
INSERT INTO `fillquestion` VALUES (42, '领导和团结全国各族人民是实现社会主义现代化的__?', '领导力量和依靠力量', 1);
INSERT INTO `fillquestion` VALUES (43, '党的十七大把包括___、“三个代表”重要思想、科学发展观在内的科学理论体系概括为 中国特色社会主义理论体系。', '邓小平理论', 1);
INSERT INTO `fillquestion` VALUES (44, '我国处于社会主义初级阶段，是党对中国国情的___?', '科学判断', 1);
INSERT INTO `fillquestion` VALUES (45, '中国共产党从幼年走向成熟的重要标志是___?', '遵义会议', 1);

-- ----------------------------
-- Table structure for grade
-- ----------------------------
DROP TABLE IF EXISTS `grade`;
CREATE TABLE `grade`  (
  `gid` int(11) NOT NULL AUTO_INCREMENT,
  `sid` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `paperid` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  `scorses` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`gid`) USING BTREE,
  INDEX `grade_ibfk_1`(`paperid`) USING BTREE,
  INDEX `grade_ibfk_2`(`sid`) USING BTREE,
  CONSTRAINT `grade_ibfk_1` FOREIGN KEY (`paperid`) REFERENCES `paper` (`paperid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `grade_ibfk_2` FOREIGN KEY (`sid`) REFERENCES `student` (`sid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 52 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of grade
-- ----------------------------
INSERT INTO `grade` VALUES (48, '150811423', 118, 28, 20);
INSERT INTO `grade` VALUES (49, '150811419', 119, 24, 15);
INSERT INTO `grade` VALUES (50, '150811419', 120, 0, 10);
INSERT INTO `grade` VALUES (51, '150811419', 121, 0, NULL);

-- ----------------------------
-- Table structure for judgequestion
-- ----------------------------
DROP TABLE IF EXISTS `judgequestion`;
CREATE TABLE `judgequestion`  (
  `j_id` int(11) NOT NULL AUTO_INCREMENT,
  `j_question` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `j_answer` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `j_subjectid` int(11) NOT NULL,
  PRIMARY KEY (`j_id`) USING BTREE,
  INDEX `judgequestion_ibfk_1`(`j_subjectid`) USING BTREE,
  CONSTRAINT `judgequestion_ibfk_1` FOREIGN KEY (`j_subjectid`) REFERENCES `subject` (`subjectid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 36 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of judgequestion
-- ----------------------------
INSERT INTO `judgequestion` VALUES (28, '中国共产党从幼年走向成熟的重要标志是遵义会议？', '1', 1);
INSERT INTO `judgequestion` VALUES (29, '党的十一大提出了建设有中国特色的社会主义命题？', '0', 1);
INSERT INTO `judgequestion` VALUES (30, '20世纪30年代,中国共产党内最早提出纠正主观主义的领导人是毛泽东?', '1', 1);
INSERT INTO `judgequestion` VALUES (31, '邓小平在上正确地评价了毛泽东和毛泽东思想?', '1', 1);
INSERT INTO `judgequestion` VALUES (32, '确立毛泽东思想为全党的指导思想的是八大?', '0', 1);
INSERT INTO `judgequestion` VALUES (33, '马克思主义中国化的最新成果是中国特色社会主义理论体系？', '1', 1);
INSERT INTO `judgequestion` VALUES (34, '邓小平理论回答了两个首要和基本理论问题是什么是社会主义,怎样建设社会主义？', '1', 1);
INSERT INTO `judgequestion` VALUES (35, '在党与民主党派的关系上实行长期共存、互相监督、肝胆相照、荣辱与共', '1', 1);

-- ----------------------------
-- Table structure for mistakes
-- ----------------------------
DROP TABLE IF EXISTS `mistakes`;
CREATE TABLE `mistakes`  (
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  `sid` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `questiontype` int(11) NOT NULL,
  `qid` int(11) NOT NULL,
  `misanswer` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `paperid` int(11) NOT NULL,
  PRIMARY KEY (`mid`) USING BTREE,
  INDEX `mistakes_ibfk_1`(`paperid`) USING BTREE,
  INDEX `mistakes_ibfk_2`(`sid`) USING BTREE,
  CONSTRAINT `mistakes_ibfk_1` FOREIGN KEY (`paperid`) REFERENCES `paper` (`paperid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `mistakes_ibfk_2` FOREIGN KEY (`sid`) REFERENCES `student` (`sid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 520 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mistakes
-- ----------------------------
INSERT INTO `mistakes` VALUES (453, '150811423', 0, 85, 'A', 118);
INSERT INTO `mistakes` VALUES (454, '150811423', 0, 86, 'B', 118);
INSERT INTO `mistakes` VALUES (455, '150811423', 0, 88, 'D', 118);
INSERT INTO `mistakes` VALUES (456, '150811423', 0, 89, 'B', 118);
INSERT INTO `mistakes` VALUES (457, '150811423', 0, 90, 'D', 118);
INSERT INTO `mistakes` VALUES (458, '150811423', 0, 92, 'D', 118);
INSERT INTO `mistakes` VALUES (459, '150811423', 0, 93, 'C', 118);
INSERT INTO `mistakes` VALUES (460, '150811423', 0, 94, 'C', 118);
INSERT INTO `mistakes` VALUES (461, '150811423', 1, 40, '邓小平', 118);
INSERT INTO `mistakes` VALUES (462, '150811423', 1, 41, '对策', 118);
INSERT INTO `mistakes` VALUES (463, '150811423', 1, 44, '判断', 118);
INSERT INTO `mistakes` VALUES (464, '150811423', 2, 29, '1', 118);
INSERT INTO `mistakes` VALUES (465, '150811423', 2, 32, '1', 118);
INSERT INTO `mistakes` VALUES (466, '150811419', 0, 85, 'B', 119);
INSERT INTO `mistakes` VALUES (467, '150811419', 0, 86, 'D', 119);
INSERT INTO `mistakes` VALUES (468, '150811419', 0, 87, 'B', 119);
INSERT INTO `mistakes` VALUES (469, '150811419', 0, 89, 'D', 119);
INSERT INTO `mistakes` VALUES (470, '150811419', 0, 93, 'D', 119);
INSERT INTO `mistakes` VALUES (471, '150811419', 0, 94, 'B', 119);
INSERT INTO `mistakes` VALUES (472, '150811419', 0, 95, 'D', 119);
INSERT INTO `mistakes` VALUES (473, '150811419', 1, 40, '邓小平', 119);
INSERT INTO `mistakes` VALUES (474, '150811419', 1, 41, '对策', 119);
INSERT INTO `mistakes` VALUES (475, '150811419', 1, 42, '邓小平理论', 119);
INSERT INTO `mistakes` VALUES (476, '150811419', 1, 43, '判断', 119);
INSERT INTO `mistakes` VALUES (477, '150811419', 2, 28, '0', 119);
INSERT INTO `mistakes` VALUES (478, '150811419', 2, 29, '1', 119);
INSERT INTO `mistakes` VALUES (479, '150811419', 2, 32, '1', 119);
INSERT INTO `mistakes` VALUES (480, '150811419', 0, 86, NULL, 120);
INSERT INTO `mistakes` VALUES (481, '150811419', 0, 87, NULL, 120);
INSERT INTO `mistakes` VALUES (482, '150811419', 0, 88, NULL, 120);
INSERT INTO `mistakes` VALUES (483, '150811419', 0, 89, NULL, 120);
INSERT INTO `mistakes` VALUES (484, '150811419', 0, 90, NULL, 120);
INSERT INTO `mistakes` VALUES (485, '150811419', 0, 91, NULL, 120);
INSERT INTO `mistakes` VALUES (486, '150811419', 0, 92, NULL, 120);
INSERT INTO `mistakes` VALUES (487, '150811419', 0, 93, NULL, 120);
INSERT INTO `mistakes` VALUES (488, '150811419', 0, 94, NULL, 120);
INSERT INTO `mistakes` VALUES (489, '150811419', 0, 95, NULL, 120);
INSERT INTO `mistakes` VALUES (490, '150811419', 1, 39, '', 120);
INSERT INTO `mistakes` VALUES (491, '150811419', 1, 40, '', 120);
INSERT INTO `mistakes` VALUES (492, '150811419', 1, 41, '', 120);
INSERT INTO `mistakes` VALUES (493, '150811419', 1, 42, '', 120);
INSERT INTO `mistakes` VALUES (494, '150811419', 1, 44, '', 120);
INSERT INTO `mistakes` VALUES (495, '150811419', 2, 28, NULL, 120);
INSERT INTO `mistakes` VALUES (496, '150811419', 2, 29, NULL, 120);
INSERT INTO `mistakes` VALUES (497, '150811419', 2, 30, NULL, 120);
INSERT INTO `mistakes` VALUES (498, '150811419', 2, 31, NULL, 120);
INSERT INTO `mistakes` VALUES (499, '150811419', 2, 32, NULL, 120);
INSERT INTO `mistakes` VALUES (500, '150811419', 0, 85, NULL, 121);
INSERT INTO `mistakes` VALUES (501, '150811419', 0, 86, NULL, 121);
INSERT INTO `mistakes` VALUES (502, '150811419', 0, 87, NULL, 121);
INSERT INTO `mistakes` VALUES (503, '150811419', 0, 88, NULL, 121);
INSERT INTO `mistakes` VALUES (504, '150811419', 0, 89, NULL, 121);
INSERT INTO `mistakes` VALUES (505, '150811419', 0, 90, NULL, 121);
INSERT INTO `mistakes` VALUES (506, '150811419', 0, 91, NULL, 121);
INSERT INTO `mistakes` VALUES (507, '150811419', 0, 92, NULL, 121);
INSERT INTO `mistakes` VALUES (508, '150811419', 0, 93, NULL, 121);
INSERT INTO `mistakes` VALUES (509, '150811419', 0, 94, NULL, 121);
INSERT INTO `mistakes` VALUES (510, '150811419', 1, 39, '', 121);
INSERT INTO `mistakes` VALUES (511, '150811419', 1, 40, '', 121);
INSERT INTO `mistakes` VALUES (512, '150811419', 1, 41, '', 121);
INSERT INTO `mistakes` VALUES (513, '150811419', 1, 42, '', 121);
INSERT INTO `mistakes` VALUES (514, '150811419', 1, 43, '', 121);
INSERT INTO `mistakes` VALUES (515, '150811419', 2, 28, NULL, 121);
INSERT INTO `mistakes` VALUES (516, '150811419', 2, 29, NULL, 121);
INSERT INTO `mistakes` VALUES (517, '150811419', 2, 31, NULL, 121);
INSERT INTO `mistakes` VALUES (518, '150811419', 2, 32, NULL, 121);
INSERT INTO `mistakes` VALUES (519, '150811419', 2, 33, NULL, 121);

-- ----------------------------
-- Table structure for paper
-- ----------------------------
DROP TABLE IF EXISTS `paper`;
CREATE TABLE `paper`  (
  `paperid` int(11) NOT NULL AUTO_INCREMENT,
  `starttime` datetime(0) NOT NULL,
  `endtime` datetime(0) NOT NULL,
  `subjectid` int(11) NOT NULL,
  `papername` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `c1` int(11) NOT NULL,
  `c2` int(11) NOT NULL,
  `c3` int(11) NOT NULL,
  `c4` int(11) NOT NULL,
  `c5` int(11) NOT NULL,
  `c6` int(11) NOT NULL,
  `c7` int(11) NOT NULL,
  `c8` int(11) NOT NULL,
  `c9` int(11) NOT NULL,
  `c10` int(11) NOT NULL,
  `f1` int(11) NOT NULL,
  `f2` int(11) NOT NULL,
  `f3` int(11) NOT NULL,
  `f4` int(11) NOT NULL,
  `f5` int(11) NOT NULL,
  `j1` int(11) NOT NULL,
  `j2` int(11) NOT NULL,
  `j3` int(11) NOT NULL,
  `j4` int(11) NOT NULL,
  `j5` int(11) NOT NULL,
  `s1` int(11) NOT NULL,
  `s2` int(11) NOT NULL,
  `tid` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `classid` int(11) NOT NULL,
  PRIMARY KEY (`paperid`) USING BTREE,
  INDEX `c1`(`c1`) USING BTREE,
  INDEX `c2`(`c2`) USING BTREE,
  INDEX `c3`(`c3`) USING BTREE,
  INDEX `c4`(`c4`) USING BTREE,
  INDEX `c5`(`c5`) USING BTREE,
  INDEX `c6`(`c6`) USING BTREE,
  INDEX `c7`(`c7`) USING BTREE,
  INDEX `paper_ibfk_30`(`c8`) USING BTREE,
  INDEX `c9`(`c9`) USING BTREE,
  INDEX `c10`(`c10`) USING BTREE,
  INDEX `f1`(`f1`) USING BTREE,
  INDEX `f2`(`f2`) USING BTREE,
  INDEX `f3`(`f3`) USING BTREE,
  INDEX `f4`(`f4`) USING BTREE,
  INDEX `f5`(`f5`) USING BTREE,
  INDEX `j1`(`j1`) USING BTREE,
  INDEX `j2`(`j2`) USING BTREE,
  INDEX `j3`(`j3`) USING BTREE,
  INDEX `j4`(`j4`) USING BTREE,
  INDEX `j5`(`j5`) USING BTREE,
  INDEX `paper_ibfk_21`(`tid`) USING BTREE,
  INDEX `paper_ibfk_22`(`classid`) USING BTREE,
  INDEX `paper_ibfk_23`(`subjectid`) USING BTREE,
  CONSTRAINT `paper_ibfk_21` FOREIGN KEY (`tid`) REFERENCES `teacher` (`tid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `paper_ibfk_22` FOREIGN KEY (`classid`) REFERENCES `class` (`classid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `paper_ibfk_23` FOREIGN KEY (`subjectid`) REFERENCES `subject` (`subjectid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `paper_ibfk_24` FOREIGN KEY (`c1`) REFERENCES `choicequestion` (`c_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `paper_ibfk_25` FOREIGN KEY (`c2`) REFERENCES `choicequestion` (`c_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `paper_ibfk_26` FOREIGN KEY (`c3`) REFERENCES `choicequestion` (`c_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `paper_ibfk_27` FOREIGN KEY (`c4`) REFERENCES `choicequestion` (`c_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `paper_ibfk_28` FOREIGN KEY (`c5`) REFERENCES `choicequestion` (`c_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `paper_ibfk_29` FOREIGN KEY (`c6`) REFERENCES `choicequestion` (`c_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `paper_ibfk_30` FOREIGN KEY (`c8`) REFERENCES `choicequestion` (`c_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `paper_ibfk_31` FOREIGN KEY (`c7`) REFERENCES `choicequestion` (`c_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `paper_ibfk_32` FOREIGN KEY (`c9`) REFERENCES `choicequestion` (`c_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `paper_ibfk_33` FOREIGN KEY (`c10`) REFERENCES `choicequestion` (`c_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `paper_ibfk_34` FOREIGN KEY (`f1`) REFERENCES `fillquestion` (`f_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `paper_ibfk_35` FOREIGN KEY (`f2`) REFERENCES `fillquestion` (`f_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `paper_ibfk_36` FOREIGN KEY (`f3`) REFERENCES `fillquestion` (`f_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `paper_ibfk_37` FOREIGN KEY (`f4`) REFERENCES `fillquestion` (`f_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `paper_ibfk_38` FOREIGN KEY (`f5`) REFERENCES `fillquestion` (`f_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `paper_ibfk_39` FOREIGN KEY (`j1`) REFERENCES `judgequestion` (`j_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `paper_ibfk_40` FOREIGN KEY (`j2`) REFERENCES `judgequestion` (`j_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `paper_ibfk_41` FOREIGN KEY (`j3`) REFERENCES `judgequestion` (`j_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `paper_ibfk_42` FOREIGN KEY (`j4`) REFERENCES `judgequestion` (`j_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `paper_ibfk_43` FOREIGN KEY (`j5`) REFERENCES `judgequestion` (`j_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 122 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of paper
-- ----------------------------
INSERT INTO `paper` VALUES (118, '2019-06-01 16:00:00', '2019-06-01 18:00:00', 1, '毛概基础测试卷', 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 39, 40, 41, 43, 44, 28, 29, 30, 32, 33, 2, 6, '25001', 4);
INSERT INTO `paper` VALUES (119, '2019-06-02 23:40:00', '2019-06-02 23:50:00', 1, '毛概期末测试卷第一套', 85, 86, 87, 88, 89, 90, 92, 93, 94, 95, 39, 40, 41, 42, 43, 28, 29, 30, 31, 32, 6, 10, '25001', 3);
INSERT INTO `paper` VALUES (120, '2019-06-03 10:50:00', '2019-06-03 12:50:00', 1, '毛概期末测试卷第二套', 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 39, 40, 41, 42, 44, 28, 29, 30, 31, 32, 6, 10, '25001', 3);
INSERT INTO `paper` VALUES (121, '2019-06-03 16:10:00', '2019-06-03 17:10:00', 1, '毛概期末测试卷第三套', 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 39, 40, 41, 42, 43, 28, 29, 31, 32, 33, 2, 10, '25001', 3);

-- ----------------------------
-- Table structure for shortanswerquestions
-- ----------------------------
DROP TABLE IF EXISTS `shortanswerquestions`;
CREATE TABLE `shortanswerquestions`  (
  `s_id` int(11) NOT NULL AUTO_INCREMENT,
  `s_question` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `s_answer` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `s_subjectid` int(11) NOT NULL,
  PRIMARY KEY (`s_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shortanswerquestions
-- ----------------------------
INSERT INTO `shortanswerquestions` VALUES (2, '请回答我国提出改革开放的时间和会议。', '1979年，十一届三中全会', 1);
INSERT INTO `shortanswerquestions` VALUES (6, '简述社会核心价值观的内容', '富强，民主，文明，和谐', 1);
INSERT INTO `shortanswerquestions` VALUES (10, '简述我国现代代经济发展的新常态', '我国经济发展进入新常态，是外部因素和内在条件互相作用的结果，是符合经济发展逻辑的变化过程', 1);
INSERT INTO `shortanswerquestions` VALUES (11, '简述如何加强党的建设', '加强理论建设，站稳大众立场，对党忠诚，求真务实', 1);

-- ----------------------------
-- Table structure for stuanswer
-- ----------------------------
DROP TABLE IF EXISTS `stuanswer`;
CREATE TABLE `stuanswer`  (
  `a_id` int(11) NOT NULL AUTO_INCREMENT,
  `paperid` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `sa_answer1` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `sa_answer2` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `scorses` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`a_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of stuanswer
-- ----------------------------
INSERT INTO `stuanswer` VALUES (2, 94, 20152401, '测试', '测试', 11111);
INSERT INTO `stuanswer` VALUES (3, 108, 20152401, 'java是一门编程语言', 'java是一门面向对象的，多线程的语言', 20);
INSERT INTO `stuanswer` VALUES (7, 111, 20152401, '222', '222', 11);
INSERT INTO `stuanswer` VALUES (8, 113, 20152401, '', NULL, 11);
INSERT INTO `stuanswer` VALUES (9, 115, 20152401, '333', '333', 11);
INSERT INTO `stuanswer` VALUES (11, 118, 150811423, '1979，十一届三中全会', '富强民主文明和谐', 20);
INSERT INTO `stuanswer` VALUES (12, 119, 150811419, '富强民主文明和谐', '是根本', 15);
INSERT INTO `stuanswer` VALUES (13, 120, 150811419, '', '', 10);
INSERT INTO `stuanswer` VALUES (14, 121, 150811419, '1979，十一届三中全会', '是根本', NULL);

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `sid` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sex` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `classid` int(11) NULL DEFAULT NULL,
  `pwd` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `birthdate` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sid`) USING BTREE,
  INDEX `student_ibfk_1`(`classid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('150811402', '华成志', '男', 11, '123', '17854112369', '山东', '35556', '236984561@qq.com');
INSERT INTO `student` VALUES ('150811413', '高乐乐', '男', 3, 'gzr15964001689', '15964001689', '济南', '1996-05-01', '596856231@qq.com');
INSERT INTO `student` VALUES ('150811419', '刘小涛', '男', 3, 'lt4219', '17854114219', '山东', '1997-06-05', '256398356@qq.com');
INSERT INTO `student` VALUES ('150811422', '梁小帅', '男', 3, 'lxs369369', '17854114627', '济南', '1997-10-23', '1563258741@qq.com');
INSERT INTO `student` VALUES ('150811423', '殷远齐', '男', 4, '123', '15964001689', '济南', '1997-11-01', '2395153341@qq.com');

-- ----------------------------
-- Table structure for subject
-- ----------------------------
DROP TABLE IF EXISTS `subject`;
CREATE TABLE `subject`  (
  `subjectid` int(11) NOT NULL AUTO_INCREMENT,
  `subjectname` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `subjectteacher` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `subjectterm` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`subjectid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of subject
-- ----------------------------
INSERT INTO `subject` VALUES (1, '毛概', '庄老师', '大二上学期');
INSERT INTO `subject` VALUES (7, 'Java语言程序设计', '夏冰冰', '大二上学期');

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher`  (
  `tid` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tname` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sex` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pwd` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `birthdate` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`tid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('25001', '高老师', '男', '123', '15964001929', '济南', '1991-05-30', '456398745@qq.com');
INSERT INTO `teacher` VALUES ('25002', '梁老师', '男', '123', '1234545', '济南', '1985-02-08', '663598742@qq.com');

SET FOREIGN_KEY_CHECKS = 1;
