
SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cms_article
-- ----------------------------
DROP TABLE IF EXISTS `cms_article`;
CREATE TABLE `cms_article` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `category_id` bigint NOT NULL COMMENT '栏目编号',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `link` varchar(255) DEFAULT NULL COMMENT '文章链接',
  `color` varchar(50) DEFAULT NULL COMMENT '标题颜色',
  `image` varchar(255) DEFAULT NULL COMMENT '文章图片',
  `keywords` varchar(255) DEFAULT NULL COMMENT '关键字',
  `description` varchar(255) DEFAULT NULL COMMENT '描述、摘要',
  `weight` int(11) DEFAULT '0' COMMENT '权重，越大越靠前',
  `weight_date` datetime DEFAULT NULL COMMENT '权重期限',
  `hits` int(11) DEFAULT '0' COMMENT '点击数',
  `posid` varchar(10) DEFAULT NULL COMMENT '推荐位，多选',
  `custom_content_view` varchar(255) DEFAULT NULL COMMENT '自定义内容视图',
  `view_config` text COMMENT '视图配置',
  `create_by` bigint DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` bigint DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `cms_article_create_by` (`create_by`),
  KEY `cms_article_title` (`title`),
  KEY `cms_article_keywords` (`keywords`),
  KEY `cms_article_del_flag` (`del_flag`),
  KEY `cms_article_weight` (`weight`),
  KEY `cms_article_update_date` (`update_date`),
  KEY `cms_article_category_id` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文章表';

-- ----------------------------
-- Records of cms_article
-- ----------------------------
INSERT INTO `cms_article` VALUES (1, 3, '文章标题标题标题标题', null, 'green', null, '关键字1,关键字2', null, '0', null, '6', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES (2, 3, '文章标题标题标题标题', null, 'red', null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `cms_article` VALUES (3, 3, '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '2', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES (4, 3, '文章标题标题标题标题', null, 'green', null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES (5, 3, '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES (6, 3, '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES (7, 4, '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES (8, 4, '文章标题标题标题标题', null, 'blue', null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES (9, 4, '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES (10, 4, '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '3', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES (11, 5, '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES (12, 5, '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '1', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES (13, 5, '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES (14, 7, '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES (15, 7, '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES (16, 7, '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES (17, 7, '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES (18, 8, '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES (19, 8, '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES (20, 8, '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES (21, 8, '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES (22, 9, '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES (23, 9, '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES (24, 9, '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES (25, 9, '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES (26, 9, '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES (27, 11, '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '1', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES (28, 11, '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES (29, 11, '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES (30, 11, '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES (31, 11, '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES (32, 12, '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES (33, 12, '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES (34, 12, '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES (35, 12, '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES (36, 12, '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES (37, 13, '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '1', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES (38, 13, '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES (39, 13, '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES (40, 13, '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES (41, 14, '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES (42, 14, '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES (43, 14, '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES (44, 14, '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES (45, 14, '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES (46, 15, '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '1', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES (47, 15, '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES (48, 15, '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES (49, 16, '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '1', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES (50, 17, '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '1', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES (51, 17, '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES (52, 26, '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES (53, 26, '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');

-- ----------------------------
-- Table structure for cms_article_data
-- ----------------------------
DROP TABLE IF EXISTS `cms_article_data`;
CREATE TABLE `cms_article_data` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `content` text COMMENT '文章内容',
  `copyfrom` varchar(255) DEFAULT NULL COMMENT '文章来源',
  `relation` varchar(255) DEFAULT NULL COMMENT '相关文章',
  `allow_comment` char(1) DEFAULT NULL COMMENT '是否允许评论',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文章详表';

-- ----------------------------
-- Records of cms_article_data
-- ----------------------------
INSERT INTO `cms_article_data` VALUES (1, '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES (2, '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES (3, '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES (4, '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES (5, '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES (6, '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES (7, '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES (8, '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES (9, '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES (10, '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES (11, '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES (12, '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES (13, '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES (14, '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES (15, '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES (16, '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES (17, '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES (18, '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES (19, '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES (20, '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES (21, '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES (22, '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES (23, '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES (24, '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES (25, '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES (26, '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES (27, '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES (28, '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES (29, '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES (30, '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES (31, '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES (32, '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES (33, '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES (34, '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES (35, '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES (36, '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES (37, '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES (38, '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES (39, '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES (40, '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES (41, '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES (42, '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES (43, '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES (44, '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES (45, '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES (46, '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES (47, '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES (48, '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES (49, '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES (50, '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES (51, '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES (52, '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES (53, '文章内容内容内容内容', '来源', '1,2,3', '1');

-- ----------------------------
-- Table structure for cms_category
-- ----------------------------
DROP TABLE IF EXISTS `cms_category`;
CREATE TABLE `cms_category` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `parent_id` bigint NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) NOT NULL COMMENT '所有父级编号',
  `site_id` bigint DEFAULT '1' COMMENT '站点编号',
  `office_id` bigint DEFAULT NULL COMMENT '归属机构',
  `module` varchar(20) DEFAULT NULL COMMENT '栏目模块',
  `name` varchar(100) NOT NULL COMMENT '栏目名称',
  `image` varchar(255) DEFAULT NULL COMMENT '栏目图片',
  `href` varchar(255) DEFAULT NULL COMMENT '链接',
  `target` varchar(20) DEFAULT NULL COMMENT '目标',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `keywords` varchar(255) DEFAULT NULL COMMENT '关键字',
  `sort` int(11) DEFAULT '30' COMMENT '排序（升序）',
  `in_menu` char(1) DEFAULT '1' COMMENT '是否在导航中显示',
  `in_list` char(1) DEFAULT '1' COMMENT '是否在分类页中显示列表',
  `show_modes` char(1) DEFAULT '0' COMMENT '展现方式',
  `allow_comment` char(1) DEFAULT NULL COMMENT '是否允许评论',
  `is_audit` char(1) DEFAULT NULL COMMENT '是否需要审核',
  `custom_list_view` varchar(255) DEFAULT NULL COMMENT '自定义列表视图',
  `custom_content_view` varchar(255) DEFAULT NULL COMMENT '自定义内容视图',
  `view_config` text COMMENT '视图配置',
  `create_by` bigint DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` bigint DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `cms_category_parent_id` (`parent_id`),
  KEY `cms_category_module` (`module`),
  KEY `cms_category_name` (`name`),
  KEY `cms_category_sort` (`sort`),
  KEY `cms_category_del_flag` (`del_flag`),
  KEY `cms_category_office_id` (`office_id`),
  KEY `cms_category_site_id` (`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='栏目表';

-- ----------------------------
-- Records of cms_category
-- ----------------------------
INSERT INTO `cms_category` VALUES (1, 0, '0,', 0, 1, null, '顶级栏目', null, null, null, null, null, '0', '1', '1', '0', '0', '1', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_category` VALUES (2, 1, '0,1,', 1, 3, 'article', '组织机构', null, null, null, null, null, '10', '1', '1', '0', '0', '1', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_category` VALUES (3, 2, '0,1,2,', 1, 3, 'article', '网站简介', null, null, null, null, null, '30', '1', '1', '0', '0', '1', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_category` VALUES (4, 2, '0,1,2,', 1, 3, 'article', '内部机构', null, null, null, null, null, '40', '1', '1', '0', '0', '1', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_category` VALUES (5, 2, '0,1,2,', 1, 3, 'article', '地方机构', null, null, null, null, null, '50', '1', '1', '0', '0', '1', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_category` VALUES (6, 1, '0,1,', 1, 3, 'article', '质量检验', null, null, null, null, null, '20', '1', '1', '1', '1', '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_category` VALUES (7, 6, '0,1,6,', 1, 3, 'article', '产品质量', null, null, null, null, null, '30', '1', '1', '0', '1', '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_category` VALUES (8, 6, '0,1,6,', 1, 3, 'article', '技术质量', null, null, null, null, null, '40', '1', '1', '0', '1', '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_category` VALUES (9, 6, '0,1,6,', 1, 3, 'article', '工程质量', null, null, null, null, null, '50', '1', '1', '0', '1', '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_category` VALUES (10, 1, '0,1,', 1, 4, 'article', '软件介绍', null, null, null, null, null, '20', '1', '1', '0', '1', '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_category` VALUES (11, 10, '0,1,10,', 1, 4, 'article', '网络工具', null, null, null, null, null, '30', '1', '1', '0', '1', '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_category` VALUES (12, 10, '0,1,10,', 1, 4, 'article', '浏览工具', null, null, null, null, null, '40', '1', '1', '0', '1', '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_category` VALUES (13, 10, '0,1,10,', 1, 4, 'article', '浏览辅助', null, null, null, null, null, '50', '1', '1', '0', '1', '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_category` VALUES (14, 10, '0,1,10,', 1, 4, 'article', '网络优化', null, null, null, null, null, '50', '1', '1', '0', '1', '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_category` VALUES (15, 10, '0,1,10,', 1, 4, 'article', '邮件处理', null, null, null, null, null, '50', '1', '1', '0', '1', '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_category` VALUES (16, 10, '0,1,10,', 1, 4, 'article', '下载工具', null, null, null, null, null, '50', '1', '1', '0', '1', '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_category` VALUES (17, 10, '0,1,10,', 1, 4, 'article', '搜索工具', null, null, null, null, null, '50', '1', '1', '2', '1', '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_category` VALUES (18, 1, '0,1,', 1, 5, 'link', '友情链接', null, null, null, null, null, '90', '1', '1', '0', '1', '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_category` VALUES (19, 18, '0,1,18,', 1, 5, 'link', '常用网站', null, null, null, null, null, '50', '1', '1', '0', '1', '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_category` VALUES (20, 18, '0,1,18,', 1, 5, 'link', '门户网站', null, null, null, null, null, '50', '1', '1', '0', '1', '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_category` VALUES (21, 18, '0,1,18,', 1, 5, 'link', '购物网站', null, null, null, null, null, '50', '1', '1', '0', '1', '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_category` VALUES (22, 18, '0,1,18,', 1, 5, 'link', '交友社区', null, null, null, null, null, '50', '1', '1', '0', '1', '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_category` VALUES (23, 18, '0,1,18,', 1, 5, 'link', '音乐视频', null, null, null, null, null, '50', '1', '1', '0', '1', '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_category` VALUES (24, 1, '0,1,', 1, 6, null, '百度一下', null, 'http://www.baidu.com', '_blank', null, null, '90', '1', '1', '0', '1', '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_category` VALUES (25, 1, '0,1,', 1, 6, null, '全文检索', null, '/search', null, null, null, '90', '0', '1', '0', '1', '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_category` VALUES (26, 1, '0,1,', 2, 6, 'article', '测试栏目', null, null, null, null, null, '90', '1', '1', '0', '1', '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_category` VALUES (27, 1, '0,1,', 1, 6, null, '公共留言', null, '/guestbook', null, null, null, '90', '1', '1', '0', '1', '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');

-- ----------------------------
-- Table structure for cms_comment
-- ----------------------------
DROP TABLE IF EXISTS `cms_comment`;
CREATE TABLE `cms_comment` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `category_id` bigint NOT NULL COMMENT '栏目编号',
  `content_id` bigint NOT NULL COMMENT '栏目内容的编号',
  `title` varchar(255) DEFAULT NULL COMMENT '栏目内容的标题',
  `content` varchar(255) DEFAULT NULL COMMENT '评论内容',
  `name` varchar(100) DEFAULT NULL COMMENT '评论姓名',
  `ip` varchar(100) DEFAULT NULL COMMENT '评论IP',
  `create_date` datetime NOT NULL COMMENT '评论时间',
  `audit_user_id` varchar(64) DEFAULT NULL COMMENT '审核人',
  `audit_date` datetime DEFAULT NULL COMMENT '审核时间',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `cms_comment_category_id` (`category_id`),
  KEY `cms_comment_content_id` (`content_id`),
  KEY `cms_comment_status` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='评论表';

-- ----------------------------
-- Records of cms_comment
-- ----------------------------

-- ----------------------------
-- Table structure for cms_guestbook
-- ----------------------------
DROP TABLE IF EXISTS `cms_guestbook`;
CREATE TABLE `cms_guestbook` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `type` char(1) NOT NULL COMMENT '留言分类',
  `content` varchar(255) NOT NULL COMMENT '留言内容',
  `name` varchar(100) NOT NULL COMMENT '姓名',
  `email` varchar(100) NOT NULL COMMENT '邮箱',
  `phone` varchar(100) NOT NULL COMMENT '电话',
  `workunit` varchar(100) NOT NULL COMMENT '单位',
  `ip` varchar(100) NOT NULL COMMENT 'IP',
  `create_date` datetime NOT NULL COMMENT '留言时间',
  `re_user_id` varchar(64) DEFAULT NULL COMMENT '回复人',
  `re_date` datetime DEFAULT NULL COMMENT '回复时间',
  `re_content` varchar(100) DEFAULT NULL COMMENT '回复内容',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `cms_guestbook_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='留言板';

-- ----------------------------
-- Table structure for cms_link
-- ----------------------------
DROP TABLE IF EXISTS `cms_link`;
CREATE TABLE `cms_link` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `category_id` bigint NOT NULL COMMENT '栏目编号',
  `title` varchar(255) NOT NULL COMMENT '链接名称',
  `color` varchar(50) DEFAULT NULL COMMENT '标题颜色',
  `image` varchar(255) DEFAULT NULL COMMENT '链接图片',
  `href` varchar(255) DEFAULT NULL COMMENT '链接地址',
  `weight` int(11) DEFAULT '0' COMMENT '权重，越大越靠前',
  `weight_date` datetime DEFAULT NULL COMMENT '权重期限',
  `create_by` bigint DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` bigint DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `cms_link_category_id` (`category_id`),
  KEY `cms_link_title` (`title`),
  KEY `cms_link_del_flag` (`del_flag`),
  KEY `cms_link_weight` (`weight`),
  KEY `cms_link_create_by` (`create_by`),
  KEY `cms_link_update_date` (`update_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='友情链接';

-- ----------------------------
-- Records of cms_link
-- ----------------------------
INSERT INTO `cms_link` VALUES (1, 19, 'JeeSite', null, null, 'http://thinkgem.github.com/jeesite', '0', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_link` VALUES (2, 19, 'ThinkGem', null, null, 'http://thinkgem.iteye.com/', '0', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_link` VALUES (3, 19, '百度一下', null, null, 'http://www.baidu.com', '0', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_link` VALUES (4, 19, '谷歌搜索', null, null, 'http://www.google.com', '0', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_link` VALUES (5, 20, '新浪网', null, null, 'http://www.sina.com.cn', '0', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_link` VALUES (6, 20, '腾讯网', null, null, 'http://www.qq.com/', '0', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_link` VALUES (7, 21, '淘宝网', null, null, 'http://www.taobao.com/', '0', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_link` VALUES (8, 21, '新华网', null, null, 'http://www.xinhuanet.com/', '0', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_link` VALUES (9, 22, '赶集网', null, null, 'http://www.ganji.com/', '0', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_link` VALUES (10, 22, '58同城', null, null, 'http://www.58.com/', '0', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_link` VALUES (11, 23, '视频大全', null, null, 'http://v.360.cn/', '0', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_link` VALUES (12, 23, '凤凰网', null, null, 'http://www.ifeng.com/', '0', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');

-- ----------------------------
-- Table structure for cms_site
-- ----------------------------
DROP TABLE IF EXISTS `cms_site`;
CREATE TABLE `cms_site` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(100) NOT NULL COMMENT '站点名称',
  `title` varchar(100) NOT NULL COMMENT '站点标题',
  `logo` varchar(255) DEFAULT NULL COMMENT '站点Logo',
  `domain` varchar(255) DEFAULT NULL COMMENT '站点域名',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `keywords` varchar(255) DEFAULT NULL COMMENT '关键字',
  `theme` varchar(255) DEFAULT 'default' COMMENT '主题',
  `copyright` text COMMENT '版权信息',
  `custom_index_view` varchar(255) DEFAULT NULL COMMENT '自定义站点首页视图',
  `create_by` bigint DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` bigint DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `cms_site_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='站点表';

-- ----------------------------
-- Records of cms_site
-- ----------------------------
INSERT INTO `cms_site` VALUES (1, '默认站点', 'JeeSite Web', null, null, 'JeeSite', 'JeeSite', 'basic', 'Copyright &copy; 2012-2013 <a href=\'http://thinkgem.iteye.com\' target=\'_blank\'>ThinkGem</a> - Powered By <a href=\'https://github.com/thinkgem/jeesite\' target=\'_blank\'>JeeSite</a> V1.0', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_site` VALUES (2, '子站点测试', 'JeeSite Subsite', null, null, 'JeeSite subsite', 'JeeSite subsite', 'basic', 'Copyright &copy; 2012-2013 <a href=\'http://thinkgem.iteye.com\' target=\'_blank\'>ThinkGem</a> - Powered By <a href=\'https://github.com/thinkgem/jeesite\' target=\'_blank\'>JeeSite</a> V1.0', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');

-- ----------------------------
-- Table structure for gen_scheme
-- ----------------------------
DROP TABLE IF EXISTS `gen_scheme`;
CREATE TABLE `gen_scheme` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(200) DEFAULT NULL COMMENT '名称',
  `category` varchar(2000) DEFAULT NULL COMMENT '分类',
  `package_name` varchar(500) DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) DEFAULT NULL COMMENT '生成模块名',
  `sub_module_name` varchar(30) DEFAULT NULL COMMENT '生成子模块名',
  `function_name` varchar(500) DEFAULT NULL COMMENT '生成功能名',
  `function_name_simple` varchar(100) DEFAULT NULL COMMENT '生成功能名（简写）',
  `function_author` varchar(100) DEFAULT NULL COMMENT '生成功能作者',
  `gen_table_id` varchar(200) DEFAULT NULL COMMENT '生成表编号',
  `create_by` bigint DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` bigint DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记（0：正常；1：删除）',
  PRIMARY KEY (`id`),
  KEY `gen_scheme_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='生成方案';

-- ----------------------------
-- Records of gen_scheme
-- ----------------------------
INSERT INTO `gen_scheme` VALUES (1, '单表', 'curd', 'com.footing.website.modules', 'test', '', '单表生成', '单表', 'Footing', '1', '1', '2013-08-12 13:10:05', '1', '2016-03-02 13:46:48', '', '0');
INSERT INTO `gen_scheme` VALUES (2, '主子表', 'curd_many', 'com.footing.website.modules', 'test', '', '主子表生成', '主子表', 'Footing', '2', '1', '2013-08-12 13:10:05', '1', '2016-03-02 14:37:20', '', '0');
INSERT INTO `gen_scheme` VALUES (3, '树结构', 'treeTable', 'com.footing.website.modules', 'test', '', '树结构生成', '树结构', 'Footing', '4', '1', '2013-08-12 13:10:05', '1', '2016-03-02 13:46:52', '', '0');

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(200) DEFAULT NULL COMMENT '名称',
  `comments` varchar(500) DEFAULT NULL COMMENT '描述',
  `class_name` varchar(100) DEFAULT NULL COMMENT '实体类名称',
  `parent_table` varchar(200) DEFAULT NULL COMMENT '关联父表',
  `parent_table_fk` varchar(100) DEFAULT NULL COMMENT '关联父表外键',
  `create_by` bigint DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` bigint DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记（0：正常；1：删除）',
  PRIMARY KEY (`id`),
  KEY `gen_table_name` (`name`),
  KEY `gen_table_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='业务表';

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES (1, 'test_data', '业务数据表', 'TestData', '', '', '1', '2016-3-14 14:05:01', '1', '2016-3-14 14:05:01', '', '0');
INSERT INTO `gen_table` VALUES (2, 'test_data_main', '业务数据表', 'TestDataMain', '', '', '1', '2016-3-14 14:06:13', '1', '2016-3-14 14:06:13', '', '0');
INSERT INTO `gen_table` VALUES (3, 'test_data_child', '业务数据子表', 'TestDataChild', 'test_data_main', 'test_data_main_id', '1', '2016-3-14 14:06:43', '1', '2016-3-14 14:06:43', '', '0');
INSERT INTO `gen_table` VALUES (4, 'test_tree', '树结构表', 'TestTree', '', '', '1', '2016-3-14 14:06:58', '1', '2016-3-14 14:06:58', '', '0');

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `gen_table_id` bigint DEFAULT NULL COMMENT '归属表编号',
  `name` varchar(200) DEFAULT NULL COMMENT '名称',
  `comments` varchar(500) DEFAULT NULL COMMENT '描述',
  `jdbc_type` varchar(100) DEFAULT NULL COMMENT '列的数据类型的字节长度',
  `java_type` varchar(500) DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) DEFAULT NULL COMMENT '是否主键',
  `is_null` char(1) DEFAULT NULL COMMENT '是否可为空',
  `is_insert` char(1) DEFAULT NULL COMMENT '是否为插入字段',
  `is_edit` char(1) DEFAULT NULL COMMENT '是否编辑字段',
  `is_list` char(1) DEFAULT NULL COMMENT '是否列表字段',
  `is_query` char(1) DEFAULT NULL COMMENT '是否查询字段',
  `query_type` varchar(200) DEFAULT NULL COMMENT '查询方式（等于、不等于、大于、小于、范围、左LIKE、右LIKE、左右LIKE）',
  `show_type` varchar(200) DEFAULT NULL COMMENT '字段生成方案（文本框、文本域、下拉框、复选框、单选框、字典选择、人员选择、部门选择、区域选择）',
  `dict_type` varchar(200) DEFAULT NULL COMMENT '字典类型',
  `settings` varchar(2000) DEFAULT NULL COMMENT '其它设置（扩展字段JSON）',
  `sort` decimal(10,0) DEFAULT NULL COMMENT '排序（升序）',
  `create_by` bigint DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` bigint DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记（0：正常；1：删除）',
  PRIMARY KEY (`id`),
  KEY `gen_table_column_table_id` (`gen_table_id`),
  KEY `gen_table_column_name` (`name`),
  KEY `gen_table_column_sort` (`sort`),
  KEY `gen_table_column_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='业务表字段';

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES (1, 1, 'id', '编号', 'bigint(20)', 'Long', 'id', '1', '0', '0', '0', '0', '0', '=', 'input', '', NULL, 10, '1', '2016-3-14 14:05:01', '1', '2016-3-14 14:05:01', NULL, '0');
INSERT INTO `gen_table_column` VALUES (2, 1, 'user_id', '归属用户', 'bigint(20)', 'com.footing.website.modules.entity.User', 'user.id|name', '0', '1', '1', '1', '0', '0', '=', 'userselect', '', NULL, 20, '1', '2016-3-14 14:05:01', '1', '2016-3-14 14:05:01', NULL, '0');
INSERT INTO `gen_table_column` VALUES (3, 1, 'office_id', '归属部门', 'bigint(20)', 'com.footing.website.modules.entity.Office', 'office.id|name', '0', '1', '1', '1', '1', '1', '=', 'officeselect', '', NULL, 30, '1', '2016-3-14 14:05:01', '1', '2016-3-14 14:05:01', NULL, '0');
INSERT INTO `gen_table_column` VALUES (4, 1, 'area_id', '归属区域', 'bigint(20)', 'com.footing.website.modules.entity.Area', 'area.id|name', '0', '1', '1', '1', '1', '1', '=', 'areaselect', '', NULL, 40, '1', '2016-3-14 14:05:01', '1', '2016-3-14 14:05:01', NULL, '0');
INSERT INTO `gen_table_column` VALUES (5, 1, 'name', '名称', 'varchar(100)', 'String', 'name', '0', '1', '1', '1', '1', '1', 'like', 'input', '', NULL, 50, '1', '2016-3-14 14:05:01', '1', '2016-3-14 14:05:01', NULL, '0');
INSERT INTO `gen_table_column` VALUES (6, 1, 'sex', '性别', 'char(1)', 'String', 'sex', '0', '1', '1', '1', '1', '0', '=', 'radiobox', 'sex', NULL, 60, '1', '2016-3-14 14:05:01', '1', '2016-3-14 14:05:01', NULL, '0');
INSERT INTO `gen_table_column` VALUES (7, 1, 'in_date', '加入日期', 'date', 'java.util.Date', 'inDate', '0', '1', '1', '1', '1', '1', 'between', 'dateselect', '', NULL, 70, '1', '2016-3-14 14:05:01', '1', '2016-3-14 14:05:01', NULL, '0');
INSERT INTO `gen_table_column` VALUES (8, 1, 'create_by', '创建者', 'varchar(64)', 'com.footing.website.modules.entity.User', 'createBy.id', '0', '0', '1', '0', '0', '0', '=', 'input', '', NULL, 80, '1', '2016-3-14 14:05:01', '1', '2016-3-14 14:05:01', NULL, '0');
INSERT INTO `gen_table_column` VALUES (9, 1, 'create_date', '创建时间', 'datetime', 'java.util.Date', 'createDate', '0', '0', '1', '0', '0', '0', '=', 'dateselect', '', NULL, 90, '1', '2016-3-14 14:05:01', '1', '2016-3-14 14:05:01', NULL, '0');
INSERT INTO `gen_table_column` VALUES (10, 1, 'update_by', '更新者', 'varchar(64)', 'com.footing.website.modules.entity.User', 'updateBy.id', '0', '0', '1', '1', '0', '0', '=', 'input', '', NULL, 100, '1', '2016-3-14 14:05:01', '1', '2016-3-14 14:05:01', NULL, '0');
INSERT INTO `gen_table_column` VALUES (11, 1, 'update_date', '更新时间', 'datetime', 'java.util.Date', 'updateDate', '0', '0', '1', '1', '1', '0', '=', 'dateselect', '', NULL, 110, '1', '2016-3-14 14:05:01', '1', '2016-3-14 14:05:01', NULL, '0');
INSERT INTO `gen_table_column` VALUES (12, 1, 'remarks', '备注信息', 'varchar(255)', 'String', 'remarks', '0', '1', '1', '1', '1', '0', '=', 'textarea', '', NULL, 120, '1', '2016-3-14 14:05:01', '1', '2016-3-14 14:05:01', NULL, '0');
INSERT INTO `gen_table_column` VALUES (13, 1, 'del_flag', '删除标记', 'char(1)', 'String', 'delFlag', '0', '0', '1', '0', '0', '0', '=', 'radiobox', 'del_flag', NULL, 130, '1', '2016-3-14 14:05:01', '1', '2016-3-14 14:05:01', NULL, '0');
INSERT INTO `gen_table_column` VALUES (14, 2, 'id', '编号', 'bigint(20)', 'Long', 'id', '1', '0', '0', '0', '0', '0', '=', 'input', '', NULL, 10, '1', '2016-3-14 14:06:13', '1', '2016-3-14 14:06:13', NULL, '0');
INSERT INTO `gen_table_column` VALUES (15, 2, 'user_id', '归属用户', 'bigint(20)', 'com.footing.website.modules.entity.User', 'user.id|name', '0', '1', '1', '1', '1', '0', '=', 'userselect', '', NULL, 20, '1', '2016-3-14 14:06:13', '1', '2016-3-14 14:06:13', NULL, '0');
INSERT INTO `gen_table_column` VALUES (16, 2, 'office_id', '归属部门', 'bigint(20)', 'com.footing.website.modules.entity.Office', 'office.id|name', '0', '1', '1', '1', '1', '1', '=', 'officeselect', '', NULL, 30, '1', '2016-3-14 14:06:13', '1', '2016-3-14 14:06:13', NULL, '0');
INSERT INTO `gen_table_column` VALUES (17, 2, 'area_id', '归属区域', 'bigint(20)', 'com.footing.website.modules.entity.Area', 'area.id|name', '0', '1', '1', '1', '1', '1', '=', 'areaselect', '', NULL, 40, '1', '2016-3-14 14:06:13', '1', '2016-3-14 14:06:13', NULL, '0');
INSERT INTO `gen_table_column` VALUES (18, 2, 'name', '名称', 'varchar(100)', 'String', 'name', '0', '1', '1', '1', '1', '1', 'like', 'input', '', NULL, 50, '1', '2016-3-14 14:06:13', '1', '2016-3-14 14:06:13', NULL, '0');
INSERT INTO `gen_table_column` VALUES (19, 2, 'sex', '性别', 'char(1)', 'String', 'sex', '0', '1', '1', '1', '1', '0', '=', 'radiobox', 'sex', NULL, 60, '1', '2016-3-14 14:06:13', '1', '2016-3-14 14:06:13', NULL, '0');
INSERT INTO `gen_table_column` VALUES (20, 2, 'in_date', '加入日期', 'date', 'java.util.Date', 'inDate', '0', '1', '1', '1', '1', '1', 'between', 'dateselect', '', NULL, 70, '1', '2016-3-14 14:06:13', '1', '2016-3-14 14:06:13', NULL, '0');
INSERT INTO `gen_table_column` VALUES (21, 2, 'create_by', '创建者', 'varchar(64)', 'com.footing.website.modules.entity.User', 'createBy.id', '0', '0', '1', '0', '0', '0', '=', 'input', '', NULL, 80, '1', '2016-3-14 14:06:13', '1', '2016-3-14 14:06:13', NULL, '0');
INSERT INTO `gen_table_column` VALUES (22, 2, 'create_date', '创建时间', 'datetime', 'java.util.Date', 'createDate', '0', '0', '1', '0', '0', '0', '=', 'dateselect', '', NULL, 90, '1', '2016-3-14 14:06:14', '1', '2016-3-14 14:06:14', NULL, '0');
INSERT INTO `gen_table_column` VALUES (23, 2, 'update_by', '更新者', 'varchar(64)', 'com.footing.website.modules.entity.User', 'updateBy.id', '0', '0', '1', '1', '0', '0', '=', 'input', '', NULL, 100, '1', '2016-3-14 14:06:14', '1', '2016-3-14 14:06:14', NULL, '0');
INSERT INTO `gen_table_column` VALUES (24, 2, 'update_date', '更新时间', 'datetime', 'java.util.Date', 'updateDate', '0', '0', '1', '1', '1', '0', '=', 'dateselect', '', NULL, 110, '1', '2016-3-14 14:06:14', '1', '2016-3-14 14:06:14', NULL, '0');
INSERT INTO `gen_table_column` VALUES (25, 2, 'remarks', '备注信息', 'varchar(255)', 'String', 'remarks', '0', '1', '1', '1', '1', '0', '=', 'textarea', '', NULL, 120, '1', '2016-3-14 14:06:14', '1', '2016-3-14 14:06:14', NULL, '0');
INSERT INTO `gen_table_column` VALUES (26, 2, 'del_flag', '删除标记', 'char(1)', 'String', 'delFlag', '0', '0', '1', '0', '0', '0', '=', 'radiobox', 'del_flag', NULL, 130, '1', '2016-3-14 14:06:14', '1', '2016-3-14 14:06:14', NULL, '0');
INSERT INTO `gen_table_column` VALUES (27, 3, 'id', '编号', 'bigint(20)', 'Long', 'id', '1', '0', '0', '0', '0', '0', '=', 'input', '', NULL, 10, '1', '2016-3-14 14:06:43', '1', '2016-3-14 14:43:48', NULL, '0');
INSERT INTO `gen_table_column` VALUES (28, 3, 'test_data_main_id', '业务主表ID', 'bigint(20)', 'Custom', 'testDataMain.id', '0', '1', '1', '1', '0', '0', '=', 'input', '', NULL, 20, '1', '2016-3-14 14:06:43', '1', '2016-3-14 14:43:48', NULL, '0');
INSERT INTO `gen_table_column` VALUES (29, 3, 'name', '名称', 'varchar(100)', 'String', 'name', '0', '1', '1', '1', '1', '1', 'like', 'input', '', NULL, 30, '1', '2016-3-14 14:06:43', '1', '2016-3-14 14:43:48', NULL, '0');
INSERT INTO `gen_table_column` VALUES (30, 3, 'create_by', '创建者', 'varchar(64)', 'com.footing.website.modules.entity.User', 'createBy.id', '0', '0', '1', '0', '0', '0', '=', 'input', '', NULL, 40, '1', '2016-3-14 14:06:43', '1', '2016-3-14 14:43:48', NULL, '0');
INSERT INTO `gen_table_column` VALUES (31, 3, 'create_date', '创建时间', 'datetime', 'java.util.Date', 'createDate', '0', '0', '1', '0', '0', '0', '=', 'dateselect', '', NULL, 50, '1', '2016-3-14 14:06:43', '1', '2016-3-14 14:43:48', NULL, '0');
INSERT INTO `gen_table_column` VALUES (32, 3, 'update_by', '更新者', 'varchar(64)', 'com.footing.website.modules.entity.User', 'updateBy.id', '0', '0', '1', '1', '0', '0', '=', 'input', '', NULL, 60, '1', '2016-3-14 14:06:43', '1', '2016-3-14 14:43:48', NULL, '0');
INSERT INTO `gen_table_column` VALUES (33, 3, 'update_date', '更新时间', 'datetime', 'java.util.Date', 'updateDate', '0', '0', '1', '1', '1', '0', '=', 'dateselect', '', NULL, 70, '1', '2016-3-14 14:06:43', '1', '2016-3-14 14:43:48', NULL, '0');
INSERT INTO `gen_table_column` VALUES (34, 3, 'remarks', '备注信息', 'varchar(255)', 'String', 'remarks', '0', '1', '1', '1', '1', '0', '=', 'textarea', '', NULL, 80, '1', '2016-3-14 14:06:43', '1', '2016-3-14 14:43:48', NULL, '0');
INSERT INTO `gen_table_column` VALUES (35, 3, 'del_flag', '删除标记', 'char(1)', 'String', 'delFlag', '0', '0', '1', '0', '0', '0', '=', 'radiobox', 'del_flag', NULL, 90, '1', '2016-3-14 14:06:43', '1', '2016-3-14 14:43:48', NULL, '0');
INSERT INTO `gen_table_column` VALUES (36, 4, 'id', '编号', 'bigint(20)', 'Long', 'id', '1', '0', '0', '0', '0', '0', '=', 'input', '', NULL, 10, '1', '2016-3-14 14:06:58', '1', '2016-3-14 14:12:33', NULL, '0');
INSERT INTO `gen_table_column` VALUES (37, 4, 'parent_id', '父级编号', 'bigint(20)', 'This', 'parent.id|name', '0', '0', '1', '1', '0', '0', '=', 'treeselect', '', NULL, 20, '1', '2016-3-14 14:06:59', '1', '2016-3-14 14:12:33', NULL, '0');
INSERT INTO `gen_table_column` VALUES (38, 4, 'parent_ids', '所有父级编号', 'varchar(2000)', 'String', 'parentIds', '0', '0', '1', '1', '0', '0', 'like', 'input', '', NULL, 30, '1', '2016-3-14 14:06:59', '1', '2016-3-14 14:12:33', NULL, '0');
INSERT INTO `gen_table_column` VALUES (39, 4, 'name', '名称', 'varchar(100)', 'String', 'name', '0', '0', '1', '1', '1', '1', 'like', 'input', '', NULL, 40, '1', '2016-3-14 14:06:59', '1', '2016-3-14 14:12:33', NULL, '0');
INSERT INTO `gen_table_column` VALUES (40, 4, 'sort', '排序', 'decimal(10,0)', 'Integer', 'sort', '0', '0', '1', '1', '0', '0', '=', 'input', '', NULL, 50, '1', '2016-3-14 14:06:59', '1', '2016-3-14 14:12:33', NULL, '0');
INSERT INTO `gen_table_column` VALUES (41, 4, 'create_by', '创建者', 'varchar(64)', 'com.footing.website.modules.entity.User', 'createBy.id', '0', '0', '1', '0', '0', '0', '=', 'input', '', NULL, 60, '1', '2016-3-14 14:06:59', '1', '2016-3-14 14:12:33', NULL, '0');
INSERT INTO `gen_table_column` VALUES (42, 4, 'create_date', '创建时间', 'datetime', 'java.util.Date', 'createDate', '0', '0', '1', '0', '0', '0', '=', 'dateselect', '', NULL, 70, '1', '2016-3-14 14:06:59', '1', '2016-3-14 14:12:33', NULL, '0');
INSERT INTO `gen_table_column` VALUES (43, 4, 'update_by', '更新者', 'varchar(64)', 'com.footing.website.modules.entity.User', 'updateBy.id', '0', '0', '1', '1', '0', '0', '=', 'input', '', NULL, 80, '1', '2016-3-14 14:07:00', '1', '2016-3-14 14:12:33', NULL, '0');
INSERT INTO `gen_table_column` VALUES (44, 4, 'update_date', '更新时间', 'datetime', 'java.util.Date', 'updateDate', '0', '0', '1', '1', '1', '0', '=', 'dateselect', '', NULL, 90, '1', '2016-3-14 14:07:00', '1', '2016-3-14 14:12:33', NULL, '0');
INSERT INTO `gen_table_column` VALUES (45, 4, 'remarks', '备注信息', 'varchar(255)', 'String', 'remarks', '0', '1', '1', '1', '1', '0', '=', 'textarea', '', NULL, 100, '1', '2016-3-14 14:07:00', '1', '2016-3-14 14:12:33', NULL, '0');
INSERT INTO `gen_table_column` VALUES (46, 4, 'del_flag', '删除标记', 'char(1)', 'String', 'delFlag', '0', '0', '1', '0', '0', '0', '=', 'radiobox', 'del_flag', NULL, 110, '1', '2016-3-14 14:07:00', '1', '2016-3-14 14:12:33', NULL, '0');

-- ----------------------------
-- Table structure for gen_template
-- ----------------------------
DROP TABLE IF EXISTS `gen_template`;
CREATE TABLE `gen_template` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(200) DEFAULT NULL COMMENT '名称',
  `category` varchar(2000) DEFAULT NULL COMMENT '分类',
  `file_path` varchar(500) DEFAULT NULL COMMENT '生成文件路径',
  `file_name` varchar(200) DEFAULT NULL COMMENT '生成文件名',
  `content` text COMMENT '内容',
  `create_by` bigint DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` bigint DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记（0：正常；1：删除）',
  PRIMARY KEY (`id`),
  KEY `gen_template_del_falg` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='代码模板表';

-- ----------------------------
-- Table structure for sys_area
-- ----------------------------
DROP TABLE IF EXISTS `sys_area`;
CREATE TABLE `sys_area` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `parent_id` bigint NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) NOT NULL COMMENT '所有父级编号',
  `name` varchar(100) NOT NULL COMMENT '名称',
  `sort` decimal(10,0) NOT NULL COMMENT '排序',
  `code` varchar(100) DEFAULT NULL COMMENT '区域编码',
  `type` char(1) DEFAULT NULL COMMENT '区域类型',
  `create_by` bigint NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` bigint NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_area_parent_id` (`parent_id`),
  KEY `sys_area_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='区域表';

-- ----------------------------
-- Records of sys_area
-- ----------------------------
INSERT INTO `sys_area` VALUES (1, 0, '0,', '中国', '10', '100000', '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_area` VALUES (2, 1, '0,1,', '山东省', '20', '110000', '2', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_area` VALUES (3, 2, '0,1,2,', '济南市', '30', '110101', '3', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_area` VALUES (4, 3, '0,1,2,3,', '历城区', '40', '110102', '4', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_area` VALUES (5, 3, '0,1,2,3,', '历下区', '50', '110104', '4', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_area` VALUES (6, 3, '0,1,2,3,', '高新区', '60', '110105', '4', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');

-- ----------------------------
-- Table structure for sys_dict
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `value` varchar(100) NOT NULL COMMENT '数据值',
  `label` varchar(100) NOT NULL COMMENT '标签名',
  `type` varchar(100) NOT NULL COMMENT '类型',
  `description` varchar(100) NOT NULL COMMENT '描述',
  `sort` decimal(10,0) NOT NULL COMMENT '排序（升序）',
  `parent_id` varchar(64) DEFAULT '0' COMMENT '父级编号',
  `create_by` bigint NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` bigint NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_dict_value` (`value`),
  KEY `sys_dict_label` (`label`),
  KEY `sys_dict_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='字典表';

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
INSERT INTO `sys_dict` VALUES (1, '0', '正常', 'del_flag', '删除标记', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES (2, '1', '删除', 'del_flag', '删除标记', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES (3, '1', '显示', 'show_hide', '显示/隐藏', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES (4, '0', '隐藏', 'show_hide', '显示/隐藏', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES (5, '1', '是', 'yes_no', '是/否', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES (6, '0', '否', 'yes_no', '是/否', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES (7, 'red', '红色', 'color', '颜色值', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES (8, 'green', '绿色', 'color', '颜色值', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES (9, 'blue', '蓝色', 'color', '颜色值', '30', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES (10, 'yellow', '黄色', 'color', '颜色值', '40', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES (11, 'orange', '橙色', 'color', '颜色值', '50', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES (12, 'default', '默认主题', 'theme', '主题方案', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES (13, 'cerulean', '天蓝主题', 'theme', '主题方案', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES (14, 'readable', '橙色主题', 'theme', '主题方案', '30', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES (15, 'united', '红色主题', 'theme', '主题方案', '40', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES (16, 'flat', 'Flat主题', 'theme', '主题方案', '60', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES (17, '1', '男', 'sex', '性别', '10', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES (18, '2', '女', 'sex', '性别', '20', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES (19, '1', '国家', 'sys_area_type', '区域类型', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES (20, '2', '省份、直辖市', 'sys_area_type', '区域类型', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES (21, '3', '地市', 'sys_area_type', '区域类型', '30', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES (22, '4', '区县', 'sys_area_type', '区域类型', '40', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES (23, '1', '公司', 'sys_office_type', '机构类型', '60', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES (24, '2', '部门', 'sys_office_type', '机构类型', '70', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES (25, '3', '小组', 'sys_office_type', '机构类型', '80', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES (26, '4', '其它', 'sys_office_type', '机构类型', '90', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES (27, '1', '综合部', 'sys_office_common', '快捷通用部门', '30', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES (28, '2', '开发部', 'sys_office_common', '快捷通用部门', '40', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES (29, '3', '人力部', 'sys_office_common', '快捷通用部门', '50', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES (30, '1', '一级', 'sys_office_grade', '机构等级', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES (31, '2', '二级', 'sys_office_grade', '机构等级', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES (32, '3', '三级', 'sys_office_grade', '机构等级', '30', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES (33, '4', '四级', 'sys_office_grade', '机构等级', '40', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES (34, '1', '所有数据', 'sys_data_scope', '数据范围', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES (35, '2', '所在公司及以下数据', 'sys_data_scope', '数据范围', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES (36, '3', '所在公司数据', 'sys_data_scope', '数据范围', '30', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES (37, '4', '所在部门及以下数据', 'sys_data_scope', '数据范围', '40', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES (38, '5', '所在部门数据', 'sys_data_scope', '数据范围', '50', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES (39, '8', '仅本人数据', 'sys_data_scope', '数据范围', '90', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES (40, '9', '按明细设置', 'sys_data_scope', '数据范围', '100', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES (41, '1', '系统管理', 'sys_user_type', '用户类型', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES (42, '2', '部门经理', 'sys_user_type', '用户类型', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES (43, '3', '普通用户', 'sys_user_type', '用户类型', '30', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES (44, '1', '接入日志', 'sys_log_type', '日志类型', '30', '0', '1', '2013-06-03 08:00:00', '1', '2013-06-03 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES (45, '2', '异常日志', 'sys_log_type', '日志类型', '40', '0', '1', '2013-06-03 08:00:00', '1', '2013-06-03 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES (46, 'basic', '基础主题', 'cms_theme', '站点主题', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES (47, 'article', '文章模型', 'cms_module', '栏目模型', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES (48, 'link', '链接模型', 'cms_module', '栏目模型', '40', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES (49, '0', '默认展现方式', 'cms_show_modes', '展现方式', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES (50, '1', '首栏目内容列表', 'cms_show_modes', '展现方式', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES (51, '2', '栏目第一条内容', 'cms_show_modes', '展现方式', '30', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES (52, '0', '发布', 'cms_del_flag', '内容状态', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES (53, '1', '删除', 'cms_del_flag', '内容状态', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES (54, '2', '审核', 'cms_del_flag', '内容状态', '15', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES (55, '1', '首页焦点图', 'cms_posid', '推荐位', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES (56, '2', '栏目页文章推荐', 'cms_posid', '推荐位', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES (57, '1', '咨询', 'cms_guestbook', '留言板分类', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES (58, '2', '建议', 'cms_guestbook', '留言板分类', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES (59, '3', '投诉', 'cms_guestbook', '留言板分类', '30', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES (60, '4', '其它', 'cms_guestbook', '留言板分类', '40', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES (61, '1', '公休', 'oa_leave_type', '请假类型', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES (62, '2', '病假', 'oa_leave_type', '请假类型', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES (63, '3', '事假', 'oa_leave_type', '请假类型', '30', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES (64, '4', '调休', 'oa_leave_type', '请假类型', '40', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES (65, '5', '婚假', 'oa_leave_type', '请假类型', '60', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES (66, '1', '会议通告\0\0\0\0', 'oa_notify_type', '通知通告类型', '10', '0', '1', '2013-11-08 08:00:00', '1', '2013-11-08 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES (67, '2', '奖惩通告\0\0\0\0', 'oa_notify_type', '通知通告类型', '20', '0', '1', '2013-11-08 08:00:00', '1', '2013-11-08 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES (68, '3', '活动通告\0\0\0\0', 'oa_notify_type', '通知通告类型', '30', '0', '1', '2013-11-08 08:00:00', '1', '2013-11-08 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES (69, '0', '草稿', 'oa_notify_status', '通知通告状态', '10', '0', '1', '2013-11-08 08:00:00', '1', '2013-11-08 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES (70, '1', '发布', 'oa_notify_status', '通知通告状态', '20', '0', '1', '2013-11-08 08:00:00', '1', '2013-11-08 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES (71, '0', '未读', 'oa_notify_read', '通知通告状态', '10', '0', '1', '2013-11-08 08:00:00', '1', '2013-11-08 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES (72, '1', '已读', 'oa_notify_read', '通知通告状态', '20', '0', '1', '2013-11-08 08:00:00', '1', '2013-11-08 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES (73, 'leave', '请假流程', 'act_type', '流程类型', '10', '0', '1', '2013-06-03 08:00:00', '1', '2013-06-03 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES (74, 'test_audit', '审批测试流程', 'act_type', '流程类型', '20', '0', '1', '2013-06-03 08:00:00', '1', '2013-06-03 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES (75, '1', '分类1', 'act_category', '流程分类', '10', '0', '1', '2013-06-03 08:00:00', '1', '2016-03-02 12:55:11', '', '0');
INSERT INTO `sys_dict` VALUES (76, '2', '分类2', 'act_category', '流程分类', '20', '0', '1', '2013-06-03 08:00:00', '1', '2013-06-03 08:00:00', null, '0');

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `type` char(1) DEFAULT '1' COMMENT '日志类型',
  `title` varchar(255) DEFAULT '' COMMENT '日志标题',
  `create_by` bigint DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `remote_addr` varchar(255) DEFAULT NULL COMMENT '操作IP地址',
  `user_agent` varchar(255) DEFAULT NULL COMMENT '用户代理',
  `request_uri` varchar(255) DEFAULT NULL COMMENT '请求URI',
  `method` varchar(5) DEFAULT NULL COMMENT '操作方式',
  `params` text COMMENT '操作提交的数据',
  `exception` text COMMENT '异常信息',
  PRIMARY KEY (`id`),
  KEY `sys_log_create_by` (`create_by`),
  KEY `sys_log_request_uri` (`request_uri`),
  KEY `sys_log_type` (`type`),
  KEY `sys_log_create_date` (`create_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='日志表';

-- ----------------------------
-- Table structure for sys_mdict
-- ----------------------------
DROP TABLE IF EXISTS `sys_mdict`;
CREATE TABLE `sys_mdict` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `parent_id` bigint NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) NOT NULL COMMENT '所有父级编号',
  `name` varchar(100) NOT NULL COMMENT '名称',
  `sort` decimal(10,0) NOT NULL COMMENT '排序',
  `description` varchar(100) DEFAULT NULL COMMENT '描述',
  `create_by` bigint NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` bigint NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_mdict_parent_id` (`parent_id`),
  KEY `sys_mdict_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='多级字典表';

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `parent_id` bigint NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) NOT NULL COMMENT '所有父级编号',
  `name` varchar(100) NOT NULL COMMENT '名称',
  `sort` decimal(10,0) NOT NULL COMMENT '排序',
  `href` varchar(2000) DEFAULT NULL COMMENT '链接',
  `target` varchar(20) DEFAULT NULL COMMENT '目标',
  `icon` varchar(100) DEFAULT NULL COMMENT '图标',
  `is_show` char(1) NOT NULL COMMENT '是否在菜单中显示',
  `permission` varchar(200) DEFAULT NULL COMMENT '权限标识',
  `create_by` bigint NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` bigint NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_menu_parent_id` (`parent_id`),
  KEY `sys_menu_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='菜单表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, 0, '0,', '功能菜单', 0, NULL, NULL, NULL, '1', NULL, '1', '2013-5-27 08:00:00', '1', '2013-5-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES (2, 1, '0,1,', '系统设置', 900, NULL, NULL, NULL, '1', NULL, '1', '2013-5-27 08:00:00', '1', '2013-5-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES (3, 2, '0,1,2,', '系统设置', 980, NULL, NULL, NULL, '1', NULL, '1', '2013-5-27 08:00:00', '1', '2013-5-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES (4, 3, '0,1,2,3,', '菜单管理', 30, '/sys/menu/', NULL, 'list-alt', '1', NULL, '1', '2013-5-27 08:00:00', '1', '2013-5-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES (5, 4, '0,1,2,3,4,', '查看', 30, NULL, NULL, NULL, '0', 'sys:menu:view', '1', '2013-5-27 08:00:00', '1', '2013-5-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES (6, 4, '0,1,2,3,4,', '修改', 40, NULL, NULL, NULL, '0', 'sys:menu:edit', '1', '2013-5-27 08:00:00', '1', '2013-5-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES (7, 3, '0,1,2,3,', '角色管理', 50, '/sys/role/', NULL, 'lock', '1', NULL, '1', '2013-5-27 08:00:00', '1', '2013-5-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES (8, 7, '0,1,2,3,7,', '查看', 30, NULL, NULL, NULL, '0', 'sys:role:view', '1', '2013-5-27 08:00:00', '1', '2013-5-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES (9, 7, '0,1,2,3,7,', '修改', 40, NULL, NULL, NULL, '0', 'sys:role:edit', '1', '2013-5-27 08:00:00', '1', '2013-5-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES (10, 3, '0,1,2,3,', '字典管理', 60, '/sys/dict/', NULL, 'th-list', '1', NULL, '1', '2013-5-27 08:00:00', '1', '2013-5-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES (11, 10, '0,1,2,3,10,', '查看', 30, NULL, NULL, NULL, '0', 'sys:dict:view', '1', '2013-5-27 08:00:00', '1', '2013-5-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES (12, 10, '0,1,2,3,10,', '修改', 40, NULL, NULL, NULL, '0', 'sys:dict:edit', '1', '2013-5-27 08:00:00', '1', '2013-5-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES (13, 2, '0,1,2,', '机构用户', 970, NULL, NULL, NULL, '1', NULL, '1', '2013-5-27 08:00:00', '1', '2013-5-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES (14, 13, '0,1,2,13,', '区域管理', 50, '/sys/area/', NULL, 'th', '1', NULL, '1', '2013-5-27 08:00:00', '1', '2013-5-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES (15, 14, '0,1,2,13,14,', '查看', 30, NULL, NULL, NULL, '0', 'sys:area:view', '1', '2013-5-27 08:00:00', '1', '2013-5-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES (16, 14, '0,1,2,13,14,', '修改', 40, NULL, NULL, NULL, '0', 'sys:area:edit', '1', '2013-5-27 08:00:00', '1', '2013-5-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES (17, 13, '0,1,2,13,', '机构管理', 40, '/sys/office/', NULL, 'th-large', '1', NULL, '1', '2013-5-27 08:00:00', '1', '2013-5-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES (18, 17, '0,1,2,13,17,', '查看', 30, NULL, NULL, NULL, '0', 'sys:office:view', '1', '2013-5-27 08:00:00', '1', '2013-5-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES (19, 17, '0,1,2,13,17,', '修改', 40, NULL, NULL, NULL, '0', 'sys:office:edit', '1', '2013-5-27 08:00:00', '1', '2013-5-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES (20, 13, '0,1,2,13,', '用户管理', 30, '/sys/user/index', NULL, 'user', '1', NULL, '1', '2013-5-27 08:00:00', '1', '2013-5-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES (21, 20, '0,1,2,13,20,', '查看', 30, NULL, NULL, NULL, '0', 'sys:user:view', '1', '2013-5-27 08:00:00', '1', '2013-5-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES (22, 20, '0,1,2,13,20,', '修改', 40, NULL, NULL, NULL, '0', 'sys:user:edit', '1', '2013-5-27 08:00:00', '1', '2013-5-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES (23, 2, '0,1,2,', '关于帮助', 990, NULL, NULL, NULL, '0', NULL, '1', '2013-5-27 08:00:00', '1', '2013-5-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES (24, 23, '0,1,2,23', '官方首页', 30, 'http://jeesite.com', '_blank', NULL, '0', NULL, '1', '2013-5-27 08:00:00', '1', '2013-5-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES (27, 1, '0,1,', '我的面板', 100, NULL, NULL, NULL, '1', NULL, '1', '2013-5-27 08:00:00', '1', '2013-5-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES (28, 27, '0,1,27,', '个人信息', 30, NULL, NULL, NULL, '1', NULL, '1', '2013-5-27 08:00:00', '1', '2013-5-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES (29, 28, '0,1,27,28,', '个人信息', 30, '/sys/user/info', NULL, 'user', '1', NULL, '1', '2013-5-27 08:00:00', '1', '2013-5-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES (30, 28, '0,1,27,28,', '修改密码', 40, '/sys/user/modifyPwd', NULL, 'lock', '1', NULL, '1', '2013-5-27 08:00:00', '1', '2013-5-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES (31, 1, '0,1,', '内容管理', 500, NULL, NULL, NULL, '1', NULL, '1', '2013-5-27 08:00:00', '1', '2013-5-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES (32, 31, '0,1,31,', '栏目设置', 990, NULL, NULL, NULL, '1', NULL, '1', '2013-5-27 08:00:00', '1', '2013-5-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES (33, 32, '0,1,31,32', '栏目管理', 30, '/cms/category/', NULL, 'align-justify', '1', NULL, '1', '2013-5-27 08:00:00', '1', '2013-5-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES (34, 33, '0,1,31,32,33,', '查看', 30, NULL, NULL, NULL, '0', 'cms:category:view', '1', '2013-5-27 08:00:00', '1', '2013-5-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES (35, 33, '0,1,31,32,33,', '修改', 40, NULL, NULL, NULL, '0', 'cms:category:edit', '1', '2013-5-27 08:00:00', '1', '2013-5-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES (36, 32, '0,1,31,32', '站点设置', 40, '/cms/site/', NULL, 'certificate', '1', NULL, '1', '2013-5-27 08:00:00', '1', '2013-5-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES (37, 36, '0,1,31,32,36,', '查看', 30, NULL, NULL, NULL, '0', 'cms:site:view', '1', '2013-5-27 08:00:00', '1', '2013-5-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES (38, 36, '0,1,31,32,36,', '修改', 40, NULL, NULL, NULL, '0', 'cms:site:edit', '1', '2013-5-27 08:00:00', '1', '2013-5-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES (39, 32, '0,1,31,32', '切换站点', 50, '/cms/site/select', NULL, 'retweet', '1', 'cms:site:select', '1', '2013-5-27 08:00:00', '1', '2013-5-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES (40, 31, '0,1,31,', '内容管理', 500, NULL, NULL, NULL, '1', 'cms:view', '1', '2013-5-27 08:00:00', '1', '2013-5-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES (41, 40, '0,1,31,40,', '内容发布', 30, '/cms/', NULL, 'briefcase', '1', NULL, '1', '2013-5-27 08:00:00', '1', '2013-5-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES (42, 41, '0,1,31,40,41,', '文章模型', 40, '/cms/article/', NULL, 'file', '0', NULL, '1', '2013-5-27 08:00:00', '1', '2013-5-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES (43, 42, '0,1,31,40,41,42,', '查看', 30, NULL, NULL, NULL, '0', 'cms:article:view', '1', '2013-5-27 08:00:00', '1', '2013-5-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES (44, 42, '0,1,31,40,41,42,', '修改', 40, NULL, NULL, NULL, '0', 'cms:article:edit', '1', '2013-5-27 08:00:00', '1', '2013-5-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES (45, 42, '0,1,31,40,41,42,', '审核', 50, NULL, NULL, NULL, '0', 'cms:article:audit', '1', '2013-5-27 08:00:00', '1', '2013-5-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES (46, 41, '0,1,31,40,41,', '链接模型', 60, '/cms/link/', NULL, 'random', '0', NULL, '1', '2013-5-27 08:00:00', '1', '2013-5-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES (47, 46, '0,1,31,40,41,46,', '查看', 30, NULL, NULL, NULL, '0', 'cms:link:view', '1', '2013-5-27 08:00:00', '1', '2013-5-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES (48, 46, '0,1,31,40,41,46,', '修改', 40, NULL, NULL, NULL, '0', 'cms:link:edit', '1', '2013-5-27 08:00:00', '1', '2013-5-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES (49, 46, '0,1,31,40,41,46,', '审核', 50, NULL, NULL, NULL, '0', 'cms:link:audit', '1', '2013-5-27 08:00:00', '1', '2013-5-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES (50, 40, '0,1,31,40,', '评论管理', 40, '/cms/comment/?status=2', NULL, 'comment', '1', NULL, '1', '2013-5-27 08:00:00', '1', '2013-5-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES (51, 50, '0,1,31,40,50,', '查看', 30, NULL, NULL, NULL, '0', 'cms:comment:view', '1', '2013-5-27 08:00:00', '1', '2013-5-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES (52, 50, '0,1,31,40,50,', '审核', 40, NULL, NULL, NULL, '0', 'cms:comment:edit', '1', '2013-5-27 08:00:00', '1', '2013-5-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES (53, 40, '0,1,31,40,', '公共留言', 80, '/cms/guestbook/?status=2', NULL, 'glass', '1', NULL, '1', '2013-5-27 08:00:00', '1', '2013-5-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES (54, 53, '0,1,31,40,53,', '查看', 30, NULL, NULL, NULL, '0', 'cms:guestbook:view', '1', '2013-5-27 08:00:00', '1', '2013-5-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES (55, 53, '0,1,31,40,53,', '审核', 40, NULL, NULL, NULL, '0', 'cms:guestbook:edit', '1', '2013-5-27 08:00:00', '1', '2013-5-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES (56, 31, '0,1,31,', '统计分析', 600, NULL, NULL, NULL, '1', NULL, '1', '2013-5-27 08:00:00', '1', '2013-5-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES (57, 56, '0,1,31,56,', '信息量统计', 30, '/cms/stats/article', NULL, 'tasks', '1', 'cms:stats:article', '1', '2013-5-27 08:00:00', '1', '2013-5-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES (58, 2, '0,1,2,', '日志查询', 985, NULL, NULL, NULL, '1', NULL, '1', '2013-6-3 08:00:00', '1', '2013-6-3 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES (59, 58, '0,1,2,58,', '日志查询', 30, '/sys/log', NULL, 'pencil', '1', 'sys:log:view', '1', '2013-6-3 08:00:00', '1', '2013-6-3 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES (60, 27, '0,1,27,', '文件管理', 90, NULL, NULL, NULL, '1', NULL, '1', '2013-5-27 08:00:00', '1', '2013-5-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES (61, 60, '0,1,27,60,', '文件管理', 90, '/../static/ckfinder/ckfinder.html', NULL, 'folder-open', '1', NULL, '1', '2013-5-27 08:00:00', '1', '2013-5-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES (62, 61, '0,1,27,40,61,', '查看', 30, NULL, NULL, NULL, '0', 'cms:ckfinder:view', '1', '2013-5-27 08:00:00', '1', '2013-5-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES (63, 61, '0,1,27,40,61,', '上传', 40, NULL, NULL, NULL, '0', 'cms:ckfinder:upload', '1', '2013-5-27 08:00:00', '1', '2013-5-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES (64, 61, '0,1,27,40,61,', '修改', 50, NULL, NULL, NULL, '0', 'cms:ckfinder:edit', '1', '2013-5-27 08:00:00', '1', '2013-5-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES (65, 1, '0,1,', '代码生成', 5000, NULL, NULL, NULL, '1', NULL, '1', '2013-10-16 08:00:00', '1', '2013-10-16 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES (66, 65, '0,1,65,', '代码生成', 50, NULL, NULL, NULL, '1', NULL, '1', '2013-10-16 08:00:00', '1', '2013-10-16 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES (67, 66, '0,1,65,66,', '生成方案配置', 30, '/gen/genScheme', NULL, NULL, '1', 'gen:genScheme:view,gen:genScheme:edit', '1', '2013-10-16 08:00:00', '1', '2013-10-16 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES (68, 66, '0,1,65,66,', '业务表配置', 20, '/gen/genTable', NULL, NULL, '1', 'gen:genTable:view,gen:genTable:edit,gen:genTableColumn:view,gen:genTableColumn:edit', '1', '2013-10-16 08:00:00', '1', '2013-10-16 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES (69, 58, '0,1,2,58,', '连接池监视', 40, '/../druid', NULL, NULL, '1', NULL, '1', '2013-10-18 08:00:00', '1', '2013-10-18 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES (70, 65, '0,1,65,', '生成示例', 60, '', '', '', '1', '', '1', '2016-3-12 14:06:40', '1', '2016-3-12 14:07:12', '', '0');
INSERT INTO `sys_menu` VALUES (71, 70, '0,1,65,70,', '单表', 30, '/test/testData', '', '', '1', '', '1', '2016-3-12 14:07:45', '1', '2016-3-12 14:07:45', '', '0');
INSERT INTO `sys_menu` VALUES (72, 71, '0,1,65,70,71,', '查看', 120, '', '', '', '0', 'test:testData:view', '1', '2016-3-12 14:09:03', '1', '2016-3-12 14:10:17', '', '0');
INSERT INTO `sys_menu` VALUES (73, 71, '0,1,65,70,71,', '编辑', 150, '', '', '', '0', 'test:testData:edit', '1', '2016-3-12 14:09:39', '1', '2016-3-12 14:10:25', '', '0');
INSERT INTO `sys_menu` VALUES (74, 70, '0,1,65,70,', '主子表', 60, '/test/testDataMain', '', '', '1', '', '1', '2016-3-12 14:08:06', '1', '2016-3-12 14:08:06', '', '0');
INSERT INTO `sys_menu` VALUES (75, 74, '0,1,65,70,74,', '查看', 30, '', '', '', '0', 'test:testDataMain:view', '1', '2016-3-12 14:09:58', '1', '2016-3-12 14:10:35', '', '0');
INSERT INTO `sys_menu` VALUES (76, 74, '0,1,65,70,74,', '编辑', 60, '', '', '', '0', 'test:testDataMain:edit', '1', '2016-3-12 14:10:47', '1', '2016-3-12 14:10:47', '', '0');
INSERT INTO `sys_menu` VALUES (77, 70, '0,1,65,70,', '树结构', 90, '/test/testTree', '', '', '1', '', '1', '2016-3-12 14:08:28', '1', '2016-3-12 14:08:28', '', '0');
INSERT INTO `sys_menu` VALUES (78, 77, '0,1,65,70,77,', '查看', 30, '', '', '', '0', 'test:testTree:view', '1', '2016-3-12 14:11:15', '1', '2016-3-12 14:11:15', '', '0');
INSERT INTO `sys_menu` VALUES (79, 77, '0,1,65,70,77,', '编辑', 60, '', '', '', '0', 'test:testTree:edit', '1', '2016-3-12 14:11:31', '1', '2016-3-12 14:11:31', '', '0');

-- ----------------------------
-- Table structure for sys_office
-- ----------------------------
DROP TABLE IF EXISTS `sys_office`;
CREATE TABLE `sys_office` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `parent_id` bigint NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) NOT NULL COMMENT '所有父级编号',
  `name` varchar(100) NOT NULL COMMENT '名称',
  `sort` decimal(10,0) NOT NULL COMMENT '排序',
  `area_id` varchar(64) NOT NULL COMMENT '归属区域',
  `code` varchar(100) DEFAULT NULL COMMENT '区域编码',
  `type` char(1) NOT NULL COMMENT '机构类型',
  `grade` char(1) NOT NULL COMMENT '机构等级',
  `address` varchar(255) DEFAULT NULL COMMENT '联系地址',
  `zip_code` varchar(100) DEFAULT NULL COMMENT '邮政编码',
  `master` varchar(100) DEFAULT NULL COMMENT '负责人',
  `phone` varchar(200) DEFAULT NULL COMMENT '电话',
  `fax` varchar(200) DEFAULT NULL COMMENT '传真',
  `email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `USEABLE` varchar(64) DEFAULT NULL COMMENT '是否启用',
  `PRIMARY_PERSON` varchar(64) DEFAULT NULL COMMENT '主负责人',
  `DEPUTY_PERSON` varchar(64) DEFAULT NULL COMMENT '副负责人',
  `create_by` bigint NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` bigint NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_office_parent_id` (`parent_id`),
  KEY `sys_office_del_flag` (`del_flag`),
  KEY `sys_office_type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='机构表';

-- ----------------------------
-- Records of sys_office
-- ----------------------------
INSERT INTO `sys_office` VALUES (1, 0, '0,', '山东省总公司', '10', '2', '100000', '1', '1', null, null, null, null, null, null, '1', null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_office` VALUES (2, 1, '0,1,', '公司领导', '10', '2', '100001', '2', '1', null, null, null, null, null, null, '1', null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_office` VALUES (3, 1, '0,1,', '综合部', '20', '2', '100002', '2', '1', null, null, null, null, null, null, '1', null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_office` VALUES (4, 1, '0,1,', '市场部', '30', '2', '100003', '2', '1', null, null, null, null, null, null, '1', null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_office` VALUES (5, 1, '0,1,', '技术部', '40', '2', '100004', '2', '1', null, null, null, null, null, null, '1', null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_office` VALUES (6, 1, '0,1,', '研发部', '50', '2', '100005', '2', '1', null, null, null, null, null, null, '1', null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_office` VALUES (7, 1, '0,1,', '济南市分公司', '20', '3', '200000', '1', '2', null, null, null, null, null, null, '1', null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_office` VALUES (8, 7, '0,1,7,', '公司领导', '10', '3', '200001', '2', '2', '', '', '', '', '', '', '1', '7', '', '1', '2013-05-27 08:00:00', '1', '2016-03-02 15:13:58', '', '0');
INSERT INTO `sys_office` VALUES (9, 7, '0,1,7,', '综合部', '20', '3', '200002', '2', '2', null, null, null, null, null, null, '1', null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_office` VALUES (10, 7, '0,1,7,', '市场部', '30', '3', '200003', '2', '2', null, null, null, null, null, null, '1', null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_office` VALUES (11, 7, '0,1,7,', '技术部', '40', '3', '200004', '2', '2', null, null, null, null, null, null, '1', null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_office` VALUES (12, 7, '0,1,7,', '历城区分公司', '0', '4', '201000', '1', '3', null, null, null, null, null, null, '1', null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_office` VALUES (13, 12, '0,1,7,12,', '公司领导', '10', '4', '201001', '2', '3', null, null, null, null, null, null, '1', null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_office` VALUES (14, 12, '0,1,7,12,', '综合部', '20', '4', '201002', '2', '3', null, null, null, null, null, null, '1', null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_office` VALUES (15, 12, '0,1,7,12,', '市场部', '30', '4', '201003', '2', '3', null, null, null, null, null, null, '1', null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_office` VALUES (16, 12, '0,1,7,12,', '技术部', '40', '4', '201004', '2', '3', null, null, null, null, null, null, '1', null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_office` VALUES (17, 7, '0,1,7,', '历下区分公司', '40', '5', '201010', '1', '3', null, null, null, null, null, null, '1', null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_office` VALUES (18, 17, '0,1,7,17,', '公司领导', '10', '5', '201011', '2', '3', null, null, null, null, null, null, '1', null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_office` VALUES (19, 17, '0,1,7,17,', '综合部', '20', '5', '201012', '2', '3', null, null, null, null, null, null, '1', null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_office` VALUES (20, 17, '0,1,7,17,', '市场部', '30', '5', '201013', '2', '3', null, null, null, null, null, null, '1', null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_office` VALUES (21, 17, '0,1,7,17,', '技术部', '40', '5', '201014', '2', '3', null, null, null, null, null, null, '1', null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_office` VALUES (22, 7, '0,1,7,', '高新区分公司', '50', '6', '201010', '1', '3', null, null, null, null, null, null, '1', null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_office` VALUES (23, 22, '0,1,7,22,', '公司领导', '10', '6', '201011', '2', '3', null, null, null, null, null, null, '1', null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_office` VALUES (24, 22, '0,1,7,22,', '综合部', '20', '6', '201012', '2', '3', null, null, null, null, null, null, '1', null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_office` VALUES (25, 22, '0,1,7,22,', '市场部', '30', '6', '201013', '2', '3', null, null, null, null, null, null, '1', null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_office` VALUES (26, 22, '0,1,7,22,', '技术部', '40', '6', '201014', '2', '3', null, null, null, null, null, null, '1', null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `office_id` bigint DEFAULT NULL COMMENT '归属机构',
  `name` varchar(100) NOT NULL COMMENT '角色名称',
  `role_type` varchar(255) DEFAULT NULL COMMENT '角色类型',
  `data_scope` char(1) DEFAULT NULL COMMENT '数据范围',
  `is_sys` varchar(64) DEFAULT NULL COMMENT '是否系统数据',
  `useable` varchar(64) DEFAULT NULL COMMENT '是否可用',
  `create_by` bigint NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` bigint NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_role_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, 2, '系统管理员', 'security-role', '1', '1', '1', '1', '2013-05-27 08:00:00', '1', '2016-02-25 17:41:34', '', '0');
INSERT INTO `sys_role` VALUES (2, 1, '公司管理员', 'assignment', '2', null, '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_role` VALUES (3, 1, '本公司管理员', 'assignment', '3', null, '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_role` VALUES (4, 1, '部门管理员', 'assignment', '4', null, '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_role` VALUES (5, 1, '本部门管理员', 'assignment', '5', null, '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_role` VALUES (6, 2, '普通用户', 'assignment', '8', '1', '1', '1', '2013-05-27 08:00:00', '1', '2016-03-02 13:26:26', '', '0');
INSERT INTO `sys_role` VALUES (7, 7, '济南市管理员', 'assignment', '9', null, '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `role_id` bigint NOT NULL COMMENT '角色编号',
  `menu_id` bigint NOT NULL COMMENT '菜单编号',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色-菜单';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (1, 1);
INSERT INTO `sys_role_menu` VALUES (1, 2);
INSERT INTO `sys_role_menu` VALUES (1, 3);
INSERT INTO `sys_role_menu` VALUES (1, 4);
INSERT INTO `sys_role_menu` VALUES (1, 5);
INSERT INTO `sys_role_menu` VALUES (1, 6);
INSERT INTO `sys_role_menu` VALUES (1, 7);
INSERT INTO `sys_role_menu` VALUES (1, 8);
INSERT INTO `sys_role_menu` VALUES (1, 9);
INSERT INTO `sys_role_menu` VALUES (1, 10);
INSERT INTO `sys_role_menu` VALUES (1, 11);
INSERT INTO `sys_role_menu` VALUES (1, 12);
INSERT INTO `sys_role_menu` VALUES (1, 13);
INSERT INTO `sys_role_menu` VALUES (1, 14);
INSERT INTO `sys_role_menu` VALUES (1, 15);
INSERT INTO `sys_role_menu` VALUES (1, 16);
INSERT INTO `sys_role_menu` VALUES (1, 17);
INSERT INTO `sys_role_menu` VALUES (1, 18);
INSERT INTO `sys_role_menu` VALUES (1, 19);
INSERT INTO `sys_role_menu` VALUES (1, 20);
INSERT INTO `sys_role_menu` VALUES (1, 21);
INSERT INTO `sys_role_menu` VALUES (1, 22);
INSERT INTO `sys_role_menu` VALUES (1, 23);
INSERT INTO `sys_role_menu` VALUES (1, 24);
INSERT INTO `sys_role_menu` VALUES (1, 27);
INSERT INTO `sys_role_menu` VALUES (1, 28);
INSERT INTO `sys_role_menu` VALUES (1, 29);
INSERT INTO `sys_role_menu` VALUES (1, 30);
INSERT INTO `sys_role_menu` VALUES (1, 31);
INSERT INTO `sys_role_menu` VALUES (1, 32);
INSERT INTO `sys_role_menu` VALUES (1, 33);
INSERT INTO `sys_role_menu` VALUES (1, 34);
INSERT INTO `sys_role_menu` VALUES (1, 35);
INSERT INTO `sys_role_menu` VALUES (1, 36);
INSERT INTO `sys_role_menu` VALUES (1, 37);
INSERT INTO `sys_role_menu` VALUES (1, 38);
INSERT INTO `sys_role_menu` VALUES (1, 39);
INSERT INTO `sys_role_menu` VALUES (1, 40);
INSERT INTO `sys_role_menu` VALUES (1, 41);
INSERT INTO `sys_role_menu` VALUES (1, 42);
INSERT INTO `sys_role_menu` VALUES (1, 43);
INSERT INTO `sys_role_menu` VALUES (1, 44);
INSERT INTO `sys_role_menu` VALUES (1, 45);
INSERT INTO `sys_role_menu` VALUES (1, 46);
INSERT INTO `sys_role_menu` VALUES (1, 47);
INSERT INTO `sys_role_menu` VALUES (1, 48);
INSERT INTO `sys_role_menu` VALUES (1, 49);
INSERT INTO `sys_role_menu` VALUES (1, 50);
INSERT INTO `sys_role_menu` VALUES (1, 51);
INSERT INTO `sys_role_menu` VALUES (1, 52);
INSERT INTO `sys_role_menu` VALUES (1, 53);
INSERT INTO `sys_role_menu` VALUES (1, 54);
INSERT INTO `sys_role_menu` VALUES (1, 55);
INSERT INTO `sys_role_menu` VALUES (1, 56);
INSERT INTO `sys_role_menu` VALUES (1, 57);
INSERT INTO `sys_role_menu` VALUES (1, 58);
INSERT INTO `sys_role_menu` VALUES (1, 59);
INSERT INTO `sys_role_menu` VALUES (1, 60);
INSERT INTO `sys_role_menu` VALUES (1, 61);
INSERT INTO `sys_role_menu` VALUES (1, 62);
INSERT INTO `sys_role_menu` VALUES (1, 63);
INSERT INTO `sys_role_menu` VALUES (1, 64);
INSERT INTO `sys_role_menu` VALUES (1, 65);
INSERT INTO `sys_role_menu` VALUES (1, 66);
INSERT INTO `sys_role_menu` VALUES (1, 67);
INSERT INTO `sys_role_menu` VALUES (1, 68);
INSERT INTO `sys_role_menu` VALUES (1, 69);
INSERT INTO `sys_role_menu` VALUES (1, 70);
INSERT INTO `sys_role_menu` VALUES (1, 71);
INSERT INTO `sys_role_menu` VALUES (1, 72);
INSERT INTO `sys_role_menu` VALUES (1, 73);
INSERT INTO `sys_role_menu` VALUES (1, 74);
INSERT INTO `sys_role_menu` VALUES (1, 75);
INSERT INTO `sys_role_menu` VALUES (1, 76);
INSERT INTO `sys_role_menu` VALUES (1, 77);
INSERT INTO `sys_role_menu` VALUES (1, 78);
INSERT INTO `sys_role_menu` VALUES (1, 79);
INSERT INTO `sys_role_menu` VALUES (2, 1);
INSERT INTO `sys_role_menu` VALUES (2, 2);
INSERT INTO `sys_role_menu` VALUES (2, 3);
INSERT INTO `sys_role_menu` VALUES (2, 4);
INSERT INTO `sys_role_menu` VALUES (2, 5);
INSERT INTO `sys_role_menu` VALUES (2, 6);
INSERT INTO `sys_role_menu` VALUES (2, 7);
INSERT INTO `sys_role_menu` VALUES (2, 8);
INSERT INTO `sys_role_menu` VALUES (2, 9);
INSERT INTO `sys_role_menu` VALUES (2, 10);
INSERT INTO `sys_role_menu` VALUES (2, 11);
INSERT INTO `sys_role_menu` VALUES (2, 12);
INSERT INTO `sys_role_menu` VALUES (2, 13);
INSERT INTO `sys_role_menu` VALUES (2, 14);
INSERT INTO `sys_role_menu` VALUES (2, 15);
INSERT INTO `sys_role_menu` VALUES (2, 16);
INSERT INTO `sys_role_menu` VALUES (2, 17);
INSERT INTO `sys_role_menu` VALUES (2, 18);
INSERT INTO `sys_role_menu` VALUES (2, 19);
INSERT INTO `sys_role_menu` VALUES (2, 20);
INSERT INTO `sys_role_menu` VALUES (2, 21);
INSERT INTO `sys_role_menu` VALUES (2, 22);
INSERT INTO `sys_role_menu` VALUES (2, 23);
INSERT INTO `sys_role_menu` VALUES (2, 24);
INSERT INTO `sys_role_menu` VALUES (2, 27);
INSERT INTO `sys_role_menu` VALUES (2, 28);
INSERT INTO `sys_role_menu` VALUES (2, 29);
INSERT INTO `sys_role_menu` VALUES (2, 30);
INSERT INTO `sys_role_menu` VALUES (2, 31);
INSERT INTO `sys_role_menu` VALUES (2, 32);
INSERT INTO `sys_role_menu` VALUES (2, 33);
INSERT INTO `sys_role_menu` VALUES (2, 34);
INSERT INTO `sys_role_menu` VALUES (2, 35);
INSERT INTO `sys_role_menu` VALUES (2, 36);
INSERT INTO `sys_role_menu` VALUES (2, 37);
INSERT INTO `sys_role_menu` VALUES (2, 38);
INSERT INTO `sys_role_menu` VALUES (2, 39);
INSERT INTO `sys_role_menu` VALUES (2, 40);
INSERT INTO `sys_role_menu` VALUES (2, 41);
INSERT INTO `sys_role_menu` VALUES (2, 42);
INSERT INTO `sys_role_menu` VALUES (2, 43);
INSERT INTO `sys_role_menu` VALUES (2, 44);
INSERT INTO `sys_role_menu` VALUES (2, 45);
INSERT INTO `sys_role_menu` VALUES (2, 46);
INSERT INTO `sys_role_menu` VALUES (2, 47);
INSERT INTO `sys_role_menu` VALUES (2, 48);
INSERT INTO `sys_role_menu` VALUES (2, 49);
INSERT INTO `sys_role_menu` VALUES (2, 50);
INSERT INTO `sys_role_menu` VALUES (2, 51);
INSERT INTO `sys_role_menu` VALUES (2, 52);
INSERT INTO `sys_role_menu` VALUES (2, 53);
INSERT INTO `sys_role_menu` VALUES (2, 54);
INSERT INTO `sys_role_menu` VALUES (2, 55);
INSERT INTO `sys_role_menu` VALUES (2, 56);
INSERT INTO `sys_role_menu` VALUES (2, 57);
INSERT INTO `sys_role_menu` VALUES (2, 58);
INSERT INTO `sys_role_menu` VALUES (2, 59);
INSERT INTO `sys_role_menu` VALUES (2, 60);
INSERT INTO `sys_role_menu` VALUES (2, 61);
INSERT INTO `sys_role_menu` VALUES (2, 62);
INSERT INTO `sys_role_menu` VALUES (2, 63);
INSERT INTO `sys_role_menu` VALUES (2, 64);
INSERT INTO `sys_role_menu` VALUES (2, 69);
INSERT INTO `sys_role_menu` VALUES (3, 1);
INSERT INTO `sys_role_menu` VALUES (3, 2);
INSERT INTO `sys_role_menu` VALUES (3, 3);
INSERT INTO `sys_role_menu` VALUES (3, 4);
INSERT INTO `sys_role_menu` VALUES (3, 5);
INSERT INTO `sys_role_menu` VALUES (3, 6);
INSERT INTO `sys_role_menu` VALUES (3, 7);
INSERT INTO `sys_role_menu` VALUES (3, 8);
INSERT INTO `sys_role_menu` VALUES (3, 9);
INSERT INTO `sys_role_menu` VALUES (3, 10);
INSERT INTO `sys_role_menu` VALUES (3, 11);
INSERT INTO `sys_role_menu` VALUES (3, 12);
INSERT INTO `sys_role_menu` VALUES (3, 13);
INSERT INTO `sys_role_menu` VALUES (3, 14);
INSERT INTO `sys_role_menu` VALUES (3, 15);
INSERT INTO `sys_role_menu` VALUES (3, 16);
INSERT INTO `sys_role_menu` VALUES (3, 17);
INSERT INTO `sys_role_menu` VALUES (3, 18);
INSERT INTO `sys_role_menu` VALUES (3, 19);
INSERT INTO `sys_role_menu` VALUES (3, 20);
INSERT INTO `sys_role_menu` VALUES (3, 21);
INSERT INTO `sys_role_menu` VALUES (3, 22);
INSERT INTO `sys_role_menu` VALUES (3, 23);
INSERT INTO `sys_role_menu` VALUES (3, 24);
INSERT INTO `sys_role_menu` VALUES (3, 25);
INSERT INTO `sys_role_menu` VALUES (3, 26);
INSERT INTO `sys_role_menu` VALUES (3, 27);
INSERT INTO `sys_role_menu` VALUES (3, 28);
INSERT INTO `sys_role_menu` VALUES (3, 29);
INSERT INTO `sys_role_menu` VALUES (3, 30);
INSERT INTO `sys_role_menu` VALUES (3, 31);
INSERT INTO `sys_role_menu` VALUES (3, 32);
INSERT INTO `sys_role_menu` VALUES (3, 33);
INSERT INTO `sys_role_menu` VALUES (3, 34);
INSERT INTO `sys_role_menu` VALUES (3, 35);
INSERT INTO `sys_role_menu` VALUES (3, 36);
INSERT INTO `sys_role_menu` VALUES (3, 37);
INSERT INTO `sys_role_menu` VALUES (3, 38);
INSERT INTO `sys_role_menu` VALUES (3, 39);
INSERT INTO `sys_role_menu` VALUES (3, 40);
INSERT INTO `sys_role_menu` VALUES (3, 41);
INSERT INTO `sys_role_menu` VALUES (3, 42);
INSERT INTO `sys_role_menu` VALUES (3, 43);
INSERT INTO `sys_role_menu` VALUES (3, 44);
INSERT INTO `sys_role_menu` VALUES (3, 45);
INSERT INTO `sys_role_menu` VALUES (3, 46);
INSERT INTO `sys_role_menu` VALUES (3, 47);
INSERT INTO `sys_role_menu` VALUES (3, 48);
INSERT INTO `sys_role_menu` VALUES (3, 49);
INSERT INTO `sys_role_menu` VALUES (3, 50);
INSERT INTO `sys_role_menu` VALUES (3, 51);
INSERT INTO `sys_role_menu` VALUES (3, 52);
INSERT INTO `sys_role_menu` VALUES (3, 53);
INSERT INTO `sys_role_menu` VALUES (3, 54);
INSERT INTO `sys_role_menu` VALUES (3, 55);
INSERT INTO `sys_role_menu` VALUES (3, 56);
INSERT INTO `sys_role_menu` VALUES (3, 57);
INSERT INTO `sys_role_menu` VALUES (3, 58);
INSERT INTO `sys_role_menu` VALUES (3, 59);
INSERT INTO `sys_role_menu` VALUES (3, 60);
INSERT INTO `sys_role_menu` VALUES (3, 61);
INSERT INTO `sys_role_menu` VALUES (3, 62);
INSERT INTO `sys_role_menu` VALUES (3, 63);
INSERT INTO `sys_role_menu` VALUES (3, 64);
INSERT INTO `sys_role_menu` VALUES (3, 65);
INSERT INTO `sys_role_menu` VALUES (3, 66);
INSERT INTO `sys_role_menu` VALUES (3, 67);
INSERT INTO `sys_role_menu` VALUES (3, 68);
INSERT INTO `sys_role_menu` VALUES (3, 69);
INSERT INTO `sys_role_menu` VALUES (3, 70);
INSERT INTO `sys_role_menu` VALUES (3, 71);
INSERT INTO `sys_role_menu` VALUES (3, 72);
INSERT INTO `sys_role_menu` VALUES (3, 73);
INSERT INTO `sys_role_menu` VALUES (3, 74);
INSERT INTO `sys_role_menu` VALUES (3, 75);
INSERT INTO `sys_role_menu` VALUES (3, 76);
INSERT INTO `sys_role_menu` VALUES (3, 77);
INSERT INTO `sys_role_menu` VALUES (3, 78);
INSERT INTO `sys_role_menu` VALUES (3, 79);
INSERT INTO `sys_role_menu` VALUES (3, 80);
INSERT INTO `sys_role_menu` VALUES (3, 81);
INSERT INTO `sys_role_menu` VALUES (3, 82);
INSERT INTO `sys_role_menu` VALUES (3, 83);
INSERT INTO `sys_role_menu` VALUES (3, 84);
INSERT INTO `sys_role_menu` VALUES (3, 85);
INSERT INTO `sys_role_menu` VALUES (3, 86);
INSERT INTO `sys_role_menu` VALUES (3, 87);
INSERT INTO `sys_role_menu` VALUES (3, 88);
INSERT INTO `sys_role_menu` VALUES (3, 89);
INSERT INTO `sys_role_menu` VALUES (3, 90);
INSERT INTO `sys_role_menu` VALUES (5, 1);
INSERT INTO `sys_role_menu` VALUES (5, 2);
INSERT INTO `sys_role_menu` VALUES (5, 13);
INSERT INTO `sys_role_menu` VALUES (5, 14);
INSERT INTO `sys_role_menu` VALUES (5, 15);
INSERT INTO `sys_role_menu` VALUES (5, 16);
INSERT INTO `sys_role_menu` VALUES (5, 17);
INSERT INTO `sys_role_menu` VALUES (5, 18);
INSERT INTO `sys_role_menu` VALUES (5, 19);
INSERT INTO `sys_role_menu` VALUES (5, 20);
INSERT INTO `sys_role_menu` VALUES (5, 21);
INSERT INTO `sys_role_menu` VALUES (5, 22);
INSERT INTO `sys_role_menu` VALUES (5, 27);
INSERT INTO `sys_role_menu` VALUES (5, 28);
INSERT INTO `sys_role_menu` VALUES (5, 29);
INSERT INTO `sys_role_menu` VALUES (5, 30);
INSERT INTO `sys_role_menu` VALUES (5, 31);
INSERT INTO `sys_role_menu` VALUES (5, 32);
INSERT INTO `sys_role_menu` VALUES (5, 33);
INSERT INTO `sys_role_menu` VALUES (5, 34);
INSERT INTO `sys_role_menu` VALUES (5, 35);
INSERT INTO `sys_role_menu` VALUES (5, 36);
INSERT INTO `sys_role_menu` VALUES (5, 37);
INSERT INTO `sys_role_menu` VALUES (5, 38);
INSERT INTO `sys_role_menu` VALUES (5, 39);
INSERT INTO `sys_role_menu` VALUES (5, 40);
INSERT INTO `sys_role_menu` VALUES (5, 41);
INSERT INTO `sys_role_menu` VALUES (5, 42);
INSERT INTO `sys_role_menu` VALUES (5, 43);
INSERT INTO `sys_role_menu` VALUES (5, 44);
INSERT INTO `sys_role_menu` VALUES (5, 45);
INSERT INTO `sys_role_menu` VALUES (5, 46);
INSERT INTO `sys_role_menu` VALUES (5, 47);
INSERT INTO `sys_role_menu` VALUES (5, 48);
INSERT INTO `sys_role_menu` VALUES (5, 49);
INSERT INTO `sys_role_menu` VALUES (5, 50);
INSERT INTO `sys_role_menu` VALUES (5, 51);
INSERT INTO `sys_role_menu` VALUES (5, 52);
INSERT INTO `sys_role_menu` VALUES (5, 53);
INSERT INTO `sys_role_menu` VALUES (5, 54);
INSERT INTO `sys_role_menu` VALUES (5, 55);
INSERT INTO `sys_role_menu` VALUES (5, 56);
INSERT INTO `sys_role_menu` VALUES (5, 57);
INSERT INTO `sys_role_menu` VALUES (5, 60);
INSERT INTO `sys_role_menu` VALUES (5, 61);
INSERT INTO `sys_role_menu` VALUES (5, 62);
INSERT INTO `sys_role_menu` VALUES (5, 63);
INSERT INTO `sys_role_menu` VALUES (5, 64);
INSERT INTO `sys_role_menu` VALUES (5, 69);
INSERT INTO `sys_role_menu` VALUES (6, 1);
INSERT INTO `sys_role_menu` VALUES (6, 27);
INSERT INTO `sys_role_menu` VALUES (6, 28);
INSERT INTO `sys_role_menu` VALUES (6, 29);
INSERT INTO `sys_role_menu` VALUES (6, 30);
INSERT INTO `sys_role_menu` VALUES (6, 31);
INSERT INTO `sys_role_menu` VALUES (6, 32);
INSERT INTO `sys_role_menu` VALUES (6, 33);
INSERT INTO `sys_role_menu` VALUES (6, 34);
INSERT INTO `sys_role_menu` VALUES (6, 35);
INSERT INTO `sys_role_menu` VALUES (6, 36);
INSERT INTO `sys_role_menu` VALUES (6, 37);
INSERT INTO `sys_role_menu` VALUES (6, 38);
INSERT INTO `sys_role_menu` VALUES (6, 39);
INSERT INTO `sys_role_menu` VALUES (6, 40);
INSERT INTO `sys_role_menu` VALUES (6, 41);
INSERT INTO `sys_role_menu` VALUES (6, 42);
INSERT INTO `sys_role_menu` VALUES (6, 43);
INSERT INTO `sys_role_menu` VALUES (6, 44);
INSERT INTO `sys_role_menu` VALUES (6, 45);
INSERT INTO `sys_role_menu` VALUES (6, 46);
INSERT INTO `sys_role_menu` VALUES (6, 47);
INSERT INTO `sys_role_menu` VALUES (6, 48);
INSERT INTO `sys_role_menu` VALUES (6, 49);
INSERT INTO `sys_role_menu` VALUES (6, 50);
INSERT INTO `sys_role_menu` VALUES (6, 51);
INSERT INTO `sys_role_menu` VALUES (6, 52);
INSERT INTO `sys_role_menu` VALUES (6, 53);
INSERT INTO `sys_role_menu` VALUES (6, 54);
INSERT INTO `sys_role_menu` VALUES (6, 55);
INSERT INTO `sys_role_menu` VALUES (6, 56);
INSERT INTO `sys_role_menu` VALUES (6, 57);
INSERT INTO `sys_role_menu` VALUES (8, 1);
INSERT INTO `sys_role_menu` VALUES (8, 27);
INSERT INTO `sys_role_menu` VALUES (8, 28);
INSERT INTO `sys_role_menu` VALUES (8, 29);
INSERT INTO `sys_role_menu` VALUES (8, 30);
INSERT INTO `sys_role_menu` VALUES (8, 56);
INSERT INTO `sys_role_menu` VALUES (8, 57);
INSERT INTO `sys_role_menu` VALUES (8, 58);
INSERT INTO `sys_role_menu` VALUES (8, 59);
INSERT INTO `sys_role_menu` VALUES (8, 71);
INSERT INTO `sys_role_menu` VALUES (9, 1);
INSERT INTO `sys_role_menu` VALUES (9, 31);
INSERT INTO `sys_role_menu` VALUES (9, 32);
INSERT INTO `sys_role_menu` VALUES (9, 33);
INSERT INTO `sys_role_menu` VALUES (9, 34);
INSERT INTO `sys_role_menu` VALUES (9, 35);
INSERT INTO `sys_role_menu` VALUES (9, 36);
INSERT INTO `sys_role_menu` VALUES (9, 37);
INSERT INTO `sys_role_menu` VALUES (9, 38);
INSERT INTO `sys_role_menu` VALUES (9, 39);
INSERT INTO `sys_role_menu` VALUES (9, 40);
INSERT INTO `sys_role_menu` VALUES (9, 41);
INSERT INTO `sys_role_menu` VALUES (9, 42);
INSERT INTO `sys_role_menu` VALUES (9, 43);
INSERT INTO `sys_role_menu` VALUES (9, 44);
INSERT INTO `sys_role_menu` VALUES (9, 45);
INSERT INTO `sys_role_menu` VALUES (9, 46);
INSERT INTO `sys_role_menu` VALUES (9, 47);
INSERT INTO `sys_role_menu` VALUES (9, 48);
INSERT INTO `sys_role_menu` VALUES (9, 49);
INSERT INTO `sys_role_menu` VALUES (9, 50);
INSERT INTO `sys_role_menu` VALUES (9, 51);
INSERT INTO `sys_role_menu` VALUES (9, 52);
INSERT INTO `sys_role_menu` VALUES (9, 53);
INSERT INTO `sys_role_menu` VALUES (9, 54);
INSERT INTO `sys_role_menu` VALUES (9, 55);
INSERT INTO `sys_role_menu` VALUES (9, 60);
INSERT INTO `sys_role_menu` VALUES (9, 61);

-- ----------------------------
-- Table structure for sys_role_office
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_office`;
CREATE TABLE `sys_role_office` (
  `role_id` bigint NOT NULL COMMENT '角色编号',
  `office_id` bigint NOT NULL COMMENT '机构编号',
  PRIMARY KEY (`role_id`,`office_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色-机构';

-- ----------------------------
-- Records of sys_role_office
-- ----------------------------
INSERT INTO `sys_role_office` VALUES (7, 10);
INSERT INTO `sys_role_office` VALUES (7, 11);
INSERT INTO `sys_role_office` VALUES (7, 12);
INSERT INTO `sys_role_office` VALUES (7, 13);
INSERT INTO `sys_role_office` VALUES (7, 14);
INSERT INTO `sys_role_office` VALUES (7, 15);
INSERT INTO `sys_role_office` VALUES (7, 16);
INSERT INTO `sys_role_office` VALUES (7, 17);
INSERT INTO `sys_role_office` VALUES (7, 18);
INSERT INTO `sys_role_office` VALUES (7, 19);
INSERT INTO `sys_role_office` VALUES (7, 20);
INSERT INTO `sys_role_office` VALUES (7, 21);
INSERT INTO `sys_role_office` VALUES (7, 22);
INSERT INTO `sys_role_office` VALUES (7, 23);
INSERT INTO `sys_role_office` VALUES (7, 24);
INSERT INTO `sys_role_office` VALUES (7, 25);
INSERT INTO `sys_role_office` VALUES (7, 26);
INSERT INTO `sys_role_office` VALUES (7, 7);
INSERT INTO `sys_role_office` VALUES (7, 8);
INSERT INTO `sys_role_office` VALUES (7, 9);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `company_id` bigint NOT NULL COMMENT '归属公司',
  `office_id` bigint NOT NULL COMMENT '归属部门',
  `login_name` varchar(100) NOT NULL COMMENT '登录名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `no` varchar(100) DEFAULT NULL COMMENT '工号',
  `name` varchar(100) NOT NULL COMMENT '姓名',
  `email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(200) DEFAULT NULL COMMENT '电话',
  `mobile` varchar(200) DEFAULT NULL COMMENT '手机',
  `user_type` char(1) DEFAULT NULL COMMENT '用户类型',
  `photo` varchar(1000) DEFAULT NULL COMMENT '用户头像',
  `login_ip` varchar(100) DEFAULT NULL COMMENT '最后登陆IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登陆时间',
  `login_flag` varchar(64) DEFAULT NULL COMMENT '是否可登录',
  `create_by` bigint NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` bigint NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_user_office_id` (`office_id`),
  KEY `sys_user_login_name` (`login_name`),
  KEY `sys_user_company_id` (`company_id`),
  KEY `sys_user_update_date` (`update_date`),
  KEY `sys_user_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 1, 2, 'thinkgem', '02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032', '0001', '系统管理员', '123@qq.v', '21', '8675', '1', '/footing_web/userfiles/1/images/photo/2016/03/QQ%E6%88%AA%E5%9B%BE20160301183626.png', '0:0:0:0:0:0:0:1', '2016-03-02 15:32:09', '1', '1', '2013-05-27 08:00:00', '1', '2016-03-02 14:39:44', '最高管理员', '0');
INSERT INTO `sys_user` VALUES (2, 1, 2, 'sd_admin', '02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032', '0002', '管理员', '', '', '', '', '', null, null, '1', '1', '2013-05-27 08:00:00', '1', '2016-03-02 14:56:03', '', '0');
INSERT INTO `sys_user` VALUES (3, 1, 3, 'sd_zhb', '02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032', '0003', '综合部', null, null, null, null, null, null, null, '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_user` VALUES (4, 1, 4, 'sd_scb', '02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032', '0004', '市场部', null, null, null, null, null, null, null, '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_user` VALUES (5, 1, 5, 'sd_jsb', '02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032', '0005', '技术部', null, null, null, null, null, '0:0:0:0:0:0:0:1', '2016-02-25 17:42:35', '1', '1', '2013-05-27 08:00:00', '1', '2016-02-25 17:42:05', null, '0');
INSERT INTO `sys_user` VALUES (6, 1, 6, 'sd_yfb', '02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032', '0006', '研发部', null, null, null, null, null, null, null, '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_user` VALUES (7, 7, 8, 'jn_admin', '02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032', '0007', '济南领导', null, null, null, null, null, null, null, '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_user` VALUES (8, 7, 9, 'jn_zhb', '02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032', '0008', '济南综合部', null, null, null, null, null, null, null, '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_user` VALUES (9, 7, 10, 'jn_scb', '02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032', '0009', '济南市场部', null, null, null, null, null, null, null, '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_user` VALUES (10, 7, 11, 'jn_jsb', '02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032', '0010', '济南技术部', null, null, null, null, null, null, null, '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_user` VALUES (11, 12, 13, 'lc_admin', '02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032', '0011', '济南历城领导', null, null, null, null, null, null, null, '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_user` VALUES (12, 12, 18, 'lx_admin', '02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032', '0012', '济南历下领导', null, null, null, null, null, null, null, '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_user` VALUES (13, 22, 23, 'gx_admin', '02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032', '0013', '济南高新领导', null, null, null, null, null, null, null, '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `user_id` bigint NOT NULL COMMENT '用户编号',
  `role_id` bigint NOT NULL COMMENT '角色编号',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户-角色';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (1, 2);
INSERT INTO `sys_user_role` VALUES (1, 5);
INSERT INTO `sys_user_role` VALUES (1, 6);
INSERT INTO `sys_user_role` VALUES (1, 7);
INSERT INTO `sys_user_role` VALUES (10, 2);
INSERT INTO `sys_user_role` VALUES (11, 3);
INSERT INTO `sys_user_role` VALUES (12, 4);
INSERT INTO `sys_user_role` VALUES (13, 5);
INSERT INTO `sys_user_role` VALUES (14, 6);
INSERT INTO `sys_user_role` VALUES (2, 1);
INSERT INTO `sys_user_role` VALUES (3, 2);
INSERT INTO `sys_user_role` VALUES (4, 3);
INSERT INTO `sys_user_role` VALUES (5, 1);
INSERT INTO `sys_user_role` VALUES (5, 4);
INSERT INTO `sys_user_role` VALUES (6, 5);
INSERT INTO `sys_user_role` VALUES (7, 2);
INSERT INTO `sys_user_role` VALUES (7, 7);
INSERT INTO `sys_user_role` VALUES (8, 2);
INSERT INTO `sys_user_role` VALUES (9, 1);

-- ----------------------------
-- Table structure for test_data
-- ----------------------------
DROP TABLE IF EXISTS `test_data`;
CREATE TABLE `test_data` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `user_id` bigint DEFAULT NULL COMMENT '归属用户',
  `office_id` bigint DEFAULT NULL COMMENT '归属部门',
  `area_id` bigint DEFAULT NULL COMMENT '归属区域',
  `name` varchar(100) DEFAULT NULL COMMENT '名称',
  `sex` char(1) DEFAULT NULL COMMENT '性别',
  `in_date` date DEFAULT NULL COMMENT '加入日期',
  `create_by` bigint NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` bigint NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `test_data_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='业务数据表';

-- ----------------------------
-- Table structure for test_data_child
-- ----------------------------
DROP TABLE IF EXISTS `test_data_child`;
CREATE TABLE `test_data_child` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `test_data_main_id` bigint DEFAULT NULL COMMENT '业务主表ID',
  `name` varchar(100) DEFAULT NULL COMMENT '名称',
  `create_by` bigint NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` bigint NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `test_data_child_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='业务数据子表';

-- ----------------------------
-- Table structure for test_data_main
-- ----------------------------
DROP TABLE IF EXISTS `test_data_main`;
CREATE TABLE `test_data_main` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `user_id` bigint DEFAULT NULL COMMENT '归属用户',
  `office_id` bigint DEFAULT NULL COMMENT '归属部门',
  `area_id` bigint DEFAULT NULL COMMENT '归属区域',
  `name` varchar(100) DEFAULT NULL COMMENT '名称',
  `sex` char(1) DEFAULT NULL COMMENT '性别',
  `in_date` date DEFAULT NULL COMMENT '加入日期',
  `create_by` bigint NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` bigint NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `test_data_main_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='业务数据表';

-- ----------------------------
-- Table structure for test_tree
-- ----------------------------
DROP TABLE IF EXISTS `test_tree`;
CREATE TABLE `test_tree` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `parent_id` bigint NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) NOT NULL COMMENT '所有父级编号',
  `name` varchar(100) NOT NULL COMMENT '名称',
  `sort` decimal(10,0) NOT NULL COMMENT '排序',
  `create_by` bigint NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` bigint NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `test_tree_del_flag` (`del_flag`),
  KEY `test_data_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='树结构表';

