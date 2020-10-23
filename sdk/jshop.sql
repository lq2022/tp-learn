/*
 Navicat Premium Data Transfer

 Source Server         : 本地
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : jshop

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 06/08/2020 11:47:10
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for addons
-- ----------------------------
DROP TABLE IF EXISTS `addons`;
CREATE TABLE `addons`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '插件名或标识',
  `title` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '中文名',
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '插件描述',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '状态',
  `config` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '配置',
  `author` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '作者',
  `version` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '版本号',
  `ctime` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '安装时间',
  `utime` int(10) NOT NULL DEFAULT 0 COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 COMMENT = '插件表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of addons
-- ----------------------------
INSERT INTO `addons` VALUES (1, 'Distribution', '三级分销系统插件', '用户购买商品支付成功后，直推和直推的直推会拿一部分佣金奖励', 1, '{\"level1\":\"0.5\",\"level2\":\"0.2\"}', 'sin', '1.1', "2020/08/20 17:39:05", 1587525932);
INSERT INTO `addons` VALUES (2, 'Trustlogin', 'H5信任登录插件', '信任登录插件，目前只有微信快捷登录，后续增加其他快捷登录', 1, '{\"weixin\":\"1\"}', 'mark', '0.1', 1587525961, 1587525961);
INSERT INTO `addons` VALUES (3, 'Appletmessage', '微信小程序模板消息', '微信小程序模板消息', 1, '{\"display\":\"1\",\"template\":{\"remind_order_pay\":{\"title\":\"\\u50ac\\u4ed8\\u63d0\\u9192\",\"data\":[{\"title\":\"\\u6a21\\u677fID\",\"code\":\"template_id\"},{\"title\":\"\\u5546\\u5bb6\\u540d\\u79f0\",\"code\":\"seller_name\"},{\"title\":\"\\u8ba2\\u5355\\u7f16\\u53f7\",\"code\":\"order_id\"},{\"title\":\"\\u8ba2\\u5355\\u91d1\\u989d\",\"code\":\"order_amount\"},{\"title\":\"\\u6e29\\u99a8\\u63d0\\u793a\",\"code\":\"notice\"}]},\"delivery_notice\":{\"title\":\"\\u8ba2\\u5355\\u53d1\\u8d27\",\"data\":[{\"title\":\"\\u6a21\\u677fID\",\"code\":\"template_id\"},{\"title\":\"\\u8ba2\\u5355\\u53f7\",\"code\":\"order_id\"},{\"title\":\"\\u7269\\u6d41\\u516c\\u53f8\",\"code\":\"logistics_name\"},{\"title\":\"\\u7269\\u6d41\\u5355\\u53f7\",\"code\":\"ship_no\"},{\"title\":\"\\u6536\\u8d27\\u5730\\u5740\",\"code\":\"ship_addr\"},{\"title\":\"\\u6536\\u8d27\\u4eba\",\"code\":\"ship_name\"}]},\"refund_success\":{\"title\":\"\\u8ba2\\u5355\\u9000\\u6b3e\",\"data\":[{\"title\":\"\\u6a21\\u677fID\",\"code\":\"template_id\"},{\"title\":\"\\u8ba2\\u5355\\u7f16\\u53f7\",\"code\":\"source_id\"},{\"title\":\"\\u9000\\u6b3e\\u91d1\\u989d\",\"code\":\"money\"},{\"title\":\"\\u9000\\u6b3e\\u65f6\\u95f4\",\"code\":\"refund_time\"},{\"title\":\"\\u9000\\u6b3e\\u8bf4\\u660e\",\"code\":\"refund_reason\"},{\"title\":\"\\u9000\\u6b3e\\u72b6\\u6001\",\"code\":\"refund_status\"}]}}}', 'mark', '0.1', 1587531037, 1587531037);
INSERT INTO `addons` VALUES (4, 'Aliyunsms', '阿里云短信通道', '阿里云发送短信插件，请勿和其它短信通道一起使用', 1, '{\"accessKeyId\":\"\",\"accessKeySecret\":\"\",\"aliyunPrefix\":\"\",\"template\":{\"login\":{\"title\":\"\\u7528\\u6237\\u767b\\u5f55\",\"data\":{\"title\":{\"title\":\"\\u6a21\\u677fID\",\"code\":\"template_id\",\"value\":\"\"},\"template\":{\"title\":\"\\u6a21\\u677f\\u53d8\\u91cf\",\"content\":\"\\u9a8c\\u8bc1\\u7801:${code}\",\"variable\":{\"code\":\"code\"}},\"content\":{\"title\":\"\\u6a21\\u677f\\u5185\\u5bb9\",\"value\":\"\\u60a8\\u6b63\\u5728\\u767b\\u9646\\u8d26\\u53f7\\uff0c\\u9a8c\\u8bc1\\u7801\\u662f${code}\\uff0c\\u8bf7\\u52ff\\u544a\\u8bc9\\u4ed6\\u4eba\\u3002\"}}},\"reg\":{\"title\":\"\\u7528\\u6237\\u6ce8\\u518c\",\"data\":{\"title\":{\"title\":\"\\u6a21\\u677fID\",\"code\":\"template_id\",\"value\":\"\"},\"template\":{\"title\":\"\\u6a21\\u677f\\u53d8\\u91cf\",\"content\":\"\\u9a8c\\u8bc1\\u7801:${code}\",\"variable\":{\"code\":\"code\"}},\"content\":{\"title\":\"\\u6a21\\u677f\\u5185\\u5bb9\",\"value\":\"\\u60a8\\u6b63\\u5728\\u6ce8\\u518c\\u8d26\\u53f7\\uff0c\\u9a8c\\u8bc1\\u7801\\u662f${code}\\uff0c\\u8bf7\\u52ff\\u544a\\u8bc9\\u4ed6\\u4eba\\u3002\"}}},\"veri\":{\"title\":\"\\u7528\\u6237\\u9a8c\\u8bc1\",\"data\":{\"title\":{\"title\":\"\\u6a21\\u677fID\",\"code\":\"template_id\",\"value\":\"\"},\"template\":{\"title\":\"\\u6a21\\u677f\\u53d8\\u91cf\",\"content\":\"\\u9a8c\\u8bc1\\u7801:${code}\",\"variable\":{\"code\":\"code\"}},\"content\":{\"title\":\"\\u6a21\\u677f\\u5185\\u5bb9\",\"value\":\"\\u60a8\\u7684\\u9a8c\\u8bc1\\u7801\\u662f${code}\\uff0c\\u8bf7\\u52ff\\u544a\\u8bc9\\u4ed6\\u4eba\\u3002\"}}},\"create_order\":{\"title\":\"\\u4e0b\\u5355\\u6210\\u529f\",\"data\":{\"title\":{\"title\":\"\\u6a21\\u677fID\",\"code\":\"template_id\",\"value\":\"\"},\"template\":{\"title\":\"\\u6a21\\u677f\\u53d8\\u91cf\",\"content\":\"\\u8ba2\\u5355\\u53f7 :${order_id}\\uff0c\\u603b\\u4ef7 :${order_amount}\\uff0c\\u914d\\u9001\\u65b9\\u5f0f :${ship_id}\\u6536\\u8d27\\u4eba\\u624b\\u673a :${ship_mobile}\\uff0c\\u6536\\u8d27\\u4eba\\u5730\\u5740 :${ship_addr}\\uff0c\\u6536\\u8d27\\u4eba\\u59d3\\u540d :${ship_name}\",\"variable\":{\"order_id\":\"order_id\",\"order_amount\":\"order_amount\",\"ship_id\":\"ship_id\",\"ship_mobile\":\"ship_mobile\",\"ship_addr\":\"ship_addr\",\"ship_name\":\"ship_name\"}},\"content\":{\"title\":\"\\u6a21\\u677f\\u5185\\u5bb9\",\"value\":\"\\u606d\\u559c\\u60a8\\uff0c\\u8ba2\\u5355\\u521b\\u5efa\\u6210\\u529f,\\u795d\\u60a8\\u8d2d\\u7269\\u6109\\u5feb\\u3002\"}}},\"order_payed\":{\"title\":\"\\u652f\\u4ed8\\u6210\\u529f\",\"data\":{\"title\":{\"title\":\"\\u6a21\\u677fID\",\"code\":\"template_id\",\"value\":\"\"},\"template\":{\"title\":\"\\u6a21\\u677f\\u53d8\\u91cf\",\"content\":\"\\u8ba2\\u5355\\u53f7 :${order_id},\\u4ed8\\u6b3e\\u4eba :${user_name},\\u4ed8\\u6b3e\\u65f6\\u95f4 :${pay_time},\\u4ed8\\u6b3e\\u91d1\\u989d :${money}\",\"variable\":{\"order_id\":\"order_id\",\"user_name\":\"user_name\",\"pay_time\":\"pay_time\",\"money\":\"money\"}},\"content\":{\"title\":\"\\u6a21\\u677f\\u5185\\u5bb9\",\"value\":\"\\u606d\\u559c\\u60a8\\uff0c\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f,\\u795d\\u60a8\\u8d2d\\u7269\\u6109\\u5feb\\u3002\"}}},\"remind_order_pay\":{\"title\":\"\\u50ac\\u4ed8\\u63d0\\u9192\",\"data\":{\"title\":{\"title\":\"\\u6a21\\u677fID\",\"code\":\"template_id\",\"value\":\"\"},\"template\":{\"title\":\"\\u6a21\\u677f\\u53d8\\u91cf\",\"content\":\"\\u8ba2\\u5355\\u53f7:${order_id},\\u914d\\u9001\\u65b9\\u5f0f:${ship_id},\\u7269\\u6d41\\u516c\\u53f8:${logistics_name},\\u7269\\u6d41\\u5355\\u53f7:${ship_no},\\u6536\\u8d27\\u4eba\\u59d3\\u540d:${ship_name},\\u6536\\u8d27\\u4eba\\u5730\\u5740:${ship_addr},\\u6536\\u8d27\\u4eba\\u624b\\u673a:${ship_mobile},\\u5907\\u6ce8:${memo}\",\"variable\":{\"order_id\":\"order_id\",\"ship_id\":\"ship_id\",\"logistics_name\":\"logistics_name\",\"ship_no\":\"ship_no\",\"ship_name\":\"ship_name\",\"ship_addr\":\"ship_addr\",\"ship_mobile\":\"ship_mobile\",\"memo\":\"memo\"}},\"content\":{\"title\":\"\\u6a21\\u677f\\u5185\\u5bb9\",\"value\":\"\\u606d\\u559c\\u60a8\\uff0c\\u8ba2\\u5355\\u521b\\u5efa\\u6210\\u529f,\\u795d\\u60a8\\u8d2d\\u7269\\u6109\\u5feb\\u3002\"}}},\"delivery_notice\":{\"title\":\"\\u8ba2\\u5355\\u53d1\\u8d27\",\"data\":{\"title\":{\"title\":\"\\u6a21\\u677fID\",\"code\":\"template_id\",\"value\":\"\"},\"template\":{\"title\":\"\\u6a21\\u677f\\u53d8\\u91cf\",\"content\":\"\\u8ba2\\u5355\\u53f7:${order_id},\\u914d\\u9001\\u65b9\\u5f0f:${ship_id},\\u7269\\u6d41\\u516c\\u53f8:${logistics_name},\\u7269\\u6d41\\u5355\\u53f7:${ship_no},\\u6536\\u8d27\\u4eba\\u59d3\\u540d:${ship_name},\\u6536\\u8d27\\u4eba\\u5730\\u5740:${ship_addr},\\u6536\\u8d27\\u4eba\\u624b\\u673a:${ship_mobile},\\u5907\\u6ce8:${memo}\",\"variable\":{\"order_id\":\"order_id\",\"ship_id\":\"ship_id\",\"logistics_name\":\"logistics_name\",\"ship_no\":\"ship_no\",\"ship_name\":\"ship_name\",\"ship_addr\":\"ship_addr\",\"ship_mobile\":\"ship_mobile\",\"memo\":\"memo\"}},\"content\":{\"title\":\"\\u6a21\\u677f\\u5185\\u5bb9\",\"value\":\"\\u606d\\u559c\\u60a8\\uff0c\\u8ba2\\u5355\\u521b\\u5efa\\u6210\\u529f,\\u795d\\u60a8\\u8d2d\\u7269\\u6109\\u5feb\\u3002\"}}},\"aftersales_pass\":{\"title\":\"\\u552e\\u540e\\u5ba1\\u6838\\u901a\\u8fc7\",\"data\":{\"title\":{\"title\":\"\\u6a21\\u677fID\",\"code\":\"template_id\",\"value\":\"\"},\"template\":{\"title\":\"\\u6a21\\u677f\\u53d8\\u91cf\",\"content\":\"\\u8ba2\\u5355\\u53f7:${order_id},\\u552e\\u540e\\u5355\\u53f7:${aftersales_id},\\u5ba1\\u6838\\u72b6\\u6001:${aftersales_status},\\u5ba1\\u6838\\u5907\\u6ce8${mark}\",\"variable\":{\"order_id\":\"order_id\",\"aftersales_id\":\"aftersales_id\",\"status\":\"aftersales_status\",\"mark\":\"mark\"}},\"content\":{\"title\":\"\\u6a21\\u677f\\u5185\\u5bb9\",\"value\":\"\\u606d\\u559c\\u60a8\\uff0c\\u8ba2\\u5355\\u521b\\u5efa\\u6210\\u529f,\\u795d\\u60a8\\u8d2d\\u7269\\u6109\\u5feb\\u3002\"}}},\"refund_success\":{\"title\":\"\\u9000\\u6b3e\\u6210\\u529f\",\"data\":{\"title\":{\"title\":\"\\u6a21\\u677fID\",\"code\":\"template_id\",\"value\":\"\"},\"template\":{\"title\":\"\\u6a21\\u677f\\u53d8\\u91cf\",\"content\":\"\\u8ba2\\u5355\\u53f7 :${order_id}\\uff0c\\u9000\\u6b3e\\u7f16\\u53f7 :${refund_id},\\u9000\\u6b3e\\u91d1\\u989d :${refund}\",\"variable\":{\"order_id\":\"source_id\",\"refund_id\":\"refund_id\",\"refund\":\"money\"}},\"content\":{\"title\":\"\\u6a21\\u677f\\u5185\\u5bb9\",\"value\":\"\\u606d\\u559c\\u60a8\\uff0c\\u8ba2\\u5355\\u521b\\u5efa\\u6210\\u529f,\\u795d\\u60a8\\u8d2d\\u7269\\u6109\\u5feb\\u3002\"}}},\"seller_order_notice\":{\"title\":\"\\u5356\\u5bb6\\u65b0\\u8ba2\\u5355\\u901a\\u77e5\",\"data\":{\"title\":{\"title\":\"\\u6a21\\u677fID\",\"code\":\"template_id\",\"value\":\"\"},\"template\":{\"title\":\"\\u6a21\\u677f\\u53d8\\u91cf\",\"content\":\"\\u8ba2\\u5355\\u53f7 :${order_id},\\u4ed8\\u6b3e\\u4eba :${user_name},\\u4ed8\\u6b3e\\u65f6\\u95f4 :${pay_time},\\u4ed8\\u6b3e\\u91d1\\u989d :${money}\",\"variable\":{\"order_id\":\"order_id\",\"user_name\":\"user_name\",\"pay_time\":\"pay_time\",\"money\":\"money\"}},\"content\":{\"title\":\"\\u6a21\\u677f\\u5185\\u5bb9\",\"value\":\"\\u5356\\u5bb6\\u60a8\\u597d\\uff0c\\u60a8\\u6709\\u65b0\\u7684\\u8ba2\\u5355\\u4e86\\uff0c\\u8bf7\\u53ca\\u65f6\\u5904\\u7406\\u3002\"}}}}}', 'mark', '0.1', 1587531045, 1587531045);
INSERT INTO `addons` VALUES (5, 'KdniaoExpress', '快递打印插件', '快递鸟快递查询以及订单打印插件，请勿和其它打印插件一起使用。', 1, '{\"ebusinessid\":\"\",\"apikey\":\"\",\"print_name\":\"\",\"is_priview\":\"0\",\"auto_send\":\"0\",\"is_notice\":\"1\"}', 'mark', '0.1', 1587531060, 1587531060);

-- ----------------------------
-- Table structure for advert_position
-- ----------------------------
DROP TABLE IF EXISTS `advert_position`;
CREATE TABLE `advert_position`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '幻灯片名称',
  `code` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '广告位置编码',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `utime` bigint(12) UNSIGNED NULL DEFAULT NULL COMMENT '更新时间',
  `state` tinyint(1) UNSIGNED NULL DEFAULT 1 COMMENT '1 启用  2禁用',
  `sort` tinyint(3) UNSIGNED NULL DEFAULT 0 COMMENT '排序',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 COMMENT = '广告位置表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of advert_position
-- ----------------------------
INSERT INTO `advert_position` VALUES (1, '首页广告位', 'tpl1_slider', 1540172590, 1540221472, 1, 100);

-- ----------------------------
-- Table structure for advertisement
-- ----------------------------
DROP TABLE IF EXISTS `advertisement`;
CREATE TABLE `advertisement`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `position_id` int(10) UNSIGNED NULL DEFAULT 0 COMMENT '广告位置id',
  `name` varchar(50) NULL DEFAULT NULL COMMENT '广告名称',
  `img` char(32) NULL DEFAULT NULL COMMENT '广告图片id',
  `val` varchar(255) NULL DEFAULT NULL COMMENT '链接属性值',
  `sort` smallint(5) UNSIGNED NULL DEFAULT 0 COMMENT '从小到大 越小越靠前',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `utime` bigint(12) UNSIGNED NULL DEFAULT NULL COMMENT '更新时间',
  `code` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '广告位置编码',
  `type` tinyint(3) UNSIGNED NULL DEFAULT NULL COMMENT '类型  1url  2商品  3文章',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 COMMENT = '广告表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of advertisement
-- ----------------------------
INSERT INTO `advertisement` VALUES (1, 1, '广告', '4a6f179672c7f1ec02582eb104607dd2', '4', 100, 1540172656, 1540460353, 'tpl1_slider', 2);

-- ----------------------------
-- Table structure for area
-- ----------------------------
DROP TABLE IF EXISTS `area`;
CREATE TABLE `area`  (
  `id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '地区ID',
  `parent_id` int(10) UNSIGNED NULL DEFAULT 0 COMMENT '父级ID',
  `depth` tinyint(1) UNSIGNED NULL DEFAULT 0 COMMENT '地区深度',
  `name` varchar(50) NULL DEFAULT NULL COMMENT '地区名称',
  `postal_code` varchar(10) NOT NULL DEFAULT '' COMMENT '邮编',
  `sort` int(10) NOT NULL DEFAULT 100 COMMENT '地区排序',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id`(`id`, `parent_id`, `name`) USING BTREE
) ENGINE = InnoDB COMMENT = '地区表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of area
-- ----------------------------
INSERT INTO `area` VALUES (110000, 0, 1, '北京市', '100000', 100);
INSERT INTO `area` VALUES (110100, 110000, 2, '北京市', '100000', 100);
INSERT INTO `area` VALUES (110101, 110100, 3, '东城区', '0', 100);
INSERT INTO `area` VALUES (110102, 110100, 3, '西城区', '0', 100);
INSERT INTO `area` VALUES (110105, 110100, 3, '朝阳区', '0', 100);
INSERT INTO `area` VALUES (110106, 110100, 3, '丰台区', '0', 100);
INSERT INTO `area` VALUES (110107, 110100, 3, '石景山区', '0', 100);
INSERT INTO `area` VALUES (110108, 110100, 3, '海淀区', '0', 100);
INSERT INTO `area` VALUES (110109, 110100, 3, '门头沟区', '0', 100);
INSERT INTO `area` VALUES (110111, 110100, 3, '房山区', '0', 100);
INSERT INTO `area` VALUES (110112, 110100, 3, '通州区', '0', 100);
INSERT INTO `area` VALUES (110113, 110100, 3, '顺义区', '0', 100);
INSERT INTO `area` VALUES (110114, 110100, 3, '昌平区', '0', 100);
INSERT INTO `area` VALUES (110115, 110100, 3, '大兴区', '0', 100);
INSERT INTO `area` VALUES (110116, 110100, 3, '怀柔区', '0', 100);
INSERT INTO `area` VALUES (110117, 110100, 3, '平谷区', '0', 100);
INSERT INTO `area` VALUES (110118, 110100, 3, '密云区', '0', 100);
INSERT INTO `area` VALUES (110119, 110100, 3, '延庆区', '0', 100);
INSERT INTO `area` VALUES (120000, 0, 1, '天津市', '0', 100);
INSERT INTO `area` VALUES (120100, 120000, 2, '天津市', '0', 100);
INSERT INTO `area` VALUES (120101, 120100, 3, '和平区', '0', 100);
INSERT INTO `area` VALUES (120102, 120100, 3, '河东区', '0', 100);
INSERT INTO `area` VALUES (120103, 120100, 3, '河西区', '0', 100);
INSERT INTO `area` VALUES (120104, 120100, 3, '南开区', '0', 100);
INSERT INTO `area` VALUES (120105, 120100, 3, '河北区', '0', 100);
INSERT INTO `area` VALUES (120106, 120100, 3, '红桥区', '0', 100);
INSERT INTO `area` VALUES (120110, 120100, 3, '东丽区', '0', 100);
INSERT INTO `area` VALUES (120111, 120100, 3, '西青区', '0', 100);
INSERT INTO `area` VALUES (120112, 120100, 3, '津南区', '0', 100);
INSERT INTO `area` VALUES (120113, 120100, 3, '北辰区', '0', 100);
INSERT INTO `area` VALUES (120114, 120100, 3, '武清区', '0', 100);
INSERT INTO `area` VALUES (120115, 120100, 3, '宝坻区', '0', 100);
INSERT INTO `area` VALUES (120116, 120100, 3, '滨海新区', '0', 100);
INSERT INTO `area` VALUES (120117, 120100, 3, '宁河区', '0', 100);
INSERT INTO `area` VALUES (120118, 120100, 3, '静海区', '0', 100);
INSERT INTO `area` VALUES (120119, 120100, 3, '蓟州区', '0', 100);
INSERT INTO `area` VALUES (130000, 0, 1, '河北省', '0', 100);
INSERT INTO `area` VALUES (130100, 130000, 2, '石家庄市', '0', 100);
INSERT INTO `area` VALUES (130101, 130100, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (130102, 130100, 3, '长安区', '0', 100);
INSERT INTO `area` VALUES (130104, 130100, 3, '桥西区', '0', 100);
INSERT INTO `area` VALUES (130105, 130100, 3, '新华区', '0', 100);
INSERT INTO `area` VALUES (130107, 130100, 3, '井陉矿区', '0', 100);
INSERT INTO `area` VALUES (130108, 130100, 3, '裕华区', '0', 100);
INSERT INTO `area` VALUES (130109, 130100, 3, '藁城区', '0', 100);
INSERT INTO `area` VALUES (130110, 130100, 3, '鹿泉区', '0', 100);
INSERT INTO `area` VALUES (130111, 130100, 3, '栾城区', '0', 100);
INSERT INTO `area` VALUES (130121, 130100, 3, '井陉县', '0', 100);
INSERT INTO `area` VALUES (130123, 130100, 3, '正定县', '0', 100);
INSERT INTO `area` VALUES (130125, 130100, 3, '行唐县', '0', 100);
INSERT INTO `area` VALUES (130126, 130100, 3, '灵寿县', '0', 100);
INSERT INTO `area` VALUES (130127, 130100, 3, '高邑县', '0', 100);
INSERT INTO `area` VALUES (130128, 130100, 3, '深泽县', '0', 100);
INSERT INTO `area` VALUES (130129, 130100, 3, '赞皇县', '0', 100);
INSERT INTO `area` VALUES (130130, 130100, 3, '无极县', '0', 100);
INSERT INTO `area` VALUES (130131, 130100, 3, '平山县', '0', 100);
INSERT INTO `area` VALUES (130132, 130100, 3, '元氏县', '0', 100);
INSERT INTO `area` VALUES (130133, 130100, 3, '赵县', '0', 100);
INSERT INTO `area` VALUES (130183, 130100, 3, '晋州市', '0', 100);
INSERT INTO `area` VALUES (130184, 130100, 3, '新乐市', '0', 100);
INSERT INTO `area` VALUES (130200, 130000, 2, '唐山市', '0', 100);
INSERT INTO `area` VALUES (130201, 130200, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (130202, 130200, 3, '路南区', '0', 100);
INSERT INTO `area` VALUES (130203, 130200, 3, '路北区', '0', 100);
INSERT INTO `area` VALUES (130204, 130200, 3, '古冶区', '0', 100);
INSERT INTO `area` VALUES (130205, 130200, 3, '开平区', '0', 100);
INSERT INTO `area` VALUES (130207, 130200, 3, '丰南区', '0', 100);
INSERT INTO `area` VALUES (130208, 130200, 3, '丰润区', '0', 100);
INSERT INTO `area` VALUES (130209, 130200, 3, '曹妃甸区', '0', 100);
INSERT INTO `area` VALUES (130223, 130200, 3, '滦县', '0', 100);
INSERT INTO `area` VALUES (130224, 130200, 3, '滦南县', '0', 100);
INSERT INTO `area` VALUES (130225, 130200, 3, '乐亭县', '0', 100);
INSERT INTO `area` VALUES (130227, 130200, 3, '迁西县', '0', 100);
INSERT INTO `area` VALUES (130229, 130200, 3, '玉田县', '0', 100);
INSERT INTO `area` VALUES (130281, 130200, 3, '遵化市', '0', 100);
INSERT INTO `area` VALUES (130283, 130200, 3, '迁安市', '0', 100);
INSERT INTO `area` VALUES (130300, 130000, 2, '秦皇岛市', '0', 100);
INSERT INTO `area` VALUES (130301, 130300, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (130302, 130300, 3, '海港区', '0', 100);
INSERT INTO `area` VALUES (130303, 130300, 3, '山海关区', '0', 100);
INSERT INTO `area` VALUES (130304, 130300, 3, '北戴河区', '0', 100);
INSERT INTO `area` VALUES (130306, 130300, 3, '抚宁区', '0', 100);
INSERT INTO `area` VALUES (130321, 130300, 3, '青龙满族自治县', '0', 100);
INSERT INTO `area` VALUES (130322, 130300, 3, '昌黎县', '0', 100);
INSERT INTO `area` VALUES (130324, 130300, 3, '卢龙县', '0', 100);
INSERT INTO `area` VALUES (130400, 130000, 2, '邯郸市', '0', 100);
INSERT INTO `area` VALUES (130401, 130400, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (130402, 130400, 3, '邯山区', '0', 100);
INSERT INTO `area` VALUES (130403, 130400, 3, '丛台区', '0', 100);
INSERT INTO `area` VALUES (130404, 130400, 3, '复兴区', '0', 100);
INSERT INTO `area` VALUES (130406, 130400, 3, '峰峰矿区', '0', 100);
INSERT INTO `area` VALUES (130421, 130400, 3, '邯郸县', '0', 100);
INSERT INTO `area` VALUES (130423, 130400, 3, '临漳县', '0', 100);
INSERT INTO `area` VALUES (130424, 130400, 3, '成安县', '0', 100);
INSERT INTO `area` VALUES (130425, 130400, 3, '大名县', '0', 100);
INSERT INTO `area` VALUES (130426, 130400, 3, '涉县', '0', 100);
INSERT INTO `area` VALUES (130427, 130400, 3, '磁县', '0', 100);
INSERT INTO `area` VALUES (130428, 130400, 3, '肥乡县', '0', 100);
INSERT INTO `area` VALUES (130429, 130400, 3, '永年县', '0', 100);
INSERT INTO `area` VALUES (130430, 130400, 3, '邱县', '0', 100);
INSERT INTO `area` VALUES (130431, 130400, 3, '鸡泽县', '0', 100);
INSERT INTO `area` VALUES (130432, 130400, 3, '广平县', '0', 100);
INSERT INTO `area` VALUES (130433, 130400, 3, '馆陶县', '0', 100);
INSERT INTO `area` VALUES (130434, 130400, 3, '魏县', '0', 100);
INSERT INTO `area` VALUES (130435, 130400, 3, '曲周县', '0', 100);
INSERT INTO `area` VALUES (130481, 130400, 3, '武安市', '0', 100);
INSERT INTO `area` VALUES (130500, 130000, 2, '邢台市', '0', 100);
INSERT INTO `area` VALUES (130501, 130500, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (130502, 130500, 3, '桥东区', '0', 100);
INSERT INTO `area` VALUES (130503, 130500, 3, '桥西区', '0', 100);
INSERT INTO `area` VALUES (130521, 130500, 3, '邢台县', '0', 100);
INSERT INTO `area` VALUES (130522, 130500, 3, '临城县', '0', 100);
INSERT INTO `area` VALUES (130523, 130500, 3, '内丘县', '0', 100);
INSERT INTO `area` VALUES (130524, 130500, 3, '柏乡县', '0', 100);
INSERT INTO `area` VALUES (130525, 130500, 3, '隆尧县', '0', 100);
INSERT INTO `area` VALUES (130526, 130500, 3, '任县', '0', 100);
INSERT INTO `area` VALUES (130527, 130500, 3, '南和县', '0', 100);
INSERT INTO `area` VALUES (130528, 130500, 3, '宁晋县', '0', 100);
INSERT INTO `area` VALUES (130529, 130500, 3, '巨鹿县', '0', 100);
INSERT INTO `area` VALUES (130530, 130500, 3, '新河县', '0', 100);
INSERT INTO `area` VALUES (130531, 130500, 3, '广宗县', '0', 100);
INSERT INTO `area` VALUES (130532, 130500, 3, '平乡县', '0', 100);
INSERT INTO `area` VALUES (130533, 130500, 3, '威县', '0', 100);
INSERT INTO `area` VALUES (130534, 130500, 3, '清河县', '0', 100);
INSERT INTO `area` VALUES (130535, 130500, 3, '临西县', '0', 100);
INSERT INTO `area` VALUES (130581, 130500, 3, '南宫市', '0', 100);
INSERT INTO `area` VALUES (130582, 130500, 3, '沙河市', '0', 100);
INSERT INTO `area` VALUES (130600, 130000, 2, '保定市', '0', 100);
INSERT INTO `area` VALUES (130601, 130600, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (130602, 130600, 3, '竞秀区', '0', 100);
INSERT INTO `area` VALUES (130606, 130600, 3, '莲池区', '0', 100);
INSERT INTO `area` VALUES (130607, 130600, 3, '满城区', '0', 100);
INSERT INTO `area` VALUES (130608, 130600, 3, '清苑区', '0', 100);
INSERT INTO `area` VALUES (130609, 130600, 3, '徐水区', '0', 100);
INSERT INTO `area` VALUES (130623, 130600, 3, '涞水县', '0', 100);
INSERT INTO `area` VALUES (130624, 130600, 3, '阜平县', '0', 100);
INSERT INTO `area` VALUES (130626, 130600, 3, '定兴县', '0', 100);
INSERT INTO `area` VALUES (130627, 130600, 3, '唐县', '0', 100);
INSERT INTO `area` VALUES (130628, 130600, 3, '高阳县', '0', 100);
INSERT INTO `area` VALUES (130629, 130600, 3, '容城县', '0', 100);
INSERT INTO `area` VALUES (130630, 130600, 3, '涞源县', '0', 100);
INSERT INTO `area` VALUES (130631, 130600, 3, '望都县', '0', 100);
INSERT INTO `area` VALUES (130632, 130600, 3, '安新县', '0', 100);
INSERT INTO `area` VALUES (130633, 130600, 3, '易县', '0', 100);
INSERT INTO `area` VALUES (130634, 130600, 3, '曲阳县', '0', 100);
INSERT INTO `area` VALUES (130635, 130600, 3, '蠡县', '0', 100);
INSERT INTO `area` VALUES (130636, 130600, 3, '顺平县', '0', 100);
INSERT INTO `area` VALUES (130637, 130600, 3, '博野县', '0', 100);
INSERT INTO `area` VALUES (130638, 130600, 3, '雄县', '0', 100);
INSERT INTO `area` VALUES (130681, 130600, 3, '涿州市', '0', 100);
INSERT INTO `area` VALUES (130683, 130600, 3, '安国市', '0', 100);
INSERT INTO `area` VALUES (130684, 130600, 3, '高碑店市', '0', 100);
INSERT INTO `area` VALUES (130700, 130000, 2, '张家口市', '0', 100);
INSERT INTO `area` VALUES (130701, 130700, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (130702, 130700, 3, '桥东区', '0', 100);
INSERT INTO `area` VALUES (130703, 130700, 3, '桥西区', '0', 100);
INSERT INTO `area` VALUES (130705, 130700, 3, '宣化区', '0', 100);
INSERT INTO `area` VALUES (130706, 130700, 3, '下花园区', '0', 100);
INSERT INTO `area` VALUES (130708, 130700, 3, '万全区', '0', 100);
INSERT INTO `area` VALUES (130709, 130700, 3, '崇礼区', '0', 100);
INSERT INTO `area` VALUES (130722, 130700, 3, '张北县', '0', 100);
INSERT INTO `area` VALUES (130723, 130700, 3, '康保县', '0', 100);
INSERT INTO `area` VALUES (130724, 130700, 3, '沽源县', '0', 100);
INSERT INTO `area` VALUES (130725, 130700, 3, '尚义县', '0', 100);
INSERT INTO `area` VALUES (130726, 130700, 3, '蔚县', '0', 100);
INSERT INTO `area` VALUES (130727, 130700, 3, '阳原县', '0', 100);
INSERT INTO `area` VALUES (130728, 130700, 3, '怀安县', '0', 100);
INSERT INTO `area` VALUES (130730, 130700, 3, '怀来县', '0', 100);
INSERT INTO `area` VALUES (130731, 130700, 3, '涿鹿县', '0', 100);
INSERT INTO `area` VALUES (130732, 130700, 3, '赤城县', '0', 100);
INSERT INTO `area` VALUES (130800, 130000, 2, '承德市', '0', 100);
INSERT INTO `area` VALUES (130801, 130800, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (130802, 130800, 3, '双桥区', '0', 100);
INSERT INTO `area` VALUES (130803, 130800, 3, '双滦区', '0', 100);
INSERT INTO `area` VALUES (130804, 130800, 3, '鹰手营子矿区', '0', 100);
INSERT INTO `area` VALUES (130821, 130800, 3, '承德县', '0', 100);
INSERT INTO `area` VALUES (130822, 130800, 3, '兴隆县', '0', 100);
INSERT INTO `area` VALUES (130823, 130800, 3, '平泉县', '0', 100);
INSERT INTO `area` VALUES (130824, 130800, 3, '滦平县', '0', 100);
INSERT INTO `area` VALUES (130825, 130800, 3, '隆化县', '0', 100);
INSERT INTO `area` VALUES (130826, 130800, 3, '丰宁满族自治县', '0', 100);
INSERT INTO `area` VALUES (130827, 130800, 3, '宽城满族自治县', '0', 100);
INSERT INTO `area` VALUES (130828, 130800, 3, '围场满族蒙古族自治县', '0', 100);
INSERT INTO `area` VALUES (130900, 130000, 2, '沧州市', '0', 100);
INSERT INTO `area` VALUES (130901, 130900, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (130902, 130900, 3, '新华区', '0', 100);
INSERT INTO `area` VALUES (130903, 130900, 3, '运河区', '0', 100);
INSERT INTO `area` VALUES (130921, 130900, 3, '沧县', '0', 100);
INSERT INTO `area` VALUES (130922, 130900, 3, '青县', '0', 100);
INSERT INTO `area` VALUES (130923, 130900, 3, '东光县', '0', 100);
INSERT INTO `area` VALUES (130924, 130900, 3, '海兴县', '0', 100);
INSERT INTO `area` VALUES (130925, 130900, 3, '盐山县', '0', 100);
INSERT INTO `area` VALUES (130926, 130900, 3, '肃宁县', '0', 100);
INSERT INTO `area` VALUES (130927, 130900, 3, '南皮县', '0', 100);
INSERT INTO `area` VALUES (130928, 130900, 3, '吴桥县', '0', 100);
INSERT INTO `area` VALUES (130929, 130900, 3, '献县', '0', 100);
INSERT INTO `area` VALUES (130930, 130900, 3, '孟村回族自治县', '0', 100);
INSERT INTO `area` VALUES (130981, 130900, 3, '泊头市', '0', 100);
INSERT INTO `area` VALUES (130982, 130900, 3, '任丘市', '0', 100);
INSERT INTO `area` VALUES (130983, 130900, 3, '黄骅市', '0', 100);
INSERT INTO `area` VALUES (130984, 130900, 3, '河间市', '0', 100);
INSERT INTO `area` VALUES (131000, 130000, 2, '廊坊市', '0', 100);
INSERT INTO `area` VALUES (131001, 131000, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (131002, 131000, 3, '安次区', '0', 100);
INSERT INTO `area` VALUES (131003, 131000, 3, '广阳区', '0', 100);
INSERT INTO `area` VALUES (131022, 131000, 3, '固安县', '0', 100);
INSERT INTO `area` VALUES (131023, 131000, 3, '永清县', '0', 100);
INSERT INTO `area` VALUES (131024, 131000, 3, '香河县', '0', 100);
INSERT INTO `area` VALUES (131025, 131000, 3, '大城县', '0', 100);
INSERT INTO `area` VALUES (131026, 131000, 3, '文安县', '0', 100);
INSERT INTO `area` VALUES (131028, 131000, 3, '大厂回族自治县', '0', 100);
INSERT INTO `area` VALUES (131081, 131000, 3, '霸州市', '0', 100);
INSERT INTO `area` VALUES (131082, 131000, 3, '三河市', '0', 100);
INSERT INTO `area` VALUES (131100, 130000, 2, '衡水市', '0', 100);
INSERT INTO `area` VALUES (131101, 131100, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (131102, 131100, 3, '桃城区', '0', 100);
INSERT INTO `area` VALUES (131103, 131100, 3, '冀州区', '0', 100);
INSERT INTO `area` VALUES (131121, 131100, 3, '枣强县', '0', 100);
INSERT INTO `area` VALUES (131122, 131100, 3, '武邑县', '0', 100);
INSERT INTO `area` VALUES (131123, 131100, 3, '武强县', '0', 100);
INSERT INTO `area` VALUES (131124, 131100, 3, '饶阳县', '0', 100);
INSERT INTO `area` VALUES (131125, 131100, 3, '安平县', '0', 100);
INSERT INTO `area` VALUES (131126, 131100, 3, '故城县', '0', 100);
INSERT INTO `area` VALUES (131127, 131100, 3, '景县', '0', 100);
INSERT INTO `area` VALUES (131128, 131100, 3, '阜城县', '0', 100);
INSERT INTO `area` VALUES (131182, 131100, 3, '深州市', '0', 100);
INSERT INTO `area` VALUES (139000, 130000, 2, '省直辖县级行政区划', '0', 100);
INSERT INTO `area` VALUES (139001, 139000, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (139002, 139000, 3, '辛集市', '0', 100);
INSERT INTO `area` VALUES (140000, 0, 1, '山西省', '0', 100);
INSERT INTO `area` VALUES (140100, 140000, 2, '太原市', '0', 100);
INSERT INTO `area` VALUES (140101, 140100, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (140105, 140100, 3, '小店区', '0', 100);
INSERT INTO `area` VALUES (140106, 140100, 3, '迎泽区', '0', 100);
INSERT INTO `area` VALUES (140107, 140100, 3, '杏花岭区', '0', 100);
INSERT INTO `area` VALUES (140108, 140100, 3, '尖草坪区', '0', 100);
INSERT INTO `area` VALUES (140109, 140100, 3, '万柏林区', '0', 100);
INSERT INTO `area` VALUES (140110, 140100, 3, '晋源区', '0', 100);
INSERT INTO `area` VALUES (140121, 140100, 3, '清徐县', '0', 100);
INSERT INTO `area` VALUES (140122, 140100, 3, '阳曲县', '0', 100);
INSERT INTO `area` VALUES (140123, 140100, 3, '娄烦县', '0', 100);
INSERT INTO `area` VALUES (140181, 140100, 3, '古交市', '0', 100);
INSERT INTO `area` VALUES (140200, 140000, 2, '大同市', '0', 100);
INSERT INTO `area` VALUES (140201, 140200, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (140202, 140200, 3, '城区', '0', 100);
INSERT INTO `area` VALUES (140203, 140200, 3, '矿区', '0', 100);
INSERT INTO `area` VALUES (140211, 140200, 3, '南郊区', '0', 100);
INSERT INTO `area` VALUES (140212, 140200, 3, '新荣区', '0', 100);
INSERT INTO `area` VALUES (140221, 140200, 3, '阳高县', '0', 100);
INSERT INTO `area` VALUES (140222, 140200, 3, '天镇县', '0', 100);
INSERT INTO `area` VALUES (140223, 140200, 3, '广灵县', '0', 100);
INSERT INTO `area` VALUES (140224, 140200, 3, '灵丘县', '0', 100);
INSERT INTO `area` VALUES (140225, 140200, 3, '浑源县', '0', 100);
INSERT INTO `area` VALUES (140226, 140200, 3, '左云县', '0', 100);
INSERT INTO `area` VALUES (140227, 140200, 3, '大同县', '0', 100);
INSERT INTO `area` VALUES (140300, 140000, 2, '阳泉市', '0', 100);
INSERT INTO `area` VALUES (140301, 140300, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (140302, 140300, 3, '城区', '0', 100);
INSERT INTO `area` VALUES (140303, 140300, 3, '矿区', '0', 100);
INSERT INTO `area` VALUES (140311, 140300, 3, '郊区', '0', 100);
INSERT INTO `area` VALUES (140321, 140300, 3, '平定县', '0', 100);
INSERT INTO `area` VALUES (140322, 140300, 3, '盂县', '0', 100);
INSERT INTO `area` VALUES (140400, 140000, 2, '长治市', '0', 100);
INSERT INTO `area` VALUES (140401, 140400, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (140402, 140400, 3, '城区', '0', 100);
INSERT INTO `area` VALUES (140411, 140400, 3, '郊区', '0', 100);
INSERT INTO `area` VALUES (140421, 140400, 3, '长治县', '0', 100);
INSERT INTO `area` VALUES (140423, 140400, 3, '襄垣县', '0', 100);
INSERT INTO `area` VALUES (140424, 140400, 3, '屯留县', '0', 100);
INSERT INTO `area` VALUES (140425, 140400, 3, '平顺县', '0', 100);
INSERT INTO `area` VALUES (140426, 140400, 3, '黎城县', '0', 100);
INSERT INTO `area` VALUES (140427, 140400, 3, '壶关县', '0', 100);
INSERT INTO `area` VALUES (140428, 140400, 3, '长子县', '0', 100);
INSERT INTO `area` VALUES (140429, 140400, 3, '武乡县', '0', 100);
INSERT INTO `area` VALUES (140430, 140400, 3, '沁县', '0', 100);
INSERT INTO `area` VALUES (140431, 140400, 3, '沁源县', '0', 100);
INSERT INTO `area` VALUES (140481, 140400, 3, '潞城市', '0', 100);
INSERT INTO `area` VALUES (140500, 140000, 2, '晋城市', '0', 100);
INSERT INTO `area` VALUES (140501, 140500, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (140502, 140500, 3, '城区', '0', 100);
INSERT INTO `area` VALUES (140521, 140500, 3, '沁水县', '0', 100);
INSERT INTO `area` VALUES (140522, 140500, 3, '阳城县', '0', 100);
INSERT INTO `area` VALUES (140524, 140500, 3, '陵川县', '0', 100);
INSERT INTO `area` VALUES (140525, 140500, 3, '泽州县', '0', 100);
INSERT INTO `area` VALUES (140581, 140500, 3, '高平市', '0', 100);
INSERT INTO `area` VALUES (140600, 140000, 2, '朔州市', '0', 100);
INSERT INTO `area` VALUES (140601, 140600, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (140602, 140600, 3, '朔城区', '0', 100);
INSERT INTO `area` VALUES (140603, 140600, 3, '平鲁区', '0', 100);
INSERT INTO `area` VALUES (140621, 140600, 3, '山阴县', '0', 100);
INSERT INTO `area` VALUES (140622, 140600, 3, '应县', '0', 100);
INSERT INTO `area` VALUES (140623, 140600, 3, '右玉县', '0', 100);
INSERT INTO `area` VALUES (140624, 140600, 3, '怀仁县', '0', 100);
INSERT INTO `area` VALUES (140700, 140000, 2, '晋中市', '0', 100);
INSERT INTO `area` VALUES (140701, 140700, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (140702, 140700, 3, '榆次区', '0', 100);
INSERT INTO `area` VALUES (140721, 140700, 3, '榆社县', '0', 100);
INSERT INTO `area` VALUES (140722, 140700, 3, '左权县', '0', 100);
INSERT INTO `area` VALUES (140723, 140700, 3, '和顺县', '0', 100);
INSERT INTO `area` VALUES (140724, 140700, 3, '昔阳县', '0', 100);
INSERT INTO `area` VALUES (140725, 140700, 3, '寿阳县', '0', 100);
INSERT INTO `area` VALUES (140726, 140700, 3, '太谷县', '0', 100);
INSERT INTO `area` VALUES (140727, 140700, 3, '祁县', '0', 100);
INSERT INTO `area` VALUES (140728, 140700, 3, '平遥县', '0', 100);
INSERT INTO `area` VALUES (140729, 140700, 3, '灵石县', '0', 100);
INSERT INTO `area` VALUES (140781, 140700, 3, '介休市', '0', 100);
INSERT INTO `area` VALUES (140800, 140000, 2, '运城市', '0', 100);
INSERT INTO `area` VALUES (140801, 140800, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (140802, 140800, 3, '盐湖区', '0', 100);
INSERT INTO `area` VALUES (140821, 140800, 3, '临猗县', '0', 100);
INSERT INTO `area` VALUES (140822, 140800, 3, '万荣县', '0', 100);
INSERT INTO `area` VALUES (140823, 140800, 3, '闻喜县', '0', 100);
INSERT INTO `area` VALUES (140824, 140800, 3, '稷山县', '0', 100);
INSERT INTO `area` VALUES (140825, 140800, 3, '新绛县', '0', 100);
INSERT INTO `area` VALUES (140826, 140800, 3, '绛县', '0', 100);
INSERT INTO `area` VALUES (140827, 140800, 3, '垣曲县', '0', 100);
INSERT INTO `area` VALUES (140828, 140800, 3, '夏县', '0', 100);
INSERT INTO `area` VALUES (140829, 140800, 3, '平陆县', '0', 100);
INSERT INTO `area` VALUES (140830, 140800, 3, '芮城县', '0', 100);
INSERT INTO `area` VALUES (140881, 140800, 3, '永济市', '0', 100);
INSERT INTO `area` VALUES (140882, 140800, 3, '河津市', '0', 100);
INSERT INTO `area` VALUES (140900, 140000, 2, '忻州市', '0', 100);
INSERT INTO `area` VALUES (140901, 140900, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (140902, 140900, 3, '忻府区', '0', 100);
INSERT INTO `area` VALUES (140921, 140900, 3, '定襄县', '0', 100);
INSERT INTO `area` VALUES (140922, 140900, 3, '五台县', '0', 100);
INSERT INTO `area` VALUES (140923, 140900, 3, '代县', '0', 100);
INSERT INTO `area` VALUES (140924, 140900, 3, '繁峙县', '0', 100);
INSERT INTO `area` VALUES (140925, 140900, 3, '宁武县', '0', 100);
INSERT INTO `area` VALUES (140926, 140900, 3, '静乐县', '0', 100);
INSERT INTO `area` VALUES (140927, 140900, 3, '神池县', '0', 100);
INSERT INTO `area` VALUES (140928, 140900, 3, '五寨县', '0', 100);
INSERT INTO `area` VALUES (140929, 140900, 3, '岢岚县', '0', 100);
INSERT INTO `area` VALUES (140930, 140900, 3, '河曲县', '0', 100);
INSERT INTO `area` VALUES (140931, 140900, 3, '保德县', '0', 100);
INSERT INTO `area` VALUES (140932, 140900, 3, '偏关县', '0', 100);
INSERT INTO `area` VALUES (140981, 140900, 3, '原平市', '0', 100);
INSERT INTO `area` VALUES (141000, 140000, 2, '临汾市', '0', 100);
INSERT INTO `area` VALUES (141001, 141000, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (141002, 141000, 3, '尧都区', '0', 100);
INSERT INTO `area` VALUES (141021, 141000, 3, '曲沃县', '0', 100);
INSERT INTO `area` VALUES (141022, 141000, 3, '翼城县', '0', 100);
INSERT INTO `area` VALUES (141023, 141000, 3, '襄汾县', '0', 100);
INSERT INTO `area` VALUES (141024, 141000, 3, '洪洞县', '0', 100);
INSERT INTO `area` VALUES (141025, 141000, 3, '古县', '0', 100);
INSERT INTO `area` VALUES (141026, 141000, 3, '安泽县', '0', 100);
INSERT INTO `area` VALUES (141027, 141000, 3, '浮山县', '0', 100);
INSERT INTO `area` VALUES (141028, 141000, 3, '吉县', '0', 100);
INSERT INTO `area` VALUES (141029, 141000, 3, '乡宁县', '0', 100);
INSERT INTO `area` VALUES (141030, 141000, 3, '大宁县', '0', 100);
INSERT INTO `area` VALUES (141031, 141000, 3, '隰县', '0', 100);
INSERT INTO `area` VALUES (141032, 141000, 3, '永和县', '0', 100);
INSERT INTO `area` VALUES (141033, 141000, 3, '蒲县', '0', 100);
INSERT INTO `area` VALUES (141034, 141000, 3, '汾西县', '0', 100);
INSERT INTO `area` VALUES (141081, 141000, 3, '侯马市', '0', 100);
INSERT INTO `area` VALUES (141082, 141000, 3, '霍州市', '0', 100);
INSERT INTO `area` VALUES (141100, 140000, 2, '吕梁市', '0', 100);
INSERT INTO `area` VALUES (141101, 141100, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (141102, 141100, 3, '离石区', '0', 100);
INSERT INTO `area` VALUES (141121, 141100, 3, '文水县', '0', 100);
INSERT INTO `area` VALUES (141122, 141100, 3, '交城县', '0', 100);
INSERT INTO `area` VALUES (141123, 141100, 3, '兴县', '0', 100);
INSERT INTO `area` VALUES (141124, 141100, 3, '临县', '0', 100);
INSERT INTO `area` VALUES (141125, 141100, 3, '柳林县', '0', 100);
INSERT INTO `area` VALUES (141126, 141100, 3, '石楼县', '0', 100);
INSERT INTO `area` VALUES (141127, 141100, 3, '岚县', '0', 100);
INSERT INTO `area` VALUES (141128, 141100, 3, '方山县', '0', 100);
INSERT INTO `area` VALUES (141129, 141100, 3, '中阳县', '0', 100);
INSERT INTO `area` VALUES (141130, 141100, 3, '交口县', '0', 100);
INSERT INTO `area` VALUES (141181, 141100, 3, '孝义市', '0', 100);
INSERT INTO `area` VALUES (141182, 141100, 3, '汾阳市', '0', 100);
INSERT INTO `area` VALUES (150000, 0, 1, '内蒙古自治区', '0', 100);
INSERT INTO `area` VALUES (150100, 150000, 2, '呼和浩特市', '0', 100);
INSERT INTO `area` VALUES (150101, 150100, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (150102, 150100, 3, '新城区', '0', 100);
INSERT INTO `area` VALUES (150103, 150100, 3, '回民区', '0', 100);
INSERT INTO `area` VALUES (150104, 150100, 3, '玉泉区', '0', 100);
INSERT INTO `area` VALUES (150105, 150100, 3, '赛罕区', '0', 100);
INSERT INTO `area` VALUES (150121, 150100, 3, '土默特左旗', '0', 100);
INSERT INTO `area` VALUES (150122, 150100, 3, '托克托县', '0', 100);
INSERT INTO `area` VALUES (150123, 150100, 3, '和林格尔县', '0', 100);
INSERT INTO `area` VALUES (150124, 150100, 3, '清水河县', '0', 100);
INSERT INTO `area` VALUES (150125, 150100, 3, '武川县', '0', 100);
INSERT INTO `area` VALUES (150200, 150000, 2, '包头市', '0', 100);
INSERT INTO `area` VALUES (150201, 150200, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (150202, 150200, 3, '东河区', '0', 100);
INSERT INTO `area` VALUES (150203, 150200, 3, '昆都仑区', '0', 100);
INSERT INTO `area` VALUES (150204, 150200, 3, '青山区', '0', 100);
INSERT INTO `area` VALUES (150205, 150200, 3, '石拐区', '0', 100);
INSERT INTO `area` VALUES (150206, 150200, 3, '白云鄂博矿区', '0', 100);
INSERT INTO `area` VALUES (150207, 150200, 3, '九原区', '0', 100);
INSERT INTO `area` VALUES (150221, 150200, 3, '土默特右旗', '0', 100);
INSERT INTO `area` VALUES (150222, 150200, 3, '固阳县', '0', 100);
INSERT INTO `area` VALUES (150223, 150200, 3, '达尔罕茂明安联合旗', '0', 100);
INSERT INTO `area` VALUES (150300, 150000, 2, '乌海市', '0', 100);
INSERT INTO `area` VALUES (150301, 150300, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (150302, 150300, 3, '海勃湾区', '0', 100);
INSERT INTO `area` VALUES (150303, 150300, 3, '海南区', '0', 100);
INSERT INTO `area` VALUES (150304, 150300, 3, '乌达区', '0', 100);
INSERT INTO `area` VALUES (150400, 150000, 2, '赤峰市', '0', 100);
INSERT INTO `area` VALUES (150401, 150400, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (150402, 150400, 3, '红山区', '0', 100);
INSERT INTO `area` VALUES (150403, 150400, 3, '元宝山区', '0', 100);
INSERT INTO `area` VALUES (150404, 150400, 3, '松山区', '0', 100);
INSERT INTO `area` VALUES (150421, 150400, 3, '阿鲁科尔沁旗', '0', 100);
INSERT INTO `area` VALUES (150422, 150400, 3, '巴林左旗', '0', 100);
INSERT INTO `area` VALUES (150423, 150400, 3, '巴林右旗', '0', 100);
INSERT INTO `area` VALUES (150424, 150400, 3, '林西县', '0', 100);
INSERT INTO `area` VALUES (150425, 150400, 3, '克什克腾旗', '0', 100);
INSERT INTO `area` VALUES (150426, 150400, 3, '翁牛特旗', '0', 100);
INSERT INTO `area` VALUES (150428, 150400, 3, '喀喇沁旗', '0', 100);
INSERT INTO `area` VALUES (150429, 150400, 3, '宁城县', '0', 100);
INSERT INTO `area` VALUES (150430, 150400, 3, '敖汉旗', '0', 100);
INSERT INTO `area` VALUES (150500, 150000, 2, '通辽市', '0', 100);
INSERT INTO `area` VALUES (150501, 150500, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (150502, 150500, 3, '科尔沁区', '0', 100);
INSERT INTO `area` VALUES (150521, 150500, 3, '科尔沁左翼中旗', '0', 100);
INSERT INTO `area` VALUES (150522, 150500, 3, '科尔沁左翼后旗', '0', 100);
INSERT INTO `area` VALUES (150523, 150500, 3, '开鲁县', '0', 100);
INSERT INTO `area` VALUES (150524, 150500, 3, '库伦旗', '0', 100);
INSERT INTO `area` VALUES (150525, 150500, 3, '奈曼旗', '0', 100);
INSERT INTO `area` VALUES (150526, 150500, 3, '扎鲁特旗', '0', 100);
INSERT INTO `area` VALUES (150581, 150500, 3, '霍林郭勒市', '0', 100);
INSERT INTO `area` VALUES (150600, 150000, 2, '鄂尔多斯市', '0', 100);
INSERT INTO `area` VALUES (150601, 150600, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (150602, 150600, 3, '东胜区', '0', 100);
INSERT INTO `area` VALUES (150603, 150600, 3, '康巴什区', '0', 100);
INSERT INTO `area` VALUES (150621, 150600, 3, '达拉特旗', '0', 100);
INSERT INTO `area` VALUES (150622, 150600, 3, '准格尔旗', '0', 100);
INSERT INTO `area` VALUES (150623, 150600, 3, '鄂托克前旗', '0', 100);
INSERT INTO `area` VALUES (150624, 150600, 3, '鄂托克旗', '0', 100);
INSERT INTO `area` VALUES (150625, 150600, 3, '杭锦旗', '0', 100);
INSERT INTO `area` VALUES (150626, 150600, 3, '乌审旗', '0', 100);
INSERT INTO `area` VALUES (150627, 150600, 3, '伊金霍洛旗', '0', 100);
INSERT INTO `area` VALUES (150700, 150000, 2, '呼伦贝尔市', '0', 100);
INSERT INTO `area` VALUES (150701, 150700, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (150702, 150700, 3, '海拉尔区', '0', 100);
INSERT INTO `area` VALUES (150703, 150700, 3, '扎赉诺尔区', '0', 100);
INSERT INTO `area` VALUES (150721, 150700, 3, '阿荣旗', '0', 100);
INSERT INTO `area` VALUES (150722, 150700, 3, '莫力达瓦达斡尔族自治旗', '0', 100);
INSERT INTO `area` VALUES (150723, 150700, 3, '鄂伦春自治旗', '0', 100);
INSERT INTO `area` VALUES (150724, 150700, 3, '鄂温克族自治旗', '0', 100);
INSERT INTO `area` VALUES (150725, 150700, 3, '陈巴尔虎旗', '0', 100);
INSERT INTO `area` VALUES (150726, 150700, 3, '新巴尔虎左旗', '0', 100);
INSERT INTO `area` VALUES (150727, 150700, 3, '新巴尔虎右旗', '0', 100);
INSERT INTO `area` VALUES (150781, 150700, 3, '满洲里市', '0', 100);
INSERT INTO `area` VALUES (150782, 150700, 3, '牙克石市', '0', 100);
INSERT INTO `area` VALUES (150783, 150700, 3, '扎兰屯市', '0', 100);
INSERT INTO `area` VALUES (150784, 150700, 3, '额尔古纳市', '0', 100);
INSERT INTO `area` VALUES (150785, 150700, 3, '根河市', '0', 100);
INSERT INTO `area` VALUES (150800, 150000, 2, '巴彦淖尔市', '0', 100);
INSERT INTO `area` VALUES (150801, 150800, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (150802, 150800, 3, '临河区', '0', 100);
INSERT INTO `area` VALUES (150821, 150800, 3, '五原县', '0', 100);
INSERT INTO `area` VALUES (150822, 150800, 3, '磴口县', '0', 100);
INSERT INTO `area` VALUES (150823, 150800, 3, '乌拉特前旗', '0', 100);
INSERT INTO `area` VALUES (150824, 150800, 3, '乌拉特中旗', '0', 100);
INSERT INTO `area` VALUES (150825, 150800, 3, '乌拉特后旗', '0', 100);
INSERT INTO `area` VALUES (150826, 150800, 3, '杭锦后旗', '0', 100);
INSERT INTO `area` VALUES (150900, 150000, 2, '乌兰察布市', '0', 100);
INSERT INTO `area` VALUES (150901, 150900, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (150902, 150900, 3, '集宁区', '0', 100);
INSERT INTO `area` VALUES (150921, 150900, 3, '卓资县', '0', 100);
INSERT INTO `area` VALUES (150922, 150900, 3, '化德县', '0', 100);
INSERT INTO `area` VALUES (150923, 150900, 3, '商都县', '0', 100);
INSERT INTO `area` VALUES (150924, 150900, 3, '兴和县', '0', 100);
INSERT INTO `area` VALUES (150925, 150900, 3, '凉城县', '0', 100);
INSERT INTO `area` VALUES (150926, 150900, 3, '察哈尔右翼前旗', '0', 100);
INSERT INTO `area` VALUES (150927, 150900, 3, '察哈尔右翼中旗', '0', 100);
INSERT INTO `area` VALUES (150928, 150900, 3, '察哈尔右翼后旗', '0', 100);
INSERT INTO `area` VALUES (150929, 150900, 3, '四子王旗', '0', 100);
INSERT INTO `area` VALUES (150981, 150900, 3, '丰镇市', '0', 100);
INSERT INTO `area` VALUES (152200, 150000, 2, '兴安盟', '0', 100);
INSERT INTO `area` VALUES (152201, 152200, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (152202, 152200, 3, '阿尔山市', '0', 100);
INSERT INTO `area` VALUES (152221, 152200, 3, '科尔沁右翼前旗', '0', 100);
INSERT INTO `area` VALUES (152222, 152200, 3, '科尔沁右翼中旗', '0', 100);
INSERT INTO `area` VALUES (152223, 152200, 3, '扎赉特旗', '0', 100);
INSERT INTO `area` VALUES (152224, 152200, 3, '突泉县', '0', 100);
INSERT INTO `area` VALUES (152500, 150000, 2, '锡林郭勒盟', '0', 100);
INSERT INTO `area` VALUES (152501, 152500, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (152502, 152500, 3, '锡林浩特市', '0', 100);
INSERT INTO `area` VALUES (152522, 152500, 3, '阿巴嘎旗', '0', 100);
INSERT INTO `area` VALUES (152523, 152500, 3, '苏尼特左旗', '0', 100);
INSERT INTO `area` VALUES (152524, 152500, 3, '苏尼特右旗', '0', 100);
INSERT INTO `area` VALUES (152525, 152500, 3, '东乌珠穆沁旗', '0', 100);
INSERT INTO `area` VALUES (152526, 152500, 3, '西乌珠穆沁旗', '0', 100);
INSERT INTO `area` VALUES (152527, 152500, 3, '太仆寺旗', '0', 100);
INSERT INTO `area` VALUES (152528, 152500, 3, '镶黄旗', '0', 100);
INSERT INTO `area` VALUES (152529, 152500, 3, '正镶白旗', '0', 100);
INSERT INTO `area` VALUES (152530, 152500, 3, '正蓝旗', '0', 100);
INSERT INTO `area` VALUES (152531, 152500, 3, '多伦县', '0', 100);
INSERT INTO `area` VALUES (152900, 150000, 2, '阿拉善盟', '0', 100);
INSERT INTO `area` VALUES (152921, 152900, 3, '阿拉善左旗', '0', 100);
INSERT INTO `area` VALUES (152922, 152900, 3, '阿拉善右旗', '0', 100);
INSERT INTO `area` VALUES (152923, 152900, 3, '额济纳旗', '0', 100);
INSERT INTO `area` VALUES (210000, 0, 1, '辽宁省', '0', 100);
INSERT INTO `area` VALUES (210100, 210000, 2, '沈阳市', '0', 100);
INSERT INTO `area` VALUES (210101, 210100, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (210102, 210100, 3, '和平区', '0', 100);
INSERT INTO `area` VALUES (210103, 210100, 3, '沈河区', '0', 100);
INSERT INTO `area` VALUES (210104, 210100, 3, '大东区', '0', 100);
INSERT INTO `area` VALUES (210105, 210100, 3, '皇姑区', '0', 100);
INSERT INTO `area` VALUES (210106, 210100, 3, '铁西区', '0', 100);
INSERT INTO `area` VALUES (210111, 210100, 3, '苏家屯区', '0', 100);
INSERT INTO `area` VALUES (210112, 210100, 3, '浑南区', '0', 100);
INSERT INTO `area` VALUES (210113, 210100, 3, '沈北新区', '0', 100);
INSERT INTO `area` VALUES (210114, 210100, 3, '于洪区', '0', 100);
INSERT INTO `area` VALUES (210115, 210100, 3, '辽中区', '0', 100);
INSERT INTO `area` VALUES (210123, 210100, 3, '康平县', '0', 100);
INSERT INTO `area` VALUES (210124, 210100, 3, '法库县', '0', 100);
INSERT INTO `area` VALUES (210181, 210100, 3, '新民市', '0', 100);
INSERT INTO `area` VALUES (210200, 210000, 2, '大连市', '0', 100);
INSERT INTO `area` VALUES (210201, 210200, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (210202, 210200, 3, '中山区', '0', 100);
INSERT INTO `area` VALUES (210203, 210200, 3, '西岗区', '0', 100);
INSERT INTO `area` VALUES (210204, 210200, 3, '沙河口区', '0', 100);
INSERT INTO `area` VALUES (210211, 210200, 3, '甘井子区', '0', 100);
INSERT INTO `area` VALUES (210212, 210200, 3, '旅顺口区', '0', 100);
INSERT INTO `area` VALUES (210213, 210200, 3, '金州区', '0', 100);
INSERT INTO `area` VALUES (210214, 210200, 3, '普兰店区', '0', 100);
INSERT INTO `area` VALUES (210224, 210200, 3, '长海县', '0', 100);
INSERT INTO `area` VALUES (210281, 210200, 3, '瓦房店市', '0', 100);
INSERT INTO `area` VALUES (210283, 210200, 3, '庄河市', '0', 100);
INSERT INTO `area` VALUES (210300, 210000, 2, '鞍山市', '0', 100);
INSERT INTO `area` VALUES (210301, 210300, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (210302, 210300, 3, '铁东区', '0', 100);
INSERT INTO `area` VALUES (210303, 210300, 3, '铁西区', '0', 100);
INSERT INTO `area` VALUES (210304, 210300, 3, '立山区', '0', 100);
INSERT INTO `area` VALUES (210311, 210300, 3, '千山区', '0', 100);
INSERT INTO `area` VALUES (210321, 210300, 3, '台安县', '0', 100);
INSERT INTO `area` VALUES (210323, 210300, 3, '岫岩满族自治县', '0', 100);
INSERT INTO `area` VALUES (210381, 210300, 3, '海城市', '0', 100);
INSERT INTO `area` VALUES (210400, 210000, 2, '抚顺市', '0', 100);
INSERT INTO `area` VALUES (210401, 210400, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (210402, 210400, 3, '新抚区', '0', 100);
INSERT INTO `area` VALUES (210403, 210400, 3, '东洲区', '0', 100);
INSERT INTO `area` VALUES (210404, 210400, 3, '望花区', '0', 100);
INSERT INTO `area` VALUES (210411, 210400, 3, '顺城区', '0', 100);
INSERT INTO `area` VALUES (210421, 210400, 3, '抚顺县', '0', 100);
INSERT INTO `area` VALUES (210422, 210400, 3, '新宾满族自治县', '0', 100);
INSERT INTO `area` VALUES (210423, 210400, 3, '清原满族自治县', '0', 100);
INSERT INTO `area` VALUES (210500, 210000, 2, '本溪市', '0', 100);
INSERT INTO `area` VALUES (210501, 210500, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (210502, 210500, 3, '平山区', '0', 100);
INSERT INTO `area` VALUES (210503, 210500, 3, '溪湖区', '0', 100);
INSERT INTO `area` VALUES (210504, 210500, 3, '明山区', '0', 100);
INSERT INTO `area` VALUES (210505, 210500, 3, '南芬区', '0', 100);
INSERT INTO `area` VALUES (210521, 210500, 3, '本溪满族自治县', '0', 100);
INSERT INTO `area` VALUES (210522, 210500, 3, '桓仁满族自治县', '0', 100);
INSERT INTO `area` VALUES (210600, 210000, 2, '丹东市', '0', 100);
INSERT INTO `area` VALUES (210601, 210600, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (210602, 210600, 3, '元宝区', '0', 100);
INSERT INTO `area` VALUES (210603, 210600, 3, '振兴区', '0', 100);
INSERT INTO `area` VALUES (210604, 210600, 3, '振安区', '0', 100);
INSERT INTO `area` VALUES (210624, 210600, 3, '宽甸满族自治县', '0', 100);
INSERT INTO `area` VALUES (210681, 210600, 3, '东港市', '0', 100);
INSERT INTO `area` VALUES (210682, 210600, 3, '凤城市', '0', 100);
INSERT INTO `area` VALUES (210700, 210000, 2, '锦州市', '0', 100);
INSERT INTO `area` VALUES (210701, 210700, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (210702, 210700, 3, '古塔区', '0', 100);
INSERT INTO `area` VALUES (210703, 210700, 3, '凌河区', '0', 100);
INSERT INTO `area` VALUES (210711, 210700, 3, '太和区', '0', 100);
INSERT INTO `area` VALUES (210726, 210700, 3, '黑山县', '0', 100);
INSERT INTO `area` VALUES (210727, 210700, 3, '义县', '0', 100);
INSERT INTO `area` VALUES (210781, 210700, 3, '凌海市', '0', 100);
INSERT INTO `area` VALUES (210782, 210700, 3, '北镇市', '0', 100);
INSERT INTO `area` VALUES (210800, 210000, 2, '营口市', '0', 100);
INSERT INTO `area` VALUES (210801, 210800, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (210802, 210800, 3, '站前区', '0', 100);
INSERT INTO `area` VALUES (210803, 210800, 3, '西市区', '0', 100);
INSERT INTO `area` VALUES (210804, 210800, 3, '鲅鱼圈区', '0', 100);
INSERT INTO `area` VALUES (210811, 210800, 3, '老边区', '0', 100);
INSERT INTO `area` VALUES (210881, 210800, 3, '盖州市', '0', 100);
INSERT INTO `area` VALUES (210882, 210800, 3, '大石桥市', '0', 100);
INSERT INTO `area` VALUES (210900, 210000, 2, '阜新市', '0', 100);
INSERT INTO `area` VALUES (210901, 210900, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (210902, 210900, 3, '海州区', '0', 100);
INSERT INTO `area` VALUES (210903, 210900, 3, '新邱区', '0', 100);
INSERT INTO `area` VALUES (210904, 210900, 3, '太平区', '0', 100);
INSERT INTO `area` VALUES (210905, 210900, 3, '清河门区', '0', 100);
INSERT INTO `area` VALUES (210911, 210900, 3, '细河区', '0', 100);
INSERT INTO `area` VALUES (210921, 210900, 3, '阜新蒙古族自治县', '0', 100);
INSERT INTO `area` VALUES (210922, 210900, 3, '彰武县', '0', 100);
INSERT INTO `area` VALUES (211000, 210000, 2, '辽阳市', '0', 100);
INSERT INTO `area` VALUES (211001, 211000, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (211002, 211000, 3, '白塔区', '0', 100);
INSERT INTO `area` VALUES (211003, 211000, 3, '文圣区', '0', 100);
INSERT INTO `area` VALUES (211004, 211000, 3, '宏伟区', '0', 100);
INSERT INTO `area` VALUES (211005, 211000, 3, '弓长岭区', '0', 100);
INSERT INTO `area` VALUES (211011, 211000, 3, '太子河区', '0', 100);
INSERT INTO `area` VALUES (211021, 211000, 3, '辽阳县', '0', 100);
INSERT INTO `area` VALUES (211081, 211000, 3, '灯塔市', '0', 100);
INSERT INTO `area` VALUES (211100, 210000, 2, '盘锦市', '0', 100);
INSERT INTO `area` VALUES (211101, 211100, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (211102, 211100, 3, '双台子区', '0', 100);
INSERT INTO `area` VALUES (211103, 211100, 3, '兴隆台区', '0', 100);
INSERT INTO `area` VALUES (211104, 211100, 3, '大洼区', '0', 100);
INSERT INTO `area` VALUES (211122, 211100, 3, '盘山县', '0', 100);
INSERT INTO `area` VALUES (211200, 210000, 2, '铁岭市', '0', 100);
INSERT INTO `area` VALUES (211201, 211200, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (211202, 211200, 3, '银州区', '0', 100);
INSERT INTO `area` VALUES (211204, 211200, 3, '清河区', '0', 100);
INSERT INTO `area` VALUES (211221, 211200, 3, '铁岭县', '0', 100);
INSERT INTO `area` VALUES (211223, 211200, 3, '西丰县', '0', 100);
INSERT INTO `area` VALUES (211224, 211200, 3, '昌图县', '0', 100);
INSERT INTO `area` VALUES (211281, 211200, 3, '调兵山市', '0', 100);
INSERT INTO `area` VALUES (211282, 211200, 3, '开原市', '0', 100);
INSERT INTO `area` VALUES (211300, 210000, 2, '朝阳市', '0', 100);
INSERT INTO `area` VALUES (211301, 211300, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (211302, 211300, 3, '双塔区', '0', 100);
INSERT INTO `area` VALUES (211303, 211300, 3, '龙城区', '0', 100);
INSERT INTO `area` VALUES (211321, 211300, 3, '朝阳县', '0', 100);
INSERT INTO `area` VALUES (211322, 211300, 3, '建平县', '0', 100);
INSERT INTO `area` VALUES (211324, 211300, 3, '喀喇沁左翼蒙古族自治县', '0', 100);
INSERT INTO `area` VALUES (211381, 211300, 3, '北票市', '0', 100);
INSERT INTO `area` VALUES (211382, 211300, 3, '凌源市', '0', 100);
INSERT INTO `area` VALUES (211400, 210000, 2, '葫芦岛市', '0', 100);
INSERT INTO `area` VALUES (211401, 211400, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (211402, 211400, 3, '连山区', '0', 100);
INSERT INTO `area` VALUES (211403, 211400, 3, '龙港区', '0', 100);
INSERT INTO `area` VALUES (211404, 211400, 3, '南票区', '0', 100);
INSERT INTO `area` VALUES (211421, 211400, 3, '绥中县', '0', 100);
INSERT INTO `area` VALUES (211422, 211400, 3, '建昌县', '0', 100);
INSERT INTO `area` VALUES (211481, 211400, 3, '兴城市', '0', 100);
INSERT INTO `area` VALUES (220000, 0, 1, '吉林省', '0', 100);
INSERT INTO `area` VALUES (220100, 220000, 2, '长春市', '0', 100);
INSERT INTO `area` VALUES (220101, 220100, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (220102, 220100, 3, '南关区', '0', 100);
INSERT INTO `area` VALUES (220103, 220100, 3, '宽城区', '0', 100);
INSERT INTO `area` VALUES (220104, 220100, 3, '朝阳区', '0', 100);
INSERT INTO `area` VALUES (220105, 220100, 3, '二道区', '0', 100);
INSERT INTO `area` VALUES (220106, 220100, 3, '绿园区', '0', 100);
INSERT INTO `area` VALUES (220112, 220100, 3, '双阳区', '0', 100);
INSERT INTO `area` VALUES (220113, 220100, 3, '九台区', '0', 100);
INSERT INTO `area` VALUES (220122, 220100, 3, '农安县', '0', 100);
INSERT INTO `area` VALUES (220182, 220100, 3, '榆树市', '0', 100);
INSERT INTO `area` VALUES (220183, 220100, 3, '德惠市', '0', 100);
INSERT INTO `area` VALUES (220200, 220000, 2, '吉林市', '0', 100);
INSERT INTO `area` VALUES (220201, 220200, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (220202, 220200, 3, '昌邑区', '0', 100);
INSERT INTO `area` VALUES (220203, 220200, 3, '龙潭区', '0', 100);
INSERT INTO `area` VALUES (220204, 220200, 3, '船营区', '0', 100);
INSERT INTO `area` VALUES (220211, 220200, 3, '丰满区', '0', 100);
INSERT INTO `area` VALUES (220221, 220200, 3, '永吉县', '0', 100);
INSERT INTO `area` VALUES (220281, 220200, 3, '蛟河市', '0', 100);
INSERT INTO `area` VALUES (220282, 220200, 3, '桦甸市', '0', 100);
INSERT INTO `area` VALUES (220283, 220200, 3, '舒兰市', '0', 100);
INSERT INTO `area` VALUES (220284, 220200, 3, '磐石市', '0', 100);
INSERT INTO `area` VALUES (220300, 220000, 2, '四平市', '0', 100);
INSERT INTO `area` VALUES (220301, 220300, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (220302, 220300, 3, '铁西区', '0', 100);
INSERT INTO `area` VALUES (220303, 220300, 3, '铁东区', '0', 100);
INSERT INTO `area` VALUES (220322, 220300, 3, '梨树县', '0', 100);
INSERT INTO `area` VALUES (220323, 220300, 3, '伊通满族自治县', '0', 100);
INSERT INTO `area` VALUES (220381, 220300, 3, '公主岭市', '0', 100);
INSERT INTO `area` VALUES (220382, 220300, 3, '双辽市', '0', 100);
INSERT INTO `area` VALUES (220400, 220000, 2, '辽源市', '0', 100);
INSERT INTO `area` VALUES (220401, 220400, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (220402, 220400, 3, '龙山区', '0', 100);
INSERT INTO `area` VALUES (220403, 220400, 3, '西安区', '0', 100);
INSERT INTO `area` VALUES (220421, 220400, 3, '东丰县', '0', 100);
INSERT INTO `area` VALUES (220422, 220400, 3, '东辽县', '0', 100);
INSERT INTO `area` VALUES (220500, 220000, 2, '通化市', '0', 100);
INSERT INTO `area` VALUES (220501, 220500, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (220502, 220500, 3, '东昌区', '0', 100);
INSERT INTO `area` VALUES (220503, 220500, 3, '二道江区', '0', 100);
INSERT INTO `area` VALUES (220521, 220500, 3, '通化县', '0', 100);
INSERT INTO `area` VALUES (220523, 220500, 3, '辉南县', '0', 100);
INSERT INTO `area` VALUES (220524, 220500, 3, '柳河县', '0', 100);
INSERT INTO `area` VALUES (220581, 220500, 3, '梅河口市', '0', 100);
INSERT INTO `area` VALUES (220582, 220500, 3, '集安市', '0', 100);
INSERT INTO `area` VALUES (220600, 220000, 2, '白山市', '0', 100);
INSERT INTO `area` VALUES (220601, 220600, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (220602, 220600, 3, '浑江区', '0', 100);
INSERT INTO `area` VALUES (220605, 220600, 3, '江源区', '0', 100);
INSERT INTO `area` VALUES (220621, 220600, 3, '抚松县', '0', 100);
INSERT INTO `area` VALUES (220622, 220600, 3, '靖宇县', '0', 100);
INSERT INTO `area` VALUES (220623, 220600, 3, '长白朝鲜族自治县', '0', 100);
INSERT INTO `area` VALUES (220681, 220600, 3, '临江市', '0', 100);
INSERT INTO `area` VALUES (220700, 220000, 2, '松原市', '0', 100);
INSERT INTO `area` VALUES (220701, 220700, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (220702, 220700, 3, '宁江区', '0', 100);
INSERT INTO `area` VALUES (220721, 220700, 3, '前郭尔罗斯蒙古族自治县', '0', 100);
INSERT INTO `area` VALUES (220722, 220700, 3, '长岭县', '0', 100);
INSERT INTO `area` VALUES (220723, 220700, 3, '乾安县', '0', 100);
INSERT INTO `area` VALUES (220781, 220700, 3, '扶余市', '0', 100);
INSERT INTO `area` VALUES (220800, 220000, 2, '白城市', '0', 100);
INSERT INTO `area` VALUES (220801, 220800, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (220802, 220800, 3, '洮北区', '0', 100);
INSERT INTO `area` VALUES (220821, 220800, 3, '镇赉县', '0', 100);
INSERT INTO `area` VALUES (220822, 220800, 3, '通榆县', '0', 100);
INSERT INTO `area` VALUES (220881, 220800, 3, '洮南市', '0', 100);
INSERT INTO `area` VALUES (220882, 220800, 3, '大安市', '0', 100);
INSERT INTO `area` VALUES (222400, 220000, 2, '延边朝鲜族自治州', '0', 100);
INSERT INTO `area` VALUES (222401, 222400, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (222402, 222400, 3, '图们市', '0', 100);
INSERT INTO `area` VALUES (222403, 222400, 3, '敦化市', '0', 100);
INSERT INTO `area` VALUES (222404, 222400, 3, '珲春市', '0', 100);
INSERT INTO `area` VALUES (222405, 222400, 3, '龙井市', '0', 100);
INSERT INTO `area` VALUES (222406, 222400, 3, '和龙市', '0', 100);
INSERT INTO `area` VALUES (222424, 222400, 3, '汪清县', '0', 100);
INSERT INTO `area` VALUES (222426, 222400, 3, '安图县', '0', 100);
INSERT INTO `area` VALUES (230000, 0, 1, '黑龙江省', '0', 100);
INSERT INTO `area` VALUES (230100, 230000, 2, '哈尔滨市', '0', 100);
INSERT INTO `area` VALUES (230101, 230100, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (230102, 230100, 3, '道里区', '0', 100);
INSERT INTO `area` VALUES (230103, 230100, 3, '南岗区', '0', 100);
INSERT INTO `area` VALUES (230104, 230100, 3, '道外区', '0', 100);
INSERT INTO `area` VALUES (230108, 230100, 3, '平房区', '0', 100);
INSERT INTO `area` VALUES (230109, 230100, 3, '松北区', '0', 100);
INSERT INTO `area` VALUES (230110, 230100, 3, '香坊区', '0', 100);
INSERT INTO `area` VALUES (230111, 230100, 3, '呼兰区', '0', 100);
INSERT INTO `area` VALUES (230112, 230100, 3, '阿城区', '0', 100);
INSERT INTO `area` VALUES (230113, 230100, 3, '双城区', '0', 100);
INSERT INTO `area` VALUES (230123, 230100, 3, '依兰县', '0', 100);
INSERT INTO `area` VALUES (230124, 230100, 3, '方正县', '0', 100);
INSERT INTO `area` VALUES (230125, 230100, 3, '宾县', '0', 100);
INSERT INTO `area` VALUES (230126, 230100, 3, '巴彦县', '0', 100);
INSERT INTO `area` VALUES (230127, 230100, 3, '木兰县', '0', 100);
INSERT INTO `area` VALUES (230128, 230100, 3, '通河县', '0', 100);
INSERT INTO `area` VALUES (230129, 230100, 3, '延寿县', '0', 100);
INSERT INTO `area` VALUES (230183, 230100, 3, '尚志市', '0', 100);
INSERT INTO `area` VALUES (230184, 230100, 3, '五常市', '0', 100);
INSERT INTO `area` VALUES (230200, 230000, 2, '齐齐哈尔市', '0', 100);
INSERT INTO `area` VALUES (230201, 230200, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (230202, 230200, 3, '龙沙区', '0', 100);
INSERT INTO `area` VALUES (230203, 230200, 3, '建华区', '0', 100);
INSERT INTO `area` VALUES (230204, 230200, 3, '铁锋区', '0', 100);
INSERT INTO `area` VALUES (230205, 230200, 3, '昂昂溪区', '0', 100);
INSERT INTO `area` VALUES (230206, 230200, 3, '富拉尔基区', '0', 100);
INSERT INTO `area` VALUES (230207, 230200, 3, '碾子山区', '0', 100);
INSERT INTO `area` VALUES (230208, 230200, 3, '梅里斯达斡尔族区', '0', 100);
INSERT INTO `area` VALUES (230221, 230200, 3, '龙江县', '0', 100);
INSERT INTO `area` VALUES (230223, 230200, 3, '依安县', '0', 100);
INSERT INTO `area` VALUES (230224, 230200, 3, '泰来县', '0', 100);
INSERT INTO `area` VALUES (230225, 230200, 3, '甘南县', '0', 100);
INSERT INTO `area` VALUES (230227, 230200, 3, '富裕县', '0', 100);
INSERT INTO `area` VALUES (230229, 230200, 3, '克山县', '0', 100);
INSERT INTO `area` VALUES (230230, 230200, 3, '克东县', '0', 100);
INSERT INTO `area` VALUES (230231, 230200, 3, '拜泉县', '0', 100);
INSERT INTO `area` VALUES (230281, 230200, 3, '讷河市', '0', 100);
INSERT INTO `area` VALUES (230300, 230000, 2, '鸡西市', '0', 100);
INSERT INTO `area` VALUES (230301, 230300, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (230302, 230300, 3, '鸡冠区', '0', 100);
INSERT INTO `area` VALUES (230303, 230300, 3, '恒山区', '0', 100);
INSERT INTO `area` VALUES (230304, 230300, 3, '滴道区', '0', 100);
INSERT INTO `area` VALUES (230305, 230300, 3, '梨树区', '0', 100);
INSERT INTO `area` VALUES (230306, 230300, 3, '城子河区', '0', 100);
INSERT INTO `area` VALUES (230307, 230300, 3, '麻山区', '0', 100);
INSERT INTO `area` VALUES (230321, 230300, 3, '鸡东县', '0', 100);
INSERT INTO `area` VALUES (230381, 230300, 3, '虎林市', '0', 100);
INSERT INTO `area` VALUES (230382, 230300, 3, '密山市', '0', 100);
INSERT INTO `area` VALUES (230400, 230000, 2, '鹤岗市', '0', 100);
INSERT INTO `area` VALUES (230401, 230400, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (230402, 230400, 3, '向阳区', '0', 100);
INSERT INTO `area` VALUES (230403, 230400, 3, '工农区', '0', 100);
INSERT INTO `area` VALUES (230404, 230400, 3, '南山区', '0', 100);
INSERT INTO `area` VALUES (230405, 230400, 3, '兴安区', '0', 100);
INSERT INTO `area` VALUES (230406, 230400, 3, '东山区', '0', 100);
INSERT INTO `area` VALUES (230407, 230400, 3, '兴山区', '0', 100);
INSERT INTO `area` VALUES (230421, 230400, 3, '萝北县', '0', 100);
INSERT INTO `area` VALUES (230422, 230400, 3, '绥滨县', '0', 100);
INSERT INTO `area` VALUES (230500, 230000, 2, '双鸭山市', '0', 100);
INSERT INTO `area` VALUES (230501, 230500, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (230502, 230500, 3, '尖山区', '0', 100);
INSERT INTO `area` VALUES (230503, 230500, 3, '岭东区', '0', 100);
INSERT INTO `area` VALUES (230505, 230500, 3, '四方台区', '0', 100);
INSERT INTO `area` VALUES (230506, 230500, 3, '宝山区', '0', 100);
INSERT INTO `area` VALUES (230521, 230500, 3, '集贤县', '0', 100);
INSERT INTO `area` VALUES (230522, 230500, 3, '友谊县', '0', 100);
INSERT INTO `area` VALUES (230523, 230500, 3, '宝清县', '0', 100);
INSERT INTO `area` VALUES (230524, 230500, 3, '饶河县', '0', 100);
INSERT INTO `area` VALUES (230600, 230000, 2, '大庆市', '0', 100);
INSERT INTO `area` VALUES (230601, 230600, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (230602, 230600, 3, '萨尔图区', '0', 100);
INSERT INTO `area` VALUES (230603, 230600, 3, '龙凤区', '0', 100);
INSERT INTO `area` VALUES (230604, 230600, 3, '让胡路区', '0', 100);
INSERT INTO `area` VALUES (230605, 230600, 3, '红岗区', '0', 100);
INSERT INTO `area` VALUES (230606, 230600, 3, '大同区', '0', 100);
INSERT INTO `area` VALUES (230621, 230600, 3, '肇州县', '0', 100);
INSERT INTO `area` VALUES (230622, 230600, 3, '肇源县', '0', 100);
INSERT INTO `area` VALUES (230623, 230600, 3, '林甸县', '0', 100);
INSERT INTO `area` VALUES (230624, 230600, 3, '杜尔伯特蒙古族自治县', '0', 100);
INSERT INTO `area` VALUES (230700, 230000, 2, '伊春市', '0', 100);
INSERT INTO `area` VALUES (230701, 230700, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (230702, 230700, 3, '伊春区', '0', 100);
INSERT INTO `area` VALUES (230703, 230700, 3, '南岔区', '0', 100);
INSERT INTO `area` VALUES (230704, 230700, 3, '友好区', '0', 100);
INSERT INTO `area` VALUES (230705, 230700, 3, '西林区', '0', 100);
INSERT INTO `area` VALUES (230706, 230700, 3, '翠峦区', '0', 100);
INSERT INTO `area` VALUES (230707, 230700, 3, '新青区', '0', 100);
INSERT INTO `area` VALUES (230708, 230700, 3, '美溪区', '0', 100);
INSERT INTO `area` VALUES (230709, 230700, 3, '金山屯区', '0', 100);
INSERT INTO `area` VALUES (230710, 230700, 3, '五营区', '0', 100);
INSERT INTO `area` VALUES (230711, 230700, 3, '乌马河区', '0', 100);
INSERT INTO `area` VALUES (230712, 230700, 3, '汤旺河区', '0', 100);
INSERT INTO `area` VALUES (230713, 230700, 3, '带岭区', '0', 100);
INSERT INTO `area` VALUES (230714, 230700, 3, '乌伊岭区', '0', 100);
INSERT INTO `area` VALUES (230715, 230700, 3, '红星区', '0', 100);
INSERT INTO `area` VALUES (230716, 230700, 3, '上甘岭区', '0', 100);
INSERT INTO `area` VALUES (230722, 230700, 3, '嘉荫县', '0', 100);
INSERT INTO `area` VALUES (230781, 230700, 3, '铁力市', '0', 100);
INSERT INTO `area` VALUES (230800, 230000, 2, '佳木斯市', '0', 100);
INSERT INTO `area` VALUES (230801, 230800, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (230803, 230800, 3, '向阳区', '0', 100);
INSERT INTO `area` VALUES (230804, 230800, 3, '前进区', '0', 100);
INSERT INTO `area` VALUES (230805, 230800, 3, '东风区', '0', 100);
INSERT INTO `area` VALUES (230811, 230800, 3, '郊区', '0', 100);
INSERT INTO `area` VALUES (230822, 230800, 3, '桦南县', '0', 100);
INSERT INTO `area` VALUES (230826, 230800, 3, '桦川县', '0', 100);
INSERT INTO `area` VALUES (230828, 230800, 3, '汤原县', '0', 100);
INSERT INTO `area` VALUES (230881, 230800, 3, '同江市', '0', 100);
INSERT INTO `area` VALUES (230882, 230800, 3, '富锦市', '0', 100);
INSERT INTO `area` VALUES (230883, 230800, 3, '抚远市', '0', 100);
INSERT INTO `area` VALUES (230900, 230000, 2, '七台河市', '0', 100);
INSERT INTO `area` VALUES (230901, 230900, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (230902, 230900, 3, '新兴区', '0', 100);
INSERT INTO `area` VALUES (230903, 230900, 3, '桃山区', '0', 100);
INSERT INTO `area` VALUES (230904, 230900, 3, '茄子河区', '0', 100);
INSERT INTO `area` VALUES (230921, 230900, 3, '勃利县', '0', 100);
INSERT INTO `area` VALUES (231000, 230000, 2, '牡丹江市', '0', 100);
INSERT INTO `area` VALUES (231001, 231000, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (231002, 231000, 3, '东安区', '0', 100);
INSERT INTO `area` VALUES (231003, 231000, 3, '阳明区', '0', 100);
INSERT INTO `area` VALUES (231004, 231000, 3, '爱民区', '0', 100);
INSERT INTO `area` VALUES (231005, 231000, 3, '西安区', '0', 100);
INSERT INTO `area` VALUES (231025, 231000, 3, '林口县', '0', 100);
INSERT INTO `area` VALUES (231081, 231000, 3, '绥芬河市', '0', 100);
INSERT INTO `area` VALUES (231083, 231000, 3, '海林市', '0', 100);
INSERT INTO `area` VALUES (231084, 231000, 3, '宁安市', '0', 100);
INSERT INTO `area` VALUES (231085, 231000, 3, '穆棱市', '0', 100);
INSERT INTO `area` VALUES (231086, 231000, 3, '东宁市', '0', 100);
INSERT INTO `area` VALUES (231100, 230000, 2, '黑河市', '0', 100);
INSERT INTO `area` VALUES (231101, 231100, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (231102, 231100, 3, '爱辉区', '0', 100);
INSERT INTO `area` VALUES (231121, 231100, 3, '嫩江县', '0', 100);
INSERT INTO `area` VALUES (231123, 231100, 3, '逊克县', '0', 100);
INSERT INTO `area` VALUES (231124, 231100, 3, '孙吴县', '0', 100);
INSERT INTO `area` VALUES (231181, 231100, 3, '北安市', '0', 100);
INSERT INTO `area` VALUES (231182, 231100, 3, '五大连池市', '0', 100);
INSERT INTO `area` VALUES (231200, 230000, 2, '绥化市', '0', 100);
INSERT INTO `area` VALUES (231201, 231200, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (231202, 231200, 3, '北林区', '0', 100);
INSERT INTO `area` VALUES (231221, 231200, 3, '望奎县', '0', 100);
INSERT INTO `area` VALUES (231222, 231200, 3, '兰西县', '0', 100);
INSERT INTO `area` VALUES (231223, 231200, 3, '青冈县', '0', 100);
INSERT INTO `area` VALUES (231224, 231200, 3, '庆安县', '0', 100);
INSERT INTO `area` VALUES (231225, 231200, 3, '明水县', '0', 100);
INSERT INTO `area` VALUES (231226, 231200, 3, '绥棱县', '0', 100);
INSERT INTO `area` VALUES (231281, 231200, 3, '安达市', '0', 100);
INSERT INTO `area` VALUES (231282, 231200, 3, '肇东市', '0', 100);
INSERT INTO `area` VALUES (231283, 231200, 3, '海伦市', '0', 100);
INSERT INTO `area` VALUES (232700, 230000, 2, '大兴安岭地区', '0', 100);
INSERT INTO `area` VALUES (232721, 232700, 3, '呼玛县', '0', 100);
INSERT INTO `area` VALUES (232722, 232700, 3, '塔河县', '0', 100);
INSERT INTO `area` VALUES (232723, 232700, 3, '漠河县', '0', 100);
INSERT INTO `area` VALUES (310000, 0, 1, '上海市', '0', 100);
INSERT INTO `area` VALUES (310100, 310000, 2, '上海市', '0', 100);
INSERT INTO `area` VALUES (310101, 310100, 3, '黄浦区', '0', 100);
INSERT INTO `area` VALUES (310104, 310100, 3, '徐汇区', '0', 100);
INSERT INTO `area` VALUES (310105, 310100, 3, '长宁区', '0', 100);
INSERT INTO `area` VALUES (310106, 310100, 3, '静安区', '0', 100);
INSERT INTO `area` VALUES (310107, 310100, 3, '普陀区', '0', 100);
INSERT INTO `area` VALUES (310109, 310100, 3, '虹口区', '0', 100);
INSERT INTO `area` VALUES (310110, 310100, 3, '杨浦区', '0', 100);
INSERT INTO `area` VALUES (310112, 310100, 3, '闵行区', '0', 100);
INSERT INTO `area` VALUES (310113, 310100, 3, '宝山区', '0', 100);
INSERT INTO `area` VALUES (310114, 310100, 3, '嘉定区', '0', 100);
INSERT INTO `area` VALUES (310115, 310100, 3, '浦东新区', '0', 100);
INSERT INTO `area` VALUES (310116, 310100, 3, '金山区', '0', 100);
INSERT INTO `area` VALUES (310117, 310100, 3, '松江区', '0', 100);
INSERT INTO `area` VALUES (310118, 310100, 3, '青浦区', '0', 100);
INSERT INTO `area` VALUES (310120, 310100, 3, '奉贤区', '0', 100);
INSERT INTO `area` VALUES (310151, 310100, 3, '崇明区', '0', 100);
INSERT INTO `area` VALUES (320000, 0, 1, '江苏省', '0', 100);
INSERT INTO `area` VALUES (320100, 320000, 2, '南京市', '0', 100);
INSERT INTO `area` VALUES (320101, 320100, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (320102, 320100, 3, '玄武区', '0', 100);
INSERT INTO `area` VALUES (320104, 320100, 3, '秦淮区', '0', 100);
INSERT INTO `area` VALUES (320105, 320100, 3, '建邺区', '0', 100);
INSERT INTO `area` VALUES (320106, 320100, 3, '鼓楼区', '0', 100);
INSERT INTO `area` VALUES (320111, 320100, 3, '浦口区', '0', 100);
INSERT INTO `area` VALUES (320113, 320100, 3, '栖霞区', '0', 100);
INSERT INTO `area` VALUES (320114, 320100, 3, '雨花台区', '0', 100);
INSERT INTO `area` VALUES (320115, 320100, 3, '江宁区', '0', 100);
INSERT INTO `area` VALUES (320116, 320100, 3, '六合区', '0', 100);
INSERT INTO `area` VALUES (320117, 320100, 3, '溧水区', '0', 100);
INSERT INTO `area` VALUES (320118, 320100, 3, '高淳区', '0', 100);
INSERT INTO `area` VALUES (320200, 320000, 2, '无锡市', '0', 100);
INSERT INTO `area` VALUES (320201, 320200, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (320205, 320200, 3, '锡山区', '0', 100);
INSERT INTO `area` VALUES (320206, 320200, 3, '惠山区', '0', 100);
INSERT INTO `area` VALUES (320211, 320200, 3, '滨湖区', '0', 100);
INSERT INTO `area` VALUES (320213, 320200, 3, '梁溪区', '0', 100);
INSERT INTO `area` VALUES (320214, 320200, 3, '新吴区', '0', 100);
INSERT INTO `area` VALUES (320281, 320200, 3, '江阴市', '0', 100);
INSERT INTO `area` VALUES (320282, 320200, 3, '宜兴市', '0', 100);
INSERT INTO `area` VALUES (320300, 320000, 2, '徐州市', '0', 100);
INSERT INTO `area` VALUES (320301, 320300, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (320302, 320300, 3, '鼓楼区', '0', 100);
INSERT INTO `area` VALUES (320303, 320300, 3, '云龙区', '0', 100);
INSERT INTO `area` VALUES (320305, 320300, 3, '贾汪区', '0', 100);
INSERT INTO `area` VALUES (320311, 320300, 3, '泉山区', '0', 100);
INSERT INTO `area` VALUES (320312, 320300, 3, '铜山区', '0', 100);
INSERT INTO `area` VALUES (320321, 320300, 3, '丰县', '0', 100);
INSERT INTO `area` VALUES (320322, 320300, 3, '沛县', '0', 100);
INSERT INTO `area` VALUES (320324, 320300, 3, '睢宁县', '0', 100);
INSERT INTO `area` VALUES (320381, 320300, 3, '新沂市', '0', 100);
INSERT INTO `area` VALUES (320382, 320300, 3, '邳州市', '0', 100);
INSERT INTO `area` VALUES (320400, 320000, 2, '常州市', '0', 100);
INSERT INTO `area` VALUES (320401, 320400, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (320402, 320400, 3, '天宁区', '0', 100);
INSERT INTO `area` VALUES (320404, 320400, 3, '钟楼区', '0', 100);
INSERT INTO `area` VALUES (320411, 320400, 3, '新北区', '0', 100);
INSERT INTO `area` VALUES (320412, 320400, 3, '武进区', '0', 100);
INSERT INTO `area` VALUES (320413, 320400, 3, '金坛区', '0', 100);
INSERT INTO `area` VALUES (320481, 320400, 3, '溧阳市', '0', 100);
INSERT INTO `area` VALUES (320500, 320000, 2, '苏州市', '0', 100);
INSERT INTO `area` VALUES (320501, 320500, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (320505, 320500, 3, '虎丘区', '0', 100);
INSERT INTO `area` VALUES (320506, 320500, 3, '吴中区', '0', 100);
INSERT INTO `area` VALUES (320507, 320500, 3, '相城区', '0', 100);
INSERT INTO `area` VALUES (320508, 320500, 3, '姑苏区', '0', 100);
INSERT INTO `area` VALUES (320509, 320500, 3, '吴江区', '0', 100);
INSERT INTO `area` VALUES (320581, 320500, 3, '常熟市', '0', 100);
INSERT INTO `area` VALUES (320582, 320500, 3, '张家港市', '0', 100);
INSERT INTO `area` VALUES (320583, 320500, 3, '昆山市', '0', 100);
INSERT INTO `area` VALUES (320585, 320500, 3, '太仓市', '0', 100);
INSERT INTO `area` VALUES (320600, 320000, 2, '南通市', '0', 100);
INSERT INTO `area` VALUES (320601, 320600, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (320602, 320600, 3, '崇川区', '0', 100);
INSERT INTO `area` VALUES (320611, 320600, 3, '港闸区', '0', 100);
INSERT INTO `area` VALUES (320612, 320600, 3, '通州区', '0', 100);
INSERT INTO `area` VALUES (320621, 320600, 3, '海安县', '0', 100);
INSERT INTO `area` VALUES (320623, 320600, 3, '如东县', '0', 100);
INSERT INTO `area` VALUES (320681, 320600, 3, '启东市', '0', 100);
INSERT INTO `area` VALUES (320682, 320600, 3, '如皋市', '0', 100);
INSERT INTO `area` VALUES (320684, 320600, 3, '海门市', '0', 100);
INSERT INTO `area` VALUES (320700, 320000, 2, '连云港市', '0', 100);
INSERT INTO `area` VALUES (320701, 320700, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (320703, 320700, 3, '连云区', '0', 100);
INSERT INTO `area` VALUES (320706, 320700, 3, '海州区', '0', 100);
INSERT INTO `area` VALUES (320707, 320700, 3, '赣榆区', '0', 100);
INSERT INTO `area` VALUES (320722, 320700, 3, '东海县', '0', 100);
INSERT INTO `area` VALUES (320723, 320700, 3, '灌云县', '0', 100);
INSERT INTO `area` VALUES (320724, 320700, 3, '灌南县', '0', 100);
INSERT INTO `area` VALUES (320800, 320000, 2, '淮安市', '0', 100);
INSERT INTO `area` VALUES (320801, 320800, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (320803, 320800, 3, '淮安区', '0', 100);
INSERT INTO `area` VALUES (320804, 320800, 3, '淮阴区', '0', 100);
INSERT INTO `area` VALUES (320812, 320800, 3, '清江浦区', '0', 100);
INSERT INTO `area` VALUES (320813, 320800, 3, '洪泽区', '0', 100);
INSERT INTO `area` VALUES (320826, 320800, 3, '涟水县', '0', 100);
INSERT INTO `area` VALUES (320830, 320800, 3, '盱眙县', '0', 100);
INSERT INTO `area` VALUES (320831, 320800, 3, '金湖县', '0', 100);
INSERT INTO `area` VALUES (320900, 320000, 2, '盐城市', '0', 100);
INSERT INTO `area` VALUES (320901, 320900, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (320902, 320900, 3, '亭湖区', '0', 100);
INSERT INTO `area` VALUES (320903, 320900, 3, '盐都区', '0', 100);
INSERT INTO `area` VALUES (320904, 320900, 3, '大丰区', '0', 100);
INSERT INTO `area` VALUES (320921, 320900, 3, '响水县', '0', 100);
INSERT INTO `area` VALUES (320922, 320900, 3, '滨海县', '0', 100);
INSERT INTO `area` VALUES (320923, 320900, 3, '阜宁县', '0', 100);
INSERT INTO `area` VALUES (320924, 320900, 3, '射阳县', '0', 100);
INSERT INTO `area` VALUES (320925, 320900, 3, '建湖县', '0', 100);
INSERT INTO `area` VALUES (320981, 320900, 3, '东台市', '0', 100);
INSERT INTO `area` VALUES (321000, 320000, 2, '扬州市', '0', 100);
INSERT INTO `area` VALUES (321001, 321000, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (321002, 321000, 3, '广陵区', '0', 100);
INSERT INTO `area` VALUES (321003, 321000, 3, '邗江区', '0', 100);
INSERT INTO `area` VALUES (321012, 321000, 3, '江都区', '0', 100);
INSERT INTO `area` VALUES (321023, 321000, 3, '宝应县', '0', 100);
INSERT INTO `area` VALUES (321081, 321000, 3, '仪征市', '0', 100);
INSERT INTO `area` VALUES (321084, 321000, 3, '高邮市', '0', 100);
INSERT INTO `area` VALUES (321100, 320000, 2, '镇江市', '0', 100);
INSERT INTO `area` VALUES (321101, 321100, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (321102, 321100, 3, '京口区', '0', 100);
INSERT INTO `area` VALUES (321111, 321100, 3, '润州区', '0', 100);
INSERT INTO `area` VALUES (321112, 321100, 3, '丹徒区', '0', 100);
INSERT INTO `area` VALUES (321181, 321100, 3, '丹阳市', '0', 100);
INSERT INTO `area` VALUES (321182, 321100, 3, '扬中市', '0', 100);
INSERT INTO `area` VALUES (321183, 321100, 3, '句容市', '0', 100);
INSERT INTO `area` VALUES (321200, 320000, 2, '泰州市', '0', 100);
INSERT INTO `area` VALUES (321201, 321200, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (321202, 321200, 3, '海陵区', '0', 100);
INSERT INTO `area` VALUES (321203, 321200, 3, '高港区', '0', 100);
INSERT INTO `area` VALUES (321204, 321200, 3, '姜堰区', '0', 100);
INSERT INTO `area` VALUES (321281, 321200, 3, '兴化市', '0', 100);
INSERT INTO `area` VALUES (321282, 321200, 3, '靖江市', '0', 100);
INSERT INTO `area` VALUES (321283, 321200, 3, '泰兴市', '0', 100);
INSERT INTO `area` VALUES (321300, 320000, 2, '宿迁市', '0', 100);
INSERT INTO `area` VALUES (321301, 321300, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (321302, 321300, 3, '宿城区', '0', 100);
INSERT INTO `area` VALUES (321311, 321300, 3, '宿豫区', '0', 100);
INSERT INTO `area` VALUES (321322, 321300, 3, '沭阳县', '0', 100);
INSERT INTO `area` VALUES (321323, 321300, 3, '泗阳县', '0', 100);
INSERT INTO `area` VALUES (321324, 321300, 3, '泗洪县', '0', 100);
INSERT INTO `area` VALUES (330000, 0, 1, '浙江省', '0', 100);
INSERT INTO `area` VALUES (330100, 330000, 2, '杭州市', '0', 100);
INSERT INTO `area` VALUES (330101, 330100, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (330102, 330100, 3, '上城区', '0', 100);
INSERT INTO `area` VALUES (330103, 330100, 3, '下城区', '0', 100);
INSERT INTO `area` VALUES (330104, 330100, 3, '江干区', '0', 100);
INSERT INTO `area` VALUES (330105, 330100, 3, '拱墅区', '0', 100);
INSERT INTO `area` VALUES (330106, 330100, 3, '西湖区', '0', 100);
INSERT INTO `area` VALUES (330108, 330100, 3, '滨江区', '0', 100);
INSERT INTO `area` VALUES (330109, 330100, 3, '萧山区', '0', 100);
INSERT INTO `area` VALUES (330110, 330100, 3, '余杭区', '0', 100);
INSERT INTO `area` VALUES (330111, 330100, 3, '富阳区', '0', 100);
INSERT INTO `area` VALUES (330122, 330100, 3, '桐庐县', '0', 100);
INSERT INTO `area` VALUES (330127, 330100, 3, '淳安县', '0', 100);
INSERT INTO `area` VALUES (330182, 330100, 3, '建德市', '0', 100);
INSERT INTO `area` VALUES (330185, 330100, 3, '临安市', '0', 100);
INSERT INTO `area` VALUES (330200, 330000, 2, '宁波市', '0', 100);
INSERT INTO `area` VALUES (330201, 330200, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (330203, 330200, 3, '海曙区', '0', 100);
INSERT INTO `area` VALUES (330204, 330200, 3, '江东区', '0', 100);
INSERT INTO `area` VALUES (330205, 330200, 3, '江北区', '0', 100);
INSERT INTO `area` VALUES (330206, 330200, 3, '北仑区', '0', 100);
INSERT INTO `area` VALUES (330211, 330200, 3, '镇海区', '0', 100);
INSERT INTO `area` VALUES (330212, 330200, 3, '鄞州区', '0', 100);
INSERT INTO `area` VALUES (330225, 330200, 3, '象山县', '0', 100);
INSERT INTO `area` VALUES (330226, 330200, 3, '宁海县', '0', 100);
INSERT INTO `area` VALUES (330281, 330200, 3, '余姚市', '0', 100);
INSERT INTO `area` VALUES (330282, 330200, 3, '慈溪市', '0', 100);
INSERT INTO `area` VALUES (330283, 330200, 3, '奉化市', '0', 100);
INSERT INTO `area` VALUES (330300, 330000, 2, '温州市', '0', 100);
INSERT INTO `area` VALUES (330301, 330300, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (330302, 330300, 3, '鹿城区', '0', 100);
INSERT INTO `area` VALUES (330303, 330300, 3, '龙湾区', '0', 100);
INSERT INTO `area` VALUES (330304, 330300, 3, '瓯海区', '0', 100);
INSERT INTO `area` VALUES (330305, 330300, 3, '洞头区', '0', 100);
INSERT INTO `area` VALUES (330324, 330300, 3, '永嘉县', '0', 100);
INSERT INTO `area` VALUES (330326, 330300, 3, '平阳县', '0', 100);
INSERT INTO `area` VALUES (330327, 330300, 3, '苍南县', '0', 100);
INSERT INTO `area` VALUES (330328, 330300, 3, '文成县', '0', 100);
INSERT INTO `area` VALUES (330329, 330300, 3, '泰顺县', '0', 100);
INSERT INTO `area` VALUES (330381, 330300, 3, '瑞安市', '0', 100);
INSERT INTO `area` VALUES (330382, 330300, 3, '乐清市', '0', 100);
INSERT INTO `area` VALUES (330400, 330000, 2, '嘉兴市', '0', 100);
INSERT INTO `area` VALUES (330401, 330400, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (330402, 330400, 3, '南湖区', '0', 100);
INSERT INTO `area` VALUES (330411, 330400, 3, '秀洲区', '0', 100);
INSERT INTO `area` VALUES (330421, 330400, 3, '嘉善县', '0', 100);
INSERT INTO `area` VALUES (330424, 330400, 3, '海盐县', '0', 100);
INSERT INTO `area` VALUES (330481, 330400, 3, '海宁市', '0', 100);
INSERT INTO `area` VALUES (330482, 330400, 3, '平湖市', '0', 100);
INSERT INTO `area` VALUES (330483, 330400, 3, '桐乡市', '0', 100);
INSERT INTO `area` VALUES (330500, 330000, 2, '湖州市', '0', 100);
INSERT INTO `area` VALUES (330501, 330500, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (330502, 330500, 3, '吴兴区', '0', 100);
INSERT INTO `area` VALUES (330503, 330500, 3, '南浔区', '0', 100);
INSERT INTO `area` VALUES (330521, 330500, 3, '德清县', '0', 100);
INSERT INTO `area` VALUES (330522, 330500, 3, '长兴县', '0', 100);
INSERT INTO `area` VALUES (330523, 330500, 3, '安吉县', '0', 100);
INSERT INTO `area` VALUES (330600, 330000, 2, '绍兴市', '0', 100);
INSERT INTO `area` VALUES (330601, 330600, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (330602, 330600, 3, '越城区', '0', 100);
INSERT INTO `area` VALUES (330603, 330600, 3, '柯桥区', '0', 100);
INSERT INTO `area` VALUES (330604, 330600, 3, '上虞区', '0', 100);
INSERT INTO `area` VALUES (330624, 330600, 3, '新昌县', '0', 100);
INSERT INTO `area` VALUES (330681, 330600, 3, '诸暨市', '0', 100);
INSERT INTO `area` VALUES (330683, 330600, 3, '嵊州市', '0', 100);
INSERT INTO `area` VALUES (330700, 330000, 2, '金华市', '0', 100);
INSERT INTO `area` VALUES (330701, 330700, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (330702, 330700, 3, '婺城区', '0', 100);
INSERT INTO `area` VALUES (330703, 330700, 3, '金东区', '0', 100);
INSERT INTO `area` VALUES (330723, 330700, 3, '武义县', '0', 100);
INSERT INTO `area` VALUES (330726, 330700, 3, '浦江县', '0', 100);
INSERT INTO `area` VALUES (330727, 330700, 3, '磐安县', '0', 100);
INSERT INTO `area` VALUES (330781, 330700, 3, '兰溪市', '0', 100);
INSERT INTO `area` VALUES (330782, 330700, 3, '义乌市', '0', 100);
INSERT INTO `area` VALUES (330783, 330700, 3, '东阳市', '0', 100);
INSERT INTO `area` VALUES (330784, 330700, 3, '永康市', '0', 100);
INSERT INTO `area` VALUES (330800, 330000, 2, '衢州市', '0', 100);
INSERT INTO `area` VALUES (330801, 330800, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (330802, 330800, 3, '柯城区', '0', 100);
INSERT INTO `area` VALUES (330803, 330800, 3, '衢江区', '0', 100);
INSERT INTO `area` VALUES (330822, 330800, 3, '常山县', '0', 100);
INSERT INTO `area` VALUES (330824, 330800, 3, '开化县', '0', 100);
INSERT INTO `area` VALUES (330825, 330800, 3, '龙游县', '0', 100);
INSERT INTO `area` VALUES (330881, 330800, 3, '江山市', '0', 100);
INSERT INTO `area` VALUES (330900, 330000, 2, '舟山市', '0', 100);
INSERT INTO `area` VALUES (330901, 330900, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (330902, 330900, 3, '定海区', '0', 100);
INSERT INTO `area` VALUES (330903, 330900, 3, '普陀区', '0', 100);
INSERT INTO `area` VALUES (330921, 330900, 3, '岱山县', '0', 100);
INSERT INTO `area` VALUES (330922, 330900, 3, '嵊泗县', '0', 100);
INSERT INTO `area` VALUES (331000, 330000, 2, '台州市', '0', 100);
INSERT INTO `area` VALUES (331001, 331000, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (331002, 331000, 3, '椒江区', '0', 100);
INSERT INTO `area` VALUES (331003, 331000, 3, '黄岩区', '0', 100);
INSERT INTO `area` VALUES (331004, 331000, 3, '路桥区', '0', 100);
INSERT INTO `area` VALUES (331021, 331000, 3, '玉环县', '0', 100);
INSERT INTO `area` VALUES (331022, 331000, 3, '三门县', '0', 100);
INSERT INTO `area` VALUES (331023, 331000, 3, '天台县', '0', 100);
INSERT INTO `area` VALUES (331024, 331000, 3, '仙居县', '0', 100);
INSERT INTO `area` VALUES (331081, 331000, 3, '温岭市', '0', 100);
INSERT INTO `area` VALUES (331082, 331000, 3, '临海市', '0', 100);
INSERT INTO `area` VALUES (331100, 330000, 2, '丽水市', '0', 100);
INSERT INTO `area` VALUES (331101, 331100, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (331102, 331100, 3, '莲都区', '0', 100);
INSERT INTO `area` VALUES (331121, 331100, 3, '青田县', '0', 100);
INSERT INTO `area` VALUES (331122, 331100, 3, '缙云县', '0', 100);
INSERT INTO `area` VALUES (331123, 331100, 3, '遂昌县', '0', 100);
INSERT INTO `area` VALUES (331124, 331100, 3, '松阳县', '0', 100);
INSERT INTO `area` VALUES (331125, 331100, 3, '云和县', '0', 100);
INSERT INTO `area` VALUES (331126, 331100, 3, '庆元县', '0', 100);
INSERT INTO `area` VALUES (331127, 331100, 3, '景宁畲族自治县', '0', 100);
INSERT INTO `area` VALUES (331181, 331100, 3, '龙泉市', '0', 100);
INSERT INTO `area` VALUES (340000, 0, 1, '安徽省', '0', 100);
INSERT INTO `area` VALUES (340100, 340000, 2, '合肥市', '0', 100);
INSERT INTO `area` VALUES (340101, 340100, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (340102, 340100, 3, '瑶海区', '0', 100);
INSERT INTO `area` VALUES (340103, 340100, 3, '庐阳区', '0', 100);
INSERT INTO `area` VALUES (340104, 340100, 3, '蜀山区', '0', 100);
INSERT INTO `area` VALUES (340111, 340100, 3, '包河区', '0', 100);
INSERT INTO `area` VALUES (340121, 340100, 3, '长丰县', '0', 100);
INSERT INTO `area` VALUES (340122, 340100, 3, '肥东县', '0', 100);
INSERT INTO `area` VALUES (340123, 340100, 3, '肥西县', '0', 100);
INSERT INTO `area` VALUES (340124, 340100, 3, '庐江县', '0', 100);
INSERT INTO `area` VALUES (340181, 340100, 3, '巢湖市', '0', 100);
INSERT INTO `area` VALUES (340200, 340000, 2, '芜湖市', '0', 100);
INSERT INTO `area` VALUES (340201, 340200, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (340202, 340200, 3, '镜湖区', '0', 100);
INSERT INTO `area` VALUES (340203, 340200, 3, '弋江区', '0', 100);
INSERT INTO `area` VALUES (340207, 340200, 3, '鸠江区', '0', 100);
INSERT INTO `area` VALUES (340208, 340200, 3, '三山区', '0', 100);
INSERT INTO `area` VALUES (340221, 340200, 3, '芜湖县', '0', 100);
INSERT INTO `area` VALUES (340222, 340200, 3, '繁昌县', '0', 100);
INSERT INTO `area` VALUES (340223, 340200, 3, '南陵县', '0', 100);
INSERT INTO `area` VALUES (340225, 340200, 3, '无为县', '0', 100);
INSERT INTO `area` VALUES (340300, 340000, 2, '蚌埠市', '0', 100);
INSERT INTO `area` VALUES (340301, 340300, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (340302, 340300, 3, '龙子湖区', '0', 100);
INSERT INTO `area` VALUES (340303, 340300, 3, '蚌山区', '0', 100);
INSERT INTO `area` VALUES (340304, 340300, 3, '禹会区', '0', 100);
INSERT INTO `area` VALUES (340311, 340300, 3, '淮上区', '0', 100);
INSERT INTO `area` VALUES (340321, 340300, 3, '怀远县', '0', 100);
INSERT INTO `area` VALUES (340322, 340300, 3, '五河县', '0', 100);
INSERT INTO `area` VALUES (340323, 340300, 3, '固镇县', '0', 100);
INSERT INTO `area` VALUES (340400, 340000, 2, '淮南市', '0', 100);
INSERT INTO `area` VALUES (340401, 340400, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (340402, 340400, 3, '大通区', '0', 100);
INSERT INTO `area` VALUES (340403, 340400, 3, '田家庵区', '0', 100);
INSERT INTO `area` VALUES (340404, 340400, 3, '谢家集区', '0', 100);
INSERT INTO `area` VALUES (340405, 340400, 3, '八公山区', '0', 100);
INSERT INTO `area` VALUES (340406, 340400, 3, '潘集区', '0', 100);
INSERT INTO `area` VALUES (340421, 340400, 3, '凤台县', '0', 100);
INSERT INTO `area` VALUES (340422, 340400, 3, '寿县', '0', 100);
INSERT INTO `area` VALUES (340500, 340000, 2, '马鞍山市', '0', 100);
INSERT INTO `area` VALUES (340501, 340500, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (340503, 340500, 3, '花山区', '0', 100);
INSERT INTO `area` VALUES (340504, 340500, 3, '雨山区', '0', 100);
INSERT INTO `area` VALUES (340506, 340500, 3, '博望区', '0', 100);
INSERT INTO `area` VALUES (340521, 340500, 3, '当涂县', '0', 100);
INSERT INTO `area` VALUES (340522, 340500, 3, '含山县', '0', 100);
INSERT INTO `area` VALUES (340523, 340500, 3, '和县', '0', 100);
INSERT INTO `area` VALUES (340600, 340000, 2, '淮北市', '0', 100);
INSERT INTO `area` VALUES (340601, 340600, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (340602, 340600, 3, '杜集区', '0', 100);
INSERT INTO `area` VALUES (340603, 340600, 3, '相山区', '0', 100);
INSERT INTO `area` VALUES (340604, 340600, 3, '烈山区', '0', 100);
INSERT INTO `area` VALUES (340621, 340600, 3, '濉溪县', '0', 100);
INSERT INTO `area` VALUES (340700, 340000, 2, '铜陵市', '0', 100);
INSERT INTO `area` VALUES (340701, 340700, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (340705, 340700, 3, '铜官区', '0', 100);
INSERT INTO `area` VALUES (340706, 340700, 3, '义安区', '0', 100);
INSERT INTO `area` VALUES (340711, 340700, 3, '郊区', '0', 100);
INSERT INTO `area` VALUES (340722, 340700, 3, '枞阳县', '0', 100);
INSERT INTO `area` VALUES (340800, 340000, 2, '安庆市', '0', 100);
INSERT INTO `area` VALUES (340801, 340800, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (340802, 340800, 3, '迎江区', '0', 100);
INSERT INTO `area` VALUES (340803, 340800, 3, '大观区', '0', 100);
INSERT INTO `area` VALUES (340811, 340800, 3, '宜秀区', '0', 100);
INSERT INTO `area` VALUES (340822, 340800, 3, '怀宁县', '0', 100);
INSERT INTO `area` VALUES (340824, 340800, 3, '潜山县', '0', 100);
INSERT INTO `area` VALUES (340825, 340800, 3, '太湖县', '0', 100);
INSERT INTO `area` VALUES (340826, 340800, 3, '宿松县', '0', 100);
INSERT INTO `area` VALUES (340827, 340800, 3, '望江县', '0', 100);
INSERT INTO `area` VALUES (340828, 340800, 3, '岳西县', '0', 100);
INSERT INTO `area` VALUES (340881, 340800, 3, '桐城市', '0', 100);
INSERT INTO `area` VALUES (341000, 340000, 2, '黄山市', '0', 100);
INSERT INTO `area` VALUES (341001, 341000, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (341002, 341000, 3, '屯溪区', '0', 100);
INSERT INTO `area` VALUES (341003, 341000, 3, '黄山区', '0', 100);
INSERT INTO `area` VALUES (341004, 341000, 3, '徽州区', '0', 100);
INSERT INTO `area` VALUES (341021, 341000, 3, '歙县', '0', 100);
INSERT INTO `area` VALUES (341022, 341000, 3, '休宁县', '0', 100);
INSERT INTO `area` VALUES (341023, 341000, 3, '黟县', '0', 100);
INSERT INTO `area` VALUES (341024, 341000, 3, '祁门县', '0', 100);
INSERT INTO `area` VALUES (341100, 340000, 2, '滁州市', '0', 100);
INSERT INTO `area` VALUES (341101, 341100, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (341102, 341100, 3, '琅琊区', '0', 100);
INSERT INTO `area` VALUES (341103, 341100, 3, '南谯区', '0', 100);
INSERT INTO `area` VALUES (341122, 341100, 3, '来安县', '0', 100);
INSERT INTO `area` VALUES (341124, 341100, 3, '全椒县', '0', 100);
INSERT INTO `area` VALUES (341125, 341100, 3, '定远县', '0', 100);
INSERT INTO `area` VALUES (341126, 341100, 3, '凤阳县', '0', 100);
INSERT INTO `area` VALUES (341181, 341100, 3, '天长市', '0', 100);
INSERT INTO `area` VALUES (341182, 341100, 3, '明光市', '0', 100);
INSERT INTO `area` VALUES (341200, 340000, 2, '阜阳市', '0', 100);
INSERT INTO `area` VALUES (341201, 341200, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (341202, 341200, 3, '颍州区', '0', 100);
INSERT INTO `area` VALUES (341203, 341200, 3, '颍东区', '0', 100);
INSERT INTO `area` VALUES (341204, 341200, 3, '颍泉区', '0', 100);
INSERT INTO `area` VALUES (341221, 341200, 3, '临泉县', '0', 100);
INSERT INTO `area` VALUES (341222, 341200, 3, '太和县', '0', 100);
INSERT INTO `area` VALUES (341225, 341200, 3, '阜南县', '0', 100);
INSERT INTO `area` VALUES (341226, 341200, 3, '颍上县', '0', 100);
INSERT INTO `area` VALUES (341282, 341200, 3, '界首市', '0', 100);
INSERT INTO `area` VALUES (341300, 340000, 2, '宿州市', '0', 100);
INSERT INTO `area` VALUES (341301, 341300, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (341302, 341300, 3, '埇桥区', '0', 100);
INSERT INTO `area` VALUES (341321, 341300, 3, '砀山县', '0', 100);
INSERT INTO `area` VALUES (341322, 341300, 3, '萧县', '0', 100);
INSERT INTO `area` VALUES (341323, 341300, 3, '灵璧县', '0', 100);
INSERT INTO `area` VALUES (341324, 341300, 3, '泗县', '0', 100);
INSERT INTO `area` VALUES (341500, 340000, 2, '六安市', '0', 100);
INSERT INTO `area` VALUES (341501, 341500, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (341502, 341500, 3, '金安区', '0', 100);
INSERT INTO `area` VALUES (341503, 341500, 3, '裕安区', '0', 100);
INSERT INTO `area` VALUES (341504, 341500, 3, '叶集区', '0', 100);
INSERT INTO `area` VALUES (341522, 341500, 3, '霍邱县', '0', 100);
INSERT INTO `area` VALUES (341523, 341500, 3, '舒城县', '0', 100);
INSERT INTO `area` VALUES (341524, 341500, 3, '金寨县', '0', 100);
INSERT INTO `area` VALUES (341525, 341500, 3, '霍山县', '0', 100);
INSERT INTO `area` VALUES (341600, 340000, 2, '亳州市', '0', 100);
INSERT INTO `area` VALUES (341601, 341600, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (341602, 341600, 3, '谯城区', '0', 100);
INSERT INTO `area` VALUES (341621, 341600, 3, '涡阳县', '0', 100);
INSERT INTO `area` VALUES (341622, 341600, 3, '蒙城县', '0', 100);
INSERT INTO `area` VALUES (341623, 341600, 3, '利辛县', '0', 100);
INSERT INTO `area` VALUES (341700, 340000, 2, '池州市', '0', 100);
INSERT INTO `area` VALUES (341701, 341700, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (341702, 341700, 3, '贵池区', '0', 100);
INSERT INTO `area` VALUES (341721, 341700, 3, '东至县', '0', 100);
INSERT INTO `area` VALUES (341722, 341700, 3, '石台县', '0', 100);
INSERT INTO `area` VALUES (341723, 341700, 3, '青阳县', '0', 100);
INSERT INTO `area` VALUES (341800, 340000, 2, '宣城市', '0', 100);
INSERT INTO `area` VALUES (341801, 341800, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (341802, 341800, 3, '宣州区', '0', 100);
INSERT INTO `area` VALUES (341821, 341800, 3, '郎溪县', '0', 100);
INSERT INTO `area` VALUES (341822, 341800, 3, '广德县', '0', 100);
INSERT INTO `area` VALUES (341823, 341800, 3, '泾县', '0', 100);
INSERT INTO `area` VALUES (341824, 341800, 3, '绩溪县', '0', 100);
INSERT INTO `area` VALUES (341825, 341800, 3, '旌德县', '0', 100);
INSERT INTO `area` VALUES (341881, 341800, 3, '宁国市', '0', 100);
INSERT INTO `area` VALUES (350000, 0, 1, '福建省', '0', 100);
INSERT INTO `area` VALUES (350100, 350000, 2, '福州市', '0', 100);
INSERT INTO `area` VALUES (350101, 350100, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (350102, 350100, 3, '鼓楼区', '0', 100);
INSERT INTO `area` VALUES (350103, 350100, 3, '台江区', '0', 100);
INSERT INTO `area` VALUES (350104, 350100, 3, '仓山区', '0', 100);
INSERT INTO `area` VALUES (350105, 350100, 3, '马尾区', '0', 100);
INSERT INTO `area` VALUES (350111, 350100, 3, '晋安区', '0', 100);
INSERT INTO `area` VALUES (350121, 350100, 3, '闽侯县', '0', 100);
INSERT INTO `area` VALUES (350122, 350100, 3, '连江县', '0', 100);
INSERT INTO `area` VALUES (350123, 350100, 3, '罗源县', '0', 100);
INSERT INTO `area` VALUES (350124, 350100, 3, '闽清县', '0', 100);
INSERT INTO `area` VALUES (350125, 350100, 3, '永泰县', '0', 100);
INSERT INTO `area` VALUES (350128, 350100, 3, '平潭县', '0', 100);
INSERT INTO `area` VALUES (350181, 350100, 3, '福清市', '0', 100);
INSERT INTO `area` VALUES (350182, 350100, 3, '长乐市', '0', 100);
INSERT INTO `area` VALUES (350200, 350000, 2, '厦门市', '0', 100);
INSERT INTO `area` VALUES (350201, 350200, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (350203, 350200, 3, '思明区', '0', 100);
INSERT INTO `area` VALUES (350205, 350200, 3, '海沧区', '0', 100);
INSERT INTO `area` VALUES (350206, 350200, 3, '湖里区', '0', 100);
INSERT INTO `area` VALUES (350211, 350200, 3, '集美区', '0', 100);
INSERT INTO `area` VALUES (350212, 350200, 3, '同安区', '0', 100);
INSERT INTO `area` VALUES (350213, 350200, 3, '翔安区', '0', 100);
INSERT INTO `area` VALUES (350300, 350000, 2, '莆田市', '0', 100);
INSERT INTO `area` VALUES (350301, 350300, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (350302, 350300, 3, '城厢区', '0', 100);
INSERT INTO `area` VALUES (350303, 350300, 3, '涵江区', '0', 100);
INSERT INTO `area` VALUES (350304, 350300, 3, '荔城区', '0', 100);
INSERT INTO `area` VALUES (350305, 350300, 3, '秀屿区', '0', 100);
INSERT INTO `area` VALUES (350322, 350300, 3, '仙游县', '0', 100);
INSERT INTO `area` VALUES (350400, 350000, 2, '三明市', '0', 100);
INSERT INTO `area` VALUES (350401, 350400, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (350402, 350400, 3, '梅列区', '0', 100);
INSERT INTO `area` VALUES (350403, 350400, 3, '三元区', '0', 100);
INSERT INTO `area` VALUES (350421, 350400, 3, '明溪县', '0', 100);
INSERT INTO `area` VALUES (350423, 350400, 3, '清流县', '0', 100);
INSERT INTO `area` VALUES (350424, 350400, 3, '宁化县', '0', 100);
INSERT INTO `area` VALUES (350425, 350400, 3, '大田县', '0', 100);
INSERT INTO `area` VALUES (350426, 350400, 3, '尤溪县', '0', 100);
INSERT INTO `area` VALUES (350427, 350400, 3, '沙县', '0', 100);
INSERT INTO `area` VALUES (350428, 350400, 3, '将乐县', '0', 100);
INSERT INTO `area` VALUES (350429, 350400, 3, '泰宁县', '0', 100);
INSERT INTO `area` VALUES (350430, 350400, 3, '建宁县', '0', 100);
INSERT INTO `area` VALUES (350481, 350400, 3, '永安市', '0', 100);
INSERT INTO `area` VALUES (350500, 350000, 2, '泉州市', '0', 100);
INSERT INTO `area` VALUES (350501, 350500, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (350502, 350500, 3, '鲤城区', '0', 100);
INSERT INTO `area` VALUES (350503, 350500, 3, '丰泽区', '0', 100);
INSERT INTO `area` VALUES (350504, 350500, 3, '洛江区', '0', 100);
INSERT INTO `area` VALUES (350505, 350500, 3, '泉港区', '0', 100);
INSERT INTO `area` VALUES (350521, 350500, 3, '惠安县', '0', 100);
INSERT INTO `area` VALUES (350524, 350500, 3, '安溪县', '0', 100);
INSERT INTO `area` VALUES (350525, 350500, 3, '永春县', '0', 100);
INSERT INTO `area` VALUES (350526, 350500, 3, '德化县', '0', 100);
INSERT INTO `area` VALUES (350527, 350500, 3, '金门县', '0', 100);
INSERT INTO `area` VALUES (350581, 350500, 3, '石狮市', '0', 100);
INSERT INTO `area` VALUES (350582, 350500, 3, '晋江市', '0', 100);
INSERT INTO `area` VALUES (350583, 350500, 3, '南安市', '0', 100);
INSERT INTO `area` VALUES (350600, 350000, 2, '漳州市', '0', 100);
INSERT INTO `area` VALUES (350601, 350600, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (350602, 350600, 3, '芗城区', '0', 100);
INSERT INTO `area` VALUES (350603, 350600, 3, '龙文区', '0', 100);
INSERT INTO `area` VALUES (350622, 350600, 3, '云霄县', '0', 100);
INSERT INTO `area` VALUES (350623, 350600, 3, '漳浦县', '0', 100);
INSERT INTO `area` VALUES (350624, 350600, 3, '诏安县', '0', 100);
INSERT INTO `area` VALUES (350625, 350600, 3, '长泰县', '0', 100);
INSERT INTO `area` VALUES (350626, 350600, 3, '东山县', '0', 100);
INSERT INTO `area` VALUES (350627, 350600, 3, '南靖县', '0', 100);
INSERT INTO `area` VALUES (350628, 350600, 3, '平和县', '0', 100);
INSERT INTO `area` VALUES (350629, 350600, 3, '华安县', '0', 100);
INSERT INTO `area` VALUES (350681, 350600, 3, '龙海市', '0', 100);
INSERT INTO `area` VALUES (350700, 350000, 2, '南平市', '0', 100);
INSERT INTO `area` VALUES (350701, 350700, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (350702, 350700, 3, '延平区', '0', 100);
INSERT INTO `area` VALUES (350703, 350700, 3, '建阳区', '0', 100);
INSERT INTO `area` VALUES (350721, 350700, 3, '顺昌县', '0', 100);
INSERT INTO `area` VALUES (350722, 350700, 3, '浦城县', '0', 100);
INSERT INTO `area` VALUES (350723, 350700, 3, '光泽县', '0', 100);
INSERT INTO `area` VALUES (350724, 350700, 3, '松溪县', '0', 100);
INSERT INTO `area` VALUES (350725, 350700, 3, '政和县', '0', 100);
INSERT INTO `area` VALUES (350781, 350700, 3, '邵武市', '0', 100);
INSERT INTO `area` VALUES (350782, 350700, 3, '武夷山市', '0', 100);
INSERT INTO `area` VALUES (350783, 350700, 3, '建瓯市', '0', 100);
INSERT INTO `area` VALUES (350800, 350000, 2, '龙岩市', '0', 100);
INSERT INTO `area` VALUES (350801, 350800, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (350802, 350800, 3, '新罗区', '0', 100);
INSERT INTO `area` VALUES (350803, 350800, 3, '永定区', '0', 100);
INSERT INTO `area` VALUES (350821, 350800, 3, '长汀县', '0', 100);
INSERT INTO `area` VALUES (350823, 350800, 3, '上杭县', '0', 100);
INSERT INTO `area` VALUES (350824, 350800, 3, '武平县', '0', 100);
INSERT INTO `area` VALUES (350825, 350800, 3, '连城县', '0', 100);
INSERT INTO `area` VALUES (350881, 350800, 3, '漳平市', '0', 100);
INSERT INTO `area` VALUES (350900, 350000, 2, '宁德市', '0', 100);
INSERT INTO `area` VALUES (350901, 350900, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (350902, 350900, 3, '蕉城区', '0', 100);
INSERT INTO `area` VALUES (350921, 350900, 3, '霞浦县', '0', 100);
INSERT INTO `area` VALUES (350922, 350900, 3, '古田县', '0', 100);
INSERT INTO `area` VALUES (350923, 350900, 3, '屏南县', '0', 100);
INSERT INTO `area` VALUES (350924, 350900, 3, '寿宁县', '0', 100);
INSERT INTO `area` VALUES (350925, 350900, 3, '周宁县', '0', 100);
INSERT INTO `area` VALUES (350926, 350900, 3, '柘荣县', '0', 100);
INSERT INTO `area` VALUES (350981, 350900, 3, '福安市', '0', 100);
INSERT INTO `area` VALUES (350982, 350900, 3, '福鼎市', '0', 100);
INSERT INTO `area` VALUES (360000, 0, 1, '江西省', '0', 100);
INSERT INTO `area` VALUES (360100, 360000, 2, '南昌市', '0', 100);
INSERT INTO `area` VALUES (360101, 360100, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (360102, 360100, 3, '东湖区', '0', 100);
INSERT INTO `area` VALUES (360103, 360100, 3, '西湖区', '0', 100);
INSERT INTO `area` VALUES (360104, 360100, 3, '青云谱区', '0', 100);
INSERT INTO `area` VALUES (360105, 360100, 3, '湾里区', '0', 100);
INSERT INTO `area` VALUES (360111, 360100, 3, '青山湖区', '0', 100);
INSERT INTO `area` VALUES (360112, 360100, 3, '新建区', '0', 100);
INSERT INTO `area` VALUES (360121, 360100, 3, '南昌县', '0', 100);
INSERT INTO `area` VALUES (360123, 360100, 3, '安义县', '0', 100);
INSERT INTO `area` VALUES (360124, 360100, 3, '进贤县', '0', 100);
INSERT INTO `area` VALUES (360200, 360000, 2, '景德镇市', '0', 100);
INSERT INTO `area` VALUES (360201, 360200, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (360202, 360200, 3, '昌江区', '0', 100);
INSERT INTO `area` VALUES (360203, 360200, 3, '珠山区', '0', 100);
INSERT INTO `area` VALUES (360222, 360200, 3, '浮梁县', '0', 100);
INSERT INTO `area` VALUES (360281, 360200, 3, '乐平市', '0', 100);
INSERT INTO `area` VALUES (360300, 360000, 2, '萍乡市', '0', 100);
INSERT INTO `area` VALUES (360301, 360300, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (360302, 360300, 3, '安源区', '0', 100);
INSERT INTO `area` VALUES (360313, 360300, 3, '湘东区', '0', 100);
INSERT INTO `area` VALUES (360321, 360300, 3, '莲花县', '0', 100);
INSERT INTO `area` VALUES (360322, 360300, 3, '上栗县', '0', 100);
INSERT INTO `area` VALUES (360323, 360300, 3, '芦溪县', '0', 100);
INSERT INTO `area` VALUES (360400, 360000, 2, '九江市', '0', 100);
INSERT INTO `area` VALUES (360401, 360400, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (360402, 360400, 3, '濂溪区', '0', 100);
INSERT INTO `area` VALUES (360403, 360400, 3, '浔阳区', '0', 100);
INSERT INTO `area` VALUES (360421, 360400, 3, '九江县', '0', 100);
INSERT INTO `area` VALUES (360423, 360400, 3, '武宁县', '0', 100);
INSERT INTO `area` VALUES (360424, 360400, 3, '修水县', '0', 100);
INSERT INTO `area` VALUES (360425, 360400, 3, '永修县', '0', 100);
INSERT INTO `area` VALUES (360426, 360400, 3, '德安县', '0', 100);
INSERT INTO `area` VALUES (360428, 360400, 3, '都昌县', '0', 100);
INSERT INTO `area` VALUES (360429, 360400, 3, '湖口县', '0', 100);
INSERT INTO `area` VALUES (360430, 360400, 3, '彭泽县', '0', 100);
INSERT INTO `area` VALUES (360481, 360400, 3, '瑞昌市', '0', 100);
INSERT INTO `area` VALUES (360482, 360400, 3, '共青城市', '0', 100);
INSERT INTO `area` VALUES (360483, 360400, 3, '庐山市', '0', 100);
INSERT INTO `area` VALUES (360500, 360000, 2, '新余市', '0', 100);
INSERT INTO `area` VALUES (360501, 360500, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (360502, 360500, 3, '渝水区', '0', 100);
INSERT INTO `area` VALUES (360521, 360500, 3, '分宜县', '0', 100);
INSERT INTO `area` VALUES (360600, 360000, 2, '鹰潭市', '0', 100);
INSERT INTO `area` VALUES (360601, 360600, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (360602, 360600, 3, '月湖区', '0', 100);
INSERT INTO `area` VALUES (360622, 360600, 3, '余江县', '0', 100);
INSERT INTO `area` VALUES (360681, 360600, 3, '贵溪市', '0', 100);
INSERT INTO `area` VALUES (360700, 360000, 2, '赣州市', '0', 100);
INSERT INTO `area` VALUES (360701, 360700, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (360702, 360700, 3, '章贡区', '0', 100);
INSERT INTO `area` VALUES (360703, 360700, 3, '南康区', '0', 100);
INSERT INTO `area` VALUES (360721, 360700, 3, '赣县', '0', 100);
INSERT INTO `area` VALUES (360722, 360700, 3, '信丰县', '0', 100);
INSERT INTO `area` VALUES (360723, 360700, 3, '大余县', '0', 100);
INSERT INTO `area` VALUES (360724, 360700, 3, '上犹县', '0', 100);
INSERT INTO `area` VALUES (360725, 360700, 3, '崇义县', '0', 100);
INSERT INTO `area` VALUES (360726, 360700, 3, '安远县', '0', 100);
INSERT INTO `area` VALUES (360727, 360700, 3, '龙南县', '0', 100);
INSERT INTO `area` VALUES (360728, 360700, 3, '定南县', '0', 100);
INSERT INTO `area` VALUES (360729, 360700, 3, '全南县', '0', 100);
INSERT INTO `area` VALUES (360730, 360700, 3, '宁都县', '0', 100);
INSERT INTO `area` VALUES (360731, 360700, 3, '于都县', '0', 100);
INSERT INTO `area` VALUES (360732, 360700, 3, '兴国县', '0', 100);
INSERT INTO `area` VALUES (360733, 360700, 3, '会昌县', '0', 100);
INSERT INTO `area` VALUES (360734, 360700, 3, '寻乌县', '0', 100);
INSERT INTO `area` VALUES (360735, 360700, 3, '石城县', '0', 100);
INSERT INTO `area` VALUES (360781, 360700, 3, '瑞金市', '0', 100);
INSERT INTO `area` VALUES (360800, 360000, 2, '吉安市', '0', 100);
INSERT INTO `area` VALUES (360801, 360800, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (360802, 360800, 3, '吉州区', '0', 100);
INSERT INTO `area` VALUES (360803, 360800, 3, '青原区', '0', 100);
INSERT INTO `area` VALUES (360821, 360800, 3, '吉安县', '0', 100);
INSERT INTO `area` VALUES (360822, 360800, 3, '吉水县', '0', 100);
INSERT INTO `area` VALUES (360823, 360800, 3, '峡江县', '0', 100);
INSERT INTO `area` VALUES (360824, 360800, 3, '新干县', '0', 100);
INSERT INTO `area` VALUES (360825, 360800, 3, '永丰县', '0', 100);
INSERT INTO `area` VALUES (360826, 360800, 3, '泰和县', '0', 100);
INSERT INTO `area` VALUES (360827, 360800, 3, '遂川县', '0', 100);
INSERT INTO `area` VALUES (360828, 360800, 3, '万安县', '0', 100);
INSERT INTO `area` VALUES (360829, 360800, 3, '安福县', '0', 100);
INSERT INTO `area` VALUES (360830, 360800, 3, '永新县', '0', 100);
INSERT INTO `area` VALUES (360881, 360800, 3, '井冈山市', '0', 100);
INSERT INTO `area` VALUES (360900, 360000, 2, '宜春市', '0', 100);
INSERT INTO `area` VALUES (360901, 360900, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (360902, 360900, 3, '袁州区', '0', 100);
INSERT INTO `area` VALUES (360921, 360900, 3, '奉新县', '0', 100);
INSERT INTO `area` VALUES (360922, 360900, 3, '万载县', '0', 100);
INSERT INTO `area` VALUES (360923, 360900, 3, '上高县', '0', 100);
INSERT INTO `area` VALUES (360924, 360900, 3, '宜丰县', '0', 100);
INSERT INTO `area` VALUES (360925, 360900, 3, '靖安县', '0', 100);
INSERT INTO `area` VALUES (360926, 360900, 3, '铜鼓县', '0', 100);
INSERT INTO `area` VALUES (360981, 360900, 3, '丰城市', '0', 100);
INSERT INTO `area` VALUES (360982, 360900, 3, '樟树市', '0', 100);
INSERT INTO `area` VALUES (360983, 360900, 3, '高安市', '0', 100);
INSERT INTO `area` VALUES (361000, 360000, 2, '抚州市', '0', 100);
INSERT INTO `area` VALUES (361001, 361000, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (361002, 361000, 3, '临川区', '0', 100);
INSERT INTO `area` VALUES (361021, 361000, 3, '南城县', '0', 100);
INSERT INTO `area` VALUES (361022, 361000, 3, '黎川县', '0', 100);
INSERT INTO `area` VALUES (361023, 361000, 3, '南丰县', '0', 100);
INSERT INTO `area` VALUES (361024, 361000, 3, '崇仁县', '0', 100);
INSERT INTO `area` VALUES (361025, 361000, 3, '乐安县', '0', 100);
INSERT INTO `area` VALUES (361026, 361000, 3, '宜黄县', '0', 100);
INSERT INTO `area` VALUES (361027, 361000, 3, '金溪县', '0', 100);
INSERT INTO `area` VALUES (361028, 361000, 3, '资溪县', '0', 100);
INSERT INTO `area` VALUES (361029, 361000, 3, '东乡县', '0', 100);
INSERT INTO `area` VALUES (361030, 361000, 3, '广昌县', '0', 100);
INSERT INTO `area` VALUES (361100, 360000, 2, '上饶市', '0', 100);
INSERT INTO `area` VALUES (361101, 361100, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (361102, 361100, 3, '信州区', '0', 100);
INSERT INTO `area` VALUES (361103, 361100, 3, '广丰区', '0', 100);
INSERT INTO `area` VALUES (361121, 361100, 3, '上饶县', '0', 100);
INSERT INTO `area` VALUES (361123, 361100, 3, '玉山县', '0', 100);
INSERT INTO `area` VALUES (361124, 361100, 3, '铅山县', '0', 100);
INSERT INTO `area` VALUES (361125, 361100, 3, '横峰县', '0', 100);
INSERT INTO `area` VALUES (361126, 361100, 3, '弋阳县', '0', 100);
INSERT INTO `area` VALUES (361127, 361100, 3, '余干县', '0', 100);
INSERT INTO `area` VALUES (361128, 361100, 3, '鄱阳县', '0', 100);
INSERT INTO `area` VALUES (361129, 361100, 3, '万年县', '0', 100);
INSERT INTO `area` VALUES (361130, 361100, 3, '婺源县', '0', 100);
INSERT INTO `area` VALUES (361181, 361100, 3, '德兴市', '0', 100);
INSERT INTO `area` VALUES (370000, 0, 1, '山东省', '0', 100);
INSERT INTO `area` VALUES (370100, 370000, 2, '济南市', '0', 100);
INSERT INTO `area` VALUES (370101, 370100, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (370102, 370100, 3, '历下区', '0', 100);
INSERT INTO `area` VALUES (370103, 370100, 3, '市中区', '0', 100);
INSERT INTO `area` VALUES (370104, 370100, 3, '槐荫区', '0', 100);
INSERT INTO `area` VALUES (370105, 370100, 3, '天桥区', '0', 100);
INSERT INTO `area` VALUES (370112, 370100, 3, '历城区', '0', 100);
INSERT INTO `area` VALUES (370113, 370100, 3, '长清区', '0', 100);
INSERT INTO `area` VALUES (370124, 370100, 3, '平阴县', '0', 100);
INSERT INTO `area` VALUES (370125, 370100, 3, '济阳县', '0', 100);
INSERT INTO `area` VALUES (370126, 370100, 3, '商河县', '0', 100);
INSERT INTO `area` VALUES (370181, 370100, 3, '章丘市', '0', 100);
INSERT INTO `area` VALUES (370200, 370000, 2, '青岛市', '0', 100);
INSERT INTO `area` VALUES (370201, 370200, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (370202, 370200, 3, '市南区', '0', 100);
INSERT INTO `area` VALUES (370203, 370200, 3, '市北区', '0', 100);
INSERT INTO `area` VALUES (370211, 370200, 3, '黄岛区', '0', 100);
INSERT INTO `area` VALUES (370212, 370200, 3, '崂山区', '0', 100);
INSERT INTO `area` VALUES (370213, 370200, 3, '李沧区', '0', 100);
INSERT INTO `area` VALUES (370214, 370200, 3, '城阳区', '0', 100);
INSERT INTO `area` VALUES (370281, 370200, 3, '胶州市', '0', 100);
INSERT INTO `area` VALUES (370282, 370200, 3, '即墨市', '0', 100);
INSERT INTO `area` VALUES (370283, 370200, 3, '平度市', '0', 100);
INSERT INTO `area` VALUES (370285, 370200, 3, '莱西市', '0', 100);
INSERT INTO `area` VALUES (370300, 370000, 2, '淄博市', '0', 100);
INSERT INTO `area` VALUES (370301, 370300, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (370302, 370300, 3, '淄川区', '0', 100);
INSERT INTO `area` VALUES (370303, 370300, 3, '张店区', '0', 100);
INSERT INTO `area` VALUES (370304, 370300, 3, '博山区', '0', 100);
INSERT INTO `area` VALUES (370305, 370300, 3, '临淄区', '0', 100);
INSERT INTO `area` VALUES (370306, 370300, 3, '周村区', '0', 100);
INSERT INTO `area` VALUES (370321, 370300, 3, '桓台县', '0', 100);
INSERT INTO `area` VALUES (370322, 370300, 3, '高青县', '0', 100);
INSERT INTO `area` VALUES (370323, 370300, 3, '沂源县', '0', 100);
INSERT INTO `area` VALUES (370400, 370000, 2, '枣庄市', '0', 100);
INSERT INTO `area` VALUES (370401, 370400, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (370402, 370400, 3, '市中区', '0', 100);
INSERT INTO `area` VALUES (370403, 370400, 3, '薛城区', '0', 100);
INSERT INTO `area` VALUES (370404, 370400, 3, '峄城区', '0', 100);
INSERT INTO `area` VALUES (370405, 370400, 3, '台儿庄区', '0', 100);
INSERT INTO `area` VALUES (370406, 370400, 3, '山亭区', '0', 100);
INSERT INTO `area` VALUES (370481, 370400, 3, '滕州市', '0', 100);
INSERT INTO `area` VALUES (370500, 370000, 2, '东营市', '0', 100);
INSERT INTO `area` VALUES (370501, 370500, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (370502, 370500, 3, '东营区', '0', 100);
INSERT INTO `area` VALUES (370503, 370500, 3, '河口区', '0', 100);
INSERT INTO `area` VALUES (370505, 370500, 3, '垦利区', '0', 100);
INSERT INTO `area` VALUES (370522, 370500, 3, '利津县', '0', 100);
INSERT INTO `area` VALUES (370523, 370500, 3, '广饶县', '0', 100);
INSERT INTO `area` VALUES (370600, 370000, 2, '烟台市', '0', 100);
INSERT INTO `area` VALUES (370601, 370600, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (370602, 370600, 3, '芝罘区', '0', 100);
INSERT INTO `area` VALUES (370611, 370600, 3, '福山区', '0', 100);
INSERT INTO `area` VALUES (370612, 370600, 3, '牟平区', '0', 100);
INSERT INTO `area` VALUES (370613, 370600, 3, '莱山区', '0', 100);
INSERT INTO `area` VALUES (370634, 370600, 3, '长岛县', '0', 100);
INSERT INTO `area` VALUES (370681, 370600, 3, '龙口市', '0', 100);
INSERT INTO `area` VALUES (370682, 370600, 3, '莱阳市', '0', 100);
INSERT INTO `area` VALUES (370683, 370600, 3, '莱州市', '0', 100);
INSERT INTO `area` VALUES (370684, 370600, 3, '蓬莱市', '0', 100);
INSERT INTO `area` VALUES (370685, 370600, 3, '招远市', '0', 100);
INSERT INTO `area` VALUES (370686, 370600, 3, '栖霞市', '0', 100);
INSERT INTO `area` VALUES (370687, 370600, 3, '海阳市', '0', 100);
INSERT INTO `area` VALUES (370700, 370000, 2, '潍坊市', '0', 100);
INSERT INTO `area` VALUES (370701, 370700, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (370702, 370700, 3, '潍城区', '0', 100);
INSERT INTO `area` VALUES (370703, 370700, 3, '寒亭区', '0', 100);
INSERT INTO `area` VALUES (370704, 370700, 3, '坊子区', '0', 100);
INSERT INTO `area` VALUES (370705, 370700, 3, '奎文区', '0', 100);
INSERT INTO `area` VALUES (370724, 370700, 3, '临朐县', '0', 100);
INSERT INTO `area` VALUES (370725, 370700, 3, '昌乐县', '0', 100);
INSERT INTO `area` VALUES (370781, 370700, 3, '青州市', '0', 100);
INSERT INTO `area` VALUES (370782, 370700, 3, '诸城市', '0', 100);
INSERT INTO `area` VALUES (370783, 370700, 3, '寿光市', '0', 100);
INSERT INTO `area` VALUES (370784, 370700, 3, '安丘市', '0', 100);
INSERT INTO `area` VALUES (370785, 370700, 3, '高密市', '0', 100);
INSERT INTO `area` VALUES (370786, 370700, 3, '昌邑市', '0', 100);
INSERT INTO `area` VALUES (370800, 370000, 2, '济宁市', '0', 100);
INSERT INTO `area` VALUES (370801, 370800, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (370811, 370800, 3, '任城区', '0', 100);
INSERT INTO `area` VALUES (370812, 370800, 3, '兖州区', '0', 100);
INSERT INTO `area` VALUES (370826, 370800, 3, '微山县', '0', 100);
INSERT INTO `area` VALUES (370827, 370800, 3, '鱼台县', '0', 100);
INSERT INTO `area` VALUES (370828, 370800, 3, '金乡县', '0', 100);
INSERT INTO `area` VALUES (370829, 370800, 3, '嘉祥县', '0', 100);
INSERT INTO `area` VALUES (370830, 370800, 3, '汶上县', '0', 100);
INSERT INTO `area` VALUES (370831, 370800, 3, '泗水县', '0', 100);
INSERT INTO `area` VALUES (370832, 370800, 3, '梁山县', '0', 100);
INSERT INTO `area` VALUES (370881, 370800, 3, '曲阜市', '0', 100);
INSERT INTO `area` VALUES (370883, 370800, 3, '邹城市', '0', 100);
INSERT INTO `area` VALUES (370900, 370000, 2, '泰安市', '0', 100);
INSERT INTO `area` VALUES (370901, 370900, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (370902, 370900, 3, '泰山区', '0', 100);
INSERT INTO `area` VALUES (370911, 370900, 3, '岱岳区', '0', 100);
INSERT INTO `area` VALUES (370921, 370900, 3, '宁阳县', '0', 100);
INSERT INTO `area` VALUES (370923, 370900, 3, '东平县', '0', 100);
INSERT INTO `area` VALUES (370982, 370900, 3, '新泰市', '0', 100);
INSERT INTO `area` VALUES (370983, 370900, 3, '肥城市', '0', 100);
INSERT INTO `area` VALUES (371000, 370000, 2, '威海市', '0', 100);
INSERT INTO `area` VALUES (371001, 371000, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (371002, 371000, 3, '环翠区', '0', 100);
INSERT INTO `area` VALUES (371003, 371000, 3, '文登区', '0', 100);
INSERT INTO `area` VALUES (371082, 371000, 3, '荣成市', '0', 100);
INSERT INTO `area` VALUES (371083, 371000, 3, '乳山市', '0', 100);
INSERT INTO `area` VALUES (371100, 370000, 2, '日照市', '0', 100);
INSERT INTO `area` VALUES (371101, 371100, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (371102, 371100, 3, '东港区', '0', 100);
INSERT INTO `area` VALUES (371103, 371100, 3, '岚山区', '0', 100);
INSERT INTO `area` VALUES (371121, 371100, 3, '五莲县', '0', 100);
INSERT INTO `area` VALUES (371122, 371100, 3, '莒县', '0', 100);
INSERT INTO `area` VALUES (371200, 370000, 2, '莱芜市', '0', 100);
INSERT INTO `area` VALUES (371201, 371200, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (371202, 371200, 3, '莱城区', '0', 100);
INSERT INTO `area` VALUES (371203, 371200, 3, '钢城区', '0', 100);
INSERT INTO `area` VALUES (371300, 370000, 2, '临沂市', '0', 100);
INSERT INTO `area` VALUES (371301, 371300, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (371302, 371300, 3, '兰山区', '0', 100);
INSERT INTO `area` VALUES (371311, 371300, 3, '罗庄区', '0', 100);
INSERT INTO `area` VALUES (371312, 371300, 3, '河东区', '0', 100);
INSERT INTO `area` VALUES (371321, 371300, 3, '沂南县', '0', 100);
INSERT INTO `area` VALUES (371322, 371300, 3, '郯城县', '0', 100);
INSERT INTO `area` VALUES (371323, 371300, 3, '沂水县', '0', 100);
INSERT INTO `area` VALUES (371324, 371300, 3, '兰陵县', '0', 100);
INSERT INTO `area` VALUES (371325, 371300, 3, '费县', '0', 100);
INSERT INTO `area` VALUES (371326, 371300, 3, '平邑县', '0', 100);
INSERT INTO `area` VALUES (371327, 371300, 3, '莒南县', '0', 100);
INSERT INTO `area` VALUES (371328, 371300, 3, '蒙阴县', '0', 100);
INSERT INTO `area` VALUES (371329, 371300, 3, '临沭县', '0', 100);
INSERT INTO `area` VALUES (371400, 370000, 2, '德州市', '0', 100);
INSERT INTO `area` VALUES (371401, 371400, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (371402, 371400, 3, '德城区', '0', 100);
INSERT INTO `area` VALUES (371403, 371400, 3, '陵城区', '0', 100);
INSERT INTO `area` VALUES (371422, 371400, 3, '宁津县', '0', 100);
INSERT INTO `area` VALUES (371423, 371400, 3, '庆云县', '0', 100);
INSERT INTO `area` VALUES (371424, 371400, 3, '临邑县', '0', 100);
INSERT INTO `area` VALUES (371425, 371400, 3, '齐河县', '0', 100);
INSERT INTO `area` VALUES (371426, 371400, 3, '平原县', '0', 100);
INSERT INTO `area` VALUES (371427, 371400, 3, '夏津县', '0', 100);
INSERT INTO `area` VALUES (371428, 371400, 3, '武城县', '0', 100);
INSERT INTO `area` VALUES (371481, 371400, 3, '乐陵市', '0', 100);
INSERT INTO `area` VALUES (371482, 371400, 3, '禹城市', '0', 100);
INSERT INTO `area` VALUES (371500, 370000, 2, '聊城市', '0', 100);
INSERT INTO `area` VALUES (371501, 371500, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (371502, 371500, 3, '东昌府区', '0', 100);
INSERT INTO `area` VALUES (371521, 371500, 3, '阳谷县', '0', 100);
INSERT INTO `area` VALUES (371522, 371500, 3, '莘县', '0', 100);
INSERT INTO `area` VALUES (371523, 371500, 3, '茌平县', '0', 100);
INSERT INTO `area` VALUES (371524, 371500, 3, '东阿县', '0', 100);
INSERT INTO `area` VALUES (371525, 371500, 3, '冠县', '0', 100);
INSERT INTO `area` VALUES (371526, 371500, 3, '高唐县', '0', 100);
INSERT INTO `area` VALUES (371581, 371500, 3, '临清市', '0', 100);
INSERT INTO `area` VALUES (371600, 370000, 2, '滨州市', '0', 100);
INSERT INTO `area` VALUES (371601, 371600, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (371602, 371600, 3, '滨城区', '0', 100);
INSERT INTO `area` VALUES (371603, 371600, 3, '沾化区', '0', 100);
INSERT INTO `area` VALUES (371621, 371600, 3, '惠民县', '0', 100);
INSERT INTO `area` VALUES (371622, 371600, 3, '阳信县', '0', 100);
INSERT INTO `area` VALUES (371623, 371600, 3, '无棣县', '0', 100);
INSERT INTO `area` VALUES (371625, 371600, 3, '博兴县', '0', 100);
INSERT INTO `area` VALUES (371626, 371600, 3, '邹平县', '0', 100);
INSERT INTO `area` VALUES (371700, 370000, 2, '菏泽市', '0', 100);
INSERT INTO `area` VALUES (371701, 371700, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (371702, 371700, 3, '牡丹区', '0', 100);
INSERT INTO `area` VALUES (371703, 371700, 3, '定陶区', '0', 100);
INSERT INTO `area` VALUES (371721, 371700, 3, '曹县', '0', 100);
INSERT INTO `area` VALUES (371722, 371700, 3, '单县', '0', 100);
INSERT INTO `area` VALUES (371723, 371700, 3, '成武县', '0', 100);
INSERT INTO `area` VALUES (371724, 371700, 3, '巨野县', '0', 100);
INSERT INTO `area` VALUES (371725, 371700, 3, '郓城县', '0', 100);
INSERT INTO `area` VALUES (371726, 371700, 3, '鄄城县', '0', 100);
INSERT INTO `area` VALUES (371728, 371700, 3, '东明县', '0', 100);
INSERT INTO `area` VALUES (410000, 0, 1, '河南省', '0', 100);
INSERT INTO `area` VALUES (410100, 410000, 2, '郑州市', '0', 100);
INSERT INTO `area` VALUES (410101, 410100, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (410102, 410100, 3, '中原区', '0', 100);
INSERT INTO `area` VALUES (410103, 410100, 3, '二七区', '0', 100);
INSERT INTO `area` VALUES (410104, 410100, 3, '管城回族区', '0', 100);
INSERT INTO `area` VALUES (410105, 410100, 3, '金水区', '0', 100);
INSERT INTO `area` VALUES (410106, 410100, 3, '上街区', '0', 100);
INSERT INTO `area` VALUES (410108, 410100, 3, '惠济区', '0', 100);
INSERT INTO `area` VALUES (410122, 410100, 3, '中牟县', '0', 100);
INSERT INTO `area` VALUES (410181, 410100, 3, '巩义市', '0', 100);
INSERT INTO `area` VALUES (410182, 410100, 3, '荥阳市', '0', 100);
INSERT INTO `area` VALUES (410183, 410100, 3, '新密市', '0', 100);
INSERT INTO `area` VALUES (410184, 410100, 3, '新郑市', '0', 100);
INSERT INTO `area` VALUES (410185, 410100, 3, '登封市', '0', 100);
INSERT INTO `area` VALUES (410200, 410000, 2, '开封市', '0', 100);
INSERT INTO `area` VALUES (410201, 410200, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (410202, 410200, 3, '龙亭区', '0', 100);
INSERT INTO `area` VALUES (410203, 410200, 3, '顺河回族区', '0', 100);
INSERT INTO `area` VALUES (410204, 410200, 3, '鼓楼区', '0', 100);
INSERT INTO `area` VALUES (410205, 410200, 3, '禹王台区', '0', 100);
INSERT INTO `area` VALUES (410211, 410200, 3, '金明区', '0', 100);
INSERT INTO `area` VALUES (410212, 410200, 3, '祥符区', '0', 100);
INSERT INTO `area` VALUES (410221, 410200, 3, '杞县', '0', 100);
INSERT INTO `area` VALUES (410222, 410200, 3, '通许县', '0', 100);
INSERT INTO `area` VALUES (410223, 410200, 3, '尉氏县', '0', 100);
INSERT INTO `area` VALUES (410225, 410200, 3, '兰考县', '0', 100);
INSERT INTO `area` VALUES (410300, 410000, 2, '洛阳市', '0', 100);
INSERT INTO `area` VALUES (410301, 410300, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (410302, 410300, 3, '老城区', '0', 100);
INSERT INTO `area` VALUES (410303, 410300, 3, '西工区', '0', 100);
INSERT INTO `area` VALUES (410304, 410300, 3, '瀍河回族区', '0', 100);
INSERT INTO `area` VALUES (410305, 410300, 3, '涧西区', '0', 100);
INSERT INTO `area` VALUES (410306, 410300, 3, '吉利区', '0', 100);
INSERT INTO `area` VALUES (410311, 410300, 3, '洛龙区', '0', 100);
INSERT INTO `area` VALUES (410322, 410300, 3, '孟津县', '0', 100);
INSERT INTO `area` VALUES (410323, 410300, 3, '新安县', '0', 100);
INSERT INTO `area` VALUES (410324, 410300, 3, '栾川县', '0', 100);
INSERT INTO `area` VALUES (410325, 410300, 3, '嵩县', '0', 100);
INSERT INTO `area` VALUES (410326, 410300, 3, '汝阳县', '0', 100);
INSERT INTO `area` VALUES (410327, 410300, 3, '宜阳县', '0', 100);
INSERT INTO `area` VALUES (410328, 410300, 3, '洛宁县', '0', 100);
INSERT INTO `area` VALUES (410329, 410300, 3, '伊川县', '0', 100);
INSERT INTO `area` VALUES (410381, 410300, 3, '偃师市', '0', 100);
INSERT INTO `area` VALUES (410400, 410000, 2, '平顶山市', '0', 100);
INSERT INTO `area` VALUES (410401, 410400, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (410402, 410400, 3, '新华区', '0', 100);
INSERT INTO `area` VALUES (410403, 410400, 3, '卫东区', '0', 100);
INSERT INTO `area` VALUES (410404, 410400, 3, '石龙区', '0', 100);
INSERT INTO `area` VALUES (410411, 410400, 3, '湛河区', '0', 100);
INSERT INTO `area` VALUES (410421, 410400, 3, '宝丰县', '0', 100);
INSERT INTO `area` VALUES (410422, 410400, 3, '叶县', '0', 100);
INSERT INTO `area` VALUES (410423, 410400, 3, '鲁山县', '0', 100);
INSERT INTO `area` VALUES (410425, 410400, 3, '郏县', '0', 100);
INSERT INTO `area` VALUES (410481, 410400, 3, '舞钢市', '0', 100);
INSERT INTO `area` VALUES (410482, 410400, 3, '汝州市', '0', 100);
INSERT INTO `area` VALUES (410500, 410000, 2, '安阳市', '0', 100);
INSERT INTO `area` VALUES (410501, 410500, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (410502, 410500, 3, '文峰区', '0', 100);
INSERT INTO `area` VALUES (410503, 410500, 3, '北关区', '0', 100);
INSERT INTO `area` VALUES (410505, 410500, 3, '殷都区', '0', 100);
INSERT INTO `area` VALUES (410506, 410500, 3, '龙安区', '0', 100);
INSERT INTO `area` VALUES (410522, 410500, 3, '安阳县', '0', 100);
INSERT INTO `area` VALUES (410523, 410500, 3, '汤阴县', '0', 100);
INSERT INTO `area` VALUES (410526, 410500, 3, '滑县', '0', 100);
INSERT INTO `area` VALUES (410527, 410500, 3, '内黄县', '0', 100);
INSERT INTO `area` VALUES (410581, 410500, 3, '林州市', '0', 100);
INSERT INTO `area` VALUES (410600, 410000, 2, '鹤壁市', '0', 100);
INSERT INTO `area` VALUES (410601, 410600, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (410602, 410600, 3, '鹤山区', '0', 100);
INSERT INTO `area` VALUES (410603, 410600, 3, '山城区', '0', 100);
INSERT INTO `area` VALUES (410611, 410600, 3, '淇滨区', '0', 100);
INSERT INTO `area` VALUES (410621, 410600, 3, '浚县', '0', 100);
INSERT INTO `area` VALUES (410622, 410600, 3, '淇县', '0', 100);
INSERT INTO `area` VALUES (410700, 410000, 2, '新乡市', '0', 100);
INSERT INTO `area` VALUES (410701, 410700, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (410702, 410700, 3, '红旗区', '0', 100);
INSERT INTO `area` VALUES (410703, 410700, 3, '卫滨区', '0', 100);
INSERT INTO `area` VALUES (410704, 410700, 3, '凤泉区', '0', 100);
INSERT INTO `area` VALUES (410711, 410700, 3, '牧野区', '0', 100);
INSERT INTO `area` VALUES (410721, 410700, 3, '新乡县', '0', 100);
INSERT INTO `area` VALUES (410724, 410700, 3, '获嘉县', '0', 100);
INSERT INTO `area` VALUES (410725, 410700, 3, '原阳县', '0', 100);
INSERT INTO `area` VALUES (410726, 410700, 3, '延津县', '0', 100);
INSERT INTO `area` VALUES (410727, 410700, 3, '封丘县', '0', 100);
INSERT INTO `area` VALUES (410728, 410700, 3, '长垣县', '0', 100);
INSERT INTO `area` VALUES (410781, 410700, 3, '卫辉市', '0', 100);
INSERT INTO `area` VALUES (410782, 410700, 3, '辉县市', '0', 100);
INSERT INTO `area` VALUES (410800, 410000, 2, '焦作市', '0', 100);
INSERT INTO `area` VALUES (410801, 410800, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (410802, 410800, 3, '解放区', '0', 100);
INSERT INTO `area` VALUES (410803, 410800, 3, '中站区', '0', 100);
INSERT INTO `area` VALUES (410804, 410800, 3, '马村区', '0', 100);
INSERT INTO `area` VALUES (410811, 410800, 3, '山阳区', '0', 100);
INSERT INTO `area` VALUES (410821, 410800, 3, '修武县', '0', 100);
INSERT INTO `area` VALUES (410822, 410800, 3, '博爱县', '0', 100);
INSERT INTO `area` VALUES (410823, 410800, 3, '武陟县', '0', 100);
INSERT INTO `area` VALUES (410825, 410800, 3, '温县', '0', 100);
INSERT INTO `area` VALUES (410882, 410800, 3, '沁阳市', '0', 100);
INSERT INTO `area` VALUES (410883, 410800, 3, '孟州市', '0', 100);
INSERT INTO `area` VALUES (410900, 410000, 2, '濮阳市', '0', 100);
INSERT INTO `area` VALUES (410901, 410900, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (410902, 410900, 3, '华龙区', '0', 100);
INSERT INTO `area` VALUES (410922, 410900, 3, '清丰县', '0', 100);
INSERT INTO `area` VALUES (410923, 410900, 3, '南乐县', '0', 100);
INSERT INTO `area` VALUES (410926, 410900, 3, '范县', '0', 100);
INSERT INTO `area` VALUES (410927, 410900, 3, '台前县', '0', 100);
INSERT INTO `area` VALUES (410928, 410900, 3, '濮阳县', '0', 100);
INSERT INTO `area` VALUES (411000, 410000, 2, '许昌市', '0', 100);
INSERT INTO `area` VALUES (411001, 411000, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (411002, 411000, 3, '魏都区', '0', 100);
INSERT INTO `area` VALUES (411023, 411000, 3, '许昌县', '0', 100);
INSERT INTO `area` VALUES (411024, 411000, 3, '鄢陵县', '0', 100);
INSERT INTO `area` VALUES (411025, 411000, 3, '襄城县', '0', 100);
INSERT INTO `area` VALUES (411081, 411000, 3, '禹州市', '0', 100);
INSERT INTO `area` VALUES (411082, 411000, 3, '长葛市', '0', 100);
INSERT INTO `area` VALUES (411100, 410000, 2, '漯河市', '0', 100);
INSERT INTO `area` VALUES (411101, 411100, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (411102, 411100, 3, '源汇区', '0', 100);
INSERT INTO `area` VALUES (411103, 411100, 3, '郾城区', '0', 100);
INSERT INTO `area` VALUES (411104, 411100, 3, '召陵区', '0', 100);
INSERT INTO `area` VALUES (411121, 411100, 3, '舞阳县', '0', 100);
INSERT INTO `area` VALUES (411122, 411100, 3, '临颍县', '0', 100);
INSERT INTO `area` VALUES (411200, 410000, 2, '三门峡市', '0', 100);
INSERT INTO `area` VALUES (411201, 411200, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (411202, 411200, 3, '湖滨区', '0', 100);
INSERT INTO `area` VALUES (411203, 411200, 3, '陕州区', '0', 100);
INSERT INTO `area` VALUES (411221, 411200, 3, '渑池县', '0', 100);
INSERT INTO `area` VALUES (411224, 411200, 3, '卢氏县', '0', 100);
INSERT INTO `area` VALUES (411281, 411200, 3, '义马市', '0', 100);
INSERT INTO `area` VALUES (411282, 411200, 3, '灵宝市', '0', 100);
INSERT INTO `area` VALUES (411300, 410000, 2, '南阳市', '0', 100);
INSERT INTO `area` VALUES (411301, 411300, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (411302, 411300, 3, '宛城区', '0', 100);
INSERT INTO `area` VALUES (411303, 411300, 3, '卧龙区', '0', 100);
INSERT INTO `area` VALUES (411321, 411300, 3, '南召县', '0', 100);
INSERT INTO `area` VALUES (411322, 411300, 3, '方城县', '0', 100);
INSERT INTO `area` VALUES (411323, 411300, 3, '西峡县', '0', 100);
INSERT INTO `area` VALUES (411324, 411300, 3, '镇平县', '0', 100);
INSERT INTO `area` VALUES (411325, 411300, 3, '内乡县', '0', 100);
INSERT INTO `area` VALUES (411326, 411300, 3, '淅川县', '0', 100);
INSERT INTO `area` VALUES (411327, 411300, 3, '社旗县', '0', 100);
INSERT INTO `area` VALUES (411328, 411300, 3, '唐河县', '0', 100);
INSERT INTO `area` VALUES (411329, 411300, 3, '新野县', '0', 100);
INSERT INTO `area` VALUES (411330, 411300, 3, '桐柏县', '0', 100);
INSERT INTO `area` VALUES (411381, 411300, 3, '邓州市', '0', 100);
INSERT INTO `area` VALUES (411400, 410000, 2, '商丘市', '0', 100);
INSERT INTO `area` VALUES (411401, 411400, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (411402, 411400, 3, '梁园区', '0', 100);
INSERT INTO `area` VALUES (411403, 411400, 3, '睢阳区', '0', 100);
INSERT INTO `area` VALUES (411421, 411400, 3, '民权县', '0', 100);
INSERT INTO `area` VALUES (411422, 411400, 3, '睢县', '0', 100);
INSERT INTO `area` VALUES (411423, 411400, 3, '宁陵县', '0', 100);
INSERT INTO `area` VALUES (411424, 411400, 3, '柘城县', '0', 100);
INSERT INTO `area` VALUES (411425, 411400, 3, '虞城县', '0', 100);
INSERT INTO `area` VALUES (411426, 411400, 3, '夏邑县', '0', 100);
INSERT INTO `area` VALUES (411481, 411400, 3, '永城市', '0', 100);
INSERT INTO `area` VALUES (411500, 410000, 2, '信阳市', '0', 100);
INSERT INTO `area` VALUES (411501, 411500, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (411502, 411500, 3, '浉河区', '0', 100);
INSERT INTO `area` VALUES (411503, 411500, 3, '平桥区', '0', 100);
INSERT INTO `area` VALUES (411521, 411500, 3, '罗山县', '0', 100);
INSERT INTO `area` VALUES (411522, 411500, 3, '光山县', '0', 100);
INSERT INTO `area` VALUES (411523, 411500, 3, '新县', '0', 100);
INSERT INTO `area` VALUES (411524, 411500, 3, '商城县', '0', 100);
INSERT INTO `area` VALUES (411525, 411500, 3, '固始县', '0', 100);
INSERT INTO `area` VALUES (411526, 411500, 3, '潢川县', '0', 100);
INSERT INTO `area` VALUES (411527, 411500, 3, '淮滨县', '0', 100);
INSERT INTO `area` VALUES (411528, 411500, 3, '息县', '0', 100);
INSERT INTO `area` VALUES (411600, 410000, 2, '周口市', '0', 100);
INSERT INTO `area` VALUES (411601, 411600, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (411602, 411600, 3, '川汇区', '0', 100);
INSERT INTO `area` VALUES (411621, 411600, 3, '扶沟县', '0', 100);
INSERT INTO `area` VALUES (411622, 411600, 3, '西华县', '0', 100);
INSERT INTO `area` VALUES (411623, 411600, 3, '商水县', '0', 100);
INSERT INTO `area` VALUES (411624, 411600, 3, '沈丘县', '0', 100);
INSERT INTO `area` VALUES (411625, 411600, 3, '郸城县', '0', 100);
INSERT INTO `area` VALUES (411626, 411600, 3, '淮阳县', '0', 100);
INSERT INTO `area` VALUES (411627, 411600, 3, '太康县', '0', 100);
INSERT INTO `area` VALUES (411628, 411600, 3, '鹿邑县', '0', 100);
INSERT INTO `area` VALUES (411681, 411600, 3, '项城市', '0', 100);
INSERT INTO `area` VALUES (411700, 410000, 2, '驻马店市', '0', 100);
INSERT INTO `area` VALUES (411701, 411700, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (411702, 411700, 3, '驿城区', '0', 100);
INSERT INTO `area` VALUES (411721, 411700, 3, '西平县', '0', 100);
INSERT INTO `area` VALUES (411722, 411700, 3, '上蔡县', '0', 100);
INSERT INTO `area` VALUES (411723, 411700, 3, '平舆县', '0', 100);
INSERT INTO `area` VALUES (411724, 411700, 3, '正阳县', '0', 100);
INSERT INTO `area` VALUES (411725, 411700, 3, '确山县', '0', 100);
INSERT INTO `area` VALUES (411726, 411700, 3, '泌阳县', '0', 100);
INSERT INTO `area` VALUES (411727, 411700, 3, '汝南县', '0', 100);
INSERT INTO `area` VALUES (411728, 411700, 3, '遂平县', '0', 100);
INSERT INTO `area` VALUES (411729, 411700, 3, '新蔡县', '0', 100);
INSERT INTO `area` VALUES (419000, 410000, 2, '省直辖县级行政区划', '0', 100);
INSERT INTO `area` VALUES (419001, 419000, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (420000, 0, 1, '湖北省', '0', 100);
INSERT INTO `area` VALUES (420100, 420000, 2, '武汉市', '0', 100);
INSERT INTO `area` VALUES (420101, 420100, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (420102, 420100, 3, '江岸区', '0', 100);
INSERT INTO `area` VALUES (420103, 420100, 3, '江汉区', '0', 100);
INSERT INTO `area` VALUES (420104, 420100, 3, '硚口区', '0', 100);
INSERT INTO `area` VALUES (420105, 420100, 3, '汉阳区', '0', 100);
INSERT INTO `area` VALUES (420106, 420100, 3, '武昌区', '0', 100);
INSERT INTO `area` VALUES (420107, 420100, 3, '青山区', '0', 100);
INSERT INTO `area` VALUES (420111, 420100, 3, '洪山区', '0', 100);
INSERT INTO `area` VALUES (420112, 420100, 3, '东西湖区', '0', 100);
INSERT INTO `area` VALUES (420113, 420100, 3, '汉南区', '0', 100);
INSERT INTO `area` VALUES (420114, 420100, 3, '蔡甸区', '0', 100);
INSERT INTO `area` VALUES (420115, 420100, 3, '江夏区', '0', 100);
INSERT INTO `area` VALUES (420116, 420100, 3, '黄陂区', '0', 100);
INSERT INTO `area` VALUES (420117, 420100, 3, '新洲区', '0', 100);
INSERT INTO `area` VALUES (420200, 420000, 2, '黄石市', '0', 100);
INSERT INTO `area` VALUES (420201, 420200, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (420202, 420200, 3, '黄石港区', '0', 100);
INSERT INTO `area` VALUES (420203, 420200, 3, '西塞山区', '0', 100);
INSERT INTO `area` VALUES (420204, 420200, 3, '下陆区', '0', 100);
INSERT INTO `area` VALUES (420205, 420200, 3, '铁山区', '0', 100);
INSERT INTO `area` VALUES (420222, 420200, 3, '阳新县', '0', 100);
INSERT INTO `area` VALUES (420281, 420200, 3, '大冶市', '0', 100);
INSERT INTO `area` VALUES (420300, 420000, 2, '十堰市', '0', 100);
INSERT INTO `area` VALUES (420301, 420300, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (420302, 420300, 3, '茅箭区', '0', 100);
INSERT INTO `area` VALUES (420303, 420300, 3, '张湾区', '0', 100);
INSERT INTO `area` VALUES (420304, 420300, 3, '郧阳区', '0', 100);
INSERT INTO `area` VALUES (420322, 420300, 3, '郧西县', '0', 100);
INSERT INTO `area` VALUES (420323, 420300, 3, '竹山县', '0', 100);
INSERT INTO `area` VALUES (420324, 420300, 3, '竹溪县', '0', 100);
INSERT INTO `area` VALUES (420325, 420300, 3, '房县', '0', 100);
INSERT INTO `area` VALUES (420381, 420300, 3, '丹江口市', '0', 100);
INSERT INTO `area` VALUES (420500, 420000, 2, '宜昌市', '0', 100);
INSERT INTO `area` VALUES (420501, 420500, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (420502, 420500, 3, '西陵区', '0', 100);
INSERT INTO `area` VALUES (420503, 420500, 3, '伍家岗区', '0', 100);
INSERT INTO `area` VALUES (420504, 420500, 3, '点军区', '0', 100);
INSERT INTO `area` VALUES (420505, 420500, 3, '猇亭区', '0', 100);
INSERT INTO `area` VALUES (420506, 420500, 3, '夷陵区', '0', 100);
INSERT INTO `area` VALUES (420525, 420500, 3, '远安县', '0', 100);
INSERT INTO `area` VALUES (420526, 420500, 3, '兴山县', '0', 100);
INSERT INTO `area` VALUES (420527, 420500, 3, '秭归县', '0', 100);
INSERT INTO `area` VALUES (420528, 420500, 3, '长阳土家族自治县', '0', 100);
INSERT INTO `area` VALUES (420529, 420500, 3, '五峰土家族自治县', '0', 100);
INSERT INTO `area` VALUES (420581, 420500, 3, '宜都市', '0', 100);
INSERT INTO `area` VALUES (420582, 420500, 3, '当阳市', '0', 100);
INSERT INTO `area` VALUES (420583, 420500, 3, '枝江市', '0', 100);
INSERT INTO `area` VALUES (420600, 420000, 2, '襄阳市', '0', 100);
INSERT INTO `area` VALUES (420601, 420600, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (420602, 420600, 3, '襄城区', '0', 100);
INSERT INTO `area` VALUES (420606, 420600, 3, '樊城区', '0', 100);
INSERT INTO `area` VALUES (420607, 420600, 3, '襄州区', '0', 100);
INSERT INTO `area` VALUES (420624, 420600, 3, '南漳县', '0', 100);
INSERT INTO `area` VALUES (420625, 420600, 3, '谷城县', '0', 100);
INSERT INTO `area` VALUES (420626, 420600, 3, '保康县', '0', 100);
INSERT INTO `area` VALUES (420682, 420600, 3, '老河口市', '0', 100);
INSERT INTO `area` VALUES (420683, 420600, 3, '枣阳市', '0', 100);
INSERT INTO `area` VALUES (420684, 420600, 3, '宜城市', '0', 100);
INSERT INTO `area` VALUES (420700, 420000, 2, '鄂州市', '0', 100);
INSERT INTO `area` VALUES (420701, 420700, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (420702, 420700, 3, '梁子湖区', '0', 100);
INSERT INTO `area` VALUES (420703, 420700, 3, '华容区', '0', 100);
INSERT INTO `area` VALUES (420704, 420700, 3, '鄂城区', '0', 100);
INSERT INTO `area` VALUES (420800, 420000, 2, '荆门市', '0', 100);
INSERT INTO `area` VALUES (420801, 420800, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (420802, 420800, 3, '东宝区', '0', 100);
INSERT INTO `area` VALUES (420804, 420800, 3, '掇刀区', '0', 100);
INSERT INTO `area` VALUES (420821, 420800, 3, '京山县', '0', 100);
INSERT INTO `area` VALUES (420822, 420800, 3, '沙洋县', '0', 100);
INSERT INTO `area` VALUES (420881, 420800, 3, '钟祥市', '0', 100);
INSERT INTO `area` VALUES (420900, 420000, 2, '孝感市', '0', 100);
INSERT INTO `area` VALUES (420901, 420900, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (420902, 420900, 3, '孝南区', '0', 100);
INSERT INTO `area` VALUES (420921, 420900, 3, '孝昌县', '0', 100);
INSERT INTO `area` VALUES (420922, 420900, 3, '大悟县', '0', 100);
INSERT INTO `area` VALUES (420923, 420900, 3, '云梦县', '0', 100);
INSERT INTO `area` VALUES (420981, 420900, 3, '应城市', '0', 100);
INSERT INTO `area` VALUES (420982, 420900, 3, '安陆市', '0', 100);
INSERT INTO `area` VALUES (420984, 420900, 3, '汉川市', '0', 100);
INSERT INTO `area` VALUES (421000, 420000, 2, '荆州市', '0', 100);
INSERT INTO `area` VALUES (421001, 421000, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (421002, 421000, 3, '沙市区', '0', 100);
INSERT INTO `area` VALUES (421003, 421000, 3, '荆州区', '0', 100);
INSERT INTO `area` VALUES (421022, 421000, 3, '公安县', '0', 100);
INSERT INTO `area` VALUES (421023, 421000, 3, '监利县', '0', 100);
INSERT INTO `area` VALUES (421024, 421000, 3, '江陵县', '0', 100);
INSERT INTO `area` VALUES (421081, 421000, 3, '石首市', '0', 100);
INSERT INTO `area` VALUES (421083, 421000, 3, '洪湖市', '0', 100);
INSERT INTO `area` VALUES (421087, 421000, 3, '松滋市', '0', 100);
INSERT INTO `area` VALUES (421100, 420000, 2, '黄冈市', '0', 100);
INSERT INTO `area` VALUES (421101, 421100, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (421102, 421100, 3, '黄州区', '0', 100);
INSERT INTO `area` VALUES (421121, 421100, 3, '团风县', '0', 100);
INSERT INTO `area` VALUES (421122, 421100, 3, '红安县', '0', 100);
INSERT INTO `area` VALUES (421123, 421100, 3, '罗田县', '0', 100);
INSERT INTO `area` VALUES (421124, 421100, 3, '英山县', '0', 100);
INSERT INTO `area` VALUES (421125, 421100, 3, '浠水县', '0', 100);
INSERT INTO `area` VALUES (421126, 421100, 3, '蕲春县', '0', 100);
INSERT INTO `area` VALUES (421127, 421100, 3, '黄梅县', '0', 100);
INSERT INTO `area` VALUES (421181, 421100, 3, '麻城市', '0', 100);
INSERT INTO `area` VALUES (421182, 421100, 3, '武穴市', '0', 100);
INSERT INTO `area` VALUES (421200, 420000, 2, '咸宁市', '0', 100);
INSERT INTO `area` VALUES (421201, 421200, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (421202, 421200, 3, '咸安区', '0', 100);
INSERT INTO `area` VALUES (421221, 421200, 3, '嘉鱼县', '0', 100);
INSERT INTO `area` VALUES (421222, 421200, 3, '通城县', '0', 100);
INSERT INTO `area` VALUES (421223, 421200, 3, '崇阳县', '0', 100);
INSERT INTO `area` VALUES (421224, 421200, 3, '通山县', '0', 100);
INSERT INTO `area` VALUES (421281, 421200, 3, '赤壁市', '0', 100);
INSERT INTO `area` VALUES (421300, 420000, 2, '随州市', '0', 100);
INSERT INTO `area` VALUES (421301, 421300, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (421303, 421300, 3, '曾都区', '0', 100);
INSERT INTO `area` VALUES (421321, 421300, 3, '随县', '0', 100);
INSERT INTO `area` VALUES (421381, 421300, 3, '广水市', '0', 100);
INSERT INTO `area` VALUES (422800, 420000, 2, '恩施土家族苗族自治州', '0', 100);
INSERT INTO `area` VALUES (422801, 422800, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (422802, 422800, 3, '利川市', '0', 100);
INSERT INTO `area` VALUES (422822, 422800, 3, '建始县', '0', 100);
INSERT INTO `area` VALUES (422823, 422800, 3, '巴东县', '0', 100);
INSERT INTO `area` VALUES (422825, 422800, 3, '宣恩县', '0', 100);
INSERT INTO `area` VALUES (422826, 422800, 3, '咸丰县', '0', 100);
INSERT INTO `area` VALUES (422827, 422800, 3, '来凤县', '0', 100);
INSERT INTO `area` VALUES (422828, 422800, 3, '鹤峰县', '0', 100);
INSERT INTO `area` VALUES (429000, 420000, 2, '省直辖县级行政区划', '0', 100);
INSERT INTO `area` VALUES (429004, 429000, 3, '仙桃市', '0', 100);
INSERT INTO `area` VALUES (429005, 429000, 3, '潜江市', '0', 100);
INSERT INTO `area` VALUES (429006, 429000, 3, '天门市', '0', 100);
INSERT INTO `area` VALUES (429021, 429000, 3, '神农架林区', '0', 100);
INSERT INTO `area` VALUES (430000, 0, 1, '湖南省', '0', 100);
INSERT INTO `area` VALUES (430100, 430000, 2, '长沙市', '0', 100);
INSERT INTO `area` VALUES (430101, 430100, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (430102, 430100, 3, '芙蓉区', '0', 100);
INSERT INTO `area` VALUES (430103, 430100, 3, '天心区', '0', 100);
INSERT INTO `area` VALUES (430104, 430100, 3, '岳麓区', '0', 100);
INSERT INTO `area` VALUES (430105, 430100, 3, '开福区', '0', 100);
INSERT INTO `area` VALUES (430111, 430100, 3, '雨花区', '0', 100);
INSERT INTO `area` VALUES (430112, 430100, 3, '望城区', '0', 100);
INSERT INTO `area` VALUES (430121, 430100, 3, '长沙县', '0', 100);
INSERT INTO `area` VALUES (430124, 430100, 3, '宁乡县', '0', 100);
INSERT INTO `area` VALUES (430181, 430100, 3, '浏阳市', '0', 100);
INSERT INTO `area` VALUES (430200, 430000, 2, '株洲市', '0', 100);
INSERT INTO `area` VALUES (430201, 430200, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (430202, 430200, 3, '荷塘区', '0', 100);
INSERT INTO `area` VALUES (430203, 430200, 3, '芦淞区', '0', 100);
INSERT INTO `area` VALUES (430204, 430200, 3, '石峰区', '0', 100);
INSERT INTO `area` VALUES (430211, 430200, 3, '天元区', '0', 100);
INSERT INTO `area` VALUES (430221, 430200, 3, '株洲县', '0', 100);
INSERT INTO `area` VALUES (430223, 430200, 3, '攸县', '0', 100);
INSERT INTO `area` VALUES (430224, 430200, 3, '茶陵县', '0', 100);
INSERT INTO `area` VALUES (430225, 430200, 3, '炎陵县', '0', 100);
INSERT INTO `area` VALUES (430281, 430200, 3, '醴陵市', '0', 100);
INSERT INTO `area` VALUES (430300, 430000, 2, '湘潭市', '0', 100);
INSERT INTO `area` VALUES (430301, 430300, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (430302, 430300, 3, '雨湖区', '0', 100);
INSERT INTO `area` VALUES (430304, 430300, 3, '岳塘区', '0', 100);
INSERT INTO `area` VALUES (430321, 430300, 3, '湘潭县', '0', 100);
INSERT INTO `area` VALUES (430381, 430300, 3, '湘乡市', '0', 100);
INSERT INTO `area` VALUES (430382, 430300, 3, '韶山市', '0', 100);
INSERT INTO `area` VALUES (430400, 430000, 2, '衡阳市', '0', 100);
INSERT INTO `area` VALUES (430401, 430400, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (430405, 430400, 3, '珠晖区', '0', 100);
INSERT INTO `area` VALUES (430406, 430400, 3, '雁峰区', '0', 100);
INSERT INTO `area` VALUES (430407, 430400, 3, '石鼓区', '0', 100);
INSERT INTO `area` VALUES (430408, 430400, 3, '蒸湘区', '0', 100);
INSERT INTO `area` VALUES (430412, 430400, 3, '南岳区', '0', 100);
INSERT INTO `area` VALUES (430421, 430400, 3, '衡阳县', '0', 100);
INSERT INTO `area` VALUES (430422, 430400, 3, '衡南县', '0', 100);
INSERT INTO `area` VALUES (430423, 430400, 3, '衡山县', '0', 100);
INSERT INTO `area` VALUES (430424, 430400, 3, '衡东县', '0', 100);
INSERT INTO `area` VALUES (430426, 430400, 3, '祁东县', '0', 100);
INSERT INTO `area` VALUES (430481, 430400, 3, '耒阳市', '0', 100);
INSERT INTO `area` VALUES (430482, 430400, 3, '常宁市', '0', 100);
INSERT INTO `area` VALUES (430500, 430000, 2, '邵阳市', '0', 100);
INSERT INTO `area` VALUES (430501, 430500, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (430502, 430500, 3, '双清区', '0', 100);
INSERT INTO `area` VALUES (430503, 430500, 3, '大祥区', '0', 100);
INSERT INTO `area` VALUES (430511, 430500, 3, '北塔区', '0', 100);
INSERT INTO `area` VALUES (430521, 430500, 3, '邵东县', '0', 100);
INSERT INTO `area` VALUES (430522, 430500, 3, '新邵县', '0', 100);
INSERT INTO `area` VALUES (430523, 430500, 3, '邵阳县', '0', 100);
INSERT INTO `area` VALUES (430524, 430500, 3, '隆回县', '0', 100);
INSERT INTO `area` VALUES (430525, 430500, 3, '洞口县', '0', 100);
INSERT INTO `area` VALUES (430527, 430500, 3, '绥宁县', '0', 100);
INSERT INTO `area` VALUES (430528, 430500, 3, '新宁县', '0', 100);
INSERT INTO `area` VALUES (430529, 430500, 3, '城步苗族自治县', '0', 100);
INSERT INTO `area` VALUES (430581, 430500, 3, '武冈市', '0', 100);
INSERT INTO `area` VALUES (430600, 430000, 2, '岳阳市', '0', 100);
INSERT INTO `area` VALUES (430601, 430600, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (430602, 430600, 3, '岳阳楼区', '0', 100);
INSERT INTO `area` VALUES (430603, 430600, 3, '云溪区', '0', 100);
INSERT INTO `area` VALUES (430611, 430600, 3, '君山区', '0', 100);
INSERT INTO `area` VALUES (430621, 430600, 3, '岳阳县', '0', 100);
INSERT INTO `area` VALUES (430623, 430600, 3, '华容县', '0', 100);
INSERT INTO `area` VALUES (430624, 430600, 3, '湘阴县', '0', 100);
INSERT INTO `area` VALUES (430626, 430600, 3, '平江县', '0', 100);
INSERT INTO `area` VALUES (430681, 430600, 3, '汨罗市', '0', 100);
INSERT INTO `area` VALUES (430682, 430600, 3, '临湘市', '0', 100);
INSERT INTO `area` VALUES (430700, 430000, 2, '常德市', '0', 100);
INSERT INTO `area` VALUES (430701, 430700, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (430702, 430700, 3, '武陵区', '0', 100);
INSERT INTO `area` VALUES (430703, 430700, 3, '鼎城区', '0', 100);
INSERT INTO `area` VALUES (430721, 430700, 3, '安乡县', '0', 100);
INSERT INTO `area` VALUES (430722, 430700, 3, '汉寿县', '0', 100);
INSERT INTO `area` VALUES (430723, 430700, 3, '澧县', '0', 100);
INSERT INTO `area` VALUES (430724, 430700, 3, '临澧县', '0', 100);
INSERT INTO `area` VALUES (430725, 430700, 3, '桃源县', '0', 100);
INSERT INTO `area` VALUES (430726, 430700, 3, '石门县', '0', 100);
INSERT INTO `area` VALUES (430781, 430700, 3, '津市市', '0', 100);
INSERT INTO `area` VALUES (430800, 430000, 2, '张家界市', '0', 100);
INSERT INTO `area` VALUES (430801, 430800, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (430802, 430800, 3, '永定区', '0', 100);
INSERT INTO `area` VALUES (430811, 430800, 3, '武陵源区', '0', 100);
INSERT INTO `area` VALUES (430821, 430800, 3, '慈利县', '0', 100);
INSERT INTO `area` VALUES (430822, 430800, 3, '桑植县', '0', 100);
INSERT INTO `area` VALUES (430900, 430000, 2, '益阳市', '0', 100);
INSERT INTO `area` VALUES (430901, 430900, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (430902, 430900, 3, '资阳区', '0', 100);
INSERT INTO `area` VALUES (430903, 430900, 3, '赫山区', '0', 100);
INSERT INTO `area` VALUES (430921, 430900, 3, '南县', '0', 100);
INSERT INTO `area` VALUES (430922, 430900, 3, '桃江县', '0', 100);
INSERT INTO `area` VALUES (430923, 430900, 3, '安化县', '0', 100);
INSERT INTO `area` VALUES (430981, 430900, 3, '沅江市', '0', 100);
INSERT INTO `area` VALUES (431000, 430000, 2, '郴州市', '0', 100);
INSERT INTO `area` VALUES (431001, 431000, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (431002, 431000, 3, '北湖区', '0', 100);
INSERT INTO `area` VALUES (431003, 431000, 3, '苏仙区', '0', 100);
INSERT INTO `area` VALUES (431021, 431000, 3, '桂阳县', '0', 100);
INSERT INTO `area` VALUES (431022, 431000, 3, '宜章县', '0', 100);
INSERT INTO `area` VALUES (431023, 431000, 3, '永兴县', '0', 100);
INSERT INTO `area` VALUES (431024, 431000, 3, '嘉禾县', '0', 100);
INSERT INTO `area` VALUES (431025, 431000, 3, '临武县', '0', 100);
INSERT INTO `area` VALUES (431026, 431000, 3, '汝城县', '0', 100);
INSERT INTO `area` VALUES (431027, 431000, 3, '桂东县', '0', 100);
INSERT INTO `area` VALUES (431028, 431000, 3, '安仁县', '0', 100);
INSERT INTO `area` VALUES (431081, 431000, 3, '资兴市', '0', 100);
INSERT INTO `area` VALUES (431100, 430000, 2, '永州市', '0', 100);
INSERT INTO `area` VALUES (431101, 431100, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (431102, 431100, 3, '零陵区', '0', 100);
INSERT INTO `area` VALUES (431103, 431100, 3, '冷水滩区', '0', 100);
INSERT INTO `area` VALUES (431121, 431100, 3, '祁阳县', '0', 100);
INSERT INTO `area` VALUES (431122, 431100, 3, '东安县', '0', 100);
INSERT INTO `area` VALUES (431123, 431100, 3, '双牌县', '0', 100);
INSERT INTO `area` VALUES (431124, 431100, 3, '道县', '0', 100);
INSERT INTO `area` VALUES (431125, 431100, 3, '江永县', '0', 100);
INSERT INTO `area` VALUES (431126, 431100, 3, '宁远县', '0', 100);
INSERT INTO `area` VALUES (431127, 431100, 3, '蓝山县', '0', 100);
INSERT INTO `area` VALUES (431128, 431100, 3, '新田县', '0', 100);
INSERT INTO `area` VALUES (431129, 431100, 3, '江华瑶族自治县', '0', 100);
INSERT INTO `area` VALUES (431200, 430000, 2, '怀化市', '0', 100);
INSERT INTO `area` VALUES (431201, 431200, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (431202, 431200, 3, '鹤城区', '0', 100);
INSERT INTO `area` VALUES (431221, 431200, 3, '中方县', '0', 100);
INSERT INTO `area` VALUES (431222, 431200, 3, '沅陵县', '0', 100);
INSERT INTO `area` VALUES (431223, 431200, 3, '辰溪县', '0', 100);
INSERT INTO `area` VALUES (431224, 431200, 3, '溆浦县', '0', 100);
INSERT INTO `area` VALUES (431225, 431200, 3, '会同县', '0', 100);
INSERT INTO `area` VALUES (431226, 431200, 3, '麻阳苗族自治县', '0', 100);
INSERT INTO `area` VALUES (431227, 431200, 3, '新晃侗族自治县', '0', 100);
INSERT INTO `area` VALUES (431228, 431200, 3, '芷江侗族自治县', '0', 100);
INSERT INTO `area` VALUES (431229, 431200, 3, '靖州苗族侗族自治县', '0', 100);
INSERT INTO `area` VALUES (431230, 431200, 3, '通道侗族自治县', '0', 100);
INSERT INTO `area` VALUES (431281, 431200, 3, '洪江市', '0', 100);
INSERT INTO `area` VALUES (431300, 430000, 2, '娄底市', '0', 100);
INSERT INTO `area` VALUES (431301, 431300, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (431302, 431300, 3, '娄星区', '0', 100);
INSERT INTO `area` VALUES (431321, 431300, 3, '双峰县', '0', 100);
INSERT INTO `area` VALUES (431322, 431300, 3, '新化县', '0', 100);
INSERT INTO `area` VALUES (431381, 431300, 3, '冷水江市', '0', 100);
INSERT INTO `area` VALUES (431382, 431300, 3, '涟源市', '0', 100);
INSERT INTO `area` VALUES (433100, 430000, 2, '湘西土家族苗族自治州', '0', 100);
INSERT INTO `area` VALUES (433101, 433100, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (433122, 433100, 3, '泸溪县', '0', 100);
INSERT INTO `area` VALUES (433123, 433100, 3, '凤凰县', '0', 100);
INSERT INTO `area` VALUES (433124, 433100, 3, '花垣县', '0', 100);
INSERT INTO `area` VALUES (433125, 433100, 3, '保靖县', '0', 100);
INSERT INTO `area` VALUES (433126, 433100, 3, '古丈县', '0', 100);
INSERT INTO `area` VALUES (433127, 433100, 3, '永顺县', '0', 100);
INSERT INTO `area` VALUES (433130, 433100, 3, '龙山县', '0', 100);
INSERT INTO `area` VALUES (440000, 0, 1, '广东省', '0', 100);
INSERT INTO `area` VALUES (440100, 440000, 2, '广州市', '0', 100);
INSERT INTO `area` VALUES (440101, 440100, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (440103, 440100, 3, '荔湾区', '0', 100);
INSERT INTO `area` VALUES (440104, 440100, 3, '越秀区', '0', 100);
INSERT INTO `area` VALUES (440105, 440100, 3, '海珠区', '0', 100);
INSERT INTO `area` VALUES (440106, 440100, 3, '天河区', '0', 100);
INSERT INTO `area` VALUES (440111, 440100, 3, '白云区', '0', 100);
INSERT INTO `area` VALUES (440112, 440100, 3, '黄埔区', '0', 100);
INSERT INTO `area` VALUES (440113, 440100, 3, '番禺区', '0', 100);
INSERT INTO `area` VALUES (440114, 440100, 3, '花都区', '0', 100);
INSERT INTO `area` VALUES (440115, 440100, 3, '南沙区', '0', 100);
INSERT INTO `area` VALUES (440117, 440100, 3, '从化区', '0', 100);
INSERT INTO `area` VALUES (440118, 440100, 3, '增城区', '0', 100);
INSERT INTO `area` VALUES (440200, 440000, 2, '韶关市', '0', 100);
INSERT INTO `area` VALUES (440201, 440200, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (440203, 440200, 3, '武江区', '0', 100);
INSERT INTO `area` VALUES (440204, 440200, 3, '浈江区', '0', 100);
INSERT INTO `area` VALUES (440205, 440200, 3, '曲江区', '0', 100);
INSERT INTO `area` VALUES (440222, 440200, 3, '始兴县', '0', 100);
INSERT INTO `area` VALUES (440224, 440200, 3, '仁化县', '0', 100);
INSERT INTO `area` VALUES (440229, 440200, 3, '翁源县', '0', 100);
INSERT INTO `area` VALUES (440232, 440200, 3, '乳源瑶族自治县', '0', 100);
INSERT INTO `area` VALUES (440233, 440200, 3, '新丰县', '0', 100);
INSERT INTO `area` VALUES (440281, 440200, 3, '乐昌市', '0', 100);
INSERT INTO `area` VALUES (440282, 440200, 3, '南雄市', '0', 100);
INSERT INTO `area` VALUES (440300, 440000, 2, '深圳市', '0', 100);
INSERT INTO `area` VALUES (440301, 440300, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (440303, 440300, 3, '罗湖区', '0', 100);
INSERT INTO `area` VALUES (440304, 440300, 3, '福田区', '0', 100);
INSERT INTO `area` VALUES (440305, 440300, 3, '南山区', '0', 100);
INSERT INTO `area` VALUES (440306, 440300, 3, '宝安区', '0', 100);
INSERT INTO `area` VALUES (440307, 440300, 3, '龙岗区', '0', 100);
INSERT INTO `area` VALUES (440308, 440300, 3, '盐田区', '0', 100);
INSERT INTO `area` VALUES (440400, 440000, 2, '珠海市', '0', 100);
INSERT INTO `area` VALUES (440401, 440400, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (440402, 440400, 3, '香洲区', '0', 100);
INSERT INTO `area` VALUES (440403, 440400, 3, '斗门区', '0', 100);
INSERT INTO `area` VALUES (440404, 440400, 3, '金湾区', '0', 100);
INSERT INTO `area` VALUES (440500, 440000, 2, '汕头市', '0', 100);
INSERT INTO `area` VALUES (440501, 440500, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (440507, 440500, 3, '龙湖区', '0', 100);
INSERT INTO `area` VALUES (440511, 440500, 3, '金平区', '0', 100);
INSERT INTO `area` VALUES (440512, 440500, 3, '濠江区', '0', 100);
INSERT INTO `area` VALUES (440513, 440500, 3, '潮阳区', '0', 100);
INSERT INTO `area` VALUES (440514, 440500, 3, '潮南区', '0', 100);
INSERT INTO `area` VALUES (440515, 440500, 3, '澄海区', '0', 100);
INSERT INTO `area` VALUES (440523, 440500, 3, '南澳县', '0', 100);
INSERT INTO `area` VALUES (440600, 440000, 2, '佛山市', '0', 100);
INSERT INTO `area` VALUES (440601, 440600, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (440604, 440600, 3, '禅城区', '0', 100);
INSERT INTO `area` VALUES (440605, 440600, 3, '南海区', '0', 100);
INSERT INTO `area` VALUES (440606, 440600, 3, '顺德区', '0', 100);
INSERT INTO `area` VALUES (440607, 440600, 3, '三水区', '0', 100);
INSERT INTO `area` VALUES (440608, 440600, 3, '高明区', '0', 100);
INSERT INTO `area` VALUES (440700, 440000, 2, '江门市', '0', 100);
INSERT INTO `area` VALUES (440701, 440700, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (440703, 440700, 3, '蓬江区', '0', 100);
INSERT INTO `area` VALUES (440704, 440700, 3, '江海区', '0', 100);
INSERT INTO `area` VALUES (440705, 440700, 3, '新会区', '0', 100);
INSERT INTO `area` VALUES (440781, 440700, 3, '台山市', '0', 100);
INSERT INTO `area` VALUES (440783, 440700, 3, '开平市', '0', 100);
INSERT INTO `area` VALUES (440784, 440700, 3, '鹤山市', '0', 100);
INSERT INTO `area` VALUES (440785, 440700, 3, '恩平市', '0', 100);
INSERT INTO `area` VALUES (440800, 440000, 2, '湛江市', '0', 100);
INSERT INTO `area` VALUES (440801, 440800, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (440802, 440800, 3, '赤坎区', '0', 100);
INSERT INTO `area` VALUES (440803, 440800, 3, '霞山区', '0', 100);
INSERT INTO `area` VALUES (440804, 440800, 3, '坡头区', '0', 100);
INSERT INTO `area` VALUES (440811, 440800, 3, '麻章区', '0', 100);
INSERT INTO `area` VALUES (440823, 440800, 3, '遂溪县', '0', 100);
INSERT INTO `area` VALUES (440825, 440800, 3, '徐闻县', '0', 100);
INSERT INTO `area` VALUES (440881, 440800, 3, '廉江市', '0', 100);
INSERT INTO `area` VALUES (440882, 440800, 3, '雷州市', '0', 100);
INSERT INTO `area` VALUES (440883, 440800, 3, '吴川市', '0', 100);
INSERT INTO `area` VALUES (440900, 440000, 2, '茂名市', '0', 100);
INSERT INTO `area` VALUES (440901, 440900, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (440902, 440900, 3, '茂南区', '0', 100);
INSERT INTO `area` VALUES (440904, 440900, 3, '电白区', '0', 100);
INSERT INTO `area` VALUES (440981, 440900, 3, '高州市', '0', 100);
INSERT INTO `area` VALUES (440982, 440900, 3, '化州市', '0', 100);
INSERT INTO `area` VALUES (440983, 440900, 3, '信宜市', '0', 100);
INSERT INTO `area` VALUES (441200, 440000, 2, '肇庆市', '0', 100);
INSERT INTO `area` VALUES (441201, 441200, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (441202, 441200, 3, '端州区', '0', 100);
INSERT INTO `area` VALUES (441203, 441200, 3, '鼎湖区', '0', 100);
INSERT INTO `area` VALUES (441204, 441200, 3, '高要区', '0', 100);
INSERT INTO `area` VALUES (441223, 441200, 3, '广宁县', '0', 100);
INSERT INTO `area` VALUES (441224, 441200, 3, '怀集县', '0', 100);
INSERT INTO `area` VALUES (441225, 441200, 3, '封开县', '0', 100);
INSERT INTO `area` VALUES (441226, 441200, 3, '德庆县', '0', 100);
INSERT INTO `area` VALUES (441284, 441200, 3, '四会市', '0', 100);
INSERT INTO `area` VALUES (441300, 440000, 2, '惠州市', '0', 100);
INSERT INTO `area` VALUES (441301, 441300, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (441302, 441300, 3, '惠城区', '0', 100);
INSERT INTO `area` VALUES (441303, 441300, 3, '惠阳区', '0', 100);
INSERT INTO `area` VALUES (441322, 441300, 3, '博罗县', '0', 100);
INSERT INTO `area` VALUES (441323, 441300, 3, '惠东县', '0', 100);
INSERT INTO `area` VALUES (441324, 441300, 3, '龙门县', '0', 100);
INSERT INTO `area` VALUES (441400, 440000, 2, '梅州市', '0', 100);
INSERT INTO `area` VALUES (441401, 441400, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (441402, 441400, 3, '梅江区', '0', 100);
INSERT INTO `area` VALUES (441403, 441400, 3, '梅县区', '0', 100);
INSERT INTO `area` VALUES (441422, 441400, 3, '大埔县', '0', 100);
INSERT INTO `area` VALUES (441423, 441400, 3, '丰顺县', '0', 100);
INSERT INTO `area` VALUES (441424, 441400, 3, '五华县', '0', 100);
INSERT INTO `area` VALUES (441426, 441400, 3, '平远县', '0', 100);
INSERT INTO `area` VALUES (441427, 441400, 3, '蕉岭县', '0', 100);
INSERT INTO `area` VALUES (441481, 441400, 3, '兴宁市', '0', 100);
INSERT INTO `area` VALUES (441500, 440000, 2, '汕尾市', '0', 100);
INSERT INTO `area` VALUES (441501, 441500, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (441502, 441500, 3, '城区', '0', 100);
INSERT INTO `area` VALUES (441521, 441500, 3, '海丰县', '0', 100);
INSERT INTO `area` VALUES (441523, 441500, 3, '陆河县', '0', 100);
INSERT INTO `area` VALUES (441581, 441500, 3, '陆丰市', '0', 100);
INSERT INTO `area` VALUES (441600, 440000, 2, '河源市', '0', 100);
INSERT INTO `area` VALUES (441601, 441600, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (441602, 441600, 3, '源城区', '0', 100);
INSERT INTO `area` VALUES (441621, 441600, 3, '紫金县', '0', 100);
INSERT INTO `area` VALUES (441622, 441600, 3, '龙川县', '0', 100);
INSERT INTO `area` VALUES (441623, 441600, 3, '连平县', '0', 100);
INSERT INTO `area` VALUES (441624, 441600, 3, '和平县', '0', 100);
INSERT INTO `area` VALUES (441625, 441600, 3, '东源县', '0', 100);
INSERT INTO `area` VALUES (441700, 440000, 2, '阳江市', '0', 100);
INSERT INTO `area` VALUES (441701, 441700, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (441702, 441700, 3, '江城区', '0', 100);
INSERT INTO `area` VALUES (441704, 441700, 3, '阳东区', '0', 100);
INSERT INTO `area` VALUES (441721, 441700, 3, '阳西县', '0', 100);
INSERT INTO `area` VALUES (441781, 441700, 3, '阳春市', '0', 100);
INSERT INTO `area` VALUES (441800, 440000, 2, '清远市', '0', 100);
INSERT INTO `area` VALUES (441801, 441800, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (441802, 441800, 3, '清城区', '0', 100);
INSERT INTO `area` VALUES (441803, 441800, 3, '清新区', '0', 100);
INSERT INTO `area` VALUES (441821, 441800, 3, '佛冈县', '0', 100);
INSERT INTO `area` VALUES (441823, 441800, 3, '阳山县', '0', 100);
INSERT INTO `area` VALUES (441825, 441800, 3, '连山壮族瑶族自治县', '0', 100);
INSERT INTO `area` VALUES (441826, 441800, 3, '连南瑶族自治县', '0', 100);
INSERT INTO `area` VALUES (441881, 441800, 3, '英德市', '0', 100);
INSERT INTO `area` VALUES (441882, 441800, 3, '连州市', '0', 100);
INSERT INTO `area` VALUES (441900, 440000, 2, '东莞市', '0', 100);
INSERT INTO `area` VALUES (442000, 440000, 2, '中山市', '0', 100);
INSERT INTO `area` VALUES (445100, 440000, 2, '潮州市', '0', 100);
INSERT INTO `area` VALUES (445101, 445100, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (445102, 445100, 3, '湘桥区', '0', 100);
INSERT INTO `area` VALUES (445103, 445100, 3, '潮安区', '0', 100);
INSERT INTO `area` VALUES (445122, 445100, 3, '饶平县', '0', 100);
INSERT INTO `area` VALUES (445200, 440000, 2, '揭阳市', '0', 100);
INSERT INTO `area` VALUES (445201, 445200, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (445202, 445200, 3, '榕城区', '0', 100);
INSERT INTO `area` VALUES (445203, 445200, 3, '揭东区', '0', 100);
INSERT INTO `area` VALUES (445222, 445200, 3, '揭西县', '0', 100);
INSERT INTO `area` VALUES (445224, 445200, 3, '惠来县', '0', 100);
INSERT INTO `area` VALUES (445281, 445200, 3, '普宁市', '0', 100);
INSERT INTO `area` VALUES (445300, 440000, 2, '云浮市', '0', 100);
INSERT INTO `area` VALUES (445301, 445300, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (445302, 445300, 3, '云城区', '0', 100);
INSERT INTO `area` VALUES (445303, 445300, 3, '云安区', '0', 100);
INSERT INTO `area` VALUES (445321, 445300, 3, '新兴县', '0', 100);
INSERT INTO `area` VALUES (445322, 445300, 3, '郁南县', '0', 100);
INSERT INTO `area` VALUES (445381, 445300, 3, '罗定市', '0', 100);
INSERT INTO `area` VALUES (450000, 0, 1, '广西壮族自治区', '0', 100);
INSERT INTO `area` VALUES (450100, 450000, 2, '南宁市', '0', 100);
INSERT INTO `area` VALUES (450101, 450100, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (450102, 450100, 3, '兴宁区', '0', 100);
INSERT INTO `area` VALUES (450103, 450100, 3, '青秀区', '0', 100);
INSERT INTO `area` VALUES (450105, 450100, 3, '江南区', '0', 100);
INSERT INTO `area` VALUES (450107, 450100, 3, '西乡塘区', '0', 100);
INSERT INTO `area` VALUES (450108, 450100, 3, '良庆区', '0', 100);
INSERT INTO `area` VALUES (450109, 450100, 3, '邕宁区', '0', 100);
INSERT INTO `area` VALUES (450110, 450100, 3, '武鸣区', '0', 100);
INSERT INTO `area` VALUES (450123, 450100, 3, '隆安县', '0', 100);
INSERT INTO `area` VALUES (450124, 450100, 3, '马山县', '0', 100);
INSERT INTO `area` VALUES (450125, 450100, 3, '上林县', '0', 100);
INSERT INTO `area` VALUES (450126, 450100, 3, '宾阳县', '0', 100);
INSERT INTO `area` VALUES (450127, 450100, 3, '横县', '0', 100);
INSERT INTO `area` VALUES (450200, 450000, 2, '柳州市', '0', 100);
INSERT INTO `area` VALUES (450201, 450200, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (450202, 450200, 3, '城中区', '0', 100);
INSERT INTO `area` VALUES (450203, 450200, 3, '鱼峰区', '0', 100);
INSERT INTO `area` VALUES (450204, 450200, 3, '柳南区', '0', 100);
INSERT INTO `area` VALUES (450205, 450200, 3, '柳北区', '0', 100);
INSERT INTO `area` VALUES (450206, 450200, 3, '柳江区', '0', 100);
INSERT INTO `area` VALUES (450222, 450200, 3, '柳城县', '0', 100);
INSERT INTO `area` VALUES (450223, 450200, 3, '鹿寨县', '0', 100);
INSERT INTO `area` VALUES (450224, 450200, 3, '融安县', '0', 100);
INSERT INTO `area` VALUES (450225, 450200, 3, '融水苗族自治县', '0', 100);
INSERT INTO `area` VALUES (450226, 450200, 3, '三江侗族自治县', '0', 100);
INSERT INTO `area` VALUES (450300, 450000, 2, '桂林市', '0', 100);
INSERT INTO `area` VALUES (450301, 450300, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (450302, 450300, 3, '秀峰区', '0', 100);
INSERT INTO `area` VALUES (450303, 450300, 3, '叠彩区', '0', 100);
INSERT INTO `area` VALUES (450304, 450300, 3, '象山区', '0', 100);
INSERT INTO `area` VALUES (450305, 450300, 3, '七星区', '0', 100);
INSERT INTO `area` VALUES (450311, 450300, 3, '雁山区', '0', 100);
INSERT INTO `area` VALUES (450312, 450300, 3, '临桂区', '0', 100);
INSERT INTO `area` VALUES (450321, 450300, 3, '阳朔县', '0', 100);
INSERT INTO `area` VALUES (450323, 450300, 3, '灵川县', '0', 100);
INSERT INTO `area` VALUES (450324, 450300, 3, '全州县', '0', 100);
INSERT INTO `area` VALUES (450325, 450300, 3, '兴安县', '0', 100);
INSERT INTO `area` VALUES (450326, 450300, 3, '永福县', '0', 100);
INSERT INTO `area` VALUES (450327, 450300, 3, '灌阳县', '0', 100);
INSERT INTO `area` VALUES (450328, 450300, 3, '龙胜各族自治县', '0', 100);
INSERT INTO `area` VALUES (450329, 450300, 3, '资源县', '0', 100);
INSERT INTO `area` VALUES (450330, 450300, 3, '平乐县', '0', 100);
INSERT INTO `area` VALUES (450331, 450300, 3, '荔浦县', '0', 100);
INSERT INTO `area` VALUES (450332, 450300, 3, '恭城瑶族自治县', '0', 100);
INSERT INTO `area` VALUES (450400, 450000, 2, '梧州市', '0', 100);
INSERT INTO `area` VALUES (450401, 450400, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (450403, 450400, 3, '万秀区', '0', 100);
INSERT INTO `area` VALUES (450405, 450400, 3, '长洲区', '0', 100);
INSERT INTO `area` VALUES (450406, 450400, 3, '龙圩区', '0', 100);
INSERT INTO `area` VALUES (450421, 450400, 3, '苍梧县', '0', 100);
INSERT INTO `area` VALUES (450422, 450400, 3, '藤县', '0', 100);
INSERT INTO `area` VALUES (450423, 450400, 3, '蒙山县', '0', 100);
INSERT INTO `area` VALUES (450481, 450400, 3, '岑溪市', '0', 100);
INSERT INTO `area` VALUES (450500, 450000, 2, '北海市', '0', 100);
INSERT INTO `area` VALUES (450501, 450500, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (450502, 450500, 3, '海城区', '0', 100);
INSERT INTO `area` VALUES (450503, 450500, 3, '银海区', '0', 100);
INSERT INTO `area` VALUES (450512, 450500, 3, '铁山港区', '0', 100);
INSERT INTO `area` VALUES (450521, 450500, 3, '合浦县', '0', 100);
INSERT INTO `area` VALUES (450600, 450000, 2, '防城港市', '0', 100);
INSERT INTO `area` VALUES (450601, 450600, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (450602, 450600, 3, '港口区', '0', 100);
INSERT INTO `area` VALUES (450603, 450600, 3, '防城区', '0', 100);
INSERT INTO `area` VALUES (450621, 450600, 3, '上思县', '0', 100);
INSERT INTO `area` VALUES (450681, 450600, 3, '东兴市', '0', 100);
INSERT INTO `area` VALUES (450700, 450000, 2, '钦州市', '0', 100);
INSERT INTO `area` VALUES (450701, 450700, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (450702, 450700, 3, '钦南区', '0', 100);
INSERT INTO `area` VALUES (450703, 450700, 3, '钦北区', '0', 100);
INSERT INTO `area` VALUES (450721, 450700, 3, '灵山县', '0', 100);
INSERT INTO `area` VALUES (450722, 450700, 3, '浦北县', '0', 100);
INSERT INTO `area` VALUES (450800, 450000, 2, '贵港市', '0', 100);
INSERT INTO `area` VALUES (450801, 450800, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (450802, 450800, 3, '港北区', '0', 100);
INSERT INTO `area` VALUES (450803, 450800, 3, '港南区', '0', 100);
INSERT INTO `area` VALUES (450804, 450800, 3, '覃塘区', '0', 100);
INSERT INTO `area` VALUES (450821, 450800, 3, '平南县', '0', 100);
INSERT INTO `area` VALUES (450881, 450800, 3, '桂平市', '0', 100);
INSERT INTO `area` VALUES (450900, 450000, 2, '玉林市', '0', 100);
INSERT INTO `area` VALUES (450901, 450900, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (450902, 450900, 3, '玉州区', '0', 100);
INSERT INTO `area` VALUES (450903, 450900, 3, '福绵区', '0', 100);
INSERT INTO `area` VALUES (450921, 450900, 3, '容县', '0', 100);
INSERT INTO `area` VALUES (450922, 450900, 3, '陆川县', '0', 100);
INSERT INTO `area` VALUES (450923, 450900, 3, '博白县', '0', 100);
INSERT INTO `area` VALUES (450924, 450900, 3, '兴业县', '0', 100);
INSERT INTO `area` VALUES (450981, 450900, 3, '北流市', '0', 100);
INSERT INTO `area` VALUES (451000, 450000, 2, '百色市', '0', 100);
INSERT INTO `area` VALUES (451001, 451000, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (451002, 451000, 3, '右江区', '0', 100);
INSERT INTO `area` VALUES (451021, 451000, 3, '田阳县', '0', 100);
INSERT INTO `area` VALUES (451022, 451000, 3, '田东县', '0', 100);
INSERT INTO `area` VALUES (451023, 451000, 3, '平果县', '0', 100);
INSERT INTO `area` VALUES (451024, 451000, 3, '德保县', '0', 100);
INSERT INTO `area` VALUES (451026, 451000, 3, '那坡县', '0', 100);
INSERT INTO `area` VALUES (451027, 451000, 3, '凌云县', '0', 100);
INSERT INTO `area` VALUES (451028, 451000, 3, '乐业县', '0', 100);
INSERT INTO `area` VALUES (451029, 451000, 3, '田林县', '0', 100);
INSERT INTO `area` VALUES (451030, 451000, 3, '西林县', '0', 100);
INSERT INTO `area` VALUES (451031, 451000, 3, '隆林各族自治县', '0', 100);
INSERT INTO `area` VALUES (451081, 451000, 3, '靖西市', '0', 100);
INSERT INTO `area` VALUES (451100, 450000, 2, '贺州市', '0', 100);
INSERT INTO `area` VALUES (451101, 451100, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (451102, 451100, 3, '八步区', '0', 100);
INSERT INTO `area` VALUES (451103, 451100, 3, '平桂区', '0', 100);
INSERT INTO `area` VALUES (451121, 451100, 3, '昭平县', '0', 100);
INSERT INTO `area` VALUES (451122, 451100, 3, '钟山县', '0', 100);
INSERT INTO `area` VALUES (451123, 451100, 3, '富川瑶族自治县', '0', 100);
INSERT INTO `area` VALUES (451200, 450000, 2, '河池市', '0', 100);
INSERT INTO `area` VALUES (451201, 451200, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (451202, 451200, 3, '金城江区', '0', 100);
INSERT INTO `area` VALUES (451221, 451200, 3, '南丹县', '0', 100);
INSERT INTO `area` VALUES (451222, 451200, 3, '天峨县', '0', 100);
INSERT INTO `area` VALUES (451223, 451200, 3, '凤山县', '0', 100);
INSERT INTO `area` VALUES (451224, 451200, 3, '东兰县', '0', 100);
INSERT INTO `area` VALUES (451225, 451200, 3, '罗城仫佬族自治县', '0', 100);
INSERT INTO `area` VALUES (451226, 451200, 3, '环江毛南族自治县', '0', 100);
INSERT INTO `area` VALUES (451227, 451200, 3, '巴马瑶族自治县', '0', 100);
INSERT INTO `area` VALUES (451228, 451200, 3, '都安瑶族自治县', '0', 100);
INSERT INTO `area` VALUES (451229, 451200, 3, '大化瑶族自治县', '0', 100);
INSERT INTO `area` VALUES (451281, 451200, 3, '宜州市', '0', 100);
INSERT INTO `area` VALUES (451300, 450000, 2, '来宾市', '0', 100);
INSERT INTO `area` VALUES (451301, 451300, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (451302, 451300, 3, '兴宾区', '0', 100);
INSERT INTO `area` VALUES (451321, 451300, 3, '忻城县', '0', 100);
INSERT INTO `area` VALUES (451322, 451300, 3, '象州县', '0', 100);
INSERT INTO `area` VALUES (451323, 451300, 3, '武宣县', '0', 100);
INSERT INTO `area` VALUES (451324, 451300, 3, '金秀瑶族自治县', '0', 100);
INSERT INTO `area` VALUES (451381, 451300, 3, '合山市', '0', 100);
INSERT INTO `area` VALUES (451400, 450000, 2, '崇左市', '0', 100);
INSERT INTO `area` VALUES (451401, 451400, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (451402, 451400, 3, '江州区', '0', 100);
INSERT INTO `area` VALUES (451421, 451400, 3, '扶绥县', '0', 100);
INSERT INTO `area` VALUES (451422, 451400, 3, '宁明县', '0', 100);
INSERT INTO `area` VALUES (451423, 451400, 3, '龙州县', '0', 100);
INSERT INTO `area` VALUES (451424, 451400, 3, '大新县', '0', 100);
INSERT INTO `area` VALUES (451425, 451400, 3, '天等县', '0', 100);
INSERT INTO `area` VALUES (451481, 451400, 3, '凭祥市', '0', 100);
INSERT INTO `area` VALUES (460000, 0, 1, '海南省', '0', 100);
INSERT INTO `area` VALUES (460100, 460000, 2, '海口市', '0', 100);
INSERT INTO `area` VALUES (460101, 460100, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (460105, 460100, 3, '秀英区', '0', 100);
INSERT INTO `area` VALUES (460106, 460100, 3, '龙华区', '0', 100);
INSERT INTO `area` VALUES (460107, 460100, 3, '琼山区', '0', 100);
INSERT INTO `area` VALUES (460108, 460100, 3, '美兰区', '0', 100);
INSERT INTO `area` VALUES (460200, 460000, 2, '三亚市', '0', 100);
INSERT INTO `area` VALUES (460201, 460200, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (460202, 460200, 3, '海棠区', '0', 100);
INSERT INTO `area` VALUES (460203, 460200, 3, '吉阳区', '0', 100);
INSERT INTO `area` VALUES (460204, 460200, 3, '天涯区', '0', 100);
INSERT INTO `area` VALUES (460205, 460200, 3, '崖州区', '0', 100);
INSERT INTO `area` VALUES (460300, 460000, 2, '三沙市', '0', 100);
INSERT INTO `area` VALUES (460400, 460000, 2, '儋州市', '0', 100);
INSERT INTO `area` VALUES (469000, 460000, 2, '省直辖县级行政区划', '0', 100);
INSERT INTO `area` VALUES (469001, 469000, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (469002, 469000, 3, '琼海市', '0', 100);
INSERT INTO `area` VALUES (469005, 469000, 3, '文昌市', '0', 100);
INSERT INTO `area` VALUES (469006, 469000, 3, '万宁市', '0', 100);
INSERT INTO `area` VALUES (469007, 469000, 3, '东方市', '0', 100);
INSERT INTO `area` VALUES (469021, 469000, 3, '定安县', '0', 100);
INSERT INTO `area` VALUES (469022, 469000, 3, '屯昌县', '0', 100);
INSERT INTO `area` VALUES (469023, 469000, 3, '澄迈县', '0', 100);
INSERT INTO `area` VALUES (469024, 469000, 3, '临高县', '0', 100);
INSERT INTO `area` VALUES (469025, 469000, 3, '白沙黎族自治县', '0', 100);
INSERT INTO `area` VALUES (469026, 469000, 3, '昌江黎族自治县', '0', 100);
INSERT INTO `area` VALUES (469027, 469000, 3, '乐东黎族自治县', '0', 100);
INSERT INTO `area` VALUES (469028, 469000, 3, '陵水黎族自治县', '0', 100);
INSERT INTO `area` VALUES (469029, 469000, 3, '保亭黎族苗族自治县', '0', 100);
INSERT INTO `area` VALUES (469030, 469000, 3, '琼中黎族苗族自治县', '0', 100);
INSERT INTO `area` VALUES (500000, 0, 1, '重庆市', '0', 100);
INSERT INTO `area` VALUES (500100, 500000, 2, '重庆市', '0', 100);
INSERT INTO `area` VALUES (500101, 500100, 3, '万州区', '0', 100);
INSERT INTO `area` VALUES (500102, 500100, 3, '涪陵区', '0', 100);
INSERT INTO `area` VALUES (500103, 500100, 3, '渝中区', '0', 100);
INSERT INTO `area` VALUES (500104, 500100, 3, '大渡口区', '0', 100);
INSERT INTO `area` VALUES (500105, 500100, 3, '江北区', '0', 100);
INSERT INTO `area` VALUES (500106, 500100, 3, '沙坪坝区', '0', 100);
INSERT INTO `area` VALUES (500107, 500100, 3, '九龙坡区', '0', 100);
INSERT INTO `area` VALUES (500108, 500100, 3, '南岸区', '0', 100);
INSERT INTO `area` VALUES (500109, 500100, 3, '北碚区', '0', 100);
INSERT INTO `area` VALUES (500110, 500100, 3, '綦江区', '0', 100);
INSERT INTO `area` VALUES (500111, 500100, 3, '大足区', '0', 100);
INSERT INTO `area` VALUES (500112, 500100, 3, '渝北区', '0', 100);
INSERT INTO `area` VALUES (500113, 500100, 3, '巴南区', '0', 100);
INSERT INTO `area` VALUES (500114, 500100, 3, '黔江区', '0', 100);
INSERT INTO `area` VALUES (500115, 500100, 3, '长寿区', '0', 100);
INSERT INTO `area` VALUES (500116, 500100, 3, '江津区', '0', 100);
INSERT INTO `area` VALUES (500117, 500100, 3, '合川区', '0', 100);
INSERT INTO `area` VALUES (500118, 500100, 3, '永川区', '0', 100);
INSERT INTO `area` VALUES (500119, 500100, 3, '南川区', '0', 100);
INSERT INTO `area` VALUES (500120, 500100, 3, '璧山区', '0', 100);
INSERT INTO `area` VALUES (500151, 500100, 3, '铜梁区', '0', 100);
INSERT INTO `area` VALUES (500152, 500100, 3, '潼南区', '0', 100);
INSERT INTO `area` VALUES (500153, 500100, 3, '荣昌区', '0', 100);
INSERT INTO `area` VALUES (500154, 500100, 3, '开州区', '0', 100);
INSERT INTO `area` VALUES (500200, 500000, 2, '县', '0', 100);
INSERT INTO `area` VALUES (500228, 500200, 3, '梁平县', '0', 100);
INSERT INTO `area` VALUES (500229, 500200, 3, '城口县', '0', 100);
INSERT INTO `area` VALUES (500230, 500200, 3, '丰都县', '0', 100);
INSERT INTO `area` VALUES (500231, 500200, 3, '垫江县', '0', 100);
INSERT INTO `area` VALUES (500232, 500200, 3, '武隆县', '0', 100);
INSERT INTO `area` VALUES (500233, 500200, 3, '忠县', '0', 100);
INSERT INTO `area` VALUES (500235, 500200, 3, '云阳县', '0', 100);
INSERT INTO `area` VALUES (500236, 500200, 3, '奉节县', '0', 100);
INSERT INTO `area` VALUES (500237, 500200, 3, '巫山县', '0', 100);
INSERT INTO `area` VALUES (500238, 500200, 3, '巫溪县', '0', 100);
INSERT INTO `area` VALUES (500240, 500200, 3, '石柱土家族自治县', '0', 100);
INSERT INTO `area` VALUES (500241, 500200, 3, '秀山土家族苗族自治县', '0', 100);
INSERT INTO `area` VALUES (500242, 500200, 3, '酉阳土家族苗族自治县', '0', 100);
INSERT INTO `area` VALUES (500243, 500200, 3, '彭水苗族土家族自治县', '0', 100);
INSERT INTO `area` VALUES (510000, 0, 1, '四川省', '0', 100);
INSERT INTO `area` VALUES (510100, 510000, 2, '成都市', '0', 100);
INSERT INTO `area` VALUES (510101, 510100, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (510104, 510100, 3, '锦江区', '0', 100);
INSERT INTO `area` VALUES (510105, 510100, 3, '青羊区', '0', 100);
INSERT INTO `area` VALUES (510106, 510100, 3, '金牛区', '0', 100);
INSERT INTO `area` VALUES (510107, 510100, 3, '武侯区', '0', 100);
INSERT INTO `area` VALUES (510108, 510100, 3, '成华区', '0', 100);
INSERT INTO `area` VALUES (510112, 510100, 3, '龙泉驿区', '0', 100);
INSERT INTO `area` VALUES (510113, 510100, 3, '青白江区', '0', 100);
INSERT INTO `area` VALUES (510114, 510100, 3, '新都区', '0', 100);
INSERT INTO `area` VALUES (510115, 510100, 3, '温江区', '0', 100);
INSERT INTO `area` VALUES (510116, 510100, 3, '双流区', '0', 100);
INSERT INTO `area` VALUES (510121, 510100, 3, '金堂县', '0', 100);
INSERT INTO `area` VALUES (510124, 510100, 3, '郫县', '0', 100);
INSERT INTO `area` VALUES (510129, 510100, 3, '大邑县', '0', 100);
INSERT INTO `area` VALUES (510131, 510100, 3, '蒲江县', '0', 100);
INSERT INTO `area` VALUES (510132, 510100, 3, '新津县', '0', 100);
INSERT INTO `area` VALUES (510181, 510100, 3, '都江堰市', '0', 100);
INSERT INTO `area` VALUES (510182, 510100, 3, '彭州市', '0', 100);
INSERT INTO `area` VALUES (510183, 510100, 3, '邛崃市', '0', 100);
INSERT INTO `area` VALUES (510184, 510100, 3, '崇州市', '0', 100);
INSERT INTO `area` VALUES (510185, 510100, 3, '简阳市', '0', 100);
INSERT INTO `area` VALUES (510300, 510000, 2, '自贡市', '0', 100);
INSERT INTO `area` VALUES (510301, 510300, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (510302, 510300, 3, '自流井区', '0', 100);
INSERT INTO `area` VALUES (510303, 510300, 3, '贡井区', '0', 100);
INSERT INTO `area` VALUES (510304, 510300, 3, '大安区', '0', 100);
INSERT INTO `area` VALUES (510311, 510300, 3, '沿滩区', '0', 100);
INSERT INTO `area` VALUES (510321, 510300, 3, '荣县', '0', 100);
INSERT INTO `area` VALUES (510322, 510300, 3, '富顺县', '0', 100);
INSERT INTO `area` VALUES (510400, 510000, 2, '攀枝花市', '0', 100);
INSERT INTO `area` VALUES (510401, 510400, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (510402, 510400, 3, '东区', '0', 100);
INSERT INTO `area` VALUES (510403, 510400, 3, '西区', '0', 100);
INSERT INTO `area` VALUES (510411, 510400, 3, '仁和区', '0', 100);
INSERT INTO `area` VALUES (510421, 510400, 3, '米易县', '0', 100);
INSERT INTO `area` VALUES (510422, 510400, 3, '盐边县', '0', 100);
INSERT INTO `area` VALUES (510500, 510000, 2, '泸州市', '0', 100);
INSERT INTO `area` VALUES (510501, 510500, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (510502, 510500, 3, '江阳区', '0', 100);
INSERT INTO `area` VALUES (510503, 510500, 3, '纳溪区', '0', 100);
INSERT INTO `area` VALUES (510504, 510500, 3, '龙马潭区', '0', 100);
INSERT INTO `area` VALUES (510521, 510500, 3, '泸县', '0', 100);
INSERT INTO `area` VALUES (510522, 510500, 3, '合江县', '0', 100);
INSERT INTO `area` VALUES (510524, 510500, 3, '叙永县', '0', 100);
INSERT INTO `area` VALUES (510525, 510500, 3, '古蔺县', '0', 100);
INSERT INTO `area` VALUES (510600, 510000, 2, '德阳市', '0', 100);
INSERT INTO `area` VALUES (510601, 510600, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (510603, 510600, 3, '旌阳区', '0', 100);
INSERT INTO `area` VALUES (510623, 510600, 3, '中江县', '0', 100);
INSERT INTO `area` VALUES (510626, 510600, 3, '罗江县', '0', 100);
INSERT INTO `area` VALUES (510681, 510600, 3, '广汉市', '0', 100);
INSERT INTO `area` VALUES (510682, 510600, 3, '什邡市', '0', 100);
INSERT INTO `area` VALUES (510683, 510600, 3, '绵竹市', '0', 100);
INSERT INTO `area` VALUES (510700, 510000, 2, '绵阳市', '0', 100);
INSERT INTO `area` VALUES (510701, 510700, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (510703, 510700, 3, '涪城区', '0', 100);
INSERT INTO `area` VALUES (510704, 510700, 3, '游仙区', '0', 100);
INSERT INTO `area` VALUES (510705, 510700, 3, '安州区', '0', 100);
INSERT INTO `area` VALUES (510722, 510700, 3, '三台县', '0', 100);
INSERT INTO `area` VALUES (510723, 510700, 3, '盐亭县', '0', 100);
INSERT INTO `area` VALUES (510725, 510700, 3, '梓潼县', '0', 100);
INSERT INTO `area` VALUES (510726, 510700, 3, '北川羌族自治县', '0', 100);
INSERT INTO `area` VALUES (510727, 510700, 3, '平武县', '0', 100);
INSERT INTO `area` VALUES (510781, 510700, 3, '江油市', '0', 100);
INSERT INTO `area` VALUES (510800, 510000, 2, '广元市', '0', 100);
INSERT INTO `area` VALUES (510801, 510800, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (510802, 510800, 3, '利州区', '0', 100);
INSERT INTO `area` VALUES (510811, 510800, 3, '昭化区', '0', 100);
INSERT INTO `area` VALUES (510812, 510800, 3, '朝天区', '0', 100);
INSERT INTO `area` VALUES (510821, 510800, 3, '旺苍县', '0', 100);
INSERT INTO `area` VALUES (510822, 510800, 3, '青川县', '0', 100);
INSERT INTO `area` VALUES (510823, 510800, 3, '剑阁县', '0', 100);
INSERT INTO `area` VALUES (510824, 510800, 3, '苍溪县', '0', 100);
INSERT INTO `area` VALUES (510900, 510000, 2, '遂宁市', '0', 100);
INSERT INTO `area` VALUES (510901, 510900, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (510903, 510900, 3, '船山区', '0', 100);
INSERT INTO `area` VALUES (510904, 510900, 3, '安居区', '0', 100);
INSERT INTO `area` VALUES (510921, 510900, 3, '蓬溪县', '0', 100);
INSERT INTO `area` VALUES (510922, 510900, 3, '射洪县', '0', 100);
INSERT INTO `area` VALUES (510923, 510900, 3, '大英县', '0', 100);
INSERT INTO `area` VALUES (511000, 510000, 2, '内江市', '0', 100);
INSERT INTO `area` VALUES (511001, 511000, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (511002, 511000, 3, '市中区', '0', 100);
INSERT INTO `area` VALUES (511011, 511000, 3, '东兴区', '0', 100);
INSERT INTO `area` VALUES (511024, 511000, 3, '威远县', '0', 100);
INSERT INTO `area` VALUES (511025, 511000, 3, '资中县', '0', 100);
INSERT INTO `area` VALUES (511028, 511000, 3, '隆昌县', '0', 100);
INSERT INTO `area` VALUES (511100, 510000, 2, '乐山市', '0', 100);
INSERT INTO `area` VALUES (511101, 511100, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (511102, 511100, 3, '市中区', '0', 100);
INSERT INTO `area` VALUES (511111, 511100, 3, '沙湾区', '0', 100);
INSERT INTO `area` VALUES (511112, 511100, 3, '五通桥区', '0', 100);
INSERT INTO `area` VALUES (511113, 511100, 3, '金口河区', '0', 100);
INSERT INTO `area` VALUES (511123, 511100, 3, '犍为县', '0', 100);
INSERT INTO `area` VALUES (511124, 511100, 3, '井研县', '0', 100);
INSERT INTO `area` VALUES (511126, 511100, 3, '夹江县', '0', 100);
INSERT INTO `area` VALUES (511129, 511100, 3, '沐川县', '0', 100);
INSERT INTO `area` VALUES (511132, 511100, 3, '峨边彝族自治县', '0', 100);
INSERT INTO `area` VALUES (511133, 511100, 3, '马边彝族自治县', '0', 100);
INSERT INTO `area` VALUES (511181, 511100, 3, '峨眉山市', '0', 100);
INSERT INTO `area` VALUES (511300, 510000, 2, '南充市', '0', 100);
INSERT INTO `area` VALUES (511301, 511300, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (511302, 511300, 3, '顺庆区', '0', 100);
INSERT INTO `area` VALUES (511303, 511300, 3, '高坪区', '0', 100);
INSERT INTO `area` VALUES (511304, 511300, 3, '嘉陵区', '0', 100);
INSERT INTO `area` VALUES (511321, 511300, 3, '南部县', '0', 100);
INSERT INTO `area` VALUES (511322, 511300, 3, '营山县', '0', 100);
INSERT INTO `area` VALUES (511323, 511300, 3, '蓬安县', '0', 100);
INSERT INTO `area` VALUES (511324, 511300, 3, '仪陇县', '0', 100);
INSERT INTO `area` VALUES (511325, 511300, 3, '西充县', '0', 100);
INSERT INTO `area` VALUES (511381, 511300, 3, '阆中市', '0', 100);
INSERT INTO `area` VALUES (511400, 510000, 2, '眉山市', '0', 100);
INSERT INTO `area` VALUES (511401, 511400, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (511402, 511400, 3, '东坡区', '0', 100);
INSERT INTO `area` VALUES (511403, 511400, 3, '彭山区', '0', 100);
INSERT INTO `area` VALUES (511421, 511400, 3, '仁寿县', '0', 100);
INSERT INTO `area` VALUES (511423, 511400, 3, '洪雅县', '0', 100);
INSERT INTO `area` VALUES (511424, 511400, 3, '丹棱县', '0', 100);
INSERT INTO `area` VALUES (511425, 511400, 3, '青神县', '0', 100);
INSERT INTO `area` VALUES (511500, 510000, 2, '宜宾市', '0', 100);
INSERT INTO `area` VALUES (511501, 511500, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (511502, 511500, 3, '翠屏区', '0', 100);
INSERT INTO `area` VALUES (511503, 511500, 3, '南溪区', '0', 100);
INSERT INTO `area` VALUES (511521, 511500, 3, '宜宾县', '0', 100);
INSERT INTO `area` VALUES (511523, 511500, 3, '江安县', '0', 100);
INSERT INTO `area` VALUES (511524, 511500, 3, '长宁县', '0', 100);
INSERT INTO `area` VALUES (511525, 511500, 3, '高县', '0', 100);
INSERT INTO `area` VALUES (511526, 511500, 3, '珙县', '0', 100);
INSERT INTO `area` VALUES (511527, 511500, 3, '筠连县', '0', 100);
INSERT INTO `area` VALUES (511528, 511500, 3, '兴文县', '0', 100);
INSERT INTO `area` VALUES (511529, 511500, 3, '屏山县', '0', 100);
INSERT INTO `area` VALUES (511600, 510000, 2, '广安市', '0', 100);
INSERT INTO `area` VALUES (511601, 511600, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (511602, 511600, 3, '广安区', '0', 100);
INSERT INTO `area` VALUES (511603, 511600, 3, '前锋区', '0', 100);
INSERT INTO `area` VALUES (511621, 511600, 3, '岳池县', '0', 100);
INSERT INTO `area` VALUES (511622, 511600, 3, '武胜县', '0', 100);
INSERT INTO `area` VALUES (511623, 511600, 3, '邻水县', '0', 100);
INSERT INTO `area` VALUES (511681, 511600, 3, '华蓥市', '0', 100);
INSERT INTO `area` VALUES (511700, 510000, 2, '达州市', '0', 100);
INSERT INTO `area` VALUES (511701, 511700, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (511702, 511700, 3, '通川区', '0', 100);
INSERT INTO `area` VALUES (511703, 511700, 3, '达川区', '0', 100);
INSERT INTO `area` VALUES (511722, 511700, 3, '宣汉县', '0', 100);
INSERT INTO `area` VALUES (511723, 511700, 3, '开江县', '0', 100);
INSERT INTO `area` VALUES (511724, 511700, 3, '大竹县', '0', 100);
INSERT INTO `area` VALUES (511725, 511700, 3, '渠县', '0', 100);
INSERT INTO `area` VALUES (511781, 511700, 3, '万源市', '0', 100);
INSERT INTO `area` VALUES (511800, 510000, 2, '雅安市', '0', 100);
INSERT INTO `area` VALUES (511801, 511800, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (511802, 511800, 3, '雨城区', '0', 100);
INSERT INTO `area` VALUES (511803, 511800, 3, '名山区', '0', 100);
INSERT INTO `area` VALUES (511822, 511800, 3, '荥经县', '0', 100);
INSERT INTO `area` VALUES (511823, 511800, 3, '汉源县', '0', 100);
INSERT INTO `area` VALUES (511824, 511800, 3, '石棉县', '0', 100);
INSERT INTO `area` VALUES (511825, 511800, 3, '天全县', '0', 100);
INSERT INTO `area` VALUES (511826, 511800, 3, '芦山县', '0', 100);
INSERT INTO `area` VALUES (511827, 511800, 3, '宝兴县', '0', 100);
INSERT INTO `area` VALUES (511900, 510000, 2, '巴中市', '0', 100);
INSERT INTO `area` VALUES (511901, 511900, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (511902, 511900, 3, '巴州区', '0', 100);
INSERT INTO `area` VALUES (511903, 511900, 3, '恩阳区', '0', 100);
INSERT INTO `area` VALUES (511921, 511900, 3, '通江县', '0', 100);
INSERT INTO `area` VALUES (511922, 511900, 3, '南江县', '0', 100);
INSERT INTO `area` VALUES (511923, 511900, 3, '平昌县', '0', 100);
INSERT INTO `area` VALUES (512000, 510000, 2, '资阳市', '0', 100);
INSERT INTO `area` VALUES (512001, 512000, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (512002, 512000, 3, '雁江区', '0', 100);
INSERT INTO `area` VALUES (512021, 512000, 3, '安岳县', '0', 100);
INSERT INTO `area` VALUES (512022, 512000, 3, '乐至县', '0', 100);
INSERT INTO `area` VALUES (513200, 510000, 2, '阿坝藏族羌族自治州', '0', 100);
INSERT INTO `area` VALUES (513201, 513200, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (513221, 513200, 3, '汶川县', '0', 100);
INSERT INTO `area` VALUES (513222, 513200, 3, '理县', '0', 100);
INSERT INTO `area` VALUES (513223, 513200, 3, '茂县', '0', 100);
INSERT INTO `area` VALUES (513224, 513200, 3, '松潘县', '0', 100);
INSERT INTO `area` VALUES (513225, 513200, 3, '九寨沟县', '0', 100);
INSERT INTO `area` VALUES (513226, 513200, 3, '金川县', '0', 100);
INSERT INTO `area` VALUES (513227, 513200, 3, '小金县', '0', 100);
INSERT INTO `area` VALUES (513228, 513200, 3, '黑水县', '0', 100);
INSERT INTO `area` VALUES (513230, 513200, 3, '壤塘县', '0', 100);
INSERT INTO `area` VALUES (513231, 513200, 3, '阿坝县', '0', 100);
INSERT INTO `area` VALUES (513232, 513200, 3, '若尔盖县', '0', 100);
INSERT INTO `area` VALUES (513233, 513200, 3, '红原县', '0', 100);
INSERT INTO `area` VALUES (513300, 510000, 2, '甘孜藏族自治州', '0', 100);
INSERT INTO `area` VALUES (513301, 513300, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (513322, 513300, 3, '泸定县', '0', 100);
INSERT INTO `area` VALUES (513323, 513300, 3, '丹巴县', '0', 100);
INSERT INTO `area` VALUES (513324, 513300, 3, '九龙县', '0', 100);
INSERT INTO `area` VALUES (513325, 513300, 3, '雅江县', '0', 100);
INSERT INTO `area` VALUES (513326, 513300, 3, '道孚县', '0', 100);
INSERT INTO `area` VALUES (513327, 513300, 3, '炉霍县', '0', 100);
INSERT INTO `area` VALUES (513328, 513300, 3, '甘孜县', '0', 100);
INSERT INTO `area` VALUES (513329, 513300, 3, '新龙县', '0', 100);
INSERT INTO `area` VALUES (513330, 513300, 3, '德格县', '0', 100);
INSERT INTO `area` VALUES (513331, 513300, 3, '白玉县', '0', 100);
INSERT INTO `area` VALUES (513332, 513300, 3, '石渠县', '0', 100);
INSERT INTO `area` VALUES (513333, 513300, 3, '色达县', '0', 100);
INSERT INTO `area` VALUES (513334, 513300, 3, '理塘县', '0', 100);
INSERT INTO `area` VALUES (513335, 513300, 3, '巴塘县', '0', 100);
INSERT INTO `area` VALUES (513336, 513300, 3, '乡城县', '0', 100);
INSERT INTO `area` VALUES (513337, 513300, 3, '稻城县', '0', 100);
INSERT INTO `area` VALUES (513338, 513300, 3, '得荣县', '0', 100);
INSERT INTO `area` VALUES (513400, 510000, 2, '凉山彝族自治州', '0', 100);
INSERT INTO `area` VALUES (513401, 513400, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (513422, 513400, 3, '木里藏族自治县', '0', 100);
INSERT INTO `area` VALUES (513423, 513400, 3, '盐源县', '0', 100);
INSERT INTO `area` VALUES (513424, 513400, 3, '德昌县', '0', 100);
INSERT INTO `area` VALUES (513425, 513400, 3, '会理县', '0', 100);
INSERT INTO `area` VALUES (513426, 513400, 3, '会东县', '0', 100);
INSERT INTO `area` VALUES (513427, 513400, 3, '宁南县', '0', 100);
INSERT INTO `area` VALUES (513428, 513400, 3, '普格县', '0', 100);
INSERT INTO `area` VALUES (513429, 513400, 3, '布拖县', '0', 100);
INSERT INTO `area` VALUES (513430, 513400, 3, '金阳县', '0', 100);
INSERT INTO `area` VALUES (513431, 513400, 3, '昭觉县', '0', 100);
INSERT INTO `area` VALUES (513432, 513400, 3, '喜德县', '0', 100);
INSERT INTO `area` VALUES (513433, 513400, 3, '冕宁县', '0', 100);
INSERT INTO `area` VALUES (513434, 513400, 3, '越西县', '0', 100);
INSERT INTO `area` VALUES (513435, 513400, 3, '甘洛县', '0', 100);
INSERT INTO `area` VALUES (513436, 513400, 3, '美姑县', '0', 100);
INSERT INTO `area` VALUES (513437, 513400, 3, '雷波县', '0', 100);
INSERT INTO `area` VALUES (520000, 0, 1, '贵州省', '0', 100);
INSERT INTO `area` VALUES (520100, 520000, 2, '贵阳市', '0', 100);
INSERT INTO `area` VALUES (520101, 520100, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (520102, 520100, 3, '南明区', '0', 100);
INSERT INTO `area` VALUES (520103, 520100, 3, '云岩区', '0', 100);
INSERT INTO `area` VALUES (520111, 520100, 3, '花溪区', '0', 100);
INSERT INTO `area` VALUES (520112, 520100, 3, '乌当区', '0', 100);
INSERT INTO `area` VALUES (520113, 520100, 3, '白云区', '0', 100);
INSERT INTO `area` VALUES (520115, 520100, 3, '观山湖区', '0', 100);
INSERT INTO `area` VALUES (520121, 520100, 3, '开阳县', '0', 100);
INSERT INTO `area` VALUES (520122, 520100, 3, '息烽县', '0', 100);
INSERT INTO `area` VALUES (520123, 520100, 3, '修文县', '0', 100);
INSERT INTO `area` VALUES (520181, 520100, 3, '清镇市', '0', 100);
INSERT INTO `area` VALUES (520200, 520000, 2, '六盘水市', '0', 100);
INSERT INTO `area` VALUES (520201, 520200, 3, '钟山区', '0', 100);
INSERT INTO `area` VALUES (520203, 520200, 3, '六枝特区', '0', 100);
INSERT INTO `area` VALUES (520221, 520200, 3, '水城县', '0', 100);
INSERT INTO `area` VALUES (520222, 520200, 3, '盘县', '0', 100);
INSERT INTO `area` VALUES (520300, 520000, 2, '遵义市', '0', 100);
INSERT INTO `area` VALUES (520301, 520300, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (520302, 520300, 3, '红花岗区', '0', 100);
INSERT INTO `area` VALUES (520303, 520300, 3, '汇川区', '0', 100);
INSERT INTO `area` VALUES (520304, 520300, 3, '播州区', '0', 100);
INSERT INTO `area` VALUES (520322, 520300, 3, '桐梓县', '0', 100);
INSERT INTO `area` VALUES (520323, 520300, 3, '绥阳县', '0', 100);
INSERT INTO `area` VALUES (520324, 520300, 3, '正安县', '0', 100);
INSERT INTO `area` VALUES (520325, 520300, 3, '道真仡佬族苗族自治县', '0', 100);
INSERT INTO `area` VALUES (520326, 520300, 3, '务川仡佬族苗族自治县', '0', 100);
INSERT INTO `area` VALUES (520327, 520300, 3, '凤冈县', '0', 100);
INSERT INTO `area` VALUES (520328, 520300, 3, '湄潭县', '0', 100);
INSERT INTO `area` VALUES (520329, 520300, 3, '余庆县', '0', 100);
INSERT INTO `area` VALUES (520330, 520300, 3, '习水县', '0', 100);
INSERT INTO `area` VALUES (520381, 520300, 3, '赤水市', '0', 100);
INSERT INTO `area` VALUES (520382, 520300, 3, '仁怀市', '0', 100);
INSERT INTO `area` VALUES (520400, 520000, 2, '安顺市', '0', 100);
INSERT INTO `area` VALUES (520401, 520400, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (520402, 520400, 3, '西秀区', '0', 100);
INSERT INTO `area` VALUES (520403, 520400, 3, '平坝区', '0', 100);
INSERT INTO `area` VALUES (520422, 520400, 3, '普定县', '0', 100);
INSERT INTO `area` VALUES (520423, 520400, 3, '镇宁布依族苗族自治县', '0', 100);
INSERT INTO `area` VALUES (520424, 520400, 3, '关岭布依族苗族自治县', '0', 100);
INSERT INTO `area` VALUES (520425, 520400, 3, '紫云苗族布依族自治县', '0', 100);
INSERT INTO `area` VALUES (520500, 520000, 2, '毕节市', '0', 100);
INSERT INTO `area` VALUES (520501, 520500, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (520502, 520500, 3, '七星关区', '0', 100);
INSERT INTO `area` VALUES (520521, 520500, 3, '大方县', '0', 100);
INSERT INTO `area` VALUES (520522, 520500, 3, '黔西县', '0', 100);
INSERT INTO `area` VALUES (520523, 520500, 3, '金沙县', '0', 100);
INSERT INTO `area` VALUES (520524, 520500, 3, '织金县', '0', 100);
INSERT INTO `area` VALUES (520525, 520500, 3, '纳雍县', '0', 100);
INSERT INTO `area` VALUES (520526, 520500, 3, '威宁彝族回族苗族自治县', '0', 100);
INSERT INTO `area` VALUES (520527, 520500, 3, '赫章县', '0', 100);
INSERT INTO `area` VALUES (520600, 520000, 2, '铜仁市', '0', 100);
INSERT INTO `area` VALUES (520601, 520600, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (520602, 520600, 3, '碧江区', '0', 100);
INSERT INTO `area` VALUES (520603, 520600, 3, '万山区', '0', 100);
INSERT INTO `area` VALUES (520621, 520600, 3, '江口县', '0', 100);
INSERT INTO `area` VALUES (520622, 520600, 3, '玉屏侗族自治县', '0', 100);
INSERT INTO `area` VALUES (520623, 520600, 3, '石阡县', '0', 100);
INSERT INTO `area` VALUES (520624, 520600, 3, '思南县', '0', 100);
INSERT INTO `area` VALUES (520625, 520600, 3, '印江土家族苗族自治县', '0', 100);
INSERT INTO `area` VALUES (520626, 520600, 3, '德江县', '0', 100);
INSERT INTO `area` VALUES (520627, 520600, 3, '沿河土家族自治县', '0', 100);
INSERT INTO `area` VALUES (520628, 520600, 3, '松桃苗族自治县', '0', 100);
INSERT INTO `area` VALUES (522300, 520000, 2, '黔西南布依族苗族自治州', '0', 100);
INSERT INTO `area` VALUES (522301, 522300, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (522322, 522300, 3, '兴仁县', '0', 100);
INSERT INTO `area` VALUES (522323, 522300, 3, '普安县', '0', 100);
INSERT INTO `area` VALUES (522324, 522300, 3, '晴隆县', '0', 100);
INSERT INTO `area` VALUES (522325, 522300, 3, '贞丰县', '0', 100);
INSERT INTO `area` VALUES (522326, 522300, 3, '望谟县', '0', 100);
INSERT INTO `area` VALUES (522327, 522300, 3, '册亨县', '0', 100);
INSERT INTO `area` VALUES (522328, 522300, 3, '安龙县', '0', 100);
INSERT INTO `area` VALUES (522600, 520000, 2, '黔东南苗族侗族自治州', '0', 100);
INSERT INTO `area` VALUES (522601, 522600, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (522622, 522600, 3, '黄平县', '0', 100);
INSERT INTO `area` VALUES (522623, 522600, 3, '施秉县', '0', 100);
INSERT INTO `area` VALUES (522624, 522600, 3, '三穗县', '0', 100);
INSERT INTO `area` VALUES (522625, 522600, 3, '镇远县', '0', 100);
INSERT INTO `area` VALUES (522626, 522600, 3, '岑巩县', '0', 100);
INSERT INTO `area` VALUES (522627, 522600, 3, '天柱县', '0', 100);
INSERT INTO `area` VALUES (522628, 522600, 3, '锦屏县', '0', 100);
INSERT INTO `area` VALUES (522629, 522600, 3, '剑河县', '0', 100);
INSERT INTO `area` VALUES (522630, 522600, 3, '台江县', '0', 100);
INSERT INTO `area` VALUES (522631, 522600, 3, '黎平县', '0', 100);
INSERT INTO `area` VALUES (522632, 522600, 3, '榕江县', '0', 100);
INSERT INTO `area` VALUES (522633, 522600, 3, '从江县', '0', 100);
INSERT INTO `area` VALUES (522634, 522600, 3, '雷山县', '0', 100);
INSERT INTO `area` VALUES (522635, 522600, 3, '麻江县', '0', 100);
INSERT INTO `area` VALUES (522636, 522600, 3, '丹寨县', '0', 100);
INSERT INTO `area` VALUES (522700, 520000, 2, '黔南布依族苗族自治州', '0', 100);
INSERT INTO `area` VALUES (522701, 522700, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (522702, 522700, 3, '福泉市', '0', 100);
INSERT INTO `area` VALUES (522722, 522700, 3, '荔波县', '0', 100);
INSERT INTO `area` VALUES (522723, 522700, 3, '贵定县', '0', 100);
INSERT INTO `area` VALUES (522725, 522700, 3, '瓮安县', '0', 100);
INSERT INTO `area` VALUES (522726, 522700, 3, '独山县', '0', 100);
INSERT INTO `area` VALUES (522727, 522700, 3, '平塘县', '0', 100);
INSERT INTO `area` VALUES (522728, 522700, 3, '罗甸县', '0', 100);
INSERT INTO `area` VALUES (522729, 522700, 3, '长顺县', '0', 100);
INSERT INTO `area` VALUES (522730, 522700, 3, '龙里县', '0', 100);
INSERT INTO `area` VALUES (522731, 522700, 3, '惠水县', '0', 100);
INSERT INTO `area` VALUES (522732, 522700, 3, '三都水族自治县', '0', 100);
INSERT INTO `area` VALUES (530000, 0, 1, '云南省', '0', 100);
INSERT INTO `area` VALUES (530100, 530000, 2, '昆明市', '0', 100);
INSERT INTO `area` VALUES (530101, 530100, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (530102, 530100, 3, '五华区', '0', 100);
INSERT INTO `area` VALUES (530103, 530100, 3, '盘龙区', '0', 100);
INSERT INTO `area` VALUES (530111, 530100, 3, '官渡区', '0', 100);
INSERT INTO `area` VALUES (530112, 530100, 3, '西山区', '0', 100);
INSERT INTO `area` VALUES (530113, 530100, 3, '东川区', '0', 100);
INSERT INTO `area` VALUES (530114, 530100, 3, '呈贡区', '0', 100);
INSERT INTO `area` VALUES (530122, 530100, 3, '晋宁县', '0', 100);
INSERT INTO `area` VALUES (530124, 530100, 3, '富民县', '0', 100);
INSERT INTO `area` VALUES (530125, 530100, 3, '宜良县', '0', 100);
INSERT INTO `area` VALUES (530126, 530100, 3, '石林彝族自治县', '0', 100);
INSERT INTO `area` VALUES (530127, 530100, 3, '嵩明县', '0', 100);
INSERT INTO `area` VALUES (530128, 530100, 3, '禄劝彝族苗族自治县', '0', 100);
INSERT INTO `area` VALUES (530129, 530100, 3, '寻甸回族彝族自治县', '0', 100);
INSERT INTO `area` VALUES (530181, 530100, 3, '安宁市', '0', 100);
INSERT INTO `area` VALUES (530300, 530000, 2, '曲靖市', '0', 100);
INSERT INTO `area` VALUES (530301, 530300, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (530302, 530300, 3, '麒麟区', '0', 100);
INSERT INTO `area` VALUES (530303, 530300, 3, '沾益区', '0', 100);
INSERT INTO `area` VALUES (530321, 530300, 3, '马龙县', '0', 100);
INSERT INTO `area` VALUES (530322, 530300, 3, '陆良县', '0', 100);
INSERT INTO `area` VALUES (530323, 530300, 3, '师宗县', '0', 100);
INSERT INTO `area` VALUES (530324, 530300, 3, '罗平县', '0', 100);
INSERT INTO `area` VALUES (530325, 530300, 3, '富源县', '0', 100);
INSERT INTO `area` VALUES (530326, 530300, 3, '会泽县', '0', 100);
INSERT INTO `area` VALUES (530381, 530300, 3, '宣威市', '0', 100);
INSERT INTO `area` VALUES (530400, 530000, 2, '玉溪市', '0', 100);
INSERT INTO `area` VALUES (530401, 530400, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (530402, 530400, 3, '红塔区', '0', 100);
INSERT INTO `area` VALUES (530403, 530400, 3, '江川区', '0', 100);
INSERT INTO `area` VALUES (530422, 530400, 3, '澄江县', '0', 100);
INSERT INTO `area` VALUES (530423, 530400, 3, '通海县', '0', 100);
INSERT INTO `area` VALUES (530424, 530400, 3, '华宁县', '0', 100);
INSERT INTO `area` VALUES (530425, 530400, 3, '易门县', '0', 100);
INSERT INTO `area` VALUES (530426, 530400, 3, '峨山彝族自治县', '0', 100);
INSERT INTO `area` VALUES (530427, 530400, 3, '新平彝族傣族自治县', '0', 100);
INSERT INTO `area` VALUES (530428, 530400, 3, '元江哈尼族彝族傣族自治县', '0', 100);
INSERT INTO `area` VALUES (530500, 530000, 2, '保山市', '0', 100);
INSERT INTO `area` VALUES (530501, 530500, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (530502, 530500, 3, '隆阳区', '0', 100);
INSERT INTO `area` VALUES (530521, 530500, 3, '施甸县', '0', 100);
INSERT INTO `area` VALUES (530523, 530500, 3, '龙陵县', '0', 100);
INSERT INTO `area` VALUES (530524, 530500, 3, '昌宁县', '0', 100);
INSERT INTO `area` VALUES (530581, 530500, 3, '腾冲市', '0', 100);
INSERT INTO `area` VALUES (530600, 530000, 2, '昭通市', '0', 100);
INSERT INTO `area` VALUES (530601, 530600, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (530602, 530600, 3, '昭阳区', '0', 100);
INSERT INTO `area` VALUES (530621, 530600, 3, '鲁甸县', '0', 100);
INSERT INTO `area` VALUES (530622, 530600, 3, '巧家县', '0', 100);
INSERT INTO `area` VALUES (530623, 530600, 3, '盐津县', '0', 100);
INSERT INTO `area` VALUES (530624, 530600, 3, '大关县', '0', 100);
INSERT INTO `area` VALUES (530625, 530600, 3, '永善县', '0', 100);
INSERT INTO `area` VALUES (530626, 530600, 3, '绥江县', '0', 100);
INSERT INTO `area` VALUES (530627, 530600, 3, '镇雄县', '0', 100);
INSERT INTO `area` VALUES (530628, 530600, 3, '彝良县', '0', 100);
INSERT INTO `area` VALUES (530629, 530600, 3, '威信县', '0', 100);
INSERT INTO `area` VALUES (530630, 530600, 3, '水富县', '0', 100);
INSERT INTO `area` VALUES (530700, 530000, 2, '丽江市', '0', 100);
INSERT INTO `area` VALUES (530701, 530700, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (530702, 530700, 3, '古城区', '0', 100);
INSERT INTO `area` VALUES (530721, 530700, 3, '玉龙纳西族自治县', '0', 100);
INSERT INTO `area` VALUES (530722, 530700, 3, '永胜县', '0', 100);
INSERT INTO `area` VALUES (530723, 530700, 3, '华坪县', '0', 100);
INSERT INTO `area` VALUES (530724, 530700, 3, '宁蒗彝族自治县', '0', 100);
INSERT INTO `area` VALUES (530800, 530000, 2, '普洱市', '0', 100);
INSERT INTO `area` VALUES (530801, 530800, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (530802, 530800, 3, '思茅区', '0', 100);
INSERT INTO `area` VALUES (530821, 530800, 3, '宁洱哈尼族彝族自治县', '0', 100);
INSERT INTO `area` VALUES (530822, 530800, 3, '墨江哈尼族自治县', '0', 100);
INSERT INTO `area` VALUES (530823, 530800, 3, '景东彝族自治县', '0', 100);
INSERT INTO `area` VALUES (530824, 530800, 3, '景谷傣族彝族自治县', '0', 100);
INSERT INTO `area` VALUES (530825, 530800, 3, '镇沅彝族哈尼族拉祜族自治县', '0', 100);
INSERT INTO `area` VALUES (530826, 530800, 3, '江城哈尼族彝族自治县', '0', 100);
INSERT INTO `area` VALUES (530827, 530800, 3, '孟连傣族拉祜族佤族自治县', '0', 100);
INSERT INTO `area` VALUES (530828, 530800, 3, '澜沧拉祜族自治县', '0', 100);
INSERT INTO `area` VALUES (530829, 530800, 3, '西盟佤族自治县', '0', 100);
INSERT INTO `area` VALUES (530900, 530000, 2, '临沧市', '0', 100);
INSERT INTO `area` VALUES (530901, 530900, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (530902, 530900, 3, '临翔区', '0', 100);
INSERT INTO `area` VALUES (530921, 530900, 3, '凤庆县', '0', 100);
INSERT INTO `area` VALUES (530922, 530900, 3, '云县', '0', 100);
INSERT INTO `area` VALUES (530923, 530900, 3, '永德县', '0', 100);
INSERT INTO `area` VALUES (530924, 530900, 3, '镇康县', '0', 100);
INSERT INTO `area` VALUES (530925, 530900, 3, '双江拉祜族佤族布朗族傣族自治县', '0', 100);
INSERT INTO `area` VALUES (530926, 530900, 3, '耿马傣族佤族自治县', '0', 100);
INSERT INTO `area` VALUES (530927, 530900, 3, '沧源佤族自治县', '0', 100);
INSERT INTO `area` VALUES (532300, 530000, 2, '楚雄彝族自治州', '0', 100);
INSERT INTO `area` VALUES (532301, 532300, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (532322, 532300, 3, '双柏县', '0', 100);
INSERT INTO `area` VALUES (532323, 532300, 3, '牟定县', '0', 100);
INSERT INTO `area` VALUES (532324, 532300, 3, '南华县', '0', 100);
INSERT INTO `area` VALUES (532325, 532300, 3, '姚安县', '0', 100);
INSERT INTO `area` VALUES (532326, 532300, 3, '大姚县', '0', 100);
INSERT INTO `area` VALUES (532327, 532300, 3, '永仁县', '0', 100);
INSERT INTO `area` VALUES (532328, 532300, 3, '元谋县', '0', 100);
INSERT INTO `area` VALUES (532329, 532300, 3, '武定县', '0', 100);
INSERT INTO `area` VALUES (532331, 532300, 3, '禄丰县', '0', 100);
INSERT INTO `area` VALUES (532500, 530000, 2, '红河哈尼族彝族自治州', '0', 100);
INSERT INTO `area` VALUES (532501, 532500, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (532502, 532500, 3, '开远市', '0', 100);
INSERT INTO `area` VALUES (532503, 532500, 3, '蒙自市', '0', 100);
INSERT INTO `area` VALUES (532504, 532500, 3, '弥勒市', '0', 100);
INSERT INTO `area` VALUES (532523, 532500, 3, '屏边苗族自治县', '0', 100);
INSERT INTO `area` VALUES (532524, 532500, 3, '建水县', '0', 100);
INSERT INTO `area` VALUES (532525, 532500, 3, '石屏县', '0', 100);
INSERT INTO `area` VALUES (532527, 532500, 3, '泸西县', '0', 100);
INSERT INTO `area` VALUES (532528, 532500, 3, '元阳县', '0', 100);
INSERT INTO `area` VALUES (532529, 532500, 3, '红河县', '0', 100);
INSERT INTO `area` VALUES (532530, 532500, 3, '金平苗族瑶族傣族自治县', '0', 100);
INSERT INTO `area` VALUES (532531, 532500, 3, '绿春县', '0', 100);
INSERT INTO `area` VALUES (532532, 532500, 3, '河口瑶族自治县', '0', 100);
INSERT INTO `area` VALUES (532600, 530000, 2, '文山壮族苗族自治州', '0', 100);
INSERT INTO `area` VALUES (532601, 532600, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (532622, 532600, 3, '砚山县', '0', 100);
INSERT INTO `area` VALUES (532623, 532600, 3, '西畴县', '0', 100);
INSERT INTO `area` VALUES (532624, 532600, 3, '麻栗坡县', '0', 100);
INSERT INTO `area` VALUES (532625, 532600, 3, '马关县', '0', 100);
INSERT INTO `area` VALUES (532626, 532600, 3, '丘北县', '0', 100);
INSERT INTO `area` VALUES (532627, 532600, 3, '广南县', '0', 100);
INSERT INTO `area` VALUES (532628, 532600, 3, '富宁县', '0', 100);
INSERT INTO `area` VALUES (532800, 530000, 2, '西双版纳傣族自治州', '0', 100);
INSERT INTO `area` VALUES (532801, 532800, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (532822, 532800, 3, '勐海县', '0', 100);
INSERT INTO `area` VALUES (532823, 532800, 3, '勐腊县', '0', 100);
INSERT INTO `area` VALUES (532900, 530000, 2, '大理白族自治州', '0', 100);
INSERT INTO `area` VALUES (532901, 532900, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (532922, 532900, 3, '漾濞彝族自治县', '0', 100);
INSERT INTO `area` VALUES (532923, 532900, 3, '祥云县', '0', 100);
INSERT INTO `area` VALUES (532924, 532900, 3, '宾川县', '0', 100);
INSERT INTO `area` VALUES (532925, 532900, 3, '弥渡县', '0', 100);
INSERT INTO `area` VALUES (532926, 532900, 3, '南涧彝族自治县', '0', 100);
INSERT INTO `area` VALUES (532927, 532900, 3, '巍山彝族回族自治县', '0', 100);
INSERT INTO `area` VALUES (532928, 532900, 3, '永平县', '0', 100);
INSERT INTO `area` VALUES (532929, 532900, 3, '云龙县', '0', 100);
INSERT INTO `area` VALUES (532930, 532900, 3, '洱源县', '0', 100);
INSERT INTO `area` VALUES (532931, 532900, 3, '剑川县', '0', 100);
INSERT INTO `area` VALUES (532932, 532900, 3, '鹤庆县', '0', 100);
INSERT INTO `area` VALUES (533100, 530000, 2, '德宏傣族景颇族自治州', '0', 100);
INSERT INTO `area` VALUES (533102, 533100, 3, '瑞丽市', '0', 100);
INSERT INTO `area` VALUES (533103, 533100, 3, '芒市', '0', 100);
INSERT INTO `area` VALUES (533122, 533100, 3, '梁河县', '0', 100);
INSERT INTO `area` VALUES (533123, 533100, 3, '盈江县', '0', 100);
INSERT INTO `area` VALUES (533124, 533100, 3, '陇川县', '0', 100);
INSERT INTO `area` VALUES (533300, 530000, 2, '怒江傈僳族自治州', '0', 100);
INSERT INTO `area` VALUES (533301, 533300, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (533323, 533300, 3, '福贡县', '0', 100);
INSERT INTO `area` VALUES (533324, 533300, 3, '贡山独龙族怒族自治县', '0', 100);
INSERT INTO `area` VALUES (533325, 533300, 3, '兰坪白族普米族自治县', '0', 100);
INSERT INTO `area` VALUES (533400, 530000, 2, '迪庆藏族自治州', '0', 100);
INSERT INTO `area` VALUES (533401, 533400, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (533422, 533400, 3, '德钦县', '0', 100);
INSERT INTO `area` VALUES (533423, 533400, 3, '维西傈僳族自治县', '0', 100);
INSERT INTO `area` VALUES (540000, 0, 1, '西藏自治区', '0', 100);
INSERT INTO `area` VALUES (540100, 540000, 2, '拉萨市', '0', 100);
INSERT INTO `area` VALUES (540101, 540100, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (540102, 540100, 3, '城关区', '0', 100);
INSERT INTO `area` VALUES (540103, 540100, 3, '堆龙德庆区', '0', 100);
INSERT INTO `area` VALUES (540121, 540100, 3, '林周县', '0', 100);
INSERT INTO `area` VALUES (540122, 540100, 3, '当雄县', '0', 100);
INSERT INTO `area` VALUES (540123, 540100, 3, '尼木县', '0', 100);
INSERT INTO `area` VALUES (540124, 540100, 3, '曲水县', '0', 100);
INSERT INTO `area` VALUES (540126, 540100, 3, '达孜县', '0', 100);
INSERT INTO `area` VALUES (540127, 540100, 3, '墨竹工卡县', '0', 100);
INSERT INTO `area` VALUES (540200, 540000, 2, '日喀则市', '0', 100);
INSERT INTO `area` VALUES (540202, 540200, 3, '桑珠孜区', '0', 100);
INSERT INTO `area` VALUES (540221, 540200, 3, '南木林县', '0', 100);
INSERT INTO `area` VALUES (540222, 540200, 3, '江孜县', '0', 100);
INSERT INTO `area` VALUES (540223, 540200, 3, '定日县', '0', 100);
INSERT INTO `area` VALUES (540224, 540200, 3, '萨迦县', '0', 100);
INSERT INTO `area` VALUES (540225, 540200, 3, '拉孜县', '0', 100);
INSERT INTO `area` VALUES (540226, 540200, 3, '昂仁县', '0', 100);
INSERT INTO `area` VALUES (540227, 540200, 3, '谢通门县', '0', 100);
INSERT INTO `area` VALUES (540228, 540200, 3, '白朗县', '0', 100);
INSERT INTO `area` VALUES (540229, 540200, 3, '仁布县', '0', 100);
INSERT INTO `area` VALUES (540230, 540200, 3, '康马县', '0', 100);
INSERT INTO `area` VALUES (540231, 540200, 3, '定结县', '0', 100);
INSERT INTO `area` VALUES (540232, 540200, 3, '仲巴县', '0', 100);
INSERT INTO `area` VALUES (540233, 540200, 3, '亚东县', '0', 100);
INSERT INTO `area` VALUES (540234, 540200, 3, '吉隆县', '0', 100);
INSERT INTO `area` VALUES (540235, 540200, 3, '聂拉木县', '0', 100);
INSERT INTO `area` VALUES (540236, 540200, 3, '萨嘎县', '0', 100);
INSERT INTO `area` VALUES (540237, 540200, 3, '岗巴县', '0', 100);
INSERT INTO `area` VALUES (540300, 540000, 2, '昌都市', '0', 100);
INSERT INTO `area` VALUES (540302, 540300, 3, '卡若区', '0', 100);
INSERT INTO `area` VALUES (540321, 540300, 3, '江达县', '0', 100);
INSERT INTO `area` VALUES (540322, 540300, 3, '贡觉县', '0', 100);
INSERT INTO `area` VALUES (540323, 540300, 3, '类乌齐县', '0', 100);
INSERT INTO `area` VALUES (540324, 540300, 3, '丁青县', '0', 100);
INSERT INTO `area` VALUES (540325, 540300, 3, '察雅县', '0', 100);
INSERT INTO `area` VALUES (540326, 540300, 3, '八宿县', '0', 100);
INSERT INTO `area` VALUES (540327, 540300, 3, '左贡县', '0', 100);
INSERT INTO `area` VALUES (540328, 540300, 3, '芒康县', '0', 100);
INSERT INTO `area` VALUES (540329, 540300, 3, '洛隆县', '0', 100);
INSERT INTO `area` VALUES (540330, 540300, 3, '边坝县', '0', 100);
INSERT INTO `area` VALUES (540400, 540000, 2, '林芝市', '0', 100);
INSERT INTO `area` VALUES (540402, 540400, 3, '巴宜区', '0', 100);
INSERT INTO `area` VALUES (540421, 540400, 3, '工布江达县', '0', 100);
INSERT INTO `area` VALUES (540422, 540400, 3, '米林县', '0', 100);
INSERT INTO `area` VALUES (540423, 540400, 3, '墨脱县', '0', 100);
INSERT INTO `area` VALUES (540424, 540400, 3, '波密县', '0', 100);
INSERT INTO `area` VALUES (540425, 540400, 3, '察隅县', '0', 100);
INSERT INTO `area` VALUES (540426, 540400, 3, '朗县', '0', 100);
INSERT INTO `area` VALUES (540500, 540000, 2, '山南市', '0', 100);
INSERT INTO `area` VALUES (540501, 540500, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (540502, 540500, 3, '乃东区', '0', 100);
INSERT INTO `area` VALUES (540521, 540500, 3, '扎囊县', '0', 100);
INSERT INTO `area` VALUES (540522, 540500, 3, '贡嘎县', '0', 100);
INSERT INTO `area` VALUES (540523, 540500, 3, '桑日县', '0', 100);
INSERT INTO `area` VALUES (540524, 540500, 3, '琼结县', '0', 100);
INSERT INTO `area` VALUES (540525, 540500, 3, '曲松县', '0', 100);
INSERT INTO `area` VALUES (540526, 540500, 3, '措美县', '0', 100);
INSERT INTO `area` VALUES (540527, 540500, 3, '洛扎县', '0', 100);
INSERT INTO `area` VALUES (540528, 540500, 3, '加查县', '0', 100);
INSERT INTO `area` VALUES (540529, 540500, 3, '隆子县', '0', 100);
INSERT INTO `area` VALUES (540530, 540500, 3, '错那县', '0', 100);
INSERT INTO `area` VALUES (540531, 540500, 3, '浪卡子县', '0', 100);
INSERT INTO `area` VALUES (542400, 540000, 2, '那曲地区', '0', 100);
INSERT INTO `area` VALUES (542421, 542400, 3, '那曲县', '0', 100);
INSERT INTO `area` VALUES (542422, 542400, 3, '嘉黎县', '0', 100);
INSERT INTO `area` VALUES (542423, 542400, 3, '比如县', '0', 100);
INSERT INTO `area` VALUES (542424, 542400, 3, '聂荣县', '0', 100);
INSERT INTO `area` VALUES (542425, 542400, 3, '安多县', '0', 100);
INSERT INTO `area` VALUES (542426, 542400, 3, '申扎县', '0', 100);
INSERT INTO `area` VALUES (542427, 542400, 3, '索县', '0', 100);
INSERT INTO `area` VALUES (542428, 542400, 3, '班戈县', '0', 100);
INSERT INTO `area` VALUES (542429, 542400, 3, '巴青县', '0', 100);
INSERT INTO `area` VALUES (542430, 542400, 3, '尼玛县', '0', 100);
INSERT INTO `area` VALUES (542431, 542400, 3, '双湖县', '0', 100);
INSERT INTO `area` VALUES (542500, 540000, 2, '阿里地区', '0', 100);
INSERT INTO `area` VALUES (542521, 542500, 3, '普兰县', '0', 100);
INSERT INTO `area` VALUES (542522, 542500, 3, '札达县', '0', 100);
INSERT INTO `area` VALUES (542523, 542500, 3, '噶尔县', '0', 100);
INSERT INTO `area` VALUES (542524, 542500, 3, '日土县', '0', 100);
INSERT INTO `area` VALUES (542525, 542500, 3, '革吉县', '0', 100);
INSERT INTO `area` VALUES (542526, 542500, 3, '改则县', '0', 100);
INSERT INTO `area` VALUES (542527, 542500, 3, '措勤县', '0', 100);
INSERT INTO `area` VALUES (610000, 0, 1, '陕西省', '0', 100);
INSERT INTO `area` VALUES (610100, 610000, 2, '西安市', '0', 100);
INSERT INTO `area` VALUES (610101, 610100, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (610102, 610100, 3, '新城区', '0', 100);
INSERT INTO `area` VALUES (610103, 610100, 3, '碑林区', '0', 100);
INSERT INTO `area` VALUES (610104, 610100, 3, '莲湖区', '0', 100);
INSERT INTO `area` VALUES (610111, 610100, 3, '灞桥区', '0', 100);
INSERT INTO `area` VALUES (610112, 610100, 3, '未央区', '0', 100);
INSERT INTO `area` VALUES (610113, 610100, 3, '雁塔区', '0', 100);
INSERT INTO `area` VALUES (610114, 610100, 3, '阎良区', '0', 100);
INSERT INTO `area` VALUES (610115, 610100, 3, '临潼区', '0', 100);
INSERT INTO `area` VALUES (610116, 610100, 3, '长安区', '0', 100);
INSERT INTO `area` VALUES (610117, 610100, 3, '高陵区', '0', 100);
INSERT INTO `area` VALUES (610122, 610100, 3, '蓝田县', '0', 100);
INSERT INTO `area` VALUES (610124, 610100, 3, '周至县', '0', 100);
INSERT INTO `area` VALUES (610125, 610100, 3, '户县', '0', 100);
INSERT INTO `area` VALUES (610200, 610000, 2, '铜川市', '0', 100);
INSERT INTO `area` VALUES (610201, 610200, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (610202, 610200, 3, '王益区', '0', 100);
INSERT INTO `area` VALUES (610203, 610200, 3, '印台区', '0', 100);
INSERT INTO `area` VALUES (610204, 610200, 3, '耀州区', '0', 100);
INSERT INTO `area` VALUES (610222, 610200, 3, '宜君县', '0', 100);
INSERT INTO `area` VALUES (610300, 610000, 2, '宝鸡市', '0', 100);
INSERT INTO `area` VALUES (610301, 610300, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (610302, 610300, 3, '渭滨区', '0', 100);
INSERT INTO `area` VALUES (610303, 610300, 3, '金台区', '0', 100);
INSERT INTO `area` VALUES (610304, 610300, 3, '陈仓区', '0', 100);
INSERT INTO `area` VALUES (610322, 610300, 3, '凤翔县', '0', 100);
INSERT INTO `area` VALUES (610323, 610300, 3, '岐山县', '0', 100);
INSERT INTO `area` VALUES (610324, 610300, 3, '扶风县', '0', 100);
INSERT INTO `area` VALUES (610326, 610300, 3, '眉县', '0', 100);
INSERT INTO `area` VALUES (610327, 610300, 3, '陇县', '0', 100);
INSERT INTO `area` VALUES (610328, 610300, 3, '千阳县', '0', 100);
INSERT INTO `area` VALUES (610329, 610300, 3, '麟游县', '0', 100);
INSERT INTO `area` VALUES (610330, 610300, 3, '凤县', '0', 100);
INSERT INTO `area` VALUES (610331, 610300, 3, '太白县', '0', 100);
INSERT INTO `area` VALUES (610400, 610000, 2, '咸阳市', '0', 100);
INSERT INTO `area` VALUES (610401, 610400, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (610402, 610400, 3, '秦都区', '0', 100);
INSERT INTO `area` VALUES (610403, 610400, 3, '杨陵区', '0', 100);
INSERT INTO `area` VALUES (610404, 610400, 3, '渭城区', '0', 100);
INSERT INTO `area` VALUES (610422, 610400, 3, '三原县', '0', 100);
INSERT INTO `area` VALUES (610423, 610400, 3, '泾阳县', '0', 100);
INSERT INTO `area` VALUES (610424, 610400, 3, '乾县', '0', 100);
INSERT INTO `area` VALUES (610425, 610400, 3, '礼泉县', '0', 100);
INSERT INTO `area` VALUES (610426, 610400, 3, '永寿县', '0', 100);
INSERT INTO `area` VALUES (610427, 610400, 3, '彬县', '0', 100);
INSERT INTO `area` VALUES (610428, 610400, 3, '长武县', '0', 100);
INSERT INTO `area` VALUES (610429, 610400, 3, '旬邑县', '0', 100);
INSERT INTO `area` VALUES (610430, 610400, 3, '淳化县', '0', 100);
INSERT INTO `area` VALUES (610431, 610400, 3, '武功县', '0', 100);
INSERT INTO `area` VALUES (610481, 610400, 3, '兴平市', '0', 100);
INSERT INTO `area` VALUES (610500, 610000, 2, '渭南市', '0', 100);
INSERT INTO `area` VALUES (610501, 610500, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (610502, 610500, 3, '临渭区', '0', 100);
INSERT INTO `area` VALUES (610503, 610500, 3, '华州区', '0', 100);
INSERT INTO `area` VALUES (610522, 610500, 3, '潼关县', '0', 100);
INSERT INTO `area` VALUES (610523, 610500, 3, '大荔县', '0', 100);
INSERT INTO `area` VALUES (610524, 610500, 3, '合阳县', '0', 100);
INSERT INTO `area` VALUES (610525, 610500, 3, '澄城县', '0', 100);
INSERT INTO `area` VALUES (610526, 610500, 3, '蒲城县', '0', 100);
INSERT INTO `area` VALUES (610527, 610500, 3, '白水县', '0', 100);
INSERT INTO `area` VALUES (610528, 610500, 3, '富平县', '0', 100);
INSERT INTO `area` VALUES (610581, 610500, 3, '韩城市', '0', 100);
INSERT INTO `area` VALUES (610582, 610500, 3, '华阴市', '0', 100);
INSERT INTO `area` VALUES (610600, 610000, 2, '延安市', '0', 100);
INSERT INTO `area` VALUES (610601, 610600, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (610602, 610600, 3, '宝塔区', '0', 100);
INSERT INTO `area` VALUES (610603, 610600, 3, '安塞区', '0', 100);
INSERT INTO `area` VALUES (610621, 610600, 3, '延长县', '0', 100);
INSERT INTO `area` VALUES (610622, 610600, 3, '延川县', '0', 100);
INSERT INTO `area` VALUES (610623, 610600, 3, '子长县', '0', 100);
INSERT INTO `area` VALUES (610625, 610600, 3, '志丹县', '0', 100);
INSERT INTO `area` VALUES (610626, 610600, 3, '吴起县', '0', 100);
INSERT INTO `area` VALUES (610627, 610600, 3, '甘泉县', '0', 100);
INSERT INTO `area` VALUES (610628, 610600, 3, '富县', '0', 100);
INSERT INTO `area` VALUES (610629, 610600, 3, '洛川县', '0', 100);
INSERT INTO `area` VALUES (610630, 610600, 3, '宜川县', '0', 100);
INSERT INTO `area` VALUES (610631, 610600, 3, '黄龙县', '0', 100);
INSERT INTO `area` VALUES (610632, 610600, 3, '黄陵县', '0', 100);
INSERT INTO `area` VALUES (610700, 610000, 2, '汉中市', '0', 100);
INSERT INTO `area` VALUES (610701, 610700, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (610702, 610700, 3, '汉台区', '0', 100);
INSERT INTO `area` VALUES (610721, 610700, 3, '南郑县', '0', 100);
INSERT INTO `area` VALUES (610722, 610700, 3, '城固县', '0', 100);
INSERT INTO `area` VALUES (610723, 610700, 3, '洋县', '0', 100);
INSERT INTO `area` VALUES (610724, 610700, 3, '西乡县', '0', 100);
INSERT INTO `area` VALUES (610725, 610700, 3, '勉县', '0', 100);
INSERT INTO `area` VALUES (610726, 610700, 3, '宁强县', '0', 100);
INSERT INTO `area` VALUES (610727, 610700, 3, '略阳县', '0', 100);
INSERT INTO `area` VALUES (610728, 610700, 3, '镇巴县', '0', 100);
INSERT INTO `area` VALUES (610729, 610700, 3, '留坝县', '0', 100);
INSERT INTO `area` VALUES (610730, 610700, 3, '佛坪县', '0', 100);
INSERT INTO `area` VALUES (610800, 610000, 2, '榆林市', '0', 100);
INSERT INTO `area` VALUES (610801, 610800, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (610802, 610800, 3, '榆阳区', '0', 100);
INSERT INTO `area` VALUES (610803, 610800, 3, '横山区', '0', 100);
INSERT INTO `area` VALUES (610821, 610800, 3, '神木县', '0', 100);
INSERT INTO `area` VALUES (610822, 610800, 3, '府谷县', '0', 100);
INSERT INTO `area` VALUES (610824, 610800, 3, '靖边县', '0', 100);
INSERT INTO `area` VALUES (610825, 610800, 3, '定边县', '0', 100);
INSERT INTO `area` VALUES (610826, 610800, 3, '绥德县', '0', 100);
INSERT INTO `area` VALUES (610827, 610800, 3, '米脂县', '0', 100);
INSERT INTO `area` VALUES (610828, 610800, 3, '佳县', '0', 100);
INSERT INTO `area` VALUES (610829, 610800, 3, '吴堡县', '0', 100);
INSERT INTO `area` VALUES (610830, 610800, 3, '清涧县', '0', 100);
INSERT INTO `area` VALUES (610831, 610800, 3, '子洲县', '0', 100);
INSERT INTO `area` VALUES (610900, 610000, 2, '安康市', '0', 100);
INSERT INTO `area` VALUES (610901, 610900, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (610902, 610900, 3, '汉滨区', '0', 100);
INSERT INTO `area` VALUES (610921, 610900, 3, '汉阴县', '0', 100);
INSERT INTO `area` VALUES (610922, 610900, 3, '石泉县', '0', 100);
INSERT INTO `area` VALUES (610923, 610900, 3, '宁陕县', '0', 100);
INSERT INTO `area` VALUES (610924, 610900, 3, '紫阳县', '0', 100);
INSERT INTO `area` VALUES (610925, 610900, 3, '岚皋县', '0', 100);
INSERT INTO `area` VALUES (610926, 610900, 3, '平利县', '0', 100);
INSERT INTO `area` VALUES (610927, 610900, 3, '镇坪县', '0', 100);
INSERT INTO `area` VALUES (610928, 610900, 3, '旬阳县', '0', 100);
INSERT INTO `area` VALUES (610929, 610900, 3, '白河县', '0', 100);
INSERT INTO `area` VALUES (611000, 610000, 2, '商洛市', '0', 100);
INSERT INTO `area` VALUES (611001, 611000, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (611002, 611000, 3, '商州区', '0', 100);
INSERT INTO `area` VALUES (611021, 611000, 3, '洛南县', '0', 100);
INSERT INTO `area` VALUES (611022, 611000, 3, '丹凤县', '0', 100);
INSERT INTO `area` VALUES (611023, 611000, 3, '商南县', '0', 100);
INSERT INTO `area` VALUES (611024, 611000, 3, '山阳县', '0', 100);
INSERT INTO `area` VALUES (611025, 611000, 3, '镇安县', '0', 100);
INSERT INTO `area` VALUES (611026, 611000, 3, '柞水县', '0', 100);
INSERT INTO `area` VALUES (620000, 0, 1, '甘肃省', '0', 100);
INSERT INTO `area` VALUES (620100, 620000, 2, '兰州市', '0', 100);
INSERT INTO `area` VALUES (620101, 620100, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (620102, 620100, 3, '城关区', '0', 100);
INSERT INTO `area` VALUES (620103, 620100, 3, '七里河区', '0', 100);
INSERT INTO `area` VALUES (620104, 620100, 3, '西固区', '0', 100);
INSERT INTO `area` VALUES (620105, 620100, 3, '安宁区', '0', 100);
INSERT INTO `area` VALUES (620111, 620100, 3, '红古区', '0', 100);
INSERT INTO `area` VALUES (620121, 620100, 3, '永登县', '0', 100);
INSERT INTO `area` VALUES (620122, 620100, 3, '皋兰县', '0', 100);
INSERT INTO `area` VALUES (620123, 620100, 3, '榆中县', '0', 100);
INSERT INTO `area` VALUES (620200, 620000, 2, '嘉峪关市', '0', 100);
INSERT INTO `area` VALUES (620201, 620200, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (620300, 620000, 2, '金昌市', '0', 100);
INSERT INTO `area` VALUES (620301, 620300, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (620302, 620300, 3, '金川区', '0', 100);
INSERT INTO `area` VALUES (620321, 620300, 3, '永昌县', '0', 100);
INSERT INTO `area` VALUES (620400, 620000, 2, '白银市', '0', 100);
INSERT INTO `area` VALUES (620401, 620400, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (620402, 620400, 3, '白银区', '0', 100);
INSERT INTO `area` VALUES (620403, 620400, 3, '平川区', '0', 100);
INSERT INTO `area` VALUES (620421, 620400, 3, '靖远县', '0', 100);
INSERT INTO `area` VALUES (620422, 620400, 3, '会宁县', '0', 100);
INSERT INTO `area` VALUES (620423, 620400, 3, '景泰县', '0', 100);
INSERT INTO `area` VALUES (620500, 620000, 2, '天水市', '0', 100);
INSERT INTO `area` VALUES (620501, 620500, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (620502, 620500, 3, '秦州区', '0', 100);
INSERT INTO `area` VALUES (620503, 620500, 3, '麦积区', '0', 100);
INSERT INTO `area` VALUES (620521, 620500, 3, '清水县', '0', 100);
INSERT INTO `area` VALUES (620522, 620500, 3, '秦安县', '0', 100);
INSERT INTO `area` VALUES (620523, 620500, 3, '甘谷县', '0', 100);
INSERT INTO `area` VALUES (620524, 620500, 3, '武山县', '0', 100);
INSERT INTO `area` VALUES (620525, 620500, 3, '张家川回族自治县', '0', 100);
INSERT INTO `area` VALUES (620600, 620000, 2, '武威市', '0', 100);
INSERT INTO `area` VALUES (620601, 620600, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (620602, 620600, 3, '凉州区', '0', 100);
INSERT INTO `area` VALUES (620621, 620600, 3, '民勤县', '0', 100);
INSERT INTO `area` VALUES (620622, 620600, 3, '古浪县', '0', 100);
INSERT INTO `area` VALUES (620623, 620600, 3, '天祝藏族自治县', '0', 100);
INSERT INTO `area` VALUES (620700, 620000, 2, '张掖市', '0', 100);
INSERT INTO `area` VALUES (620701, 620700, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (620702, 620700, 3, '甘州区', '0', 100);
INSERT INTO `area` VALUES (620721, 620700, 3, '肃南裕固族自治县', '0', 100);
INSERT INTO `area` VALUES (620722, 620700, 3, '民乐县', '0', 100);
INSERT INTO `area` VALUES (620723, 620700, 3, '临泽县', '0', 100);
INSERT INTO `area` VALUES (620724, 620700, 3, '高台县', '0', 100);
INSERT INTO `area` VALUES (620725, 620700, 3, '山丹县', '0', 100);
INSERT INTO `area` VALUES (620800, 620000, 2, '平凉市', '0', 100);
INSERT INTO `area` VALUES (620801, 620800, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (620802, 620800, 3, '崆峒区', '0', 100);
INSERT INTO `area` VALUES (620821, 620800, 3, '泾川县', '0', 100);
INSERT INTO `area` VALUES (620822, 620800, 3, '灵台县', '0', 100);
INSERT INTO `area` VALUES (620823, 620800, 3, '崇信县', '0', 100);
INSERT INTO `area` VALUES (620824, 620800, 3, '华亭县', '0', 100);
INSERT INTO `area` VALUES (620825, 620800, 3, '庄浪县', '0', 100);
INSERT INTO `area` VALUES (620826, 620800, 3, '静宁县', '0', 100);
INSERT INTO `area` VALUES (620900, 620000, 2, '酒泉市', '0', 100);
INSERT INTO `area` VALUES (620901, 620900, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (620902, 620900, 3, '肃州区', '0', 100);
INSERT INTO `area` VALUES (620921, 620900, 3, '金塔县', '0', 100);
INSERT INTO `area` VALUES (620922, 620900, 3, '瓜州县', '0', 100);
INSERT INTO `area` VALUES (620923, 620900, 3, '肃北蒙古族自治县', '0', 100);
INSERT INTO `area` VALUES (620924, 620900, 3, '阿克塞哈萨克族自治县', '0', 100);
INSERT INTO `area` VALUES (620981, 620900, 3, '玉门市', '0', 100);
INSERT INTO `area` VALUES (620982, 620900, 3, '敦煌市', '0', 100);
INSERT INTO `area` VALUES (621000, 620000, 2, '庆阳市', '0', 100);
INSERT INTO `area` VALUES (621001, 621000, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (621002, 621000, 3, '西峰区', '0', 100);
INSERT INTO `area` VALUES (621021, 621000, 3, '庆城县', '0', 100);
INSERT INTO `area` VALUES (621022, 621000, 3, '环县', '0', 100);
INSERT INTO `area` VALUES (621023, 621000, 3, '华池县', '0', 100);
INSERT INTO `area` VALUES (621024, 621000, 3, '合水县', '0', 100);
INSERT INTO `area` VALUES (621025, 621000, 3, '正宁县', '0', 100);
INSERT INTO `area` VALUES (621026, 621000, 3, '宁县', '0', 100);
INSERT INTO `area` VALUES (621027, 621000, 3, '镇原县', '0', 100);
INSERT INTO `area` VALUES (621100, 620000, 2, '定西市', '0', 100);
INSERT INTO `area` VALUES (621101, 621100, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (621102, 621100, 3, '安定区', '0', 100);
INSERT INTO `area` VALUES (621121, 621100, 3, '通渭县', '0', 100);
INSERT INTO `area` VALUES (621122, 621100, 3, '陇西县', '0', 100);
INSERT INTO `area` VALUES (621123, 621100, 3, '渭源县', '0', 100);
INSERT INTO `area` VALUES (621124, 621100, 3, '临洮县', '0', 100);
INSERT INTO `area` VALUES (621125, 621100, 3, '漳县', '0', 100);
INSERT INTO `area` VALUES (621126, 621100, 3, '岷县', '0', 100);
INSERT INTO `area` VALUES (621200, 620000, 2, '陇南市', '0', 100);
INSERT INTO `area` VALUES (621201, 621200, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (621202, 621200, 3, '武都区', '0', 100);
INSERT INTO `area` VALUES (621221, 621200, 3, '成县', '0', 100);
INSERT INTO `area` VALUES (621222, 621200, 3, '文县', '0', 100);
INSERT INTO `area` VALUES (621223, 621200, 3, '宕昌县', '0', 100);
INSERT INTO `area` VALUES (621224, 621200, 3, '康县', '0', 100);
INSERT INTO `area` VALUES (621225, 621200, 3, '西和县', '0', 100);
INSERT INTO `area` VALUES (621226, 621200, 3, '礼县', '0', 100);
INSERT INTO `area` VALUES (621227, 621200, 3, '徽县', '0', 100);
INSERT INTO `area` VALUES (621228, 621200, 3, '两当县', '0', 100);
INSERT INTO `area` VALUES (622900, 620000, 2, '临夏回族自治州', '0', 100);
INSERT INTO `area` VALUES (622901, 622900, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (622921, 622900, 3, '临夏县', '0', 100);
INSERT INTO `area` VALUES (622922, 622900, 3, '康乐县', '0', 100);
INSERT INTO `area` VALUES (622923, 622900, 3, '永靖县', '0', 100);
INSERT INTO `area` VALUES (622924, 622900, 3, '广河县', '0', 100);
INSERT INTO `area` VALUES (622925, 622900, 3, '和政县', '0', 100);
INSERT INTO `area` VALUES (622926, 622900, 3, '东乡族自治县', '0', 100);
INSERT INTO `area` VALUES (622927, 622900, 3, '积石山保安族东乡族撒拉族自治县', '0', 100);
INSERT INTO `area` VALUES (623000, 620000, 2, '甘南藏族自治州', '0', 100);
INSERT INTO `area` VALUES (623001, 623000, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (623021, 623000, 3, '临潭县', '0', 100);
INSERT INTO `area` VALUES (623022, 623000, 3, '卓尼县', '0', 100);
INSERT INTO `area` VALUES (623023, 623000, 3, '舟曲县', '0', 100);
INSERT INTO `area` VALUES (623024, 623000, 3, '迭部县', '0', 100);
INSERT INTO `area` VALUES (623025, 623000, 3, '玛曲县', '0', 100);
INSERT INTO `area` VALUES (623026, 623000, 3, '碌曲县', '0', 100);
INSERT INTO `area` VALUES (623027, 623000, 3, '夏河县', '0', 100);
INSERT INTO `area` VALUES (630000, 0, 1, '青海省', '0', 100);
INSERT INTO `area` VALUES (630100, 630000, 2, '西宁市', '0', 100);
INSERT INTO `area` VALUES (630101, 630100, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (630102, 630100, 3, '城东区', '0', 100);
INSERT INTO `area` VALUES (630103, 630100, 3, '城中区', '0', 100);
INSERT INTO `area` VALUES (630104, 630100, 3, '城西区', '0', 100);
INSERT INTO `area` VALUES (630105, 630100, 3, '城北区', '0', 100);
INSERT INTO `area` VALUES (630121, 630100, 3, '大通回族土族自治县', '0', 100);
INSERT INTO `area` VALUES (630122, 630100, 3, '湟中县', '0', 100);
INSERT INTO `area` VALUES (630123, 630100, 3, '湟源县', '0', 100);
INSERT INTO `area` VALUES (630200, 630000, 2, '海东市', '0', 100);
INSERT INTO `area` VALUES (630202, 630200, 3, '乐都区', '0', 100);
INSERT INTO `area` VALUES (630203, 630200, 3, '平安区', '0', 100);
INSERT INTO `area` VALUES (630222, 630200, 3, '民和回族土族自治县', '0', 100);
INSERT INTO `area` VALUES (630223, 630200, 3, '互助土族自治县', '0', 100);
INSERT INTO `area` VALUES (630224, 630200, 3, '化隆回族自治县', '0', 100);
INSERT INTO `area` VALUES (630225, 630200, 3, '循化撒拉族自治县', '0', 100);
INSERT INTO `area` VALUES (632200, 630000, 2, '海北藏族自治州', '0', 100);
INSERT INTO `area` VALUES (632221, 632200, 3, '门源回族自治县', '0', 100);
INSERT INTO `area` VALUES (632222, 632200, 3, '祁连县', '0', 100);
INSERT INTO `area` VALUES (632223, 632200, 3, '海晏县', '0', 100);
INSERT INTO `area` VALUES (632224, 632200, 3, '刚察县', '0', 100);
INSERT INTO `area` VALUES (632300, 630000, 2, '黄南藏族自治州', '0', 100);
INSERT INTO `area` VALUES (632321, 632300, 3, '同仁县', '0', 100);
INSERT INTO `area` VALUES (632322, 632300, 3, '尖扎县', '0', 100);
INSERT INTO `area` VALUES (632323, 632300, 3, '泽库县', '0', 100);
INSERT INTO `area` VALUES (632324, 632300, 3, '河南蒙古族自治县', '0', 100);
INSERT INTO `area` VALUES (632500, 630000, 2, '海南藏族自治州', '0', 100);
INSERT INTO `area` VALUES (632521, 632500, 3, '共和县', '0', 100);
INSERT INTO `area` VALUES (632522, 632500, 3, '同德县', '0', 100);
INSERT INTO `area` VALUES (632523, 632500, 3, '贵德县', '0', 100);
INSERT INTO `area` VALUES (632524, 632500, 3, '兴海县', '0', 100);
INSERT INTO `area` VALUES (632525, 632500, 3, '贵南县', '0', 100);
INSERT INTO `area` VALUES (632600, 630000, 2, '果洛藏族自治州', '0', 100);
INSERT INTO `area` VALUES (632621, 632600, 3, '玛沁县', '0', 100);
INSERT INTO `area` VALUES (632622, 632600, 3, '班玛县', '0', 100);
INSERT INTO `area` VALUES (632623, 632600, 3, '甘德县', '0', 100);
INSERT INTO `area` VALUES (632624, 632600, 3, '达日县', '0', 100);
INSERT INTO `area` VALUES (632625, 632600, 3, '久治县', '0', 100);
INSERT INTO `area` VALUES (632626, 632600, 3, '玛多县', '0', 100);
INSERT INTO `area` VALUES (632700, 630000, 2, '玉树藏族自治州', '0', 100);
INSERT INTO `area` VALUES (632701, 632700, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (632722, 632700, 3, '杂多县', '0', 100);
INSERT INTO `area` VALUES (632723, 632700, 3, '称多县', '0', 100);
INSERT INTO `area` VALUES (632724, 632700, 3, '治多县', '0', 100);
INSERT INTO `area` VALUES (632725, 632700, 3, '囊谦县', '0', 100);
INSERT INTO `area` VALUES (632726, 632700, 3, '曲麻莱县', '0', 100);
INSERT INTO `area` VALUES (632800, 630000, 2, '海西蒙古族藏族自治州', '0', 100);
INSERT INTO `area` VALUES (632801, 632800, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (632802, 632800, 3, '德令哈市', '0', 100);
INSERT INTO `area` VALUES (632821, 632800, 3, '乌兰县', '0', 100);
INSERT INTO `area` VALUES (632822, 632800, 3, '都兰县', '0', 100);
INSERT INTO `area` VALUES (632823, 632800, 3, '天峻县', '0', 100);
INSERT INTO `area` VALUES (640000, 0, 1, '宁夏回族自治区', '0', 100);
INSERT INTO `area` VALUES (640100, 640000, 2, '银川市', '0', 100);
INSERT INTO `area` VALUES (640101, 640100, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (640104, 640100, 3, '兴庆区', '0', 100);
INSERT INTO `area` VALUES (640105, 640100, 3, '西夏区', '0', 100);
INSERT INTO `area` VALUES (640106, 640100, 3, '金凤区', '0', 100);
INSERT INTO `area` VALUES (640121, 640100, 3, '永宁县', '0', 100);
INSERT INTO `area` VALUES (640122, 640100, 3, '贺兰县', '0', 100);
INSERT INTO `area` VALUES (640181, 640100, 3, '灵武市', '0', 100);
INSERT INTO `area` VALUES (640200, 640000, 2, '石嘴山市', '0', 100);
INSERT INTO `area` VALUES (640201, 640200, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (640202, 640200, 3, '大武口区', '0', 100);
INSERT INTO `area` VALUES (640205, 640200, 3, '惠农区', '0', 100);
INSERT INTO `area` VALUES (640221, 640200, 3, '平罗县', '0', 100);
INSERT INTO `area` VALUES (640300, 640000, 2, '吴忠市', '0', 100);
INSERT INTO `area` VALUES (640301, 640300, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (640302, 640300, 3, '利通区', '0', 100);
INSERT INTO `area` VALUES (640303, 640300, 3, '红寺堡区', '0', 100);
INSERT INTO `area` VALUES (640323, 640300, 3, '盐池县', '0', 100);
INSERT INTO `area` VALUES (640324, 640300, 3, '同心县', '0', 100);
INSERT INTO `area` VALUES (640381, 640300, 3, '青铜峡市', '0', 100);
INSERT INTO `area` VALUES (640400, 640000, 2, '固原市', '0', 100);
INSERT INTO `area` VALUES (640401, 640400, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (640402, 640400, 3, '原州区', '0', 100);
INSERT INTO `area` VALUES (640422, 640400, 3, '西吉县', '0', 100);
INSERT INTO `area` VALUES (640423, 640400, 3, '隆德县', '0', 100);
INSERT INTO `area` VALUES (640424, 640400, 3, '泾源县', '0', 100);
INSERT INTO `area` VALUES (640425, 640400, 3, '彭阳县', '0', 100);
INSERT INTO `area` VALUES (640500, 640000, 2, '中卫市', '0', 100);
INSERT INTO `area` VALUES (640501, 640500, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (640502, 640500, 3, '沙坡头区', '0', 100);
INSERT INTO `area` VALUES (640521, 640500, 3, '中宁县', '0', 100);
INSERT INTO `area` VALUES (640522, 640500, 3, '海原县', '0', 100);
INSERT INTO `area` VALUES (650000, 0, 1, '新疆维吾尔自治区', '0', 100);
INSERT INTO `area` VALUES (650100, 650000, 2, '乌鲁木齐市', '0', 100);
INSERT INTO `area` VALUES (650101, 650100, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (650102, 650100, 3, '天山区', '0', 100);
INSERT INTO `area` VALUES (650103, 650100, 3, '沙依巴克区', '0', 100);
INSERT INTO `area` VALUES (650104, 650100, 3, '新市区', '0', 100);
INSERT INTO `area` VALUES (650105, 650100, 3, '水磨沟区', '0', 100);
INSERT INTO `area` VALUES (650106, 650100, 3, '头屯河区', '0', 100);
INSERT INTO `area` VALUES (650107, 650100, 3, '达坂城区', '0', 100);
INSERT INTO `area` VALUES (650109, 650100, 3, '米东区', '0', 100);
INSERT INTO `area` VALUES (650121, 650100, 3, '乌鲁木齐县', '0', 100);
INSERT INTO `area` VALUES (650200, 650000, 2, '克拉玛依市', '0', 100);
INSERT INTO `area` VALUES (650201, 650200, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (650202, 650200, 3, '独山子区', '0', 100);
INSERT INTO `area` VALUES (650203, 650200, 3, '克拉玛依区', '0', 100);
INSERT INTO `area` VALUES (650204, 650200, 3, '白碱滩区', '0', 100);
INSERT INTO `area` VALUES (650205, 650200, 3, '乌尔禾区', '0', 100);
INSERT INTO `area` VALUES (650400, 650000, 2, '吐鲁番市', '0', 100);
INSERT INTO `area` VALUES (650402, 650400, 3, '高昌区', '0', 100);
INSERT INTO `area` VALUES (650421, 650400, 3, '鄯善县', '0', 100);
INSERT INTO `area` VALUES (650422, 650400, 3, '托克逊县', '0', 100);
INSERT INTO `area` VALUES (650500, 650000, 2, '哈密市', '0', 100);
INSERT INTO `area` VALUES (650502, 650500, 3, '伊州区', '0', 100);
INSERT INTO `area` VALUES (650521, 650500, 3, '巴里坤哈萨克自治县', '0', 100);
INSERT INTO `area` VALUES (650522, 650500, 3, '伊吾县', '0', 100);
INSERT INTO `area` VALUES (652300, 650000, 2, '昌吉回族自治州', '0', 100);
INSERT INTO `area` VALUES (652301, 652300, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (652302, 652300, 3, '阜康市', '0', 100);
INSERT INTO `area` VALUES (652323, 652300, 3, '呼图壁县', '0', 100);
INSERT INTO `area` VALUES (652324, 652300, 3, '玛纳斯县', '0', 100);
INSERT INTO `area` VALUES (652325, 652300, 3, '奇台县', '0', 100);
INSERT INTO `area` VALUES (652327, 652300, 3, '吉木萨尔县', '0', 100);
INSERT INTO `area` VALUES (652328, 652300, 3, '木垒哈萨克自治县', '0', 100);
INSERT INTO `area` VALUES (652700, 650000, 2, '博尔塔拉蒙古自治州', '0', 100);
INSERT INTO `area` VALUES (652701, 652700, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (652702, 652700, 3, '阿拉山口市', '0', 100);
INSERT INTO `area` VALUES (652722, 652700, 3, '精河县', '0', 100);
INSERT INTO `area` VALUES (652723, 652700, 3, '温泉县', '0', 100);
INSERT INTO `area` VALUES (652800, 650000, 2, '巴音郭楞蒙古自治州', '0', 100);
INSERT INTO `area` VALUES (652801, 652800, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (652822, 652800, 3, '轮台县', '0', 100);
INSERT INTO `area` VALUES (652823, 652800, 3, '尉犁县', '0', 100);
INSERT INTO `area` VALUES (652824, 652800, 3, '若羌县', '0', 100);
INSERT INTO `area` VALUES (652825, 652800, 3, '且末县', '0', 100);
INSERT INTO `area` VALUES (652826, 652800, 3, '焉耆回族自治县', '0', 100);
INSERT INTO `area` VALUES (652827, 652800, 3, '和静县', '0', 100);
INSERT INTO `area` VALUES (652828, 652800, 3, '和硕县', '0', 100);
INSERT INTO `area` VALUES (652829, 652800, 3, '博湖县', '0', 100);
INSERT INTO `area` VALUES (652900, 650000, 2, '阿克苏地区', '0', 100);
INSERT INTO `area` VALUES (652901, 652900, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (652922, 652900, 3, '温宿县', '0', 100);
INSERT INTO `area` VALUES (652923, 652900, 3, '库车县', '0', 100);
INSERT INTO `area` VALUES (652924, 652900, 3, '沙雅县', '0', 100);
INSERT INTO `area` VALUES (652925, 652900, 3, '新和县', '0', 100);
INSERT INTO `area` VALUES (652926, 652900, 3, '拜城县', '0', 100);
INSERT INTO `area` VALUES (652927, 652900, 3, '乌什县', '0', 100);
INSERT INTO `area` VALUES (652928, 652900, 3, '阿瓦提县', '0', 100);
INSERT INTO `area` VALUES (652929, 652900, 3, '柯坪县', '0', 100);
INSERT INTO `area` VALUES (653000, 650000, 2, '克孜勒苏柯尔克孜自治州', '0', 100);
INSERT INTO `area` VALUES (653001, 653000, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (653022, 653000, 3, '阿克陶县', '0', 100);
INSERT INTO `area` VALUES (653023, 653000, 3, '阿合奇县', '0', 100);
INSERT INTO `area` VALUES (653024, 653000, 3, '乌恰县', '0', 100);
INSERT INTO `area` VALUES (653100, 650000, 2, '喀什地区', '0', 100);
INSERT INTO `area` VALUES (653101, 653100, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (653121, 653100, 3, '疏附县', '0', 100);
INSERT INTO `area` VALUES (653122, 653100, 3, '疏勒县', '0', 100);
INSERT INTO `area` VALUES (653123, 653100, 3, '英吉沙县', '0', 100);
INSERT INTO `area` VALUES (653124, 653100, 3, '泽普县', '0', 100);
INSERT INTO `area` VALUES (653125, 653100, 3, '莎车县', '0', 100);
INSERT INTO `area` VALUES (653126, 653100, 3, '叶城县', '0', 100);
INSERT INTO `area` VALUES (653127, 653100, 3, '麦盖提县', '0', 100);
INSERT INTO `area` VALUES (653128, 653100, 3, '岳普湖县', '0', 100);
INSERT INTO `area` VALUES (653129, 653100, 3, '伽师县', '0', 100);
INSERT INTO `area` VALUES (653130, 653100, 3, '巴楚县', '0', 100);
INSERT INTO `area` VALUES (653131, 653100, 3, '塔什库尔干塔吉克自治县', '0', 100);
INSERT INTO `area` VALUES (653200, 650000, 2, '和田地区', '0', 100);
INSERT INTO `area` VALUES (653201, 653200, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (653221, 653200, 3, '和田县', '0', 100);
INSERT INTO `area` VALUES (653222, 653200, 3, '墨玉县', '0', 100);
INSERT INTO `area` VALUES (653223, 653200, 3, '皮山县', '0', 100);
INSERT INTO `area` VALUES (653224, 653200, 3, '洛浦县', '0', 100);
INSERT INTO `area` VALUES (653225, 653200, 3, '策勒县', '0', 100);
INSERT INTO `area` VALUES (653226, 653200, 3, '于田县', '0', 100);
INSERT INTO `area` VALUES (653227, 653200, 3, '民丰县', '0', 100);
INSERT INTO `area` VALUES (654000, 650000, 2, '伊犁哈萨克自治州', '0', 100);
INSERT INTO `area` VALUES (654002, 654000, 3, '伊宁市', '0', 100);
INSERT INTO `area` VALUES (654003, 654000, 3, '奎屯市', '0', 100);
INSERT INTO `area` VALUES (654004, 654000, 3, '霍尔果斯市', '0', 100);
INSERT INTO `area` VALUES (654021, 654000, 3, '伊宁县', '0', 100);
INSERT INTO `area` VALUES (654022, 654000, 3, '察布查尔锡伯自治县', '0', 100);
INSERT INTO `area` VALUES (654023, 654000, 3, '霍城县', '0', 100);
INSERT INTO `area` VALUES (654024, 654000, 3, '巩留县', '0', 100);
INSERT INTO `area` VALUES (654025, 654000, 3, '新源县', '0', 100);
INSERT INTO `area` VALUES (654026, 654000, 3, '昭苏县', '0', 100);
INSERT INTO `area` VALUES (654027, 654000, 3, '特克斯县', '0', 100);
INSERT INTO `area` VALUES (654028, 654000, 3, '尼勒克县', '0', 100);
INSERT INTO `area` VALUES (654200, 650000, 2, '塔城地区', '0', 100);
INSERT INTO `area` VALUES (654201, 654200, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (654202, 654200, 3, '乌苏市', '0', 100);
INSERT INTO `area` VALUES (654221, 654200, 3, '额敏县', '0', 100);
INSERT INTO `area` VALUES (654223, 654200, 3, '沙湾县', '0', 100);
INSERT INTO `area` VALUES (654224, 654200, 3, '托里县', '0', 100);
INSERT INTO `area` VALUES (654225, 654200, 3, '裕民县', '0', 100);
INSERT INTO `area` VALUES (654226, 654200, 3, '和布克赛尔蒙古自治县', '0', 100);
INSERT INTO `area` VALUES (654300, 650000, 2, '阿勒泰地区', '0', 100);
INSERT INTO `area` VALUES (654301, 654300, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (654321, 654300, 3, '布尔津县', '0', 100);
INSERT INTO `area` VALUES (654322, 654300, 3, '富蕴县', '0', 100);
INSERT INTO `area` VALUES (654323, 654300, 3, '福海县', '0', 100);
INSERT INTO `area` VALUES (654324, 654300, 3, '哈巴河县', '0', 100);
INSERT INTO `area` VALUES (654325, 654300, 3, '青河县', '0', 100);
INSERT INTO `area` VALUES (654326, 654300, 3, '吉木乃县', '0', 100);
INSERT INTO `area` VALUES (659000, 650000, 2, '自治区直辖县级行政区划', '0', 100);
INSERT INTO `area` VALUES (659001, 659000, 3, '市辖区', '0', 100);
INSERT INTO `area` VALUES (659002, 659000, 3, '阿拉尔市', '0', 100);
INSERT INTO `area` VALUES (659003, 659000, 3, '图木舒克市', '0', 100);
INSERT INTO `area` VALUES (659004, 659000, 3, '五家渠市', '0', 100);
INSERT INTO `area` VALUES (659006, 659000, 3, '铁门关市', '0', 100);
INSERT INTO `area` VALUES (710000, 0, 1, '台湾省', '0', 100);
INSERT INTO `area` VALUES (810000, 0, 1, '香港特别行政区', '0', 100);
INSERT INTO `area` VALUES (820000, 0, 1, '澳门特别行政区', '0', 100);
INSERT INTO `area` VALUES (920000, 500200, 3, '静海县', '301600', 100);
INSERT INTO `area` VALUES (920001, 330100, 3, '富阳市', '311400', 100);
INSERT INTO `area` VALUES (920002, 410100, 3, '郑东新区', '0', 100);
INSERT INTO `area` VALUES (920003, 440100, 3, '萝岗区', '510100', 100);
INSERT INTO `area` VALUES (920004, 441900, 3, '东城街道', '0', 100);
INSERT INTO `area` VALUES (920005, 441900, 3, '南城街道', '0', 100);
INSERT INTO `area` VALUES (920006, 441900, 3, '万江街道', '0', 100);
INSERT INTO `area` VALUES (920007, 441900, 3, '莞城街道', '0', 100);
INSERT INTO `area` VALUES (920008, 441900, 3, '石碣镇', '0', 100);
INSERT INTO `area` VALUES (920009, 441900, 3, '石龙镇', '0', 100);
INSERT INTO `area` VALUES (920010, 441900, 3, '茶山镇', '0', 100);
INSERT INTO `area` VALUES (920011, 441900, 3, '石排镇', '0', 100);
INSERT INTO `area` VALUES (920012, 441900, 3, '企石镇', '0', 0);
INSERT INTO `area` VALUES (920013, 441900, 3, '横沥镇', '0', 0);
INSERT INTO `area` VALUES (920014, 441900, 3, '桥头镇', '0', 0);
INSERT INTO `area` VALUES (920015, 441900, 3, '谢岗镇', '0', 0);
INSERT INTO `area` VALUES (920016, 441900, 3, '东坑镇', '0', 0);
INSERT INTO `area` VALUES (920017, 441900, 3, '常平镇', '0', 0);
INSERT INTO `area` VALUES (920018, 441900, 3, '寮步镇', '0', 0);
INSERT INTO `area` VALUES (920019, 441900, 3, '樟木头镇', '0', 0);
INSERT INTO `area` VALUES (920020, 441900, 3, '大朗镇', '0', 0);
INSERT INTO `area` VALUES (920021, 441900, 3, '黄江镇', '0', 0);
INSERT INTO `area` VALUES (920022, 441900, 3, '清溪镇', '0', 0);
INSERT INTO `area` VALUES (920023, 441900, 3, '塘厦镇', '0', 0);
INSERT INTO `area` VALUES (920024, 441900, 3, '凤岗镇', '0', 0);
INSERT INTO `area` VALUES (920025, 441900, 3, '大岭山镇', '0', 0);
INSERT INTO `area` VALUES (920026, 441900, 3, '长安镇', '0', 0);
INSERT INTO `area` VALUES (920027, 441900, 3, '虎门镇', '0', 0);
INSERT INTO `area` VALUES (920028, 441900, 3, '厚街镇', '0', 0);
INSERT INTO `area` VALUES (920029, 441900, 3, '沙田镇', '0', 0);
INSERT INTO `area` VALUES (920030, 441900, 3, '道滘镇', '0', 0);
INSERT INTO `area` VALUES (920031, 441900, 3, '洪梅镇', '0', 0);
INSERT INTO `area` VALUES (920032, 441900, 3, '麻涌镇', '0', 0);
INSERT INTO `area` VALUES (920033, 441900, 3, '望牛墩镇', '0', 0);
INSERT INTO `area` VALUES (920034, 441900, 3, '中堂镇', '0', 0);
INSERT INTO `area` VALUES (920035, 441900, 3, '高埗镇', '0', 0);
INSERT INTO `area` VALUES (920036, 441900, 3, '松山湖管委会', '0', 0);
INSERT INTO `area` VALUES (920037, 441900, 3, '虎门港管委会', '0', 0);
INSERT INTO `area` VALUES (920038, 441900, 3, '东莞生态园', '0', 0);
INSERT INTO `area` VALUES (920039, 442000, 3, '中山市', '0', 0);
INSERT INTO `area` VALUES (920040, 460300, 3, '三沙市', '0', 0);
INSERT INTO `area` VALUES (920041, 460400, 3, '儋州市', '0', 0);
INSERT INTO `area` VALUES (920042, 810000, 2, '香港特别行政区', '0', 0);
INSERT INTO `area` VALUES (920043, 920042, 3, '中西区', '0', 0);
INSERT INTO `area` VALUES (920044, 920042, 3, '东区', '0', 0);
INSERT INTO `area` VALUES (920045, 920042, 3, '九龙城区', '0', 0);
INSERT INTO `area` VALUES (920046, 920042, 3, '观塘区', '0', 0);
INSERT INTO `area` VALUES (920047, 920042, 3, '南区', '0', 0);
INSERT INTO `area` VALUES (920048, 920042, 3, '深水埗区', '0', 0);
INSERT INTO `area` VALUES (920049, 920042, 3, '湾仔区', '0', 0);
INSERT INTO `area` VALUES (920050, 920042, 3, '黄大仙区', '0', 0);
INSERT INTO `area` VALUES (920051, 920042, 3, '油尖旺区', '0', 0);
INSERT INTO `area` VALUES (920052, 920042, 3, '离岛区', '0', 0);
INSERT INTO `area` VALUES (920053, 920042, 3, '葵青区', '0', 0);
INSERT INTO `area` VALUES (920054, 920042, 3, '北区', '0', 0);
INSERT INTO `area` VALUES (920055, 920042, 3, '西贡区', '0', 0);
INSERT INTO `area` VALUES (920056, 920042, 3, '沙田区', '0', 0);
INSERT INTO `area` VALUES (920057, 920042, 3, '屯门区', '0', 0);
INSERT INTO `area` VALUES (920058, 920042, 3, '大埔区', '0', 0);
INSERT INTO `area` VALUES (920059, 920042, 3, '荃湾区', '0', 0);
INSERT INTO `area` VALUES (920060, 920042, 3, '元朗区', '0', 0);
INSERT INTO `area` VALUES (920061, 820000, 2, '澳门特别行政区', '0', 0);
INSERT INTO `area` VALUES (920062, 920061, 3, '澳门半岛', '0', 0);
INSERT INTO `area` VALUES (920063, 920061, 3, '凼仔', '0', 0);
INSERT INTO `area` VALUES (920064, 920061, 3, '路凼城', '0', 0);
INSERT INTO `area` VALUES (920065, 920061, 3, '路环', '0', 0);
INSERT INTO `area` VALUES (920066, 710000, 2, '台北市', '0', 0);
INSERT INTO `area` VALUES (920067, 710000, 2, '高雄市', '0', 0);
INSERT INTO `area` VALUES (920068, 710000, 2, '台南市', '0', 0);
INSERT INTO `area` VALUES (920069, 710000, 2, '台中市', '0', 0);
INSERT INTO `area` VALUES (920070, 710000, 2, '南投县', '0', 0);
INSERT INTO `area` VALUES (920071, 710000, 2, '基隆市', '0', 0);
INSERT INTO `area` VALUES (920072, 710000, 2, '新竹市', '0', 0);
INSERT INTO `area` VALUES (920073, 710000, 2, '嘉义市', '0', 0);
INSERT INTO `area` VALUES (920074, 710000, 2, '新北市', '0', 0);
INSERT INTO `area` VALUES (920075, 710000, 2, '宜兰县', '0', 0);
INSERT INTO `area` VALUES (920076, 710000, 2, '新竹县', '0', 0);
INSERT INTO `area` VALUES (920077, 710000, 2, '桃园市', '0', 0);
INSERT INTO `area` VALUES (920078, 710000, 2, '苗栗县', '0', 0);
INSERT INTO `area` VALUES (920079, 710000, 2, '彰化县', '0', 0);
INSERT INTO `area` VALUES (920080, 710000, 2, '嘉义县', '0', 0);
INSERT INTO `area` VALUES (920081, 710000, 2, '云林县', '0', 0);
INSERT INTO `area` VALUES (920082, 710000, 2, '屏东县', '0', 0);
INSERT INTO `area` VALUES (920083, 710000, 2, '台东县', '0', 0);
INSERT INTO `area` VALUES (920084, 710000, 2, '花莲县', '0', 0);
INSERT INTO `area` VALUES (920085, 710000, 2, '澎湖县', '0', 0);
INSERT INTO `area` VALUES (920086, 920066, 3, '台北市', '0', 0);
INSERT INTO `area` VALUES (920087, 920067, 3, '高雄市', '0', 0);
INSERT INTO `area` VALUES (920088, 920068, 3, '台南市', '0', 0);
INSERT INTO `area` VALUES (920089, 920069, 3, '台中市', '0', 0);
INSERT INTO `area` VALUES (920090, 920070, 3, '南投县', '0', 0);
INSERT INTO `area` VALUES (920091, 920071, 3, '基隆市', '0', 0);
INSERT INTO `area` VALUES (920092, 920072, 3, '新竹市', '0', 0);
INSERT INTO `area` VALUES (920093, 920073, 3, '嘉义市', '0', 0);
INSERT INTO `area` VALUES (920094, 920074, 3, '新北市', '0', 0);
INSERT INTO `area` VALUES (920095, 920075, 3, '宜兰县', '0', 0);
INSERT INTO `area` VALUES (920096, 920076, 3, '新竹县', '0', 0);
INSERT INTO `area` VALUES (920097, 920077, 3, '桃园市', '0', 0);
INSERT INTO `area` VALUES (920098, 920078, 3, '苗栗县', '0', 0);
INSERT INTO `area` VALUES (920099, 920079, 3, '彰化县', '0', 0);
INSERT INTO `area` VALUES (920100, 920080, 3, '嘉义县', '0', 0);
INSERT INTO `area` VALUES (920101, 920081, 3, '云林县', '0', 0);
INSERT INTO `area` VALUES (920102, 920082, 3, '屏东县', '0', 0);
INSERT INTO `area` VALUES (920103, 920083, 3, '台东县', '0', 0);
INSERT INTO `area` VALUES (920104, 920084, 3, '花莲县', '0', 0);
INSERT INTO `area` VALUES (920105, 920085, 3, ' 澎湖县', '0', 0);

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NULL DEFAULT NULL COMMENT '文章标题',
  `cover` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文章封面图',
  `content` longtext NULL COMMENT '文章内容',
  `type_id` int(11) UNSIGNED NULL DEFAULT NULL COMMENT '文章分类id',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '文章创建时间',
  `utime` bigint(12) UNSIGNED NULL DEFAULT NULL COMMENT '修改时间',
  `sort` smallint(5) UNSIGNED NULL DEFAULT 100 COMMENT '文章排序  从小到大',
  `is_pub` smallint(1) UNSIGNED NULL DEFAULT NULL COMMENT '1 发布  2 不发布',
  `isdel` bigint(12) UNSIGNED NULL DEFAULT NULL COMMENT '软删除位置  有时间代表删除',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `isdel`(`isdel`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 ROW_FORMAT = Compact;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES (1, '测试', '6554e73ccd5a4b81b196b5ec3f412d0c', '<p>这是测试标题<em><strong>他</strong></em></p>', 1, 1540179322, 1586616676, 100, 1, NULL);
INSERT INTO `article` VALUES (2, '44', '', '<p>66tdfd</p>', 2, 1586421417, 1586421417, 100, 1, NULL);

-- ----------------------------
-- Table structure for article_type
-- ----------------------------
DROP TABLE IF EXISTS `article_type`;
CREATE TABLE `article_type`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pid` int(11) NULL DEFAULT NULL COMMENT '父id',
  `type_name` varchar(32) NULL DEFAULT NULL COMMENT '分类名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 ROW_FORMAT = Compact;

-- ----------------------------
-- Records of article_type
-- ----------------------------
INSERT INTO `article_type` VALUES (1, 0, '111');
INSERT INTO `article_type` VALUES (2, 1, '1');
INSERT INTO `article_type` VALUES (3, 0, '测试');

-- ----------------------------
-- Table structure for backstage_notice
-- ----------------------------
DROP TABLE IF EXISTS `backstage_notice`;
CREATE TABLE `backstage_notice`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NULL DEFAULT NULL COMMENT '公告标题',
  `content` longtext NULL COMMENT '公告内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `utime` bigint(12) UNSIGNED NULL DEFAULT NULL COMMENT '修改时间',
  `sort` smallint(5) UNSIGNED NULL DEFAULT 100 COMMENT '文章排序  从小到大',
  `is_pub` smallint(1) UNSIGNED NULL DEFAULT NULL COMMENT '1 发布  2 不发布',
  `isdel` bigint(12) UNSIGNED NULL DEFAULT NULL COMMENT '软删除位置  有时间代表删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for balance
-- ----------------------------
DROP TABLE IF EXISTS `balance`;
CREATE TABLE `balance`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL COMMENT '用户id',
  `type` smallint(2) UNSIGNED NOT NULL COMMENT '类型',
  `money` decimal(10, 2) NOT NULL COMMENT '金额',
  `balance` decimal(10, 2) NOT NULL COMMENT '余额',
  `source_id` varchar(20) NOT NULL COMMENT '资源id',
  `memo` varchar(200) NOT NULL COMMENT '描述',
  `update_time` timestamp NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 COMMENT = '用户余额表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for bill_aftersales
-- ----------------------------
DROP TABLE IF EXISTS `bill_aftersales`;
CREATE TABLE `bill_aftersales`  (
  `aftersales_id` varchar(20) NOT NULL COMMENT '售后单id',
  `order_id` varchar(20) NULL DEFAULT NULL COMMENT '订单ID 关联order.id',
  `user_id` int(10) UNSIGNED NULL DEFAULT NULL COMMENT '用户ID 关联user.id',
  `type` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '售后类型，1=只退款，2退款退货',
  `refund` decimal(10, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '退款金额',
  `status` tinyint(1) UNSIGNED NULL DEFAULT 1 COMMENT '状态 1=未审核 2=审核通过 3=审核拒绝',
  `reason` varchar(255) NOT NULL COMMENT '退款原因',
  `mark` varchar(255) NULL DEFAULT NULL COMMENT '卖家备注，如果审核失败了，会显示到前端',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `utime` bigint(12) UNSIGNED NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`aftersales_id`) USING BTREE
) ENGINE = InnoDB COMMENT = '退货单表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for bill_aftersales_images
-- ----------------------------
DROP TABLE IF EXISTS `bill_aftersales_images`;
CREATE TABLE `bill_aftersales_images`  (
  `aftersales_id` varchar(20) NOT NULL COMMENT '售后单id',
  `image_id` char(32) NOT NULL COMMENT '图片ID',
  INDEX `aftersales_id`(`aftersales_id`) USING BTREE
) ENGINE = InnoDB COMMENT = '商品图片关联表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for bill_aftersales_items
-- ----------------------------
DROP TABLE IF EXISTS `bill_aftersales_items`;
CREATE TABLE `bill_aftersales_items`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `aftersales_id` varchar(20) NOT NULL COMMENT '售后单id',
  `order_items_id` int(10) UNSIGNED NULL DEFAULT NULL COMMENT '订单明细ID 关联order_items.id',
  `goods_id` int(10) UNSIGNED NULL DEFAULT NULL COMMENT '商品ID 关联goods.id',
  `product_id` int(10) UNSIGNED NULL DEFAULT NULL COMMENT '货品ID 关联products.id',
  `sn` varchar(30) NULL DEFAULT NULL COMMENT '货品编码',
  `bn` varchar(30) NULL DEFAULT NULL COMMENT '商品编码',
  `name` varchar(200) NULL DEFAULT NULL COMMENT '商品名称',
  `image_url` varchar(100) NOT NULL COMMENT '图片',
  `nums` smallint(5) UNSIGNED NULL DEFAULT 1 COMMENT '数量',
  `addon` text NULL COMMENT '货品明细序列号存储',
  `utime` bigint(12) UNSIGNED NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 COMMENT = '售后单明细表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for bill_delivery
-- ----------------------------
DROP TABLE IF EXISTS `bill_delivery`;
CREATE TABLE `bill_delivery`  (
  `delivery_id` varchar(20) NOT NULL,
  `order_id` varchar(20) NOT NULL COMMENT '订单ID 关联order.id',
  `user_id` int(10) UNSIGNED NULL DEFAULT NULL COMMENT '用户id 关联user.id',
  `logi_code` varchar(50) NULL DEFAULT NULL COMMENT '物流公司编码',
  `logi_no` varchar(50) NULL DEFAULT NULL COMMENT '物流单号',
  `logi_information` longtext NULL COMMENT '快递物流信息',
  `logi_status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '0快递信息可能更新  1快递信息不更新了',
  `ship_area_id` int(10) UNSIGNED NULL DEFAULT NULL COMMENT '收货地区ID',
  `ship_address` varchar(200) NULL DEFAULT NULL COMMENT '收货详细地址',
  `ship_name` varchar(50) NULL DEFAULT NULL COMMENT '收货人姓名',
  `ship_mobile` char(15) NULL DEFAULT NULL COMMENT '收货电话',
  `confirm_time` bigint(12) UNSIGNED NULL DEFAULT NULL COMMENT '确认s收货时间',
  `status` tinyint(1) UNSIGNED NULL DEFAULT 2 COMMENT '状态 1=准备发货 2=已发货 3=已确认 4=其他',
  `memo` varchar(255) NULL DEFAULT NULL COMMENT '备注',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `utime` bigint(12) UNSIGNED NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`delivery_id`) USING BTREE
) ENGINE = InnoDB COMMENT = '发货单表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for bill_delivery_items
-- ----------------------------
DROP TABLE IF EXISTS `bill_delivery_items`;
CREATE TABLE `bill_delivery_items`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `delivery_id` varchar(20) NOT NULL COMMENT '发货单号 关联bill_delivery.id',
  `order_items_id` int(10) UNSIGNED NULL DEFAULT NULL COMMENT '订单明细ID 关联order_items.id',
  `nums` smallint(5) UNSIGNED NULL DEFAULT NULL COMMENT '发货数量',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 COMMENT = '发货单详情表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for bill_lading
-- ----------------------------
DROP TABLE IF EXISTS `bill_lading`;
CREATE TABLE `bill_lading`  (
  `id` varchar(20) NOT NULL COMMENT '提货单号',
  `order_id` varchar(20) NULL DEFAULT NULL COMMENT '订单号',
  `store_id` int(10) UNSIGNED NULL DEFAULT NULL COMMENT '提货门店ID',
  `name` varchar(30) NULL DEFAULT NULL COMMENT '提货人姓名',
  `mobile` varchar(15) NULL DEFAULT NULL COMMENT '提货手机号',
  `clerk_id` int(10) UNSIGNED NULL DEFAULT NULL COMMENT '处理店员ID',
  `ptime` bigint(12) UNSIGNED NULL DEFAULT NULL COMMENT '提货时间',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '提货状态1=未提货 2=已提货',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `utime` bigint(12) UNSIGNED NULL DEFAULT NULL COMMENT '更新时间',
  `isdel` bigint(12) UNSIGNED NULL DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB COMMENT = '提货单表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for bill_payments
-- ----------------------------
DROP TABLE IF EXISTS `bill_payments`;
CREATE TABLE `bill_payments`  (
  `payment_id` varchar(20) NOT NULL COMMENT '支付单号',
  `money` decimal(10, 2) NULL DEFAULT 0.00 COMMENT '支付金额',
  `user_id` int(10) UNSIGNED NULL DEFAULT NULL COMMENT '用户ID 关联user.id',
  `type` smallint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '资源类型1=订单,2充值单',
  `status` tinyint(1) UNSIGNED NULL DEFAULT 1 COMMENT '支付状态 1=未支付 2=支付成功 3=其他',
  `payment_code` varchar(50) NULL DEFAULT NULL COMMENT '支付类型编码 关联payments.code',
  `ip` varchar(50) NULL DEFAULT NULL COMMENT '支付单生成IP',
  `params` varchar(200) NOT NULL COMMENT '支付的时候需要的参数，存的是json格式的一维数组',
  `payed_msg` varchar(255) NULL DEFAULT NULL COMMENT '支付回调后的状态描述',
  `trade_no` varchar(50) NULL DEFAULT NULL COMMENT '第三方平台交易流水号',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `utime` bigint(12) UNSIGNED NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`payment_id`) USING BTREE,
  INDEX `payment_id`(`payment_id`) USING BTREE,
  INDEX `status`(`status`) USING BTREE,
  INDEX `type`(`type`) USING BTREE
) ENGINE = InnoDB COMMENT = '支付单表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for bill_payments_rel
-- ----------------------------
DROP TABLE IF EXISTS `bill_payments_rel`;
CREATE TABLE `bill_payments_rel`  (
  `payment_id` varchar(20) NOT NULL COMMENT '支付单编号',
  `source_id` varchar(20) NOT NULL COMMENT '资源编号',
  `money` decimal(8, 2) UNSIGNED NOT NULL COMMENT '金额',
  INDEX `payment_id`(`payment_id`) USING BTREE
) ENGINE = InnoDB COMMENT = '支付单明细表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for bill_refund
-- ----------------------------
DROP TABLE IF EXISTS `bill_refund`;
CREATE TABLE `bill_refund`  (
  `refund_id` varchar(20) NOT NULL,
  `aftersales_id` varchar(20) NOT NULL COMMENT '售后单id',
  `money` decimal(10, 2) UNSIGNED NULL DEFAULT NULL COMMENT '退款金额',
  `user_id` int(10) UNSIGNED NULL DEFAULT NULL COMMENT '用户ID 关联user.id',
  `source_id` varchar(20) NOT NULL COMMENT '资源id，根据type不同而关联不同的表',
  `type` smallint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '资源类型1=订单,2充值单',
  `payment_code` varchar(50) NULL DEFAULT NULL COMMENT '退款支付类型编码 默认原路返回 关联支付单表支付编码',
  `trade_no` varchar(50) NULL DEFAULT NULL COMMENT '第三方平台交易流水号',
  `status` tinyint(1) UNSIGNED NULL DEFAULT 1 COMMENT '状态 1=未退款 2=已退款 3=退款失败，可以再次退款，4退款拒绝',
  `memo` varchar(100) NOT NULL DEFAULT '' COMMENT '退款失败原因',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `utime` bigint(12) UNSIGNED NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`refund_id`) USING BTREE,
  INDEX `refund_id`(`refund_id`) USING BTREE,
  INDEX `aftersales_id`(`aftersales_id`) USING BTREE,
  INDEX `type`(`type`) USING BTREE
) ENGINE = InnoDB COMMENT = '退款单表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for bill_reship
-- ----------------------------
DROP TABLE IF EXISTS `bill_reship`;
CREATE TABLE `bill_reship`  (
  `reship_id` varchar(20) NOT NULL,
  `order_id` varchar(20) NOT NULL COMMENT '订单ID 关联order.id',
  `aftersales_id` varchar(20) NOT NULL COMMENT '售后单id',
  `user_id` int(10) UNSIGNED NULL DEFAULT NULL COMMENT '用户ID 关联user.id',
  `logi_code` varchar(50) NULL DEFAULT NULL COMMENT '物流公司编码',
  `logi_no` varchar(50) NULL DEFAULT NULL COMMENT '物流单号',
  `status` tinyint(1) UNSIGNED NULL DEFAULT 1 COMMENT '状态 1=审核通过待发货 2=已发退货 3=已收退货',
  `memo` varchar(255) NULL DEFAULT NULL COMMENT '备注',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `utime` bigint(12) UNSIGNED NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`reship_id`) USING BTREE
) ENGINE = InnoDB COMMENT = '退货单表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for bill_reship_items
-- ----------------------------
DROP TABLE IF EXISTS `bill_reship_items`;
CREATE TABLE `bill_reship_items`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `reship_id` varchar(20) NOT NULL COMMENT '退款单单id',
  `order_items_id` int(10) UNSIGNED NULL DEFAULT NULL COMMENT '订单明细ID 关联order_items.id',
  `goods_id` int(10) UNSIGNED NULL DEFAULT NULL COMMENT '商品ID 关联goods.id',
  `product_id` int(10) UNSIGNED NULL DEFAULT NULL COMMENT '货品ID 关联products.id',
  `sn` varchar(30) NULL DEFAULT NULL COMMENT '货品编码',
  `bn` varchar(30) NULL DEFAULT NULL COMMENT '商品编码',
  `name` varchar(200) NULL DEFAULT NULL COMMENT '商品名称',
  `image_url` varchar(100) NOT NULL COMMENT '图片',
  `nums` smallint(5) UNSIGNED NULL DEFAULT 1 COMMENT '数量',
  `addon` text NULL COMMENT '货品明细序列号存储',
  `utime` bigint(12) UNSIGNED NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `reship_id`(`reship_id`) USING BTREE,
  INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 COMMENT = '退货单明细表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for brand
-- ----------------------------
DROP TABLE IF EXISTS `brand`;
CREATE TABLE `brand`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '品牌ID',
  `name` varchar(50) NULL DEFAULT NULL COMMENT '品牌名称',
  `logo` char(32) NULL DEFAULT NULL COMMENT '品牌LOGO 图片ID',
  `sort` smallint(5) UNSIGNED NULL DEFAULT 0 COMMENT '品牌排序 越小越靠前',
  `utime` bigint(12) UNSIGNED NULL DEFAULT NULL COMMENT '更新时间',
  `isdel` bigint(12) UNSIGNED NULL DEFAULT NULL COMMENT '删除标志 有数据代表删除',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id`(`id`) USING BTREE,
  INDEX `sort`(`sort`) USING BTREE,
  INDEX `isdel`(`isdel`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 COMMENT = '品牌表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of brand
-- ----------------------------
INSERT INTO `brand` VALUES (1, '依嬅莎', '56020c21a0e3b07e9906c1c6f06bee6a', 100, 1540008147, NULL);
INSERT INTO `brand` VALUES (2, '玖姿', '14b44959327363e274c8a2ba9dba3ace', 100, 1537860"2020/08/20 17:39:05";
INSERT INTO `brand` VALUES (3, '裂帛', '03ca799895a0b094bca75116e322539c', 100, 1537860168, NULL);
INSERT INTO `brand` VALUES (4, '恩裳', 'dcc56740b60745aac85a1b0433767a8d', 100, 1537860181, NULL);
INSERT INTO `brand` VALUES (5, '水墨青华', 'b9d70b1b457f77b3796cd4229c9b0aa2', 100, 1537860201, NULL);
INSERT INTO `brand` VALUES (6, 'UR', 'def45acaee091fb6ab66634b76a5ce48', 100, 1537860212, NULL);
INSERT INTO `brand` VALUES (7, '拉夏贝尔', 'e066155b201c578f5cd467616b0483b2', 100, 1537860243, NULL);
INSERT INTO `brand` VALUES (8, '茵曼', '38b53dadcfeb35a77678a0a9cfdb7a7c', 100, 1537860259, NULL);
INSERT INTO `brand` VALUES (9, '罗衣', 'fb594a67a5bd4034879e10b39fc27be9', 100, 1537860270, NULL);
INSERT INTO `brand` VALUES (10, '两三事', '2660dd8bb5ef408b75d3ac78d7a45c72', 100, 1537860285, NULL);
INSERT INTO `brand` VALUES (11, '千仞岗', '9422a9632cae4f6c45a171c58a9f776c', 100, 1537860296, NULL);
INSERT INTO `brand` VALUES (12, '艾尚臣', 'd80e32cf4665fb60ef9b632466c835e2', 100, 1537860317, NULL);
INSERT INTO `brand` VALUES (13, '波司登', '78881593fcf3d651b5c0e69e6e8eba97', 100, 1537860332, NULL);
INSERT INTO `brand` VALUES (14, 'DKCHENPIN', 'e75777b3c40755d4d0febd7696452150', 100, 1537860350, NULL);
INSERT INTO `brand` VALUES (15, '薇咔拉', 'fcf3bc0c3842963e0ccd606312263f9c', 100, 1537860372, NULL);
INSERT INTO `brand` VALUES (16, '测试品牌', 'e300e8a0ae4af3a490a88c8196d7bd53', 100, 1540463446, 1540463446);
INSERT INTO `brand` VALUES (17, '测试品牌', 'c667372acee834c7e4bc36fb51c3bee9', 100, 1540463441, 1540463441);

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NULL DEFAULT NULL COMMENT '用户ID 关联user.id',
  `product_id` int(10) UNSIGNED NULL DEFAULT NULL COMMENT '货品ID',
  `nums` smallint(5) UNSIGNED NULL DEFAULT 0 COMMENT '货品数量',
  `type` tinyint(2) UNSIGNED NOT NULL DEFAULT 1 COMMENT '购物车类型,1普通类型，2拼团类型',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 COMMENT = '购物车表（每个用户最多加100条信息）' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for clerk
-- ----------------------------
DROP TABLE IF EXISTS `clerk`;
CREATE TABLE `clerk`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `store_id` int(10) UNSIGNED NULL DEFAULT NULL COMMENT '店铺ID',
  `user_id` int(10) UNSIGNED NULL DEFAULT NULL COMMENT '用户ID',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '关联时间',
  `utime` bigint(12) UNSIGNED NULL DEFAULT NULL COMMENT '更新时间',
  `isdel` bigint(12) UNSIGNED NULL DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 COMMENT = '店铺店员关联表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for coupon
-- ----------------------------
DROP TABLE IF EXISTS `coupon`;
CREATE TABLE `coupon`  (
  `coupon_code` varchar(20) NOT NULL COMMENT '优惠券编码',
  `promotion_id` int(10) UNSIGNED NOT NULL COMMENT '优惠券id',
  `is_used` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '是否使用1未使用，2已使用',
  `user_id` int(10) UNSIGNED NULL DEFAULT NULL COMMENT '谁领取了',
  `used_id` int(10) UNSIGNED NULL DEFAULT NULL COMMENT '被谁用了',
  `update_time` timestamp NOT NULL COMMENT '创建时间',
  `utime` bigint(12) UNSIGNED NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`coupon_code`) USING BTREE
) ENGINE = InnoDB COMMENT = '优惠券表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for files
-- ----------------------------
DROP TABLE IF EXISTS `files`;
CREATE TABLE `files`  (
  `id` char(32) NOT NULL COMMENT '视频ID',
  `name` varchar(50) NULL DEFAULT NULL COMMENT '视频名称',
  `url` varchar(255) NULL DEFAULT NULL COMMENT '绝对地址',
  `path` varchar(255) NULL DEFAULT NULL COMMENT '物理地址',
  `type` enum('web','local') NULL DEFAULT 'local' COMMENT '存储引擎',
  `file_type` enum('video') NULL DEFAULT 'video' COMMENT '文件类型',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `isdel` bigint(12) UNSIGNED NULL DEFAULT NULL COMMENT '删除标志 有数据代表删除',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE,
  INDEX `id_2`(`id`) USING BTREE,
  INDEX `isdel`(`isdel`) USING BTREE
) ENGINE = InnoDB COMMENT = '文件表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for form
-- ----------------------------
DROP TABLE IF EXISTS `form`;
CREATE TABLE `form`  (
  `id` bigint(12) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NULL DEFAULT NULL COMMENT '表单名称',
  `type` tinyint(1) UNSIGNED NOT NULL DEFAULT 2 COMMENT '1订单、2留言、3反馈、4登记、5调研',
  `sort` int(5) UNSIGNED NULL DEFAULT 100 COMMENT '表单排序',
  `desc` varchar(255) NULL DEFAULT NULL COMMENT '表单描述',
  `head_type` tinyint(1) UNSIGNED NULL DEFAULT 1 COMMENT '1图片2轮播3视频',
  `head_type_value` varchar(200) NULL DEFAULT NULL COMMENT '表单头值',
  `head_type_video` varchar(32) NULL DEFAULT NULL,
  `button_name` varchar(50) NULL DEFAULT NULL COMMENT '表单提交按钮名称',
  `button_color` varchar(30) NULL DEFAULT NULL COMMENT '表单按钮颜色',
  `is_login` tinyint(1) UNSIGNED NULL DEFAULT 2 COMMENT '是否需要登录1需要2不需要',
  `qrcode` varchar(200) NULL DEFAULT NULL COMMENT '二维码图片地址',
  `return_msg` varchar(200) NULL DEFAULT '' COMMENT '提交后提示语',
  `end_date` bigint(12) UNSIGNED NULL DEFAULT NULL COMMENT '到期时间',
  `update_time` timestamp NULL DEFAULT 0 COMMENT '创建时间',
  `utime` bigint(12) UNSIGNED NULL DEFAULT 0 COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of form
-- ----------------------------
INSERT INTO `form` VALUES (1, 'test', 1, 100, '', 1, NULL, NULL, 'test', 'blue', 2, NU"2020/08/20 17:39:05" 1573552101, 1573552101);

-- ----------------------------
-- Table structure for form_item
-- ----------------------------
DROP TABLE IF EXISTS `form_item`;
CREATE TABLE `form_item`  (
  `id` bigint(12) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NULL DEFAULT NULL COMMENT '字段名称',
  `type` varchar(30) NULL DEFAULT NULL COMMENT '字段类型',
  `validation_type` varchar(30) NULL DEFAULT NULL COMMENT '验证类型',
  `value` varchar(255) NULL DEFAULT NULL COMMENT '表单值',
  `default_value` varchar(255) NULL DEFAULT NULL COMMENT '默认值',
  `form_id` bigint(12) UNSIGNED NULL DEFAULT 0 COMMENT '表单id',
  `required` tinyint(1) UNSIGNED NULL DEFAULT 2 COMMENT '是否必填，1必填，2不必填',
  `sort` int(5) UNSIGNED NULL DEFAULT 100 COMMENT '排序',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 COMMENT = '表单项表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of form_item
-- ----------------------------
INSERT INTO `form_item` VALUES (1, '', 'radio', 'string', '', '', 1, 2, 100);

-- ----------------------------
-- Table structure for form_submit
-- ----------------------------
DROP TABLE IF EXISTS `form_submit`;
CREATE TABLE `form_submit`  (
  `id` bigint(12) UNSIGNED NOT NULL AUTO_INCREMENT,
  `form_id` bigint(12) NOT NULL DEFAULT 0 COMMENT '表单id',
  `form_name` varchar(255) NULL DEFAULT '' COMMENT '表单名称',
  `user_id` bigint(20) UNSIGNED NULL DEFAULT 0 COMMENT '会员id',
  `money` decimal(20, 2) UNSIGNED NULL DEFAULT 0.00 COMMENT '总金额',
  `pay_status` tinyint(1) UNSIGNED NOT NULL DEFAULT 2 COMMENT '2未支付，1已支付。支付状态',
  `status` tinyint(1) NULL DEFAULT 2 COMMENT '表单状态，1已处理，2未处理',
  `feedback` varchar(255) NULL DEFAULT NULL COMMENT '表单反馈',
  `ip` varchar(20) NULL DEFAULT '' COMMENT '提交人ip',
  `update_time` timestamp NULL DEFAULT 0 COMMENT '创建时间',
  `utime` bigint(12) UNSIGNED NULL DEFAULT 0 COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 COMMENT = '用户对表的提交记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for form_submit_detail
-- ----------------------------
DROP TABLE IF EXISTS `form_submit_detail`;
CREATE TABLE `form_submit_detail`  (
  `id` bigint(12) UNSIGNED NOT NULL AUTO_INCREMENT,
  `submit_id` bigint(12) NULL DEFAULT 0 COMMENT '提交表单id',
  `form_id` bigint(12) UNSIGNED NULL DEFAULT 0 COMMENT '表单id',
  `form_item_id` bigint(12) NULL DEFAULT NULL COMMENT '表单项id',
  `form_item_name` varchar(200) NULL DEFAULT '' COMMENT '表单项名称',
  `form_item_value` text NULL COMMENT '表单项值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 COMMENT = '提交表单保存大文本值表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '商品ID',
  `bn` varchar(30) NULL DEFAULT NULL COMMENT '商品编码',
  `name` varchar(200) NULL DEFAULT NULL COMMENT '商品名称',
  `brief` varchar(255) NULL DEFAULT NULL COMMENT '商品简介',
  `price` decimal(10, 2) NULL DEFAULT NULL COMMENT '商品价格',
  `costprice` decimal(10, 2) NULL DEFAULT NULL COMMENT '成本价',
  `mktprice` decimal(10, 2) NULL DEFAULT NULL COMMENT '市场价',
  `image_id` char(32) NULL DEFAULT NULL COMMENT '默认图片 图片id',
  `goods_cat_id` int(10) UNSIGNED NULL DEFAULT NULL COMMENT '商品分类ID 关联category.id',
  `goods_type_id` int(10) UNSIGNED NULL DEFAULT NULL COMMENT '商品类别ID 关联goods_type.id',
  `brand_id` int(10) UNSIGNED NULL DEFAULT NULL COMMENT '品牌ID 关联brand.id',
  `is_nomal_virtual` tinyint(1) UNSIGNED NULL DEFAULT 1 COMMENT '虚拟正常商品 1=正常 2=虚拟',
  `marketable` tinyint(1) UNSIGNED NULL DEFAULT 1 COMMENT '上架标志 1=上架 2=下架',
  `stock` int(8) UNSIGNED NULL DEFAULT 0 COMMENT '库存',
  `freeze_stock` int(8) UNSIGNED NULL DEFAULT 0 COMMENT '冻结库存',
  `weight` decimal(10, 2) UNSIGNED NULL DEFAULT NULL COMMENT '重量',
  `unit` varchar(20) NULL DEFAULT NULL COMMENT '商品单位',
  `intro` longtext NULL COMMENT '商品详情',
  `spes_desc` text NULL COMMENT '商品规格序列号存储',
  `params` text NULL COMMENT '参数序列化',
  `comments_count` int(10) UNSIGNED NULL DEFAULT 0 COMMENT '评论次数',
  `view_count` int(10) UNSIGNED NULL DEFAULT 0 COMMENT '浏览次数',
  `buy_count` int(10) UNSIGNED NULL DEFAULT 0 COMMENT '购买次数',
  `uptime` bigint(12) UNSIGNED NULL DEFAULT NULL COMMENT '上架时间',
  `downtime` bigint(12) UNSIGNED NULL DEFAULT NULL COMMENT '下架时间',
  `sort` smallint(5) UNSIGNED NULL DEFAULT 100 COMMENT '商品排序 越小越靠前',
  `is_recommend` tinyint(1) UNSIGNED NULL DEFAULT 2 COMMENT '是否推荐，1是，2不是推荐',
  `is_hot` tinyint(1) UNSIGNED NULL DEFAULT 2 COMMENT '是否热门，1是，2否',
  `label_ids` varchar(10) NULL DEFAULT NULL COMMENT '标签id逗号分隔',
  `new_spec` text NULL COMMENT '自定义规格名称',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `utime` bigint(12) UNSIGNED NULL DEFAULT NULL COMMENT '更新时间',
  `isdel` bigint(12) UNSIGNED NULL DEFAULT NULL COMMENT '删除标志 有数据表示删除',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `isdel`(`isdel`) USING BTREE,
  INDEX `is_hot`(`is_hot`) USING BTREE,
  INDEX `is_recommend`(`is_recommend`) USING BTREE,
  INDEX `sort`(`sort`) USING BTREE,
  INDEX `mktprice`(`mktprice`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 COMMENT = '商品表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES (1, '118336505', 'DKCHENPIN2018秋新款天丝中长款修身风衣外套女', '可调节袖 系带收腰设', 450.00, 0.00, 600.00, 'b419e4164d5726d057b2ae195f9a96df', 18, 1, 14, 1, 1, 2796, 0, 400.00, '件', '<p><img class=\"desc_anchor img-ks-lazyload\" id=\"desc-module-1\" src=\"https://assets.alicdn.com/kissy/1.0.0/build/imglazyload/spaceball.gif\"/></p><p><a style=\"margin: 0px; padding: 0px; color: rgb(51, 85, 170); outline: 0px;\"></a></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 1.4; color: rgb(64, 64, 64); font-family: tahoma, arial, 宋体, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"><a href=\"https://meidian.play.m.jaeapp.com/?iid=991593&cpp=0\" target=\"_blank\" style=\"margin: 0px; padding: 0px; text-decoration-line: none; color: rgb(51, 85, 170); outline: 0px;\"><img alt=\"\" src=\"https://img.alicdn.com/imgextra/i1/356060330/O1CN011EJBA7NKQe5fuXI_!!356060330.jpg\" class=\"img-ks-lazyload\"/></a></p><p><a style=\"margin: 0px; padding: 0px; color: rgb(51, 85, 170); outline: 0px;\"></a></p><p><a style=\"margin: 0px; padding: 0px; color: rgb(51, 85, 170); outline: 0px;\"></a></p><p><img src=\"https://gdp.alicdn.com/imgextra/i2/356060330/O1CN011EJBA7UknUQjGCt_!!356060330.jpg\" class=\"img-ks-lazyload\"/></p><ul style=\"list-style-type: none;\" class=\" list-paddingleft-2\"><li><p><br/></p></li></ul><p><img class=\"desc_anchor img-ks-lazyload\" id=\"desc-module-2\" src=\"https://assets.alicdn.com/kissy/1.0.0/build/imglazyload/spaceball.gif\"/></p><p><img src=\"https://img.alicdn.com/imgextra/i4/356060330/TB2L0NmwhSYBuNjSsphXXbGvVXa-356060330.jpg\" class=\"img-ks-lazyload\"/></p><p><img src=\"https://img.alicdn.com/imgextra/i2/356060330/TB26FUOnLuSBuNkHFqDXXXfhVXa-356060330.jpg\" class=\"img-ks-lazyload\"/></p><p><img src=\"https://img.alicdn.com/imgextra/i4/356060330/TB2CinchHZnBKNjSZFhXXc.oXXa-356060330.jpg\" width=\"730\" height=\"1046\" class=\"img-ks-lazyload\"/></p><p><img class=\"desc_anchor img-ks-lazyload\" id=\"desc-module-3\" src=\"https://assets.alicdn.com/kissy/1.0.0/build/imglazyload/spaceball.gif\"/></p><p><img src=\"https://img.alicdn.com/imgextra/i3/356060330/TB2XcAnnIyYBuNkSnfoXXcWgVXa-356060330.jpg\" width=\"249\" height=\"47\" class=\"img-ks-lazyload\"/></p><p><img src=\"https://img.alicdn.com/imgextra/i4/356060330/TB2eItzhP7nBKNjSZLeXXbxCFXa-356060330.jpg\" width=\"730\" height=\"1168\" class=\"img-ks-lazyload\"/></p><p><img src=\"https://img.alicdn.com/imgextra/i4/356060330/TB20a1OwmBYBeNjy0FeXXbnmFXa-356060330.jpg\" width=\"608\" class=\"img-ks-lazyload\"/></p><p><img src=\"https://img.alicdn.com/imgextra/i2/356060330/TB24SvFhHArBKNjSZFLXXc_dVXa-356060330.jpg\" width=\"730\" height=\"1168\" class=\"img-ks-lazyload\"/></p><p><img src=\"https://img.alicdn.com/imgextra/i1/356060330/TB2QndxwbGYBuNjy0FoXXciBFXa-356060330.jpg\" width=\"608\" class=\"img-ks-lazyload\"/></p><p><img src=\"https://img.alicdn.com/imgextra/i4/356060330/TB2EntxwbGYBuNjy0FoXXciBFXa-356060330.jpg\" width=\"730\" height=\"1168\" class=\"img-ks-lazyload\"/></p><p>翻领垂性风衣</p><p>柔软亲肤面料 可调节袖口 饰有侧边口袋 配有同色腰带可调节腰身</p><p><img src=\"https://img.alicdn.com/imgextra/i4/356060330/TB2jlFQwk9WBuNjSspeXXaz5VXa-356060330.jpg\" width=\"249\" height=\"40\" class=\"img-ks-lazyload\"/></p><table width=\"730\"><tbody style=\"margin: 0px; padding: 0px;\"><tr style=\"margin: 0px; padding: 0px;\" class=\"firstRow\"><td width=\"363\" style=\"margin: 0px; padding: 0px; border-color: rgb(0, 0, 0);\"><img src=\"https://img.alicdn.com/imgextra/i1/356060330/TB2TVtZwh1YBuNjy1zcXXbNcXXa-356060330.jpg\" width=\"363\" height=\"581\" class=\"img-ks-lazyload\"/></td><td width=\"4\" style=\"margin: 0px; padding: 0px; border-color: rgb(0, 0, 0);\"><br/></td><td width=\"363\" style=\"margin: 0px; padding: 0px; border-color: rgb(0, 0, 0);\"><img src=\"https://img.alicdn.com/imgextra/i2/356060330/TB2BFJ2weuSBuNjy1XcXXcYjFXa-356060330.jpg\" width=\"363\" height=\"581\" class=\"img-ks-lazyload\"/></td></tr><tr style=\"margin: 0px; padding: 0px; font-size: 20px; text-align: center; line-height: 20px;\"><td style=\"margin: 0px; padding: 20px 0px 40px; border-color: rgb(0, 0, 0);\">里约红</td><td style=\"margin: 0px; padding: 20px 0px 40px; border-color: rgb(0, 0, 0);\"><br/></td><td style=\"margin: 0px; padding: 20px 0px 40px; border-color: rgb(0, 0, 0);\">蒸汽灰</td></tr></tbody></table><table width=\"730\"><tbody style=\"margin: 0px; padding: 0px;\"><tr style=\"margin: 0px; padding: 0px;\" class=\"firstRow\"><td colspan=\"3\" style=\"margin: 0px; padding: 0px; border-color: rgb(0, 0, 0);\"><img src=\"https://img.alicdn.com/imgextra/i3/356060330/TB2W1snnIyYBuNkSnfoXXcWgVXa-356060330.jpg\" width=\"730\" class=\"img-ks-lazyload\"/></td></tr></tbody></table><p><br/></p>', 'a:2:{s:6:\"颜色\";a:4:{i:0;s:6:\"红色\";i:1;s:6:\"白色\";i:2;s:6:\"绿色\";i:3;s:6:\"蓝色\";}s:6:\"规格\";a:4:{i:0;s:7:\"规格1\";i:1;s:7:\"规格2\";i:2;s:7:\"规格3\";i:3;s:7:\"规格4\";}}', 'a:1:{s:6:\"材质\";s:6:\"化纤\";}', 0, 0, 0, NULL, NULL, 100, 1, 1, NULL, NULL, NULL, 1540430"2020/08/20 17:39:05";
INSERT INTO `goods` VALUES (2, '5446546546', '七匹狼羽绒服男短款2018冬季新款男士中年休闲爸爸装男装潮流外套', '8周年店庆，22号10点到11点 全场商品3件6折', 600.00, 590.00, 590.00, '6ee0f5a5ac6c53418852ee6cc78aeb48', 10, 1, 11, 1, 1, 679, 0, 0.00, '件', '<p><span style=\"margin: 0px; padding: 0px;\"></span></p><table width=\"790\"><tbody style=\"margin: 0px; padding: 0px;\"><tr style=\"margin: 0px; padding: 0px;\" class=\"firstRow\"><td style=\"margin: 0px; padding: 0px;\"><img src=\"https://gdp.alicdn.com/imgextra/i2/673765387/O1CN011pfI4eEVQ0tsN0d_!!673765387.jpg\" alt=\" 关联_01.jpg\"/></td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 0px;\"><img src=\"https://gdp.alicdn.com/imgextra/i4/673765387/O1CN011pfI4d2HD5YEdXz_!!673765387.jpg\" alt=\"日常关联_02.jpg\"/></td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 0px;\"><img src=\"https://gdp.alicdn.com/imgextra/i2/673765387/O1CN011pfI4dbubdTN6I3_!!673765387.jpg\" alt=\" 关联_02.jpg\"/></td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 0px; word-break: break-all;\"><img src=\"https://gdp.alicdn.com/imgextra/i4/673765387/O1CN011pfI4cntvLq6gYj_!!673765387.jpg\" alt=\" 关联_03.jpg\"/><img src=\"https://img.alicdn.com/imgextra/i2/673765387/O1CN011pfI4SjnNEgZQh0_!!673765387.jpg\" class=\"img-ks-lazyload\"/><img src=\"https://img.alicdn.com/imgextra/i4/673765387/O1CN011pfI4RO6TCEQIvw_!!673765387.jpg\" class=\"img-ks-lazyload\"/><img src=\"https://img.alicdn.com/imgextra/i4/673765387/O1CN011pfI4QHbG78TFxQ_!!673765387.jpg\" class=\"img-ks-lazyload\" width=\"655\" height=\"920\"/><img src=\"https://img.alicdn.com/imgextra/i4/673765387/O1CN011pfI4RtZ8DLTMDY_!!673765387.jpg\" class=\"img-ks-lazyload\"/><img src=\"https://img.alicdn.com/imgextra/i3/673765387/O1CN011pfI4QkfUSd7rW9_!!673765387.jpg\" class=\"img-ks-lazyload\" width=\"768\" height=\"1090\"/><img src=\"https://img.alicdn.com/imgextra/i2/673765387/O1CN011pfI4QkfYdJGYEt_!!673765387.jpg\" class=\"img-ks-lazyload\"/><img src=\"https://img.alicdn.com/imgextra/i4/673765387/O1CN011pfI4RuPpXFhCoV_!!673765387.jpg\" class=\"img-ks-lazyload\"/><img src=\"https://img.alicdn.com/imgextra/i1/673765387/O1CN011pfI4PT18Z29Y2d_!!673765387.jpg\" class=\"img-ks-lazyload\"/><img src=\"https://img.alicdn.com/imgextra/i3/673765387/O1CN011pfI4L7zrmbNYMe_!!673765387.jpg\" class=\"img-ks-lazyload\"/><img src=\"https://img.alicdn.com/imgextra/i2/673765387/O1CN011pfI4Svq7HOnDG7_!!673765387.jpg\" class=\"img-ks-lazyload\"/><img src=\"https://img.alicdn.com/imgextra/i1/673765387/O1CN011pfI4SjltuQdcqx_!!673765387.jpg\" class=\"img-ks-lazyload\"/><img src=\"https://img.alicdn.com/imgextra/i1/673765387/O1CN011pfI4RuQMql2UKL_!!673765387.jpg\" class=\"img-ks-lazyload\"/><img src=\"https://img.alicdn.com/imgextra/i4/673765387/O1CN011pfI4UeVxXNXGAH_!!673765387.jpg\" class=\"img-ks-lazyload\"/><img src=\"https://img.alicdn.com/imgextra/i2/673765387/O1CN011pfI4SYAgWQx8nC_!!673765387.jpg\" class=\"img-ks-lazyload\"/><img src=\"https://img.alicdn.com/imgextra/i3/673765387/O1CN011pfI4RuQu5aBV68_!!673765387.jpg\" class=\"img-ks-lazyload\"/><img src=\"https://img.alicdn.com/imgextra/i4/673765387/O1CN011pfI4PT3PqFBsZ1_!!673765387.jpg\" class=\"img-ks-lazyload\"/><img src=\"https://img.alicdn.com/imgextra/i2/673765387/O1CN011pfI4RtYWvyEIyC_!!673765387.jpg\" class=\"img-ks-lazyload\"/><img src=\"https://img.alicdn.com/imgextra/i3/673765387/O1CN011pfI4QkhdXpsyzq_!!673765387.jpg\" class=\"img-ks-lazyload\"/><img src=\"https://img.alicdn.com/imgextra/i4/673765387/O1CN011pfI4PT2XqSiuGV_!!673765387.jpg\" class=\"img-ks-lazyload\"/></td></tr></tbody></table><p><br/><br/></p>', 'a:2:{s:6:\"颜色\";a:3:{i:1;s:6:\"白色\";i:3;s:6:\"蓝色\";i:4;s:6:\"紫色\";}s:6:\"规格\";a:2:{i:0;s:7:\"规格1\";i:1;s:7:\"规格2\";}}', '', 0, 0, 0, NULL, NULL, 100, 1, 1, NULL, NULL, NULL, 1540430156, NULL);
INSERT INTO `goods` VALUES (4, '78678657865', '芙娜妮2018秋冬吊带连衣裙女两件套条纹针织打底衫背带PU皮裙套装', '品牌: 芙娜妮适用年龄: 25-29周岁尺码: S M L XL图案: 条纹风格: 街头街头: 欧美领型: 圆领腰型: 中腰衣门襟: 套头颜色分类: 红色袖型: 其他组合形式: 两件套', 200.00, 200.00, 200.00, 'fce63f9c69c6c4ec606b544fcc7610a2', 4, 1, 15, 1, 1, 560, 0, 0.00, '件', '<p><span style=\"margin: 0px; padding: 0px;\"></span></p><p>&nbsp;</p><p></p><p><span style=\"text-decoration:line-through;\"><strong style=\"margin: 0px; padding: 0px;\"></strong></span></p><p><span style=\"text-decoration:line-through;\"><strong style=\"margin: 0px; padding: 0px;\"></strong></span></p><p><span style=\"margin: 0px; padding: 0px;\"></span></p><p>&nbsp;</p><p></p><p><span style=\"text-decoration:line-through;\"><strong style=\"margin: 0px; padding: 0px;\"></strong></span></p><p><span style=\"text-decoration:line-through;\"><strong style=\"margin: 0px; padding: 0px;\"></strong></span></p><p><span style=\"margin: 0px; padding: 0px;\"></span></p><p>&nbsp;</p><p></p><p><span style=\"text-decoration:line-through;\"><strong style=\"margin: 0px; padding: 0px;\"></strong></span></p><p><img class=\"desc_anchor img-ks-lazyload\" id=\"desc-module-1\" src=\"https://assets.alicdn.com/kissy/1.0.0/build/imglazyload/spaceball.gif\"/><img src=\"https://img.alicdn.com/imgextra/i2/736758035/O1CN0129E4r0DXqQB56xr_!!736758035.jpg\" class=\"img-ks-lazyload\"/><img src=\"https://img.alicdn.com/imgextra/i4/736758035/O1CN0129E4r0DXdxMNWfc_!!736758035.jpg\" class=\"img-ks-lazyload\"/><img src=\"https://img.alicdn.com/imgextra/i1/736758035/O1CN0129E4qrPklkfSb1Q_!!736758035.jpg\" class=\"img-ks-lazyload\"/><img src=\"https://img.alicdn.com/imgextra/i2/736758035/O1CN0129E4qugWFnVdi9z_!!736758035.jpg\" class=\"img-ks-lazyload\"/><img class=\"desc_anchor img-ks-lazyload\" id=\"desc-module-2\" src=\"https://assets.alicdn.com/kissy/1.0.0/build/imglazyload/spaceball.gif\"/><img src=\"https://img.alicdn.com/imgextra/i4/736758035/O1CN0129E4r0cEVb02gru_!!736758035.jpg\" class=\"img-ks-lazyload\"/><img class=\"desc_anchor img-ks-lazyload\" id=\"desc-module-3\" src=\"https://assets.alicdn.com/kissy/1.0.0/build/imglazyload/spaceball.gif\"/><img src=\"https://img.alicdn.com/imgextra/i3/736758035/O1CN0129E4r27gqRgoy5s_!!736758035.jpg\" class=\"img-ks-lazyload\"/><img src=\"https://img.alicdn.com/imgextra/i3/736758035/O1CN0129E4r14jhXApfi7_!!736758035.jpg\" class=\"img-ks-lazyload\"/><img src=\"https://img.alicdn.com/imgextra/i4/736758035/O1CN0129E4r0XTf29jB3f_!!736758035.jpg\" class=\"img-ks-lazyload\"/><img src=\"https://img.alicdn.com/imgextra/i4/736758035/O1CN0129E4r14jZFNpwke_!!736758035.jpg\" class=\"img-ks-lazyload\"/><img src=\"https://img.alicdn.com/imgextra/i4/736758035/O1CN0129E4r0DXVhNJ4y3_!!736758035.jpg\" class=\"img-ks-lazyload\"/><img src=\"https://img.alicdn.com/imgextra/i4/736758035/O1CN0129E4qrPku4ykal1_!!736758035.jpg\" class=\"img-ks-lazyload\"/><img src=\"https://img.alicdn.com/imgextra/i3/736758035/O1CN0129E4qs1U57QX8jF_!!736758035.jpg\" class=\"img-ks-lazyload\"/><img src=\"https://img.alicdn.com/imgextra/i4/736758035/O1CN0129E4qrPkyH4d8zf_!!736758035.jpg\" class=\"img-ks-lazyload\"/><img src=\"https://img.alicdn.com/imgextra/i1/736758035/O1CN0129E4qpdKv3Jadpn_!!736758035.jpg\" class=\"img-ks-lazyload\"/><img src=\"https://img.alicdn.com/imgextra/i4/736758035/O1CN0129E4qq0IAjL7qin_!!736758035.jpg\" class=\"img-ks-lazyload\"/><img src=\"https://img.alicdn.com/imgextra/i3/736758035/O1CN0129E4qs1V1KFIdzp_!!736758035.jpg\" class=\"img-ks-lazyload\"/><img src=\"https://img.alicdn.com/imgextra/i3/736758035/O1CN0129E4qrmHpEdYuys_!!736758035.jpg\" class=\"img-ks-lazyload\"/><img class=\"desc_anchor img-ks-lazyload\" id=\"desc-module-4\" src=\"https://assets.alicdn.com/kissy/1.0.0/build/imglazyload/spaceball.gif\"/><img src=\"https://img.alicdn.com/imgextra/i4/736758035/O1CN0129E4qquo7wgQ2T0_!!736758035.jpg\" class=\"img-ks-lazyload\"/><img src=\"https://img.alicdn.com/imgextra/i3/736758035/O1CN0129E4qsGrStbpeLC_!!736758035.jpg\" class=\"img-ks-lazyload\"/><img src=\"https://img.alicdn.com/imgextra/i3/736758035/O1CN0129E4r1VkIrPvXuk_!!736758035.jpg\" class=\"img-ks-lazyload\"/></p><p><br/></p>', 'a:2:{s:6:\"颜色\";a:2:{i:0;s:6:\"红色\";i:1;s:6:\"白色\";}s:6:\"规格\";a:2:{i:0;s:7:\"规格1\";i:1;s:7:\"规格2\";}}', '', 0, 0, 0, NULL, NULL, 100, 1, 1, NULL, NULL, NULL, 1540281588, NULL);
INSERT INTO `goods` VALUES (5, '5465', '正品代购PINKO女包2018新款燕子包单肩斜挎压花徽章小香风链条包', 'PINKO质地: 牛皮皮革材质: 头层牛皮风格: 欧美时尚成色: 全新颜色分类: 热带雨林 黑色勋章 白色勋章 编织小香风 黑色压花 红色压花 黑色镶钻眼 黑色单排 红色单排 白色涂鸦 黑色涂鸦 粉黑涂鸦 黄黑涂鸦 黑色字母可乐 白色字母鳄鱼纹 红色字母 黑色枪排 红色love 白色珍珠 黑色珍珠 黑色镶钻双排 粉色镶钻双排 其他颜色拍下备注颜色有无夹层: 有背包方式: 单肩斜挎手提适用场景: 休闲', 200.00, 190.00, 190.00, '3e1c30dd1125de24e5395d3cd39ef5d8', 9, 1, 0, 1, 1, 200, 0, 0.00, '件', '<p><img src=\"https://img.alicdn.com/imgextra/i1/277648218/O1CN012AZtKHWohuSFUTy_!!277648218.jpg\"/><img src=\"https://img.alicdn.com/imgextra/i3/277648218/O1CN012AZtKITihkwYwMA_!!277648218.jpg\"/><img src=\"https://img.alicdn.com/imgextra/i2/277648218/O1CN012AZtKHWgaHav22O_!!277648218.jpg\"/><img src=\"https://img.alicdn.com/imgextra/i1/277648218/O1CN012AZtKIJ0juQHiIV_!!277648218.jpg\"/><img src=\"https://img.alicdn.com/imgextra/i4/277648218/O1CN012AZtKHYqNSSV8jJ_!!277648218.jpg\" class=\"\"/><img src=\"https://img.alicdn.com/imgextra/i4/277648218/O1CN012AZtKITiq2RVbr1_!!277648218.jpg\" class=\"\"/><img src=\"https://img.alicdn.com/imgextra/i4/277648218/O1CN012AZtKH5DAwyBhmw_!!277648218.jpg\" class=\"\"/><img src=\"https://img.alicdn.com/imgextra/i4/277648218/O1CN012AZtKH5De26pOtC_!!277648218.jpg\" class=\"\"/></p>', '', '', 0, 0, 0, NULL, NULL, 100, 1, 1, NULL, NULL, NULL, 1540430155, NULL);
INSERT INTO `goods` VALUES (7, '', '太平鸟男装 夏季新品纯棉T恤男士黑色短袖潮字母印花韩版修身T恤', '品牌: PEACEBIRD/太平鸟货号: BWDA82170上市年份季节: 2018年夏季销售渠道类型: 纯电商(只在线上销售)厚薄: 常规面料分类: 棉毛布', 99.00, 99.00, 99.00, '4f86bd749dddd098403fc44a1e473643', 3, 1, 12, 1, 1, 1741, 0, 0.00, '', '<p><img src=\"https://img.alicdn.com/imgextra/i1/173275708/TB21QRnabSYBuNjSspiXXXNzpXa_!!173275708.jpg\" class=\"img-ks-lazyload\"/><img src=\"https://img.alicdn.com/imgextra/i3/173275708/TB2jdGramtYBeNjSspkXXbU8VXa_!!173275708.jpg\" class=\"img-ks-lazyload\"/><img src=\"https://img.alicdn.com/imgextra/i4/173275708/TB2BUCGXUD.BuNjt_ioXXcKEFXa_!!173275708.jpg\" class=\"img-ks-lazyload\"/><br/><br/><img src=\"https://img.alicdn.com/imgextra/i2/173275708/TB2sbX_of9TBuNjy1zbXXXpepXa_!!173275708.jpg\" class=\"img-ks-lazyload\"/></p>', 'a:2:{s:6:\"颜色\";a:2:{i:1;s:6:\"白色\";i:5;s:6:\"黑色\";}s:6:\"规格\";a:3:{i:0;s:7:\"规格1\";i:1;s:7:\"规格2\";i:2;s:7:\"规格3\";}}', '', 0, 0, 0, NULL, NULL, 100, 1, 1, NULL, NULL, NULL, 1540361970, NULL);
INSERT INTO `goods` VALUES (8, '', '秋装连衣裙女2018新款七分袖职业名媛气质中长女装正式场合裙子', '组合形式: 单件裙长: 中长裙款式: 其他/other袖长: 七分袖领型: V领袖型: 其他腰型: 高腰衣门襟: 套头', 220.00, 220.00, 220.00, '"2020/08/20 17:39:05"75d200f105ba941d815ab5', 4, 1, 1, 1, 1, 1500, 0, 0.00, '件', '<p><img src=\"https://img.alicdn.com/imgextra/i3/2856524584/TB2tATPXPfguuRjSszcXXbb7FXa_!!2856524584.jpg\" class=\"img-ks-lazyload\"/><img src=\"https://img.alicdn.com/imgextra/i4/2856524584/TB2cRqDG7CWBuNjy0FaXXXUlXXa_!!2856524584.jpg\" class=\"img-ks-lazyload\"/><img src=\"https://img.alicdn.com/imgextra/i1/2856524584/TB2anvQXPfguuRjSspaXXaXVXXa_!!2856524584.jpg\" class=\"img-ks-lazyload\"/><img src=\"https://img.alicdn.com/imgextra/i1/2856524584/O1CN011jjW1bbvbZB3eXb_!!2856524584.jpg\" class=\"img-ks-lazyload\"/><img src=\"https://img.alicdn.com/imgextra/i2/2856524584/TB26YJVG1OSBuNjy0FdXXbDnVXa_!!2856524584.jpg\" class=\"img-ks-lazyload\"/><img src=\"https://img.alicdn.com/imgextra/i2/2856524584/TB2aL6QXO6guuRkSmLyXXculFXa_!!2856524584.jpg\" class=\"img-ks-lazyload\"/><img src=\"https://img.alicdn.com/imgextra/i1/2856524584/TB2UxkVyviSBuNkSnhJXXbDcpXa_!!2856524584.jpg\" class=\"img-ks-lazyload\"/><img src=\"https://img.alicdn.com/imgextra/i2/2856524584/TB29_8vyRmWBuNkSndVXXcsApXa_!!2856524584.jpg\" class=\"img-ks-lazyload\"/><img src=\"https://img.alicdn.com/imgextra/i4/2856524584/TB22SexG4SYBuNjSspjXXX73VXa_!!2856524584.jpg\" class=\"img-ks-lazyload\"/><img src=\"https://img.alicdn.com/imgextra/i4/2856524584/TB2z7dAlYZnBKNjSZFGXXbt3FXa_!!2856524584.jpg\" class=\"img-ks-lazyload\"/><img src=\"https://img.alicdn.com/imgextra/i2/2856524584/TB2mOajG1SSBuNjy0FlXXbBpVXa_!!2856524584.jpg\" class=\"img-ks-lazyload\"/><img src=\"https://img.alicdn.com/imgextra/i1/2856524584/TB2MuQTysyYBuNkSnfoXXcWgVXa_!!2856524584.jpg\" class=\"img-ks-lazyload\"/><img src=\"https://img.alicdn.com/imgextra/i1/2856524584/TB28b3EGWmWBuNjy1XaXXXCbXXa_!!2856524584.jpg\" class=\"img-ks-lazyload\"/><img src=\"https://img.alicdn.com/imgextra/i2/2856524584/TB2ahhOyMKTBuNkSne1XXaJoXXa_!!2856524584.jpg\" class=\"img-ks-lazyload\"/><img src=\"https://img.alicdn.com/imgextra/i3/2856524584/TB25v9UG1ySBuNjy1zdXXXPxFXa_!!2856524584.jpg\" class=\"img-ks-lazyload\"/><img src=\"https://img.alicdn.com/imgextra/i4/2856524584/TB2cOJwG3mTBuNjy1XbXXaMrVXa_!!2856524584.jpg\" class=\"img-ks-lazyload\"/><img src=\"https://img.alicdn.com/imgextra/i3/2856524584/TB2Mx.VyviSBuNkSnhJXXbDcpXa_!!2856524584.jpg\" class=\"img-ks-lazyload\"/></p>', 'a:2:{s:6:\"颜色\";a:2:{i:0;s:6:\"红色\";i:3;s:6:\"蓝色\";}s:6:\"规格\";a:3:{i:0;s:7:\"规格1\";i:1;s:7:\"规格2\";i:2;s:7:\"规格3\";}}', '', 0, 0, 0, NULL, NULL, 100, 1, 1, NULL, NULL, NULL, 1540430154, NULL);
INSERT INTO `goods` VALUES (9, '', '2018冷冬新款棉衣男士加肥加大码中长款棉服韩版潮流加厚棉袄外套', '品牌: 奢旺填充物: 仿丝棉货号: 之江A09--MY001基础风格: 青春流行上市年份季节: 2018年秋季厚薄: 常规材质成分: 聚酯纤维100%', 300.00, 320.00, 320.00, '052d4af90ec88851c10982bf7fdfa763', 3, 1, 0, 1, 1, 500, 0, 0.00, '', '<p style=\"margin-top: 1.12em; margin-bottom: 1.12em; padding: 0px; line-height: 1.4; color: rgb(64, 64, 64); font-family: tahoma, arial, 宋体, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"https://img.alicdn.com/imgextra/i1/3241519092/O1CN012H2BUiq8IQ4o0CK_!!3241519092.jpg\" class=\"img-ks-lazyload\"/><img src=\"https://img.alicdn.com/imgextra/i3/3241519092/O1CN012H2BUlGsJ4Rv2Ki_!!3241519092.jpg\" class=\"img-ks-lazyload\"/><img src=\"https://img.alicdn.com/imgextra/i4/3241519092/O1CN012H2BUkwOjZozDmz_!!3241519092.jpg\" class=\"img-ks-lazyload\"/><img src=\"https://img.alicdn.com/imgextra/i4/3241519092/O1CN012H2BUkQ3PVIfadP_!!3241519092.jpg\" class=\"img-ks-lazyload\"/><img src=\"https://img.alicdn.com/imgextra/i1/3241519092/O1CN012H2BUlvRiGJDWNq_!!3241519092.jpg\" class=\"img-ks-lazyload\"/><img src=\"https://img.alicdn.com/imgextra/i4/3241519092/O1CN012H2BUeU4i7DOzGT_!!3241519092.jpg\" class=\"img-ks-lazyload\"/><img src=\"https://img.alicdn.com/imgextra/i2/3241519092/O1CN012H2BUk7cNM4cdYp_!!3241519092.jpg\" class=\"img-ks-lazyload\"/><img src=\"https://img.alicdn.com/imgextra/i2/3241519092/O1CN012H2BUlGru3cnqdx_!!3241519092.jpg\" class=\"img-ks-lazyload\"/><img src=\"https://img.alicdn.com/imgextra/i3/3241519092/O1CN012H2BUlWO9KMnnEy_!!3241519092.jpg\" class=\"img-ks-lazyload\"/><img src=\"https://img.alicdn.com/imgextra/i2/3241519092/O1CN012H2BUkQ3HDPdPCa_!!3241519092.jpg\" class=\"img-ks-lazyload\"/><img src=\"https://img.alicdn.com/imgextra/i3/3241519092/O1CN012H2BUm71zLUjqSm_!!3241519092.jpg\" class=\"img-ks-lazyload\"/><img src=\"https://img.alicdn.com/imgextra/i2/3241519092/O1CN012H2BUlHHLecsvTr_!!3241519092.jpg\" class=\"img-ks-lazyload\"/><img src=\"https://img.alicdn.com/imgextra/i3/3241519092/O1CN012H2BUkePx8ZFBU9_!!3241519092.jpg\" class=\"img-ks-lazyload\"/><img src=\"https://img.alicdn.com/imgextra/i3/3241519092/O1CN012H2BUlWLfZe5Vkh_!!3241519092.jpg\" class=\"img-ks-lazyload\"/><img src=\"https://img.alicdn.com/imgextra/i3/3241519092/O1CN012H2BUm72KBVirDk_!!3241519092.jpg\" class=\"img-ks-lazyload\"/><img src=\"https://img.alicdn.com/imgextra/i4/3241519092/O1CN012H2BUlWMXcPhNtF_!!3241519092.jpg\" class=\"img-ks-lazyload\"/><img src=\"https://img.alicdn.com/imgextra/i2/3241519092/O1CN012H2BUkkqjgWOeQm_!!3241519092.jpg\" class=\"img-ks-lazyload\"/><img src=\"https://img.alicdn.com/imgextra/i4/3241519092/O1CN012H2BUlGsuNb8cRJ_!!3241519092.jpg\" class=\"img-ks-lazyload\"/><img src=\"https://img.alicdn.com/imgextra/i2/3241519092/O1CN012H2BUkydbnFeP2J_!!3241519092.jpg\" class=\"img-ks-lazyload\"/><img src=\"https://img.alicdn.com/imgextra/i4/3241519092/O1CN012H2BUmJr3uZSfHG_!!3241519092.jpg\" class=\"img-ks-lazyload\"/></p><p><br/></p>', '', '', 0, 0, 0, NULL, NULL, 100, 1, 1, NULL, NULL, NULL, 1540361749, NULL);
INSERT INTO `goods` VALUES (10, '456546456', '衬衫男士秋季韩版修身潮流百搭帅气休闲外套白色衬衣加绒长袖寸衫', '品牌: 简旗货号: 22TC144基础风格: 青春流行上市年份季节: 2018年夏季厚薄: 常规材质成分: 棉100%', 69.00, 69.00, 69.00, 'deed2e4f1c54f87eb672ad8c444ba229', 3, 1, 14, 1, 1, 1880, 0, 0.00, '件', '<p><img src=\"https://img.alicdn.com/imgextra/i1/2946030476/O1CN011FO2zd40aYmt5wY_!!2946030476.jpg\" class=\"img-ks-lazyload\"/><img src=\"https://img.alicdn.com/imgextra/i2/2946030476/O1CN011FO2zbiY8W2jjEa_!!2946030476.jpg\" class=\"img-ks-lazyload\"/><img src=\"https://img.alicdn.com/imgextra/i4/2946030476/O1CN011FO2zd1oGpkgRMC_!!2946030476.jpg\" class=\"img-ks-lazyload\"/><img src=\"https://img.alicdn.com/imgextra/i1/2946030476/O1CN011FO2zeQBnPbix4s_!!2946030476.jpg\" class=\"img-ks-lazyload\"/><img src=\"https://img.alicdn.com/imgextra/i4/2946030476/O1CN011FO2zcii03syGye_!!2946030476.jpg\" class=\"img-ks-lazyload\"/><img src=\"https://img.alicdn.com/imgextra/i2/2946030476/O1CN011FO2zcih82dl0xw_!!2946030476.jpg\" class=\"img-ks-lazyload\"/><img src=\"https://img.alicdn.com/imgextra/i2/2946030476/O1CN011FO2zbI4A4mJGsM_!!2946030476.jpg\" class=\"img-ks-lazyload\"/><img src=\"https://img.alicdn.com/imgextra/i4/2946030476/O1CN011FO2zauXrW7nP0Z_!!2946030476.jpg\" class=\"img-ks-lazyload\"/><img src=\"https://img.alicdn.com/imgextra/i4/2946030476/O1CN011FO2ze0qAnphiMZ_!!2946030476.jpg\" class=\"img-ks-lazyload\"/><img src=\"https://img.alicdn.com/imgextra/i4/2946030476/O1CN011FO2zcCrR94O4WN_!!2946030476.jpg\" class=\"img-ks-lazyload\"/><img src=\"https://img.alicdn.com/imgextra/i3/2946030476/O1CN011FO2zdMnGCHeHBv_!!2946030476.jpg\" class=\"img-ks-lazyload\"/><img src=\"https://img.alicdn.com/imgextra/i1/2946030476/O1CN011FO2zWYcbSJs8sj_!!2946030476.jpg\" class=\"img-ks-lazyload\"/><img src=\"https://img.alicdn.com/imgextra/i3/2946030476/O1CN011FO2zd42KhfQwNO_!!2946030476.jpg\" class=\"img-ks-lazyload\"/><img src=\"https://img.alicdn.com/imgextra/i3/2946030476/O1CN011FO2zd1q9EKSye8_!!2946030476.jpg\" class=\"img-ks-lazyload\"/><img src=\"https://img.alicdn.com/imgextra/i3/2946030476/O1CN011FO2zcCsi8o8z02_!!2946030476.jpg\" class=\"img-ks-lazyload\"/><img src=\"https://img.alicdn.com/imgextra/i2/2946030476/O1CN011FO2zcoqSOk4nUJ_!!2946030476.jpg\" class=\"img-ks-lazyload\"/><img src=\"https://img.alicdn.com/imgextra/i3/2946030476/O1CN011FO2zWYdXbCDH0U_!!2946030476.jpg\" class=\"img-ks-lazyload\"/><img src=\"https://img.alicdn.com/imgextra/i4/2946030476/O1CN011FO2zcCtFPzBqGG_!!2946030476.jpg\" class=\"img-ks-lazyload\"/><img src=\"https://img.alicdn.com/imgextra/i3/2946030476/O1CN011FO2zdbOufCSxEP_!!2946030476.jpg\" class=\"img-ks-lazyload\"/><img src=\"https://img.alicdn.com/imgextra/i2/2946030476/O1CN011FO2zd1p8tutFFE_!!2946030476.jpg\" class=\"img-ks-lazyload\"/></p>', 'a:2:{s:6:\"颜色\";a:3:{i:1;s:6:\"白色\";i:3;s:6:\"蓝色\";i:6;s:6:\"棕色\";}s:6:\"规格\";a:2:{i:1;s:7:\"规格2\";i:2;s:7:\"规格3\";}}', '', 0, 0, 0, NULL, NULL, 100, 1, 1, NULL, NULL, NULL, 1540430150, NULL);
INSERT INTO `goods` VALUES (11, '99', '33', '999', 0.00, 0.00, 0.00, '48d7337ff7a02c6a98e866752b1292b7', 3, 1, 14, 1, 1, 0, 0, 0.00, '', '<p><img src=\"https://b2c.jihainet.com/static/uploads/45/82/06/5bcc1fe98fed0.jpg\"/></p><p><img src=\"https://b2c.jihainet.com/static/uploads/7f/93/09/5bcc1fe997d8e.jpg\"/></p><p><img src=\"https://b2c.jihainet.com/static/uploads/ef/01/9a/5bcc1fe9dfdad.png\"/></p><p><img src=\"https://b2c.jihainet.com/static/uploads/19/b2/5e/5bcc1fe9e4054.jpg\"/></p><p><br/></p>', '', '', 0, 0, 0, NULL, NULL, 100, 2, 2, NULL, NULL, NULL, 1540119675, 1540119675);

-- ----------------------------
-- Table structure for goods_browsing
-- ----------------------------
DROP TABLE IF EXISTS `goods_browsing`;
CREATE TABLE `goods_browsing`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `goods_id` int(10) UNSIGNED NULL DEFAULT NULL COMMENT '商品id 关联goods.id',
  `user_id` int(10) UNSIGNED NOT NULL COMMENT '用户id',
  `goods_name` varchar(200) NOT NULL COMMENT '商品名称',
  `ctime` bigint(12) NOT NULL COMMENT '浏览时间',
  `isdel` bigint(12) UNSIGNED NULL DEFAULT NULL COMMENT '删除标志',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  INDEX `isdel`(`isdel`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 COMMENT = '商品浏览记录表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for goods_cat
-- ----------------------------
DROP TABLE IF EXISTS `goods_cat`;
CREATE TABLE `goods_cat`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '上级分类id',
  `name` varchar(20) NULL DEFAULT NULL COMMENT '分类名称',
  `type_id` int(10) UNSIGNED NULL DEFAULT 0 COMMENT '类型ID 关联 goods_type.id',
  `sort` smallint(5) UNSIGNED NULL DEFAULT 100 COMMENT '分类排序 越小越靠前',
  `image_id` char(32) NULL DEFAULT NULL COMMENT '分类图片ID',
  `utime` bigint(12) UNSIGNED NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id`(`id`) USING BTREE,
  INDEX `seller_id`(`parent_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 COMMENT = '商品分类' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of goods_cat
-- ----------------------------
INSERT INTO `goods_cat` VALUES (3, 0, '精选上衣', 0, 100, '', NULL);
INSERT INTO `goods_cat` VALUES (4, 0, '浪漫裙装', 0, 100, '', NULL);
INSERT INTO `goods_cat` VALUES (5, 0, '女装下装', 0, 100, '', NULL);
INSERT INTO `goods_cat` VALUES (6, 9, '家居服', 1, 100, 'a496465d657cd5fbeb90f10e25e16086', 1539941"2020/08/20 17:39:05"RT INTO `goods_cat` VALUES (8, 0, '女鞋', 0, 100, '', NULL);
INSERT INTO `goods_cat` VALUES (9, 0, '女包', 0, 100, '', NULL);
INSERT INTO `goods_cat` VALUES (10, 3, '毛呢外套', 0, 100, 'a422f452969f04e4493af4728eec3ab8', 1540172964);
INSERT INTO `goods_cat` VALUES (11, 3, '羽绒服', 0, 100, '9ca906f23d05dc9db1de552bfefa36fc', 1539940964);
INSERT INTO `goods_cat` VALUES (12, 3, '棉服', 0, 100, 'f4f98826b4db681ab21433c3fecc8326', 1539940902);
INSERT INTO `goods_cat` VALUES (13, 3, '卫衣', 0, 100, 'b9857035fa36ca4fbbeadc72e3ead0bb', 1539940850);
INSERT INTO `goods_cat` VALUES (14, 3, '毛针织衫', 0, 100, 'de21cc610a10fada67ef1974bdacf9fb', 1539940683);
INSERT INTO `goods_cat` VALUES (15, 9, '皮草', 1, 100, 'b68a51db26eb5c35e4f9b16f0c41d455', 1540459969);
INSERT INTO `goods_cat` VALUES (16, 3, '衬衫', 0, 100, 'db1b8c0257b08a5542e10125fcef8fc1', 1539940635);
INSERT INTO `goods_cat` VALUES (17, 3, 'T恤', 0, 100, 'd74ea8dc93080b9e4ae686f4a14dbe96', 1539940585);
INSERT INTO `goods_cat` VALUES (18, 0, '风衣', 1, 100, 'd47c3377663dfbb925ea9a40a1488155', 1540186606);
INSERT INTO `goods_cat` VALUES (19, 9, '单肩包', 0, 100, '443c2d9ddb8b769ceddcd6f2bee5908b', 1539941054);
INSERT INTO `goods_cat` VALUES (20, 9, '斜挎包', 0, 100, 'dea52ed56c999be5583ba568aff9029a', 1539941097);
INSERT INTO `goods_cat` VALUES (21, 9, '手提包', 0, 100, '8fec591f6b83a0edaa973e3ea35ae8ee', 1539941013);
INSERT INTO `goods_cat` VALUES (22, 8, '高跟鞋', 0, 100, 'e51a16d2996d29939e7031434fbc3c29', 1540172563);
INSERT INTO `goods_cat` VALUES (23, 8, '运动鞋', 0, 100, 'fe91f59b549fab49ca2db1ea9883f8d3', 1540172488);
INSERT INTO `goods_cat` VALUES (24, 8, '帆布鞋', 0, 100, 'cd2c104a7d9100e12f7529d6b2c3f209', 1540172536);
INSERT INTO `goods_cat` VALUES (26, 5, '牛仔裤', 0, 100, '2776b0176aa478be959d762326c4e58f', 1540459686);
INSERT INTO `goods_cat` VALUES (27, 5, '九分裤', 0, 100, '160b5dfcb243deffb794ce3d0ac48431', 1540172257);
INSERT INTO `goods_cat` VALUES (28, 5, '直筒裤', 0, 100, '7e9d7a60a7d40c9e908c45ed092de558', 1540172331);
INSERT INTO `goods_cat` VALUES (29, 4, '连衣裙', 0, 100, 'aea2675adb10467d6dfbd92ab9321a33', 1540172373);
INSERT INTO `goods_cat` VALUES (30, 4, '碎花裙', 0, 100, 'f8b31c241ad346fceb55f83fcf2874bb', 1540172412);
INSERT INTO `goods_cat` VALUES (31, 4, '短裙', 0, 100, 'af547e9f2513965d6eaf56b4dcc276ec', 1540172457);
INSERT INTO `goods_cat` VALUES (32, 9, '啊发发', 0, 100, '', NULL);
INSERT INTO `goods_cat` VALUES (33, 9, '456', 0, 100, 'b55ea82d8c05abdc06da42331ac3820b', NULL);

-- ----------------------------
-- Table structure for goods_collection
-- ----------------------------
DROP TABLE IF EXISTS `goods_collection`;
CREATE TABLE `goods_collection`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `goods_id` int(10) UNSIGNED NULL DEFAULT NULL COMMENT '商品id 关联goods.id',
  `user_id` int(10) UNSIGNED NOT NULL COMMENT '用户id',
  `goods_name` varchar(200) NOT NULL COMMENT '商品名称',
  `ctime` bigint(12) NOT NULL COMMENT '浏览时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  INDEX `goods_id`(`goods_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 COMMENT = '商品收藏表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for goods_comment
-- ----------------------------
DROP TABLE IF EXISTS `goods_comment`;
CREATE TABLE `goods_comment`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment_id` int(10) UNSIGNED NULL DEFAULT 0 COMMENT '父级评价ID',
  `score` tinyint(1) NULL DEFAULT 5 COMMENT '评价1-5星',
  `user_id` int(10) UNSIGNED NOT NULL COMMENT '评价用户ID',
  `goods_id` int(10) UNSIGNED NULL DEFAULT NULL COMMENT '商品ID 关联goods.id',
  `order_id` bigint(20) UNSIGNED NOT NULL COMMENT '评价订单ID',
  `addon` text NULL COMMENT '货品规格序列号存储',
  `images` varchar(200) NULL DEFAULT NULL COMMENT '评价图片逗号分隔最多五张',
  `content` text NULL COMMENT '评价内容',
  `seller_content` text NULL COMMENT '商家回复',
  `display` tinyint(3) UNSIGNED NULL DEFAULT 1 COMMENT '是否显示 1显示 2不显示',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  INDEX `display`(`display`) USING BTREE,
  INDEX `goods_id`(`goods_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 COMMENT = '商品评价表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for goods_grade
-- ----------------------------
DROP TABLE IF EXISTS `goods_grade`;
CREATE TABLE `goods_grade`  (
  `id` bigint(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `goods_id` bigint(10) UNSIGNED NULL DEFAULT 0 COMMENT '商品id',
  `grade_id` tinyint(2) UNSIGNED NULL DEFAULT 1 COMMENT '会员等级id',
  `grade_price` decimal(10, 2) UNSIGNED NULL DEFAULT 0.00 COMMENT '会员价',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 COMMENT = '商品会员价表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for goods_images
-- ----------------------------
DROP TABLE IF EXISTS `goods_images`;
CREATE TABLE `goods_images`  (
  `goods_id` int(10) UNSIGNED NOT NULL COMMENT '商品ID',
  `image_id` char(32) NOT NULL COMMENT '图片ID',
  `sort` int(10) NULL DEFAULT 100 COMMENT '图片排序',
  INDEX `goods_id`(`goods_id`) USING BTREE
) ENGINE = InnoDB COMMENT = '商品图片关联表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of goods_images
-- ----------------------------
INSERT INTO `goods_images` VALUES (1, '8ef876168670ddb5c37941a867172f28', 100);
INSERT INTO `goods_images` VALUES (1, '1e6a5117d2a6082b565ad4d1c9e58c0d', 100);
INSERT INTO `goods_images` VALUES (1, '2606549d84e2ded23935ddcc2d562c43', 100);
INSERT INTO `goods_images` VALUES (1, '708ef31a7ba3d766a9a0424aeb8b8481', 100);
INSERT INTO `goods_images` VALUES (4, '6554e73ccd5a4b81b196b5ec3f412d0c', 100);
INSERT INTO `goods_images` VALUES (4, '9f906ea7c6d4d785946f3f54e3717c59', 100);
INSERT INTO `goods_images` VALUES (5, '3b509fa01f8b7fbc6163fd7c591314fd', 100);
INSERT INTO `goods_images` VALUES (5, '51496b49fdad4fc6f359cb6a29e6596a', 100);
INSERT INTO `goods_images` VALUES (5, '070fe78d0712b1ceaa3cdb7240f57246', 100);
INSERT INTO `goods_images` VALUES (7, '9b7051cf017685b0c3a48c4658d48272', 100);
INSERT INTO `goods_images` VALUES (7, '127fe7340aec7641c981c73a3ccff801', 100);
INSERT INTO `goods_images` VALUES (8, '26717fd8e2314719ec5b1f9f0dfccce3', 100);
INSERT INTO `goods_images` VALUES (8, 'ba2be1b85728a546038f1c783e28582c', 100);
INSERT INTO `goods_images` VALUES (8, 'fcbc476de3f2feb0c1eca55406b6a64c', 100);
INSERT INTO `goods_images` VALUES (9, 'f669696078688c02bbe721ac9d5f0a54', 100);
INSERT INTO `goods_images` VALUES (9, '897fad09b83c0f847f91843fdb2282a2', 100);
INSERT INTO `goods_images` VALUES (9, '54a8b2f0465e01d9e6f13104181728a5', 100);
INSERT INTO `goods_images` VALUES (10, '265cc34a43e319d39a454666a2592bf2', 100);
INSERT INTO `goods_images` VALUES (10, 'd6164aafe1d26463fb077b28e919c861', 100);
INSERT INTO `goods_images` VALUES (10, '9207c7644b6a6a3b7b29195a6a9d7a3b', 100);
INSERT INTO `goods_images` VALUES (11, 'd04e0aba7ce7aaeee6364aae8821797b', 100);

-- ----------------------------
-- Table structure for goods_params
-- ----------------------------
DROP TABLE IF EXISTS `goods_params`;
CREATE TABLE `goods_params`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '参数名称',
  `value` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '参数值',
  `type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '参数类型，text文本框，radio单选，checkbox复选框',
  `ctime` bigint(12) NULL DEFAULT NULL COMMENT '创建时间',
  `utime` bigint(12) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 COMMENT = '商品参数表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for goods_type
-- ----------------------------
DROP TABLE IF EXISTS `goods_type`;
CREATE TABLE `goods_type`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NULL DEFAULT NULL COMMENT '类型名称',
  `params` text NULL COMMENT '参数序列号存储 array(参数组名=>array(\'参数1\',\'参数二\'))',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 COMMENT = '商品类型' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of goods_type
-- ----------------------------
INSERT INTO `goods_type` VALUES (1, '上衣', NULL);

-- ----------------------------
-- Table structure for goods_type_params
-- ----------------------------
DROP TABLE IF EXISTS `goods_type_params`;
CREATE TABLE `goods_type_params`  (
  `params_id` int(10) UNSIGNED NULL DEFAULT 0 COMMENT '商品参数id',
  `type_id` int(10) UNSIGNED NULL DEFAULT 0 COMMENT '商品类型id'
) ENGINE = InnoDB ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for goods_type_spec
-- ----------------------------
DROP TABLE IF EXISTS `goods_type_spec`;
CREATE TABLE `goods_type_spec`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NULL DEFAULT NULL COMMENT '商品类型属性名称',
  `sort` smallint(5) UNSIGNED NULL DEFAULT 100 COMMENT '商品类型属性排序 越小越靠前',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sort`(`sort`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 COMMENT = '商品类型属性表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of goods_type_spec
-- ----------------------------
INSERT INTO `goods_type_spec` VALUES (1, '颜色', 100);
INSERT INTO `goods_type_spec` VALUES (2, '规格', 100);

-- ----------------------------
-- Table structure for goods_type_spec_rel
-- ----------------------------
DROP TABLE IF EXISTS `goods_type_spec_rel`;
CREATE TABLE `goods_type_spec_rel`  (
  `spec_id` int(10) UNSIGNED NOT NULL COMMENT '属性ID',
  `type_id` int(10) UNSIGNED NULL DEFAULT NULL COMMENT '类型ID'
) ENGINE = InnoDB COMMENT = '商品类型和属性关联表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of goods_type_spec_rel
-- ----------------------------
INSERT INTO `goods_type_spec_rel` VALUES (1, 1);
INSERT INTO `goods_type_spec_rel` VALUES (2, 1);

-- ----------------------------
-- Table structure for goods_type_spec_value
-- ----------------------------
DROP TABLE IF EXISTS `goods_type_spec_value`;
CREATE TABLE `goods_type_spec_value`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `spec_id` int(10) UNSIGNED NULL DEFAULT NULL COMMENT '属性ID 关联goods_type_spec.id',
  `value` varchar(50) NULL DEFAULT NULL COMMENT '属性值',
  `sort` smallint(5) UNSIGNED NULL DEFAULT 100 COMMENT '排序 越小越靠前',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `spec_id`(`spec_id`) USING BTREE,
  INDEX `sort`(`sort`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 COMMENT = '商品类型属性值表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of goods_type_spec_value
-- ----------------------------
INSERT INTO `goods_type_spec_value` VALUES (1, 1, '红色', 100);
INSERT INTO `goods_type_spec_value` VALUES (2, 1, '白色', 100);
INSERT INTO `goods_type_spec_value` VALUES (3, 1, '绿色', 100);
INSERT INTO `goods_type_spec_value` VALUES (4, 1, '蓝色', 100);
INSERT INTO `goods_type_spec_value` VALUES (5, 1, '紫色', 100);
INSERT INTO `goods_type_spec_value` VALUES (6, 1, '黑色', 100);
INSERT INTO `goods_type_spec_value` VALUES (7, 1, '棕色', 100);
INSERT INTO `goods_type_spec_value` VALUES (8, 1, '灰色', 100);
INSERT INTO `goods_type_spec_value` VALUES (20, 2, '规格1', 100);
INSERT INTO `goods_type_spec_value` VALUES (21, 2, '规格2', 100);
INSERT INTO `goods_type_spec_value` VALUES (22, 2, '规格3', 100);
INSERT INTO `goods_type_spec_value` VALUES (23, 2, '规格4', 100);
INSERT INTO `goods_type_spec_value` VALUES (24, 2, '规格5', 100);
INSERT INTO `goods_type_spec_value` VALUES (25, 2, '规格6', 100);
INSERT INTO `goods_type_spec_value` VALUES (26, 2, '规格7', 100);
INSERT INTO `goods_type_spec_value` VALUES (27, 2, '规格8', 100);
INSERT INTO `goods_type_spec_value` VALUES (28, 2, '规格9', 100);
INSERT INTO `goods_type_spec_value` VALUES (29, 2, '规格10', 100);
INSERT INTO `goods_type_spec_value` VALUES (30, 2, '111', 100);
INSERT INTO `goods_type_spec_value` VALUES (31, 2, '111', 100);

-- ----------------------------
-- Table structure for hooks
-- ----------------------------
DROP TABLE IF EXISTS `hooks`;
CREATE TABLE `hooks`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '钩子名称',
  `description` text NULL COMMENT '钩子描述',
  `type` tinyint(1) NULL DEFAULT 1 COMMENT '钩子类型,1是控制器，2是视图',
  `addons` text NULL COMMENT '钩子挂载的插件，逗号分隔',
  `ctime` int(10) NULL DEFAULT NULL COMMENT '创建时间',
  `utime` int(11) NULL DEFAULT 0 COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10006 ROW_FORMAT = Compact;

-- ----------------------------
-- Records of hooks
-- ----------------------------
INSERT INTO `hooks` VALUES (1, 'testhook', '测试钩子', 1, '', 1538029316, 1540173219);
INSERT INTO `hooks` VALUES (2, 'sendwxmessage', '发送微信消息', 1, 'Appletmessage', 1538029328, 1538029328);
INSERT INTO `hooks` VALUES (3, 'kefu', '在线客服', 1, '', 1538029339, 1538029339);
INSERT INTO `hooks` VALUES (4, 'sendsms', '发送短信', 1, 'Aliyunsms', 1540891064, 1540891064);
INSERT INTO `hooks` VALUES (5, 'goodscommon', '商品编辑、添加时', 1, '', 1541072382, 1541072415);
INSERT INTO `hooks` VALUES (6, 'deletegoodsafter', '删除商品后', 1, '', 1541072393, 1541072393);
INSERT INTO `hooks` VALUES (7, 'editgoodsafter', '编辑商品后', 1, '', 1541072405, 1541072405);
INSERT INTO `hooks` VALUES (8, 'addgoodsafter', '添加商品后', 1, '', 1541072425, 1541072425);
INSERT INTO `hooks` VALUES (9, 'addgoodsview', '添加商品页面', 2, '', 1541072442, 1541072451);
INSERT INTO `hooks` VALUES (10, 'editgoodsview', '编辑商品页面', 2, '', 1541072464, 1541072464);
INSERT INTO `hooks` VALUES (11, 'trustlogin', '信任登录', 1, 'Trustlogin', 1541771962, 1541771962);
INSERT INTO `hooks` VALUES (12, 'trustcallback', '信任登录返回', 1, 'Trustlogin', 1541771974, 1541771974);
INSERT INTO `hooks` VALUES (14, 'orderpayed', '订单支付', 1, 'Distribution', 1542349293, 1542349507);
INSERT INTO `hooks` VALUES (10000, 'printOrder', '打印订单埋点', 1, 'KdniaoExpress', 1552448691, 1552448691);
INSERT INTO `hooks` VALUES (10001, 'getPrintExpressInfo', '获取打印信息', 1, 'KdniaoExpress', 1552557472, 1552557472);
INSERT INTO `hooks` VALUES (10002, 'orderExtJs', '订单扩展js', 2, 'KdniaoExpress', 1552558689, 1552559645);
INSERT INTO `hooks` VALUES (10003, 'orderExtBtn', '订单扩展按钮', 2, 'KdniaoExpress', 1552558705, 1552559662);
INSERT INTO `hooks` VALUES (10004, 'logisticsQuery', '快递查询', 1, 'KdniaoExpress', 1552704811, 1552704811);
INSERT INTO `hooks` VALUES (10005, 'menu', '后台菜单', 1, '', 1554199143, 1554199143);

-- ----------------------------
-- Table structure for ietask
-- ----------------------------
DROP TABLE IF EXISTS `ietask`;
CREATE TABLE `ietask`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '任务名称',
  `message` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '任务消息',
  `file_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'csv' COMMENT '文件类型',
  `ctime` int(10) UNSIGNED NULL DEFAULT NULL COMMENT '创建时间',
  `utime` int(10) NULL DEFAULT NULL COMMENT '更新时间',
  `type` tinyint(1) NULL DEFAULT NULL COMMENT '任务类型，1为导出，2为导入',
  `status` tinyint(1) UNSIGNED NULL DEFAULT 0 COMMENT '任务状态，0为等待执行，1正在导出，2导出成功，3导出失败，4正在导入，5导入成功，6导入失败，7中断，8部分导入',
  `params` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '相关参数',
  `file_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件名称',
  `file_size` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件大小',
  `file_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件路径',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 COMMENT = '导入导出任务表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for images
-- ----------------------------
DROP TABLE IF EXISTS `images`;
CREATE TABLE `images`  (
  `id` char(32) NOT NULL COMMENT '图片ID',
  `name` varchar(50) NULL DEFAULT NULL COMMENT '图片名称',
  `url` varchar(255) NULL DEFAULT NULL COMMENT '绝对地址',
  `path` varchar(255) NULL DEFAULT NULL COMMENT '物理地址',
  `type` varchar(10) NULL DEFAULT 'local' COMMENT '存储引擎',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `isdel` bigint(12) UNSIGNED NULL DEFAULT NULL COMMENT '删除标志 有数据代表删除',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE,
  INDEX `id_2`(`id`) USING BTREE,
  INDEX `isdel`(`isdel`) USING BTREE
) ENGINE = InnoDB COMMENT = '图片表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of images
-- ----------------------------
INSERT INTO `images` VALUES ('022bbf0657d3b9ed38a97dd746b2e84c', '0.jpg', 'https://b2c.jihainet.com/static/uploads/e8/87/87/5bca86083380f.jpg', '', 'local', 1539999240, NULL);
INSERT INTO `images` VALUES ('03ca799895a0b094bca75116e322539c', '裂帛.png', 'http://b2c.jihainet.com/static/uploads/2d/6f/d5/5ba9e21e12188.png', '', 'local', 1537860126, NULL);
INSERT INTO `images` VALUES ('052d4af90ec88851c10982bf7fdfa763', 'O1CN012H2BUpZVbIA3OwR_!!0-item_pic.jpg_430x430q90.', 'https://b2c.jihainet.com/static/uploads/a4/cd/ec/5bc9a989cb351.jpg', '', 'local', 1539942793, NULL);
INSERT INTO `images` VALUES ('070fe78d0712b1ceaa3cdb7240f57246', 'O1CN012AZtKI6Iz1SeIEH_!!277648218.jpg', 'https://b2c.jihainet.com/static/uploads/76/7e/81/5bc9a5c7bbc8e.jpg', '', 'local', 1539941831, NULL);
INSERT INTO `images` VALUES ('127fe7340aec7641c981c73a3ccff801', 'TB2RYMOX4WYBuNjy1zkXXXGGpXa_!!173275708.jpg_430x43', 'https://b2c.jihainet.com/static/uploads/d1/d7/cb/5bc9a6dee7ebb.jpg', '', 'local', 1539942110, NULL);
INSERT INTO `images` VALUES ('14b44959327363e274c8a2ba9dba3ace', '玖姿.png', 'http://b2c.jihainet.com/static/uploads/0e/f2/b1/5ba9e21f0dd1a.png', '', 'local', 1537860127, NULL);
INSERT INTO `images` VALUES ('"2020/08/20 17:39:05"75d200f105ba941d815ab5', 'O1CN011jjW1HVm2eoMd1M_!!2856524584.jpg_430x430q90.', 'https://b2c.jihainet.com/static/uploads/ce/ae/8d/5bc9a81609585.jpg', '', 'local', 1539942422, NULL);
INSERT INTO `images` VALUES ('160b5dfcb243deffb794ce3d0ac48431', '270x270.jpg', 'https://b2c.jihainet.com/static/uploads/3f/a6/7f/5bcd29de34a05.jpg', '', 'local', 1540172254, NULL);
INSERT INTO `images` VALUES ('1ce148f164e099cfa15017eae9c0324d', '773245_limingsky.png', 'https://b2c.jihainet.com/static/uploads/7c/0a/fd/5bc9a3125560c.png', '', 'local', 1539941138, NULL);
INSERT INTO `images` VALUES ('1e6a5117d2a6082b565ad4d1c9e58c0d', 'goods1_3.jpg', 'http://b2c.jihainet.com/static/uploads/9f/81/10/5ba9e786c45eb.jpg', '', 'local', 1537861510, NULL);
INSERT INTO `images` VALUES ('24eea7da4b715ed23ed2e403a376223f', '未命名表单 (4).png', 'https://b2c.jihainet.com/static/uploads/84/38/75/5bc98bc9a619d.png', '', 'local', 1539935177, NULL);
INSERT INTO `images` VALUES ('2606549d84e2ded23935ddcc2d562c43', 'goods1_1.jpg', 'http://b2c.jihainet.com/static/uploads/df/6d/df/5ba9e78ac77d0.jpg', '', 'local', 1537861514, NULL);
INSERT INTO `images` VALUES ('265cc34a43e319d39a454666a2592bf2', 'O1CN011FO2zOzv9iYed2a_!!2946030476.jpg_430x430q90.', 'https://b2c.jihainet.com/static/uploads/08/d0/3a/5bc9ab837a41a.jpg', '', 'local', 1539943299, NULL);
INSERT INTO `images` VALUES ('2660dd8bb5ef408b75d3ac78d7a45c72', '两三事.png', 'http://b2c.jihainet.com/static/uploads/a5/fc/e3/5ba9e21b64271.png', '', 'local', 1537860123, NULL);
INSERT INTO `images` VALUES ('26717fd8e2314719ec5b1f9f0dfccce3', 'O1CN011jjW1JidazOFH2I_!!2856524584.jpg_430x430q90.', 'https://b2c.jihainet.com/static/uploads/e9/ac/a3/5bc9a8167a827.jpg', '', 'local', 1539942422, NULL);
INSERT INTO `images` VALUES ('2776b0176aa478be959d762326c4e58f', '270x270.jpg', 'https://b2c.jihainet.com/static/uploads/ba/6b/4b/5bcd29715fa78.jpg', '', 'local', 1540172145, NULL);
INSERT INTO `images` VALUES ('38b53dadcfeb35a77678a0a9cfdb7a7c', '茵曼.png', 'http://b2c.jihainet.com/static/uploads/a2/3d/6e/5ba9e21ccf87e.png', '', 'local', 1537860124, NULL);
INSERT INTO `images` VALUES ('3b509fa01f8b7fbc6163fd7c591314fd', 'O1CN012AZtKFGQ1bonLYH_!!277648218.jpg', 'https://b2c.jihainet.com/static/uploads/b7/9f/72/5bc9a5c440801.jpg', '', 'local', 1539941828, NULL);
INSERT INTO `images` VALUES ('3e1c30dd1125de24e5395d3cd39ef5d8', 'O1CN012AZtKGxGsMBKldW_!!277648218.jpg', 'https://b2c.jihainet.com/static/uploads/af/00/b7/5bc9a5b89bd9a.jpg', '', 'local', 1539941816, NULL);
INSERT INTO `images` VALUES ('443c2d9ddb8b769ceddcd6f2bee5908b', '270x270.jpg', 'https://b2c.jihainet.com/static/uploads/92/70/83/5bc9a2bc7a634.jpg', '', 'local', 1539941052, NULL);
INSERT INTO `images` VALUES ('45fbafe4aa4e96cc23ec4b2bc6e96a68', 'app头像.png', 'theliuqi.top/static/uploads/images/2020/04/25/15877866285ea3b3840f89c.png', 'D:\\workspace\\main\\jshop_mall\\public/static/uploads/images/2020/04/25/15877866285ea3b3840f89c.png', 'Aliyun', 1587786628, NULL);
INSERT INTO `images` VALUES ('4a6f179672c7f1ec02582eb104607dd2', 'TB1CYIFi9zqK1RjSZFjSuvlCFXa.jpg', 'https://b2c.jihainet.com/static/uploads/9f/c9/54/5bcd2b69d8e2d.jpg', '', 'local', 1540172649, NULL);
INSERT INTO `images` VALUES ('4f86bd749dddd098403fc44a1e473643', 'TB1Qz.HX3mTBuNjy1XbXXaMrVXa_!!0-item_pic.jpg_430x4', 'https://b2c.jihainet.com/static/uploads/0b/b2/ff/5bc9a6de5361c.jpg', '', 'local', 1539942110, NULL);
INSERT INTO `images` VALUES ('50f61b1f46866f1f7664cd4ab8ae62ec', 'TB1SOQOdr2pK1RjSZFsSuuNlXXa.jpg', 'https://b2c.jihainet.com/static/uploads/f5/f1/c2/5bcd2c57a660f.jpg', '', 'local', 1540172887, NULL);
INSERT INTO `images` VALUES ('51496b49fdad4fc6f359cb6a29e6596a', 'O1CN012AZtKHCituSHjfW_!!277648218.jpg', 'https://b2c.jihainet.com/static/uploads/4c/28/57/5bc9a5c53aa6e.jpg', '', 'local', 1539941829, NULL);
INSERT INTO `images` VALUES ('54a8b2f0465e01d9e6f13104181728a5', 'O1CN012H2BUk821QpMLUv_!!3241519092.jpg_430x430q90.', 'https://b2c.jihainet.com/static/uploads/99/99/1d/5bc9a98960531.jpg', '', 'local', 1539942793, NULL);
INSERT INTO `images` VALUES ('55cbc9c9642052f18e989578ae89f4e0', 'b1.jpg', 'https://b2c.jihainet.com/static/uploads/cd/5a/00/5bd0271e324f1.jpg', '', 'local', 1540368158, NULL);
INSERT INTO `images` VALUES ('56020c21a0e3b07e9906c1c6f06bee6a', '依嬅莎.jpg', 'http://b2c.jihainet.com/static/uploads/d6/a3/95/5ba9e21a032e0.jpg', '', 'local', 1537860122, NULL);
INSERT INTO `images` VALUES ('62a308d70f490d3a7bcdff5219e8a693', 'app头像.png', 'theliuqi.top/static/uploads/images/2020/04/25/15877850865ea3ad7ec2322.png', 'D:\\workspace\\main\\jshop_mall\\public/static/uploads/images/2020/04/25/15877850865ea3ad7ec2322.png', 'Aliyun', 1587785087, NULL);
INSERT INTO `images` VALUES ('6554e73ccd5a4b81b196b5ec3f412d0c', 'O1CN0129E4qsGtc2HGKtz_!!736758035.jpg_430x430q90.j', 'https://b2c.jihainet.com/static/uploads/b3/16/38/5bc9a50662303.jpg', '', 'local', 1539941638, NULL);
INSERT INTO `images` VALUES ('657475e11aaf6ea1a6a56dc7a9e5e86c', '110633595.png', 'theliuqi.top/static/uploads/images/2020/04/11/15866181325e91df14e6f81.png', 'D:\\workspace\\main\\jshop_mall\\public/static/uploads/images/2020/04/11/15866181325e91df14e6f81.png', 'Aliyun', 1586618133, NULL);
INSERT INTO `images` VALUES ('6ee0f5a5ac6c53418852ee6cc78aeb48', '430x430q90.jpg', 'https://b2c.jihainet.com/static/uploads/8c/f8/53/5bc9a3b2916a4.jpg', '', 'local', 1539941298, NULL);
INSERT INTO `images` VALUES ('708ef31a7ba3d766a9a0424aeb8b8481', 'goods1_5.jpg', 'http://b2c.jihainet.com/static/uploads/e9/bc/30/5ba9e786e2f66.jpg', '', 'local', 1537861510, NULL);
INSERT INTO `images` VALUES ('78881593fcf3d651b5c0e69e6e8eba97', '波司登.png', 'http://b2c.jihainet.com/static/uploads/eb/72/fe/5ba9e21a61aa1.png', '', 'local', 1537860122, NULL);
INSERT INTO `images` VALUES ('7e9d7a60a7d40c9e908c45ed092de558', '270x270.jpg', 'https://b2c.jihainet.com/static/uploads/f5/71/ea/5bcd2a29965d7.jpg', '', 'local', 1540172329, NULL);
INSERT INTO `images` VALUES ('87aa9ae12cd0ec075579016169eff5ff', '110633595.png', 'theliuqi.top/static/uploads/images/2020/04/11/15866182145e91df66bb12a.png', 'D:\\workspace\\main\\jshop_mall\\public/static/uploads/images/2020/04/11/15866182145e91df66bb12a.png', 'Aliyun', 1586618214, NULL);
INSERT INTO `images` VALUES ('8809c039c5afd2af6610a3111bb7d4b7', 'u=3112331775,1705654587&fm=27&gp=0.jpg', '/static/uploads/b4/10/f7/5bab3d8e8847e.jpg', '', 'local', 1537949070, NULL);
INSERT INTO `images` VALUES ('897fad09b83c0f847f91843fdb2282a2', 'O1CN012H2BUlWm7Rnugw5_!!3241519092.jpg_430x430q90.', 'https://b2c.jihainet.com/static/uploads/51/3a/27/5bc9a98957a8c.jpg', '', 'local', 1539942793, NULL);
INSERT INTO `images` VALUES ('8ef876168670ddb5c37941a867172f28', 'goods1_4.jpg', 'http://b2c.jihainet.com/static/uploads/5b/ff/67/5ba9e78294c5a.jpg', '', 'local', 1537861506, NULL);
INSERT INTO `images` VALUES ('8fec591f6b83a0edaa973e3ea35ae8ee', '430x430q90.jpg', 'https://b2c.jihainet.com/static/uploads/72/3e/1e/5bc9a293a44ee.jpg', '', 'local', 1539941011, NULL);
INSERT INTO `images` VALUES ('9207c7644b6a6a3b7b29195a6a9d7a3b', 'O1CN011FO2zThCdx2pftI_!!2946030476.jpg_430x430q90.', 'https://b2c.jihainet.com/static/uploads/83/37/8a/5bc9ab85d0414.jpg', '', 'local', 1539943301, NULL);
INSERT INTO `images` VALUES ('9422a9632cae4f6c45a171c58a9f776c', '千仞岗.png', 'http://b2c.jihainet.com/static/uploads/21/10/c9/5ba9e21b1c076.png', '', 'local', 1537860123, NULL);
INSERT INTO `images` VALUES ('9b7051cf017685b0c3a48c4658d48272', 'TB2_LVcev9TBuNjy0FcXXbeiFXa_!!173275708.jpg_430x43', 'https://b2c.jihainet.com/static/uploads/58/57/c8/5bc9a6de50a60.jpg', '', 'local', 1539942110, NULL);
INSERT INTO `images` VALUES ('9ca906f23d05dc9db1de552bfefa36fc', '270x270.jpg', 'https://b2c.jihainet.com/static/uploads/19/92/5a/5bc9a262427d4.jpg', '', 'local', 1539940962, NULL);
INSERT INTO `images` VALUES ('9f906ea7c6d4d785946f3f54e3717c59', 'O1CN0129E4qt3dH4bv5Fl_!!736758035.png_430x430q90.j', 'https://b2c.jihainet.com/static/uploads/2e/1b/3b/5bc9a50900998.jpg', '', 'local', 1539941641, NULL);
INSERT INTO `images` VALUES ('a422f452969f04e4493af4728eec3ab8', 'O1CN011EoK6MJ0F08K4mr_!!0-saturn_solar.jpg_270x270', 'https://b2c.jihainet.com/static/uploads/04/f9/ec/5bcd2ca278a34.jpg', '', 'local', 1540172962, NULL);
INSERT INTO `images` VALUES ('a496465d657cd5fbeb90f10e25e16086', '123.jpg', 'https://b2c.jihainet.com/static/uploads/11/e9/e7/5bc9a31259dda.jpg', '', 'local', 1539941138, NULL);
INSERT INTO `images` VALUES ('a5fd9ad6780b56a9ecece1d1ae38b18e', '9252150_174018365301_2.png', 'https://b2c.jihainet.com/static/uploads/8e/44/1c/5bc9a31283f70.png', '', 'local', 1539941138, NULL);
INSERT INTO `images` VALUES ('adbbcb7f003c3b97b106e50d186de1e6', 'app头像.png', 'theliuqi.top/static/uploads/images/2020/04/25/15877864045ea3b2a4202cc.png', 'D:\\workspace\\main\\jshop_mall\\public/static/uploads/images/2020/04/25/15877864045ea3b2a4202cc.png', 'Aliyun', 1587786404, NULL);
INSERT INTO `images` VALUES ('aea2675adb10467d6dfbd92ab9321a33', '270x270.jpg', 'https://b2c.jihainet.com/static/uploads/7a/20/9c/5bcd2a537bf1f.jpg', '', 'local', 1540172371, NULL);
INSERT INTO `images` VALUES ('af547e9f2513965d6eaf56b4dcc276ec', '270x270.jpg', 'https://b2c.jihainet.com/static/uploads/f2/1d/d0/5bcd2aa788869.jpg', '', 'local', 1540172455, NULL);
INSERT INTO `images` VALUES ('b419e4164d5726d057b2ae195f9a96df', 'goods1_2.jpg', 'http://b2c.jihainet.com/static/uploads/b7/03/ed/5ba9e78922087.jpg', '', 'local', 1537861513, NULL);
INSERT INTO `images` VALUES ('b55ea82d8c05abdc06da42331ac3820b', 'actAug_sharePic.jpg', 'https://b2c.jihainet.com/static/uploads/cd/57/0d/5bcdaa110ed6f.jpg', '', 'local', 1540205073, NULL);
INSERT INTO `images` VALUES ('b68a51db26eb5c35e4f9b16f0c41d455', 'O1CN011DHW7IubkRgdFiS_!!0-saturn_solar.jpg_270x270', 'https://b2c.jihainet.com/static/uploads/fa/6c/24/5bcd2cd0edf0d.jpg', '', 'local', 1540173008, NULL);
INSERT INTO `images` VALUES ('b9857035fa36ca4fbbeadc72e3ead0bb', '270x270.jpg', 'https://b2c.jihainet.com/static/uploads/34/13/4a/5bc9a1f05e5c6.jpg', '', 'local', 1539940848, NULL);
INSERT INTO `images` VALUES ('b9d70b1b457f77b3796cd4229c9b0aa2', '水墨清华.jpg', 'http://b2c.jihainet.com/static/uploads/43/cb/eb/5ba9e21d41d70.jpg', '', 'local', 1537860125, NULL);
INSERT INTO `images` VALUES ('ba2be1b85728a546038f1c783e28582c', 'O1CN011jjW1JBSBRDj7YA_!!2856524584.jpg_430x430q90.', 'https://b2c.jihainet.com/static/uploads/7e/18/48/5bc9a816ce21b.jpg', '', 'local', 1539942422, NULL);
INSERT INTO `images` VALUES ('c667372acee834c7e4bc36fb51c3bee9', '110425022312-0.jpg', 'https://b2c.jihainet.com/static/uploads/b8/73/29/5bce8cb00be24.jpg', '', 'local', 1540263088, NULL);
INSERT INTO `images` VALUES ('cd2c104a7d9100e12f7529d6b2c3f209', '270x270.jpg', 'https://b2c.jihainet.com/static/uploads/67/24/48/5bcd2af7116a3.jpg', '', 'local', 1540172535, NULL);
INSERT INTO `images` VALUES ('d47c3377663dfbb925ea9a40a1488155', '250x250.jpg', 'https://b2c.jihainet.com/static/uploads/cc/15/4b/5bc9a02015a35.jpg', '', 'local', 1539940384, NULL);
INSERT INTO `images` VALUES ('d6164aafe1d26463fb077b28e919c861', 'O1CN011FO2zV7NDZHC7HV_!!2946030476.jpg_430x430q90.', 'https://b2c.jihainet.com/static/uploads/46/4e/5e/5bc9ab85b6541.jpg', '', 'local', 1539943301, NULL);
INSERT INTO `images` VALUES ('d621f6c85afaaf113fdbfd630bfefb65', 'b2.jpg', 'https://b2c.jihainet.com/static/uploads/46/1e/1c/5bd0271e3c8fa.jpg', '', 'local', 1540368158, NULL);
INSERT INTO `images` VALUES ('d74ea8dc93080b9e4ae686f4a14dbe96', '160x160q90.jpg', 'https://b2c.jihainet.com/static/uploads/15/2d/d3/5bc9a0e70ac7f.jpg', '', 'local', 1539940583, NULL);
INSERT INTO `images` VALUES ('d80e32cf4665fb60ef9b632466c835e2', '艾尚臣.png', 'http://b2c.jihainet.com/static/uploads/4f/4d/86/5ba9e21b16403.png', '', 'local', 1537860123, NULL);
INSERT INTO `images` VALUES ('d8f07a89b3f8d35b74ed6b21c21a180e', 'u=1134602731,3644147114&fm=27&gp=0.jpg', 'https://b2c.jihainet.com/static/uploads/eb/96/5b/5bcac64e3986e.jpg', '', 'local', 1540015694, NULL);
INSERT INTO `images` VALUES ('d9543b910358d02d1c60b859dd05c8aa', '定坊嘉园77户型.jpg', 'https://b2c.jihainet.com/static/uploads/7f/93/09/5bcc1fe997d8e.jpg', '', 'local', 1540104169, NULL);
INSERT INTO `images` VALUES ('db1b8c0257b08a5542e10125fcef8fc1', '160x160q90.jpg', 'https://b2c.jihainet.com/static/uploads/17/22/8b/5bc9a118068ec.jpg', '', 'local', 1539940632, NULL);
INSERT INTO `images` VALUES ('dcc56740b60745aac85a1b0433767a8d', '恩裳.png', 'http://b2c.jihainet.com/static/uploads/a7/fb/46/5ba9e21e33314.png', '', 'local', 1537860126, NULL);
INSERT INTO `images` VALUES ('de21cc610a10fada67ef1974bdacf9fb', '160x160q90.jpg', 'https://b2c.jihainet.com/static/uploads/dd/da/cb/5bc9a14a0d106.jpg', '', 'local', 1539940682, NULL);
INSERT INTO `images` VALUES ('dea52ed56c999be5583ba568aff9029a', '270x270.jpg', 'https://b2c.jihainet.com/static/uploads/e4/95/26/5bc9a2e8277ce.jpg', '', 'local', 1539941096, NULL);
INSERT INTO `images` VALUES ('deed2e4f1c54f87eb672ad8c444ba229', 'O1CN011FO2zWdwMIOhIb0_!!0-item_pic.jpg_430x430q90.', 'https://b2c.jihainet.com/static/uploads/0c/4b/01/5bc9ab85cc335.jpg', '', 'local', 1539943301, NULL);
INSERT INTO `images` VALUES ('def45acaee091fb6ab66634b76a5ce48', 'UR.jpeg', 'http://b2c.jihainet.com/static/uploads/d5/02/ee/5ba9e21d4ff8b.jpeg', '', 'local', 1537860125, NULL);
INSERT INTO `images` VALUES ('e066155b201c578f5cd467616b0483b2', '拉夏贝尔.jpg', 'http://b2c.jihainet.com/static/uploads/54/82/d1/5ba9e21dcbd68.jpg', '', 'local', 1537860125, NULL);
INSERT INTO `images` VALUES ('e214d5d3a8412df8f9c771a895425916', 'LMZ1537428876.png', 'https://b2c.jihainet.com/static/uploads/75/91/20/5bc9a3124dd0b.png', '', 'local', 1539941138, NULL);
INSERT INTO `images` VALUES ('e51a16d2996d29939e7031434fbc3c29', '270x270.jpg', 'https://b2c.jihainet.com/static/uploads/05/3b/e8/5bcd2b11a2990.jpg', '', 'local', 1540172561, NULL);
INSERT INTO `images` VALUES ('e75777b3c40755d4d0febd7696452150', 'DKCHENPIN.jpg', 'http://b2c.jihainet.com/static/uploads/9e/17/a8/5ba9e21a4d831.jpg', '', 'local', 1537860122, NULL);
INSERT INTO `images` VALUES ('edc14b67f169e0512acf6f20a253d263', 'b4.jpg', 'https://b2c.jihainet.com/static/uploads/09/e1/ce/5bd0271e5fa2d.jpg', '', 'local', 1540368158, NULL);
INSERT INTO `images` VALUES ('efb4e9d3e3e3717ea72bc65e097b5011', '110633595.png', 'theliuqi.top/static/uploads/images/2020/04/11/15866183545e91dff2224b8.png', 'D:\\workspace\\main\\jshop_mall\\public/static/uploads/images/2020/04/11/15866183545e91dff2224b8.png', 'Aliyun', 1586618354, NULL);
INSERT INTO `images` VALUES ('f0007202b0603ea8263da17b53ff0b7a', '0751ef339ada6598c11199991ddd14a9.jpg', '/static/uploads/e5/f9/a4/5bac52e9d3c2e.jpg', '', 'local', 1538020073, NULL);
INSERT INTO `images` VALUES ('f0a66a18897e376916ac77b8363d7917', '110633595.png', 'theliuqi.top/static/uploads/images/2020/04/11/15866182055e91df5d32bc4.png', 'D:\\workspace\\main\\jshop_mall\\public/static/uploads/images/2020/04/11/15866182055e91df5d32bc4.png', 'Aliyun', 1586618205, NULL);
INSERT INTO `images` VALUES ('f4f98826b4db681ab21433c3fecc8326', '430x430q90.jpg', 'https://b2c.jihainet.com/static/uploads/8f/30/40/5bc9a224b81f4.jpg', '', 'local', 1539940900, NULL);
INSERT INTO `images` VALUES ('f669696078688c02bbe721ac9d5f0a54', 'O1CN012H2BUk81kovjH1J_!!3241519092.jpg_430x430q90.', 'https://b2c.jihainet.com/static/uploads/76/6d/d5/5bc9a988051b3.jpg', '', 'local', 1539942792, NULL);
INSERT INTO `images` VALUES ('f8b31c241ad346fceb55f83fcf2874bb', '270x270.jpg', 'https://b2c.jihainet.com/static/uploads/a8/9e/44/5bcd2a79f1ea0.jpg', '', 'local', 1540172409, NULL);
INSERT INTO `images` VALUES ('fb594a67a5bd4034879e10b39fc27be9', '罗衣.png', 'http://b2c.jihainet.com/static/uploads/24/db/73/5ba9e21ce529b.png', '', 'local', 1537860124, NULL);
INSERT INTO `images` VALUES ('fcbc476de3f2feb0c1eca55406b6a64c', 'O1CN011jjW1JieT3iWJDU_!!2856524584.jpg_430x430q90.', 'https://b2c.jihainet.com/static/uploads/99/3c/3e/5bc9a817e6b9d.jpg', '', 'local', 1539942423, NULL);
INSERT INTO `images` VALUES ('fce63f9c69c6c4ec606b544fcc7610a2', 'O1CN0129E4qkPG80nYrJl_!!736758035.jpg_430x430q90.j', 'https://b2c.jihainet.com/static/uploads/dd/bd/35/5bc9a50154075.jpg', '', 'local', 1539941633, NULL);
INSERT INTO `images` VALUES ('fcf3bc0c3842963e0ccd606312263f9c', '维卡拉.jpg', 'http://b2c.jihainet.com/static/uploads/8f/d0/58/5ba9e21a038aa.jpg', '', 'local', 1537860122, NULL);
INSERT INTO `images` VALUES ('fe91f59b549fab49ca2db1ea9883f8d3', '270x270.jpg', 'https://b2c.jihainet.com/static/uploads/46/92/b7/5bcd2ac6d1d2c.jpg', '', 'local', 1540172486, NULL);

-- ----------------------------
-- Table structure for invoice_record
-- ----------------------------
DROP TABLE IF EXISTS `invoice_record`;
CREATE TABLE `invoice_record`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NULL DEFAULT NULL COMMENT '发票抬头',
  `code` varchar(30) NULL DEFAULT NULL COMMENT '发票税号',
  `frequency` mediumint(6) UNSIGNED NULL DEFAULT 1 COMMENT '被使用次数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 COMMENT = '发票信息记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for jobs
-- ----------------------------
DROP TABLE IF EXISTS `jobs`;
CREATE TABLE `jobs`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED NULL DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 COMMENT = '队列表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for label
-- ----------------------------
DROP TABLE IF EXISTS `label`;
CREATE TABLE `label`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标签名称',
  `style` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'hot' COMMENT '标签样式',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 COMMENT = '标签表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for login_log
-- ----------------------------
DROP TABLE IF EXISTS `login_log`;
CREATE TABLE `login_log`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` int(11) UNSIGNED NOT NULL COMMENT '用户id',
  `state` tinyint(1) NULL DEFAULT NULL COMMENT '登录 1  退出2,3注册',
  `log_time` bigint(12) UNSIGNED NULL DEFAULT NULL COMMENT '时间',
  `city` varchar(100) NULL DEFAULT NULL COMMENT '地点城市',
  `ip` varchar(15) NULL DEFAULT NULL COMMENT 'ip地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for logistics
-- ----------------------------
DROP TABLE IF EXISTS `logistics`;
CREATE TABLE `logistics`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `logi_name` varchar(30) NULL DEFAULT NULL COMMENT '物流公司名称',
  `logi_code` varchar(50) NULL DEFAULT NULL COMMENT '物流公司编码',
  `sort` tinyint(3) UNSIGNED NULL DEFAULT 100 COMMENT '排序 越小越靠前',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `logi_code`(`logi_code`) USING BTREE,
  INDEX `sort`(`sort`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1114 COMMENT = '物流公司表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of logistics
-- ----------------------------
INSERT INTO `logistics` VALUES (1000, '顺丰速运', 'SF', 100);
INSERT INTO `logistics` VALUES (1001, '百世快递', 'HTKY', 100);
INSERT INTO `logistics` VALUES (1100, '中通快递', 'ZTO', 100);
INSERT INTO `logistics` VALUES (1101, '申通快递', 'STO', 100);
INSERT INTO `logistics` VALUES (1102, '圆通速递', 'YTO', 100);
INSERT INTO `logistics` VALUES (1103, '韵达速递', 'YD', 100);
INSERT INTO `logistics` VALUES (1104, '邮政快递包裹', 'YZPY', 100);
INSERT INTO `logistics` VALUES (1105, 'EMS', 'EMS', 100);
INSERT INTO `logistics` VALUES (1106, '天天快递', 'HHTT', 100);
INSERT INTO `logistics` VALUES (1107, '京东快递', 'JD', 100);
INSERT INTO `logistics` VALUES (1108, '优速快递', 'UC', 100);
INSERT INTO `logistics` VALUES (1109, '德邦快递', 'DBL', 100);
INSERT INTO `logistics` VALUES (1110, '宅急送', 'ZJS', 100);
INSERT INTO `logistics` VALUES (1111, 'DHL', 'DHL', 100);
INSERT INTO `logistics` VALUES (1112, 'FEDEX联邦(国内件）', 'FEDEX', 100);
INSERT INTO `logistics` VALUES (1113, 'FEDEX联邦(国际件）', 'FEDEX_GJ', 100);

-- ----------------------------
-- Table structure for manage
-- ----------------------------
DROP TABLE IF EXISTS `manage`;
CREATE TABLE `manage`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `username` varchar(20) NULL DEFAULT NULL COMMENT '用户名',
  `password` char(32) NULL DEFAULT NULL COMMENT '密码 md5(md5()+创建时间)',
  `mobile` char(15) NULL DEFAULT NULL COMMENT '手机号',
  `avatar` varchar(255) NULL DEFAULT NULL COMMENT '头像',
  `nickname` varchar(50) NULL DEFAULT NULL COMMENT '昵称',
  `update_time` timestamp NULL DEFAULT NULL,
  `utime` bigint(12) UNSIGNED NULL DEFAULT NULL,
  `status` tinyint(1) UNSIGNED NULL DEFAULT 1 COMMENT '1 = 正常 2 = 停用',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 COMMENT = '管理员表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of manage
-- ----------------------------
INSERT INTO `manage` VALUES (13, 'admin', 'ecfd8aac9967079f7dccffe5bdcb5093', '', NULL, NULL, "2020/08/20 17:39:05", "2020/08/20 17:39:05", 1);
INSERT INTO `manage` VALUES (14, 'Liuqi', 'd479212d03852d953226a34548bea693', '17621778414', NULL, NULL, "2020/08/20 17:39:05", NULL, 1);

-- ----------------------------
-- Table structure for manage_role
-- ----------------------------
DROP TABLE IF EXISTS `manage_role`;
CREATE TABLE `manage_role`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NULL DEFAULT NULL COMMENT '角色名称',
  `utime` bigint(12) UNSIGNED NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 COMMENT = '总后台角色表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of manage_role
-- ----------------------------
INSERT INTO `manage_role` VALUES (1, '超管', "2020/08/20 17:39:05");

-- ----------------------------
-- Table structure for manage_role_operation_rel
-- ----------------------------
DROP TABLE IF EXISTS `manage_role_operation_rel`;
CREATE TABLE `manage_role_operation_rel`  (
  `manage_role_id` int(10) NOT NULL,
  `operation_id` int(10) NOT NULL
) ENGINE = InnoDB COMMENT = '角色操作权限关联表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of manage_role_operation_rel
-- ----------------------------
INSERT INTO `manage_role_operation_rel` VALUES (1, 238);
INSERT INTO `manage_role_operation_rel` VALUES (1, 239);
INSERT INTO `manage_role_operation_rel` VALUES (1, 242);
INSERT INTO `manage_role_operation_rel` VALUES (1, 243);
INSERT INTO `manage_role_operation_rel` VALUES (1, 529);
INSERT INTO `manage_role_operation_rel` VALUES (1, 530);
INSERT INTO `manage_role_operation_rel` VALUES (1, 531);
INSERT INTO `manage_role_operation_rel` VALUES (1, 532);
INSERT INTO `manage_role_operation_rel` VALUES (1, 533);
INSERT INTO `manage_role_operation_rel` VALUES (1, 553);
INSERT INTO `manage_role_operation_rel` VALUES (1, 554);
INSERT INTO `manage_role_operation_rel` VALUES (1, 417);
INSERT INTO `manage_role_operation_rel` VALUES (1, 418);
INSERT INTO `manage_role_operation_rel` VALUES (1, 419);
INSERT INTO `manage_role_operation_rel` VALUES (1, 420);
INSERT INTO `manage_role_operation_rel` VALUES (1, 411);
INSERT INTO `manage_role_operation_rel` VALUES (1, 412);
INSERT INTO `manage_role_operation_rel` VALUES (1, 413);
INSERT INTO `manage_role_operation_rel` VALUES (1, 414);
INSERT INTO `manage_role_operation_rel` VALUES (1, 305);
INSERT INTO `manage_role_operation_rel` VALUES (1, 306);
INSERT INTO `manage_role_operation_rel` VALUES (1, 307);
INSERT INTO `manage_role_operation_rel` VALUES (1, 309);
INSERT INTO `manage_role_operation_rel` VALUES (1, 316);
INSERT INTO `manage_role_operation_rel` VALUES (1, 321);
INSERT INTO `manage_role_operation_rel` VALUES (1, 394);
INSERT INTO `manage_role_operation_rel` VALUES (1, 395);
INSERT INTO `manage_role_operation_rel` VALUES (1, 292);
INSERT INTO `manage_role_operation_rel` VALUES (1, 293);
INSERT INTO `manage_role_operation_rel` VALUES (1, 294);
INSERT INTO `manage_role_operation_rel` VALUES (1, 295);
INSERT INTO `manage_role_operation_rel` VALUES (1, 287);
INSERT INTO `manage_role_operation_rel` VALUES (1, 288);
INSERT INTO `manage_role_operation_rel` VALUES (1, 289);
INSERT INTO `manage_role_operation_rel` VALUES (1, 290);
INSERT INTO `manage_role_operation_rel` VALUES (1, 324);
INSERT INTO `manage_role_operation_rel` VALUES (1, 325);
INSERT INTO `manage_role_operation_rel` VALUES (1, 327);
INSERT INTO `manage_role_operation_rel` VALUES (1, 328);
INSERT INTO `manage_role_operation_rel` VALUES (1, 331);
INSERT INTO `manage_role_operation_rel` VALUES (1, 422);
INSERT INTO `manage_role_operation_rel` VALUES (1, 423);
INSERT INTO `manage_role_operation_rel` VALUES (1, 424);
INSERT INTO `manage_role_operation_rel` VALUES (1, 425);
INSERT INTO `manage_role_operation_rel` VALUES (1, 240);
INSERT INTO `manage_role_operation_rel` VALUES (1, 296);
INSERT INTO `manage_role_operation_rel` VALUES (1, 297);
INSERT INTO `manage_role_operation_rel` VALUES (1, 299);
INSERT INTO `manage_role_operation_rel` VALUES (1, 300);
INSERT INTO `manage_role_operation_rel` VALUES (1, 303);
INSERT INTO `manage_role_operation_rel` VALUES (1, 405);
INSERT INTO `manage_role_operation_rel` VALUES (1, 488);
INSERT INTO `manage_role_operation_rel` VALUES (1, 490);
INSERT INTO `manage_role_operation_rel` VALUES (1, 503);
INSERT INTO `manage_role_operation_rel` VALUES (1, 344);
INSERT INTO `manage_role_operation_rel` VALUES (1, 345);
INSERT INTO `manage_role_operation_rel` VALUES (1, 348);
INSERT INTO `manage_role_operation_rel` VALUES (1, 350);
INSERT INTO `manage_role_operation_rel` VALUES (1, 266);
INSERT INTO `manage_role_operation_rel` VALUES (1, 253);
INSERT INTO `manage_role_operation_rel` VALUES (1, 254);
INSERT INTO `manage_role_operation_rel` VALUES (1, 255);
INSERT INTO `manage_role_operation_rel` VALUES (1, 256);
INSERT INTO `manage_role_operation_rel` VALUES (1, 259);
INSERT INTO `manage_role_operation_rel` VALUES (1, 260);
INSERT INTO `manage_role_operation_rel` VALUES (1, 261);
INSERT INTO `manage_role_operation_rel` VALUES (1, 262);
INSERT INTO `manage_role_operation_rel` VALUES (1, 267);
INSERT INTO `manage_role_operation_rel` VALUES (1, 268);
INSERT INTO `manage_role_operation_rel` VALUES (1, 269);
INSERT INTO `manage_role_operation_rel` VALUES (1, 270);
INSERT INTO `manage_role_operation_rel` VALUES (1, 272);
INSERT INTO `manage_role_operation_rel` VALUES (1, 273);
INSERT INTO `manage_role_operation_rel` VALUES (1, 274);
INSERT INTO `manage_role_operation_rel` VALUES (1, 275);
INSERT INTO `manage_role_operation_rel` VALUES (1, 278);
INSERT INTO `manage_role_operation_rel` VALUES (1, 279);
INSERT INTO `manage_role_operation_rel` VALUES (1, 280);
INSERT INTO `manage_role_operation_rel` VALUES (1, 281);
INSERT INTO `manage_role_operation_rel` VALUES (1, 356);
INSERT INTO `manage_role_operation_rel` VALUES (1, 357);
INSERT INTO `manage_role_operation_rel` VALUES (1, 358);
INSERT INTO `manage_role_operation_rel` VALUES (1, 359);
INSERT INTO `manage_role_operation_rel` VALUES (1, 360);
INSERT INTO `manage_role_operation_rel` VALUES (1, 361);
INSERT INTO `manage_role_operation_rel` VALUES (1, 264);
INSERT INTO `manage_role_operation_rel` VALUES (1, 265);
INSERT INTO `manage_role_operation_rel` VALUES (1, 362);
INSERT INTO `manage_role_operation_rel` VALUES (1, 363);
INSERT INTO `manage_role_operation_rel` VALUES (1, 364);
INSERT INTO `manage_role_operation_rel` VALUES (1, 491);
INSERT INTO `manage_role_operation_rel` VALUES (1, 492);
INSERT INTO `manage_role_operation_rel` VALUES (1, 493);
INSERT INTO `manage_role_operation_rel` VALUES (1, 494);
INSERT INTO `manage_role_operation_rel` VALUES (1, 399);
INSERT INTO `manage_role_operation_rel` VALUES (1, 247);
INSERT INTO `manage_role_operation_rel` VALUES (1, 249);
INSERT INTO `manage_role_operation_rel` VALUES (1, 251);
INSERT INTO `manage_role_operation_rel` VALUES (1, 400);
INSERT INTO `manage_role_operation_rel` VALUES (1, 401);
INSERT INTO `manage_role_operation_rel` VALUES (1, 460);
INSERT INTO `manage_role_operation_rel` VALUES (1, 461);
INSERT INTO `manage_role_operation_rel` VALUES (1, 352);
INSERT INTO `manage_role_operation_rel` VALUES (1, 354);
INSERT INTO `manage_role_operation_rel` VALUES (1, 432);
INSERT INTO `manage_role_operation_rel` VALUES (1, 244);
INSERT INTO `manage_role_operation_rel` VALUES (1, 245);
INSERT INTO `manage_role_operation_rel` VALUES (1, 336);
INSERT INTO `manage_role_operation_rel` VALUES (1, 337);
INSERT INTO `manage_role_operation_rel` VALUES (1, 338);
INSERT INTO `manage_role_operation_rel` VALUES (1, 339);
INSERT INTO `manage_role_operation_rel` VALUES (1, 366);
INSERT INTO `manage_role_operation_rel` VALUES (1, 367);
INSERT INTO `manage_role_operation_rel` VALUES (1, 368);
INSERT INTO `manage_role_operation_rel` VALUES (1, 369);
INSERT INTO `manage_role_operation_rel` VALUES (1, 484);
INSERT INTO `manage_role_operation_rel` VALUES (1, 485);
INSERT INTO `manage_role_operation_rel` VALUES (1, 486);
INSERT INTO `manage_role_operation_rel` VALUES (1, 391);
INSERT INTO `manage_role_operation_rel` VALUES (1, 539);
INSERT INTO `manage_role_operation_rel` VALUES (1, 393);
INSERT INTO `manage_role_operation_rel` VALUES (1, 397);
INSERT INTO `manage_role_operation_rel` VALUES (1, 409);
INSERT INTO `manage_role_operation_rel` VALUES (1, 510);
INSERT INTO `manage_role_operation_rel` VALUES (1, 463);
INSERT INTO `manage_role_operation_rel` VALUES (1, 471);
INSERT INTO `manage_role_operation_rel` VALUES (1, 472);
INSERT INTO `manage_role_operation_rel` VALUES (1, 473);
INSERT INTO `manage_role_operation_rel` VALUES (1, 465);
INSERT INTO `manage_role_operation_rel` VALUES (1, 474);
INSERT INTO `manage_role_operation_rel` VALUES (1, 475);
INSERT INTO `manage_role_operation_rel` VALUES (1, 476);
INSERT INTO `manage_role_operation_rel` VALUES (1, 478);
INSERT INTO `manage_role_operation_rel` VALUES (1, 467);
INSERT INTO `manage_role_operation_rel` VALUES (1, 468);
INSERT INTO `manage_role_operation_rel` VALUES (1, 469);
INSERT INTO `manage_role_operation_rel` VALUES (1, 470);
INSERT INTO `manage_role_operation_rel` VALUES (1, 563);
INSERT INTO `manage_role_operation_rel` VALUES (1, 512);
INSERT INTO `manage_role_operation_rel` VALUES (1, 496);
INSERT INTO `manage_role_operation_rel` VALUES (1, 497);
INSERT INTO `manage_role_operation_rel` VALUES (1, 498);
INSERT INTO `manage_role_operation_rel` VALUES (1, 499);
INSERT INTO `manage_role_operation_rel` VALUES (1, 435);
INSERT INTO `manage_role_operation_rel` VALUES (1, 436);
INSERT INTO `manage_role_operation_rel` VALUES (1, 437);
INSERT INTO `manage_role_operation_rel` VALUES (1, 559);
INSERT INTO `manage_role_operation_rel` VALUES (1, 560);
INSERT INTO `manage_role_operation_rel` VALUES (1, 562);
INSERT INTO `manage_role_operation_rel` VALUES (1, 535);
INSERT INTO `manage_role_operation_rel` VALUES (1, 536);
INSERT INTO `manage_role_operation_rel` VALUES (1, 537);
INSERT INTO `manage_role_operation_rel` VALUES (1, 538);
INSERT INTO `manage_role_operation_rel` VALUES (1, 558);
INSERT INTO `manage_role_operation_rel` VALUES (1, 479);
INSERT INTO `manage_role_operation_rel` VALUES (1, 480);
INSERT INTO `manage_role_operation_rel` VALUES (1, 481);
INSERT INTO `manage_role_operation_rel` VALUES (1, 483);
INSERT INTO `manage_role_operation_rel` VALUES (1, 517);
INSERT INTO `manage_role_operation_rel` VALUES (1, 518);
INSERT INTO `manage_role_operation_rel` VALUES (1, 519);
INSERT INTO `manage_role_operation_rel` VALUES (1, 520);
INSERT INTO `manage_role_operation_rel` VALUES (1, 521);
INSERT INTO `manage_role_operation_rel` VALUES (1, 522);
INSERT INTO `manage_role_operation_rel` VALUES (1, 523);
INSERT INTO `manage_role_operation_rel` VALUES (1, 524);
INSERT INTO `manage_role_operation_rel` VALUES (1, 525);
INSERT INTO `manage_role_operation_rel` VALUES (1, 526);
INSERT INTO `manage_role_operation_rel` VALUES (1, 541);
INSERT INTO `manage_role_operation_rel` VALUES (1, 542);
INSERT INTO `manage_role_operation_rel` VALUES (1, 543);
INSERT INTO `manage_role_operation_rel` VALUES (1, 544);
INSERT INTO `manage_role_operation_rel` VALUES (1, 545);
INSERT INTO `manage_role_operation_rel` VALUES (1, 546);
INSERT INTO `manage_role_operation_rel` VALUES (1, 548);
INSERT INTO `manage_role_operation_rel` VALUES (1, 549);
INSERT INTO `manage_role_operation_rel` VALUES (1, 547);
INSERT INTO `manage_role_operation_rel` VALUES (1, 550);
INSERT INTO `manage_role_operation_rel` VALUES (1, 551);
INSERT INTO `manage_role_operation_rel` VALUES (1, 552);

-- ----------------------------
-- Table structure for manage_role_rel
-- ----------------------------
DROP TABLE IF EXISTS `manage_role_rel`;
CREATE TABLE `manage_role_rel`  (
  `manage_id` int(10) UNSIGNED NOT NULL COMMENT '管理员ID 关联manage.id',
  `role_id` int(10) UNSIGNED NULL DEFAULT NULL COMMENT '角色ID 关联role.id'
) ENGINE = InnoDB COMMENT = '管理员和角色关系表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of manage_role_rel
-- ----------------------------
INSERT INTO `manage_role_rel` VALUES (14, 1);

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL COMMENT '用户id',
  `code` varchar(60) NOT NULL COMMENT '消息编码',
  `params` varchar(5000) NOT NULL COMMENT '参数',
  `content` text NOT NULL COMMENT '内容',
  `update_time` timestamp NOT NULL COMMENT '创建时间',
  `utime` bigint(12) UNSIGNED NOT NULL COMMENT '查看时间',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1未查看，2已查看',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 COMMENT = '站内信' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for message_center
-- ----------------------------
DROP TABLE IF EXISTS `message_center`;
CREATE TABLE `message_center`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `code` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '编码',
  `sms` tinyint(1) UNSIGNED NOT NULL COMMENT '1 启用  2禁用',
  `message` tinyint(1) UNSIGNED NOT NULL COMMENT '站内消息',
  `wx_tpl_message` tinyint(1) UNSIGNED NOT NULL COMMENT '微信模板消息',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 COMMENT = '消息中心表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of message_center
-- ----------------------------
INSERT INTO `message_center` VALUES (1, 'seller_order_notice', 1, 2, 2);
INSERT INTO `message_center` VALUES (2, 'refund_success', 2, 1, 2);
INSERT INTO `message_center` VALUES (3, 'aftersales_pass', 1, 1, 2);
INSERT INTO `message_center` VALUES (4, 'create_order', 2, 2, 2);
INSERT INTO `message_center` VALUES (5, 'order_payed', 1, 1, 2);

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NULL DEFAULT NULL COMMENT '公告标题',
  `content` longtext NULL COMMENT '公告内容',
  `type` tinyint(1) UNSIGNED NULL DEFAULT 1 COMMENT '公告类型',
  `ctime` bigint(12) NULL DEFAULT NULL COMMENT '创建时间 毫秒',
  `sort` tinyint(3) UNSIGNED NULL DEFAULT 100 COMMENT '排序 从小到大',
  `isdel` bigint(12) UNSIGNED NULL DEFAULT NULL COMMENT '软删除位  有时间代表已删除',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `isdel`(`isdel`) USING BTREE,
  INDEX `sort`(`sort`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 COMMENT = '公告表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for operation
-- ----------------------------
DROP TABLE IF EXISTS `operation`;
CREATE TABLE `operation`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) UNSIGNED NOT NULL COMMENT '父ID',
  `name` varchar(50) NULL DEFAULT NULL COMMENT '操作名称',
  `code` varchar(50) NULL DEFAULT NULL COMMENT '操作编码',
  `type` enum('m','c','a') NOT NULL DEFAULT 'a' COMMENT '类型',
  `parent_menu_id` int(10) UNSIGNED NOT NULL COMMENT '菜单id',
  `perm_type` int(1) UNSIGNED NOT NULL DEFAULT 3 COMMENT '权限许可类型，如果为1就是主体权限，， 如果为2就是半主体权限，在左侧菜单不显示，但是在权限菜单上有体现，如果为3就是关联权限',
  `sort` smallint(5) UNSIGNED NULL DEFAULT 100 COMMENT '操作排序 越小越靠前',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `parent_id`(`parent_id`) USING BTREE,
  INDEX `id`(`id`) USING BTREE,
  INDEX `parent_menu_id`(`parent_menu_id`) USING BTREE,
  INDEX `sort`(`sort`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 564 COMMENT = '权限表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of operation
-- ----------------------------
INSERT INTO `operation` VALUES (2, 1, '管理后台', 'manage', 'm', 1, 1, 200);
INSERT INTO `operation` VALUES (238, 2, '会员管理', 'User', 'c', 2, 1, 100);
INSERT INTO `operation` VALUES (239, 238, '用户列表', 'index', 'a', 238, 1, 100);
INSERT INTO `operation` VALUES (240, 238, '商品评价', 'comment', 'a', 305, 1, 101);
INSERT INTO `operation` VALUES (242, 238, '积分记录查询', 'pointlog', 'a', 239, 2, 100);
INSERT INTO `operation` VALUES (243, 238, '积分编辑', 'editpoint', 'a', 239, 2, 100);
INSERT INTO `operation` VALUES (244, 2, '控制面板', 'Setting', 'c', 2, 1, 200);
INSERT INTO `operation` VALUES (245, 244, '平台设置', 'index', 'a', 244, 1, 100);
INSERT INTO `operation` VALUES (246, 2, '支付方式', 'Payments', 'c', 2, 3, 100);
INSERT INTO `operation` VALUES (247, 246, '支付方式列表', 'index', 'a', 399, 1, 100);
INSERT INTO `operation` VALUES (249, 246, '支付方式修改', 'edit', 'a', 247, 2, 100);
INSERT INTO `operation` VALUES (251, 246, '支付方式启/禁用', 'changestatus', 'a', 249, 2, 100);
INSERT INTO `operation` VALUES (252, 2, '文章分类', 'ArticleType', 'c', 2, 3, 100);
INSERT INTO `operation` VALUES (253, 252, '文章分类', 'index', 'a', 266, 1, 100);
INSERT INTO `operation` VALUES (254, 252, '文章分类添加', 'add', 'a', 253, 2, 100);
INSERT INTO `operation` VALUES (255, 252, '文章分类修改', 'edit', 'a', 253, 2, 100);
INSERT INTO `operation` VALUES (256, 252, '文章分类删除', 'del', 'a', 253, 2, 100);
INSERT INTO `operation` VALUES (257, 252, '文章添加子分类', 'addson', 'a', 253, 3, 100);
INSERT INTO `operation` VALUES (258, 2, '文章管理', 'Article', 'c', 2, 3, 100);
INSERT INTO `operation` VALUES (259, 258, '文章列表', 'index', 'a', 266, 1, 100);
INSERT INTO `operation` VALUES (260, 258, '文章添加', 'add', 'a', 259, 2, 100);
INSERT INTO `operation` VALUES (261, 258, '文章修改', 'edit', 'a', 259, 2, 100);
INSERT INTO `operation` VALUES (262, 258, '文章删除', 'del', 'a', 259, 2, 100);
INSERT INTO `operation` VALUES (263, 2, '优惠券管理', 'Coupon', 'c', 2, 3, 140);
INSERT INTO `operation` VALUES (264, 263, '优惠券领取列表', 'index', 'a', 361, 2, 100);
INSERT INTO `operation` VALUES (265, 263, '优惠券删除', 'del', 'a', 361, 2, 100);
INSERT INTO `operation` VALUES (266, 2, '运营管理', 'Notice', 'c', 2, 1, 130);
INSERT INTO `operation` VALUES (267, 266, '公告列表', 'index', 'a', 266, 1, 100);
INSERT INTO `operation` VALUES (268, 266, '公告添加', 'add', 'a', 267, 2, 100);
INSERT INTO `operation` VALUES (269, 266, '公告修改', 'edit', 'a', 267, 2, 100);
INSERT INTO `operation` VALUES (270, 266, '公告删除', 'del', 'a', 267, 2, 100);
INSERT INTO `operation` VALUES (271, 2, '广告位管理', 'CarouselSeat', 'c', 2, 3, 100);
INSERT INTO `operation` VALUES (272, 271, '广告位列表', 'index', 'a', 266, 1, 100);
INSERT INTO `operation` VALUES (273, 271, '广告位添加', 'add', 'a', 272, 2, 100);
INSERT INTO `operation` VALUES (274, 271, '广告位修改', 'edit', 'a', 272, 2, 100);
INSERT INTO `operation` VALUES (275, 271, '广告位删除', 'del', 'a', 272, 2, 100);
INSERT INTO `operation` VALUES (277, 2, '广告管理', 'Carousel', 'c', 2, 3, 100);
INSERT INTO `operation` VALUES (278, 277, '广告列表', 'index', 'a', 266, 1, 100);
INSERT INTO `operation` VALUES (279, 277, '广告添加', 'add', 'a', 278, 2, 100);
INSERT INTO `operation` VALUES (280, 277, '广告修改', 'edit', 'a', 278, 2, 100);
INSERT INTO `operation` VALUES (281, 277, '广告删除', 'del', 'a', 278, 2, 100);
INSERT INTO `operation` VALUES (282, 277, '获取商品', 'getgoods', 'a', 278, 3, 100);
INSERT INTO `operation` VALUES (283, 277, '获取文章', 'getarticle', 'a', 278, 3, 100);
INSERT INTO `operation` VALUES (284, 277, '获取商品名称', 'goodsinfo', 'a', 278, 3, 100);
INSERT INTO `operation` VALUES (285, 277, '获取文章名称', 'articleinfo', 'a', 278, 3, 100);
INSERT INTO `operation` VALUES (286, 2, '品牌管理', 'Brand', 'c', 2, 3, 100);
INSERT INTO `operation` VALUES (287, 286, '品牌列表', 'index', 'a', 305, 1, 30);
INSERT INTO `operation` VALUES (288, 286, '品牌添加', 'add', 'a', 287, 2, 100);
INSERT INTO `operation` VALUES (289, 286, '品牌修改', 'edit', 'a', 287, 2, 100);
INSERT INTO `operation` VALUES (290, 286, '品牌删除', 'del', 'a', 287, 2, 100);
INSERT INTO `operation` VALUES (291, 2, '商品分类', 'Categories', 'c', 2, 3, 100);
INSERT INTO `operation` VALUES (292, 291, '商品分类', 'index', 'a', 305, 1, 20);
INSERT INTO `operation` VALUES (293, 291, '添加商品分类', 'add', 'a', 292, 2, 100);
INSERT INTO `operation` VALUES (294, 291, '编辑商品分类', 'edit', 'a', 292, 2, 100);
INSERT INTO `operation` VALUES (295, 291, '删除商品分类', 'del', 'a', 292, 2, 100);
INSERT INTO `operation` VALUES (296, 2, '订单管理', 'Order', 'c', 2, 1, 120);
INSERT INTO `operation` VALUES (297, 296, '订单列表', 'index', 'a', 296, 1, 90);
INSERT INTO `operation` VALUES (298, 296, '查看订单详情', 'view', 'a', 297, 3, 100);
INSERT INTO `operation` VALUES (299, 296, '编辑订单', 'edit', 'a', 297, 2, 100);
INSERT INTO `operation` VALUES (300, 296, '订单发货', 'ship', 'a', 297, 2, 100);
INSERT INTO `operation` VALUES (301, 296, '取消订单', 'cancel', 'a', 299, 3, 100);
INSERT INTO `operation` VALUES (302, 296, '完成订单', 'complete', 'a', 299, 3, 100);
INSERT INTO `operation` VALUES (303, 296, '删除订单', 'del', 'a', 297, 2, 100);
INSERT INTO `operation` VALUES (304, 296, '物流查询', 'logistics', 'a', 297, 3, 100);
INSERT INTO `operation` VALUES (305, 2, '商品管理', 'Goods', 'c', 2, 1, 110);
INSERT INTO `operation` VALUES (306, 305, '商品列表', 'index', 'a', 305, 1, 10);
INSERT INTO `operation` VALUES (307, 305, '添加商品', 'add', 'a', 306, 2, 100);
INSERT INTO `operation` VALUES (308, 305, '保存商品', 'doAdd', 'a', 307, 3, 100);
INSERT INTO `operation` VALUES (309, 305, '商品评价列表', 'commentlist', 'a', 306, 2, 100);
INSERT INTO `operation` VALUES (310, 305, '商品评价详情', 'getcommentinfo', 'a', 309, 3, 100);
INSERT INTO `operation` VALUES (311, 305, '商家回复', 'sellercontent', 'a', 309, 3, 100);
INSERT INTO `operation` VALUES (312, 305, '前台展示状态', 'setdisplay', 'a', 164, 3, 100);
INSERT INTO `operation` VALUES (313, 305, '获取子分类', 'getcat', 'a', 306, 3, 100);
INSERT INTO `operation` VALUES (314, 305, '获取规格信息', 'getspec', 'a', 306, 3, 100);
INSERT INTO `operation` VALUES (315, 305, '生成多规格', 'getspechtml', 'a', 306, 3, 100);
INSERT INTO `operation` VALUES (316, 305, '编辑商品', 'edit', 'a', 306, 2, 100);
INSERT INTO `operation` VALUES (317, 305, '保存编辑商品信息', 'doedit', 'a', 316, 3, 100);
INSERT INTO `operation` VALUES (318, 305, '批量上下架', 'batchmarketable', 'a', 316, 3, 100);
INSERT INTO `operation` VALUES (319, 305, '批量删除', 'batchdel', 'a', 321, 3, 100);
INSERT INTO `operation` VALUES (320, 305, '商品高级筛选', 'goodssearch', 'a', 306, 3, 100);
INSERT INTO `operation` VALUES (321, 305, '删除商品', 'del', 'a', 306, 2, 100);
INSERT INTO `operation` VALUES (322, 305, '设置热门或推荐', 'changestate', 'a', 316, 3, 100);
INSERT INTO `operation` VALUES (323, 2, '商品类型管理', 'GoodsType', 'c', 2, 3, 100);
INSERT INTO `operation` VALUES (324, 323, '商品类型', 'index', 'a', 305, 1, 40);
INSERT INTO `operation` VALUES (325, 323, '添加类型', 'add', 'a', 324, 2, 100);
INSERT INTO `operation` VALUES (326, 323, '关联属性', 'addrel', 'a', 324, 3, 100);
INSERT INTO `operation` VALUES (327, 323, '编辑属性', 'edit', 'a', 324, 2, 100);
INSERT INTO `operation` VALUES (328, 323, '删除属性', 'del', 'a', 324, 2, 100);
INSERT INTO `operation` VALUES (329, 323, '关联参数', 'addparams', 'a', 324, 3, 100);
INSERT INTO `operation` VALUES (330, 2, '商品属性', 'GoodsTypeSpec', 'c', 2, 3, 100);
INSERT INTO `operation` VALUES (331, 330, '商品属性', 'index', 'a', 305, 1, 50);
INSERT INTO `operation` VALUES (332, 330, '添加属性', 'add', 'a', 331, 3, 100);
INSERT INTO `operation` VALUES (333, 330, '编辑属性', 'edit', 'a', 331, 3, 100);
INSERT INTO `operation` VALUES (334, 330, '删除属性', 'del', 'a', 331, 3, 100);
INSERT INTO `operation` VALUES (335, 2, '配送方式', 'Ship', 'c', 2, 3, 100);
INSERT INTO `operation` VALUES (336, 335, '配送方式列表', 'index', 'a', 244, 1, 100);
INSERT INTO `operation` VALUES (337, 335, '添加配送方式', 'add', 'a', 336, 2, 100);
INSERT INTO `operation` VALUES (338, 335, '编辑配送方式', 'edit', 'a', 336, 2, 100);
INSERT INTO `operation` VALUES (339, 335, '删除配送方式', 'del', 'a', 336, 2, 100);
INSERT INTO `operation` VALUES (340, 335, '选择地区', 'choosearea', 'a', 336, 3, 100);
INSERT INTO `operation` VALUES (343, 2, '售后单管理', 'BillAftersales', 'c', 2, 3, 100);
INSERT INTO `operation` VALUES (344, 343, '售后单列表', 'index', 'a', 296, 1, 140);
INSERT INTO `operation` VALUES (345, 343, '售后单审核', 'audit', 'a', 344, 2, 100);
INSERT INTO `operation` VALUES (346, 343, '售后单查看', 'view', 'a', 344, 3, 100);
INSERT INTO `operation` VALUES (347, 2, '退货单管理', 'BillReship', 'c', 2, 3, 100);
INSERT INTO `operation` VALUES (348, 347, '退货单列表', 'index', 'a', 296, 1, 160);
INSERT INTO `operation` VALUES (349, 347, '退货单查看', 'view', 'a', 348, 3, 100);
INSERT INTO `operation` VALUES (350, 347, '退货单确认收货', 'confirmreship', 'a', 348, 2, 100);
INSERT INTO `operation` VALUES (351, 2, '退款单管理', 'BillRefund', 'c', 2, 3, 150);
INSERT INTO `operation` VALUES (352, 351, '退款单列表', 'index', 'a', 399, 1, 110);
INSERT INTO `operation` VALUES (353, 351, '退款单查看', 'view', 'a', 352, 3, 100);
INSERT INTO `operation` VALUES (354, 351, '操作退款', 'refund', 'a', 352, 2, 100);
INSERT INTO `operation` VALUES (355, 351, '再次退款', 'reaudit', 'a', 354, 3, 100);
INSERT INTO `operation` VALUES (356, 2, '促销管理', 'Promotion', 'c', 2, 1, 150);
INSERT INTO `operation` VALUES (357, 356, '促销列表', 'index', 'a', 356, 1, 100);
INSERT INTO `operation` VALUES (358, 356, '添加促销', 'add', 'a', 357, 2, 100);
INSERT INTO `operation` VALUES (359, 356, '促销编辑', 'edit', 'a', 357, 2, 100);
INSERT INTO `operation` VALUES (360, 356, '促销删除', 'del', 'a', 357, 2, 100);
INSERT INTO `operation` VALUES (361, 356, '优惠券列表', 'coupon', 'a', 356, 1, 100);
INSERT INTO `operation` VALUES (362, 356, '添加优惠券规则', 'couponadd', 'a', 361, 2, 100);
INSERT INTO `operation` VALUES (363, 356, '优惠券规则编辑', 'couponedit', 'a', 361, 2, 100);
INSERT INTO `operation` VALUES (364, 356, '优惠券规则删除', 'coupondel', 'a', 361, 2, 100);
INSERT INTO `operation` VALUES (365, 2, '门店管理', 'Store', 'c', 2, 3, 220);
INSERT INTO `operation` VALUES (366, 365, '门店列表', 'index', 'a', 244, 1, 100);
INSERT INTO `operation` VALUES (367, 365, '门店添加', 'add', 'a', 366, 2, 100);
INSERT INTO `operation` VALUES (368, 365, '门店修改', 'edit', 'a', 366, 2, 100);
INSERT INTO `operation` VALUES (369, 365, '门店删除', 'del', 'a', 366, 2, 100);
INSERT INTO `operation` VALUES (370, 365, '门店地图展现', 'showmap', 'a', 366, 3, 100);
INSERT INTO `operation` VALUES (390, 2, '图片列表', 'images', 'c', 2, 3, 100);
INSERT INTO `operation` VALUES (391, 390, '图片列表', 'index', 'a', 244, 1, 100);
INSERT INTO `operation` VALUES (392, 2, '导入导出管理', 'ietask', 'c', 2, 3, 100);
INSERT INTO `operation` VALUES (393, 392, '导入导出', 'index', 'a', 244, 1, 100);
INSERT INTO `operation` VALUES (394, 392, '导出', 'export', 'a', 306, 2, 100);
INSERT INTO `operation` VALUES (395, 392, '导入', 'import', 'a', 306, 2, 100);
INSERT INTO `operation` VALUES (396, 392, '下载导入模板', 'importtemplete', 'a', 306, 3, 100);
INSERT INTO `operation` VALUES (397, 392, '下载文件', 'down', 'a', 393, 2, 100);
INSERT INTO `operation` VALUES (398, 392, '执行下载文件', 'dodown', 'a', 397, 3, 100);
INSERT INTO `operation` VALUES (399, 2, '财务管理', 'BillPayments', 'c', 2, 1, 160);
INSERT INTO `operation` VALUES (400, 399, '支付单列表', 'index', 'a', 399, 1, 100);
INSERT INTO `operation` VALUES (401, 399, '后台支付', 'pay', 'a', 400, 2, 100);
INSERT INTO `operation` VALUES (402, 399, '后台支付实际操作', 'topay', 'a', 401, 3, 100);
INSERT INTO `operation` VALUES (403, 399, '支付单查看', 'index', 'a', 400, 3, 100);
INSERT INTO `operation` VALUES (404, 2, '发货单管理', 'BillDelivery', 'c', 2, 3, 100);
INSERT INTO `operation` VALUES (405, 404, '发货单列表', 'index', 'a', 296, 1, 100);
INSERT INTO `operation` VALUES (406, 404, '发货单详情', 'view', 'a', 405, 3, 100);
INSERT INTO `operation` VALUES (407, 404, '发货单明细', 'items', 'a', 405, 3, 100);
INSERT INTO `operation` VALUES (408, 2, '消息中心', 'MessageCenter', 'c', 2, 3, 100);
INSERT INTO `operation` VALUES (409, 408, '消息配置', 'index', 'a', 244, 1, 100);
INSERT INTO `operation` VALUES (410, 2, '角色管理', 'Role', 'c', 2, 3, 100);
INSERT INTO `operation` VALUES (411, 410, '角色管理', 'index', 'a', 238, 1, 210);
INSERT INTO `operation` VALUES (412, 410, '角色添加', 'add', 'a', 411, 2, 100);
INSERT INTO `operation` VALUES (413, 410, '角色删除', 'del', 'a', 411, 2, 100);
INSERT INTO `operation` VALUES (414, 410, '编辑权限', 'getoperation', 'a', 411, 2, 100);
INSERT INTO `operation` VALUES (415, 410, '角色保存权限', 'saveperm', 'a', 411, 3, 100);
INSERT INTO `operation` VALUES (416, 2, '管理员管理', 'Administrator', 'c', 2, 3, 100);
INSERT INTO `operation` VALUES (417, 416, '管理员管理', 'index', 'a', 238, 1, 200);
INSERT INTO `operation` VALUES (418, 416, '管理员添加', 'add', 'a', 417, 2, 100);
INSERT INTO `operation` VALUES (419, 416, '管理员修改', 'edit', 'a', 417, 2, 100);
INSERT INTO `operation` VALUES (420, 416, '管理员删除', 'del', 'a', 417, 2, 100);
INSERT INTO `operation` VALUES (421, 2, '商品参数', 'GoodsParams', 'c', 2, 3, 100);
INSERT INTO `operation` VALUES (422, 421, '参数列表', 'index', 'a', 305, 1, 100);
INSERT INTO `operation` VALUES (423, 421, '添加参数', 'add', 'a', 422, 2, 100);
INSERT INTO `operation` VALUES (424, 421, '编辑参数', 'edit', 'a', 422, 2, 100);
INSERT INTO `operation` VALUES (425, 421, '删除参数', 'del', 'a', 422, 2, 100);
INSERT INTO `operation` VALUES (426, 2, '标签管理', 'Label', 'c', 2, 3, 100);
INSERT INTO `operation` VALUES (427, 426, '设置标签', 'setlabel', 'a', 306, 3, 100);
INSERT INTO `operation` VALUES (428, 426, '设置标签', 'dosetlabel', 'a', 306, 3, 100);
INSERT INTO `operation` VALUES (429, 426, '删除标签', 'dellabel', 'a', 306, 3, 100);
INSERT INTO `operation` VALUES (430, 426, '删除标签', 'dodellabel', 'a', 306, 3, 100);
INSERT INTO `operation` VALUES (431, 2, '账户余额模块', 'Balance', 'c', 2, 3, 100);
INSERT INTO `operation` VALUES (432, 431, '账户资金管理', 'index', 'a', 399, 1, 150);
INSERT INTO `operation` VALUES (434, 2, '节点控制器', 'Operation', 'c', 2, 3, 100);
INSERT INTO `operation` VALUES (435, 434, '节点管理', 'index', 'a', 244, 1, 255);
INSERT INTO `operation` VALUES (436, 434, '节点删除', 'del', 'a', 435, 2, 100);
INSERT INTO `operation` VALUES (437, 434, '节点编辑', 'add', 'a', 435, 2, 100);
INSERT INTO `operation` VALUES (438, 2, '消息控制器', 'Message', 'c', 2, 3, 100);
INSERT INTO `operation` VALUES (439, 438, '消息管理', 'index', 'a', 239, 3, 300);
INSERT INTO `operation` VALUES (440, 438, '消息删除', 'del', 'a', 439, 3, 100);
INSERT INTO `operation` VALUES (441, 2, '短信控制器', 'Sms', 'c', 2, 3, 100);
INSERT INTO `operation` VALUES (442, 441, '短信管理', 'index', 'a', 238, 1, 310);
INSERT INTO `operation` VALUES (443, 441, '短信删除', 'del', 'a', 442, 2, 100);
INSERT INTO `operation` VALUES (460, 431, '提现列表', 'tocash', 'a', 399, 1, 100);
INSERT INTO `operation` VALUES (461, 431, '提现审核', 'tocashexamine', 'a', 460, 2, 100);
INSERT INTO `operation` VALUES (462, 2, '钩子列表', 'Hooks', 'c', 2, 3, 100);
INSERT INTO `operation` VALUES (463, 462, '钩子列表', 'index', 'a', 244, 1, 100);
INSERT INTO `operation` VALUES (464, 2, '插件列表', 'Addons', 'c', 2, 3, 100);
INSERT INTO `operation` VALUES (465, 464, '插件列表', 'index', 'a', 244, 1, 100);
INSERT INTO `operation` VALUES (466, 2, '地区管理', 'Area', 'c', 2, 3, 100);
INSERT INTO `operation` VALUES (467, 466, '地区管理', 'index', 'a', 244, 1, 100);
INSERT INTO `operation` VALUES (468, 466, '添加地区', 'add', 'a', 467, 2, 100);
INSERT INTO `operation` VALUES (469, 466, '编辑地区', 'edit', 'a', 467, 2, 100);
INSERT INTO `operation` VALUES (470, 466, '删除地区', 'del', 'a', 467, 2, 100);
INSERT INTO `operation` VALUES (471, 462, '添加钩子', 'add', 'a', 463, 2, 100);
INSERT INTO `operation` VALUES (472, 462, '编辑钩子', 'edit', 'a', 463, 2, 100);
INSERT INTO `operation` VALUES (473, 462, '删除钩子', 'del', 'a', 463, 2, 100);
INSERT INTO `operation` VALUES (474, 464, '安装插件', 'install', 'a', 465, 2, 100);
INSERT INTO `operation` VALUES (475, 464, '卸载插件', 'uninstall', 'a', 465, 2, 100);
INSERT INTO `operation` VALUES (476, 464, '插件配置', 'setting', 'a', 465, 2, 100);
INSERT INTO `operation` VALUES (477, 464, '保存配置', 'dosetting', 'a', 476, 3, 100);
INSERT INTO `operation` VALUES (478, 464, '插件启用/停用', 'changestatus', 'a', 465, 2, 100);
INSERT INTO `operation` VALUES (479, 2, '微信管理', 'Wechat', 'c', 2, 1, 220);
INSERT INTO `operation` VALUES (480, 479, '小程序配置', 'edit', 'a', 479, 1, 100);
INSERT INTO `operation` VALUES (481, 479, '模板列表', 'template', 'a', 479, 1, 100);
INSERT INTO `operation` VALUES (482, 479, '保存配置', 'doEdit', 'a', 480, 3, 100);
INSERT INTO `operation` VALUES (483, 479, '公众号配置', 'official', 'a', 479, 1, 100);
INSERT INTO `operation` VALUES (484, 365, '店员列表', 'clerklist', 'a', 366, 2, 100);
INSERT INTO `operation` VALUES (485, 365, '添加店员', 'addclerk', 'a', 366, 2, 100);
INSERT INTO `operation` VALUES (486, 365, '删除店员', 'delclerk', 'a', 366, 2, 100);
INSERT INTO `operation` VALUES (487, 2, '提货单列表', 'BillLading', 'c', 2, 3, 100);
INSERT INTO `operation` VALUES (488, 487, '提货单列表', 'index', 'a', 296, 1, 100);
INSERT INTO `operation` VALUES (489, 487, '提货单详情', 'info', 'a', 488, 3, 100);
INSERT INTO `operation` VALUES (490, 487, '删除提货单', 'dellading', 'a', 488, 2, 100);
INSERT INTO `operation` VALUES (491, 356, '团购秒杀列表', 'group', 'a', 356, 1, 100);
INSERT INTO `operation` VALUES (492, 356, '添加团购', 'groupadd', 'a', 491, 2, 100);
INSERT INTO `operation` VALUES (493, 356, '编辑团购', 'groupedit', 'a', 491, 2, 100);
INSERT INTO `operation` VALUES (494, 356, '删除团购', 'groupdel', 'a', 491, 2, 100);
INSERT INTO `operation` VALUES (495, 2, '物流公司', 'Logistics', 'c', 2, 3, 100);
INSERT INTO `operation` VALUES (496, 495, '物流公司列表', 'index', 'a', 244, 1, 200);
INSERT INTO `operation` VALUES (497, 495, '添加', 'add', 'a', 496, 2, 100);
INSERT INTO `operation` VALUES (498, 495, '编辑', 'edit', 'a', 496, 2, 100);
INSERT INTO `operation` VALUES (499, 495, '删除', 'del', 'a', 496, 2, 100);
INSERT INTO `operation` VALUES (500, 277, '获取文章分类', 'getarticletype', 'a', 278, 3, 100);
INSERT INTO `operation` VALUES (501, 277, '获取文章分类名称', 'articletypeinfo', 'a', 278, 3, 100);
INSERT INTO `operation` VALUES (502, 466, '地区列表', 'getlist', 'a', 467, 3, 100);
INSERT INTO `operation` VALUES (503, 487, '提货单核销', 'write', 'a', 488, 2, 100);
INSERT INTO `operation` VALUES (504, 286, '获取所有品牌', 'getAll', 'a', 287, 3, 100);
INSERT INTO `operation` VALUES (505, 291, '全部分类', 'getAll', 'a', 292, 3, 100);
INSERT INTO `operation` VALUES (506, 305, '更新排序', 'updatesort', 'a', 316, 3, 100);
INSERT INTO `operation` VALUES (507, 421, '弹窗参数', 'getlist', 'a', 422, 3, 100);
INSERT INTO `operation` VALUES (508, 323, '获取所有', 'getAll', 'a', 324, 3, 100);
INSERT INTO `operation` VALUES (509, 330, '弹窗属性列表', 'getlist', 'a', 331, 3, 100);
INSERT INTO `operation` VALUES (510, 408, '消息编辑', 'edit', 'a', 409, 2, 100);
INSERT INTO `operation` VALUES (511, 2, '操作日志', 'OperationLog', 'c', 2, 3, 100);
INSERT INTO `operation` VALUES (512, 511, '操作日志', 'index', 'a', 244, 1, 100);
INSERT INTO `operation` VALUES (517, 479, '公众号菜单', 'officialmenu', 'a', 479, 1, 100);
INSERT INTO `operation` VALUES (518, 479, '公众号菜单-编辑', 'officialmenu', 'a', 517, 2, 100);
INSERT INTO `operation` VALUES (519, 479, '公众号菜单-编辑保存', 'doeditmenu', 'a', 517, 2, 100);
INSERT INTO `operation` VALUES (520, 479, '公众号菜单-删除', 'deletemenu', 'a', 517, 2, 100);
INSERT INTO `operation` VALUES (521, 479, '公众号菜单-同步', 'updatemenu', 'a', 517, 2, 100);
INSERT INTO `operation` VALUES (522, 479, '微信消息管理', 'message', 'a', 479, 1, 100);
INSERT INTO `operation` VALUES (523, 479, '微信消息-添加', 'addMessage', 'a', 522, 2, 100);
INSERT INTO `operation` VALUES (524, 479, '微信消息-删除', 'delMessage', 'a', 522, 2, 100);
INSERT INTO `operation` VALUES (525, 479, '微信消息-编辑', 'editMessage', 'a', 522, 2, 100);
INSERT INTO `operation` VALUES (526, 479, '微信消息-互动', 'autoreply', 'a', 522, 2, 100);
INSERT INTO `operation` VALUES (527, 479, '编辑图文', 'editmediamessage', 'a', 522, 3, 100);
INSERT INTO `operation` VALUES (528, 479, '保存图文消息', 'doeditmediamessage', 'a', 522, 3, 100);
INSERT INTO `operation` VALUES (529, 238, '邀请人修改', 'editinvite', 'a', 239, 2, 100);
INSERT INTO `operation` VALUES (530, 238, '会员编辑', 'edituser', 'a', 239, 2, 100);
INSERT INTO `operation` VALUES (531, 238, '余额修改', 'editmoney', 'a', 239, 2, 100);
INSERT INTO `operation` VALUES (532, 238, '余额明细', 'moneylog', 'a', 239, 2, 100);
INSERT INTO `operation` VALUES (533, 238, '添加会员', 'adduser', 'a', 239, 2, 100);
INSERT INTO `operation` VALUES (534, 335, '选择地区', 'getarea', 'a', 336, 3, 100);
INSERT INTO `operation` VALUES (535, 2, '报表统计', 'Report', 'c', 2, 1, 210);
INSERT INTO `operation` VALUES (536, 535, '订单销量', 'order', 'a', 535, 1, 100);
INSERT INTO `operation` VALUES (537, 535, '财务收款', 'payments', 'a', 535, 1, 100);
INSERT INTO `operation` VALUES (538, 535, '商品销量', 'goods', 'a', 535, 1, 100);
INSERT INTO `operation` VALUES (539, 390, '删除图片', 'del', 'a', 391, 2, 100);
INSERT INTO `operation` VALUES (540, 392, '删除任务', 'del', 'a', 393, 3, 100);
INSERT INTO `operation` VALUES (541, 2, '智能表单', 'Form', 'c', 2, 1, 300);
INSERT INTO `operation` VALUES (542, 541, '表单列表', 'index', 'a', 541, 1, 100);
INSERT INTO `operation` VALUES (543, 541, '添加表单', 'add', 'a', 542, 2, 100);
INSERT INTO `operation` VALUES (544, 541, '编辑表单', 'edit', 'a', 542, 2, 100);
INSERT INTO `operation` VALUES (545, 541, '删除表单', 'del', 'a', 542, 2, 100);
INSERT INTO `operation` VALUES (546, 541, '小程序码', 'generate', 'a', 542, 2, 100);
INSERT INTO `operation` VALUES (547, 541, '提交列表', 'formsubmit', 'a', 541, 1, 100);
INSERT INTO `operation` VALUES (548, 541, '表单报表', 'report', 'a', 542, 2, 100);
INSERT INTO `operation` VALUES (549, 541, '表单统计', 'statistics', 'a', 542, 2, 100);
INSERT INTO `operation` VALUES (550, 541, '删除提交', 'delsubmit', 'a', 547, 2, 100);
INSERT INTO `operation` VALUES (551, 541, '提交明细', 'formsubmitdetail', 'a', 547, 2, 100);
INSERT INTO `operation` VALUES (552, 541, '反馈', 'editformsubmit', 'a', 547, 2, 100);
INSERT INTO `operation` VALUES (553, 238, '用户等级', 'grade', 'a', 238, 1, 150);
INSERT INTO `operation` VALUES (554, 238, '添加&修改', 'gradeadd', 'a', 553, 2, 100);
INSERT INTO `operation` VALUES (555, 238, '删除', 'gradedel', 'a', 553, 3, 100);
INSERT INTO `operation` VALUES (556, 296, '订单打印', 'print_tpl', 'a', 297, 3, 100);
INSERT INTO `operation` VALUES (557, 296, '打印选择快递', 'print_form', 'a', 297, 3, 100);
INSERT INTO `operation` VALUES (558, 535, '用户收藏统计', 'goodscollection', 'a', 535, 1, 100);
INSERT INTO `operation` VALUES (559, 2, '页面管理', 'Pages', 'c', 2, 1, 200);
INSERT INTO `operation` VALUES (560, 559, '布局管理', 'index', 'a', 559, 1, 100);
INSERT INTO `operation` VALUES (561, 559, '保存配置', 'savecustom', 'a', 560, 3, 100);
INSERT INTO `operation` VALUES (562, 559, '页面编辑', 'custom', 'a', 560, 2, 100);
INSERT INTO `operation` VALUES (563, 466, '生成缓存', 'generatecache', 'a', 467, 2, 100);

-- ----------------------------
-- Table structure for operation_log
-- ----------------------------
DROP TABLE IF EXISTS `operation_log`;
CREATE TABLE `operation_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `manage_id` int(10) UNSIGNED NULL DEFAULT NULL COMMENT '管理员ID',
  `controller` varchar(50) NULL DEFAULT NULL COMMENT '操作的控制器名',
  `method` varchar(50) NULL DEFAULT NULL COMMENT '操作方法名',
  `desc` varchar(255) NULL DEFAULT NULL COMMENT '操作描述',
  `content` text NULL COMMENT '操作数据序列号存储',
  `ip` char(50) NULL DEFAULT NULL COMMENT '操作IP',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10107 COMMENT = '后台操作记录表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of operation_log
-- ----------------------------
INSERT INTO `operation_log` VALUES (10000, 13, 'wechat', 'doeditmenu', '公众号菜单-编辑保存：test', '{\"name\":\"test\",\"menu_id\":\"3\",\"pid\":\"3\",\"type\":\"view\",\"params\":{\"keyword\":\"\",\"url\":\"http:\\/\\/baidu.com\",\"appid\":\"\",\"program_url\":\"\",\"page\":\"\"},\"__Jshop_Token__\":\"148431a880352f95e586818f07895271560abadb\"}', '127.0.0.1', "2020/08/20 17:39:05");
INSERT INTO `operation_log` VALUES (10001, 13, 'wechat', 'doeditmenu', '公众号菜单-编辑保存：test', '{\"name\":\"test\",\"menu_id\":\"3\",\"pid\":\"3\",\"type\":\"view\",\"params\":{\"keyword\":\"\",\"url\":\"http:\\/\\/baidu.com\",\"appid\":\"\",\"program_url\":\"\",\"page\":\"\"},\"__Jshop_Token__\":\"148431a880352f95e586818f07895271560abadb\"}', '127.0.0.1', "2020/08/20 17:39:05");
INSERT INTO `operation_log` VALUES (10002, 13, 'wechat', 'doeditmenu', '公众号菜单-编辑保存：test', '{\"name\":\"test\",\"menu_id\":\"3\",\"pid\":\"3\",\"type\":\"view\",\"params\":{\"keyword\":\"\",\"url\":\"http:\\/\\/baidu.com\",\"appid\":\"\",\"program_url\":\"\",\"page\":\"\"},\"__Jshop_Token__\":\"148431a880352f95e586818f07895271560abadb\"}', '127.0.0.1', "2020/08/20 17:39:05");
INSERT INTO `operation_log` VALUES (10003, 13, 'form', 'add', '添加表单：test', '{\"name\":\"test\",\"type\":\"1\",\"head_type\":\"1\",\"file\":\"\",\"video_cover\":\"\",\"desc\":\"\",\"field\":{\"name\":[\"\"],\"type\":[\"radio\"],\"value\":[\"\"],\"default\":[\"\"],\"validation_type\":[\"string\"],\"required\":[\"2\"],\"sort\":[\"100\"]},\"button_name\":\"\",\"button_color\":\"\",\"sort\":\"100\",\"return_msg\":\"\",\"end_date\":\"\",\"__Jshop_Token__\":\"472570e92d041a4ab2f187fb85adc52c8e120c14\"}', '127.0.0.1', "2020/08/20 17:39:05");
INSERT INTO `operation_log` VALUES (10004, 13, 'form', 'add', '添加表单：test', '{\"name\":\"test\",\"type\":\"1\",\"head_type\":\"1\",\"file\":\"\",\"video_cover\":\"\",\"desc\":\"\",\"field\":{\"name\":[\"\"],\"type\":[\"radio\"],\"value\":[\"\"],\"default\":[\"\"],\"validation_type\":[\"string\"],\"required\":[\"2\"],\"sort\":[\"100\"]},\"button_name\":\"\",\"button_color\":\"\",\"sort\":\"100\",\"return_msg\":\"\",\"end_date\":\"\",\"__Jshop_Token__\":\"472570e92d041a4ab2f187fb85adc52c8e120c14\"}', '127.0.0.1', "2020/08/20 17:39:05");
INSERT INTO `operation_log` VALUES (10005, 13, 'form', 'add', '添加表单：test', '{\"name\":\"test\",\"type\":\"1\",\"head_type\":\"1\",\"file\":\"\",\"video_cover\":\"\",\"desc\":\"\",\"field\":{\"name\":[\"\"],\"type\":[\"radio\"],\"value\":[\"\"],\"default\":[\"\"],\"validation_type\":[\"string\"],\"required\":[\"2\"],\"sort\":[\"100\"]},\"button_name\":\"\",\"button_color\":\"\",\"sort\":\"100\",\"return_msg\":\"\",\"end_date\":\"\",\"__Jshop_Token__\":\"e84408508c7af1954144b16f3ddb1f2d9345e8af\"}', '127.0.0.1', "2020/08/20 17:39:05");
INSERT INTO `operation_log` VALUES (10006, 13, 'form', 'add', '添加表单：test', '{\"name\":\"test\",\"type\":\"1\",\"head_type\":\"1\",\"file\":\"\",\"video_cover\":\"\",\"desc\":\"\",\"field\":{\"name\":[\"\"],\"type\":[\"radio\"],\"value\":[\"\"],\"default\":[\"\"],\"validation_type\":[\"string\"],\"required\":[\"2\"],\"sort\":[\"100\"]},\"button_name\":\"test\",\"button_color\":\"\",\"sort\":\"100\",\"return_msg\":\"\",\"end_date\":\"\",\"__Jshop_Token__\":\"e84408508c7af1954144b16f3ddb1f2d9345e8af\"}', '127.0.0.1', "2020/08/20 17:39:05");
INSERT INTO `operation_log` VALUES (10007, 13, 'form', 'add', '添加表单：test', '{\"name\":\"test\",\"type\":\"1\",\"head_type\":\"1\",\"file\":\"\",\"video_cover\":\"\",\"desc\":\"\",\"field\":{\"name\":[\"\"],\"type\":[\"radio\"],\"value\":[\"\"],\"default\":[\"\"],\"validation_type\":[\"string\"],\"required\":[\"2\"],\"sort\":[\"100\"]},\"button_name\":\"test\",\"button_color\":\"blue\",\"sort\":\"100\",\"return_msg\":\"\",\"end_date\":\"\",\"__Jshop_Token__\":\"e84408508c7af1954144b16f3ddb1f2d9345e8af\"}', '127.0.0.1', "2020/08/20 17:39:05");
INSERT INTO `operation_log` VALUES (10008, 13, 'wechat', 'doeditmenu', '公众号菜单-编辑保存：test', '{\"name\":\"test\",\"menu_id\":\"3\",\"pid\":\"0\",\"type\":\"click\",\"params\":{\"keyword\":\"Liuqi,I love you!\",\"url\":\"\",\"appid\":\"\",\"program_url\":\"\",\"page\":\"\"},\"__Jshop_Token__\":\"f02829697ef6217d317bcc22789011d2d7b4ecec\"}', '127.0.0.1', "2020/08/20 17:39:05");
INSERT INTO `operation_log` VALUES (10009, 13, 'report', 'payments', '财务收款', '{\"date\":\"2019-11-12 \\u5230 2019-11-12\",\"section\":\"1\"}', '127.0.0.1', "2020/08/20 17:39:05");
INSERT INTO `operation_log` VALUES (10010, 13, 'report', 'order', '订单销量', '{\"date\":\"2019-11-12 \\u5230 2019-11-12\",\"section\":\"1\"}', '127.0.0.1', "2020/08/20 17:39:05");
INSERT INTO `operation_log` VALUES (10011, 13, 'report', 'order', '订单销量', '{\"date\":\"2019-11-12 \\u5230 2019-11-12\",\"section\":\"1\"}', '127.0.0.1', "2020/08/20 17:39:05");
INSERT INTO `operation_log` VALUES (10012, 13, 'report', 'order', '订单销量', '{\"date\":\"2019-11-11 \\u5230 2019-11-11\",\"section\":\"1\"}', '127.0.0.1', "2020/08/20 17:39:05");
INSERT INTO `operation_log` VALUES (10013, 13, 'report', 'order', '订单销量', '{\"date\":\"2019-11-11 \\u5230 2019-11-12\",\"section\":\"1\"}', '127.0.0.1', "2020/08/20 17:39:05");
INSERT INTO `operation_log` VALUES (10014, 13, 'report', 'order', '订单销量', '{\"date\":\"2019-11-04 \\u5230 2019-11-10\",\"section\":\"1\"}', '127.0.0.1', "2020/08/20 17:39:05");
INSERT INTO `operation_log` VALUES (10015, 13, 'report', 'order', '订单销量', '{\"date\":\"2019-11-01 \\u5230 2019-11-12\",\"section\":\"1\"}', '127.0.0.1', "2020/08/20 17:39:05");
INSERT INTO `operation_log` VALUES (10016, 13, 'report', 'order', '订单销量', '{\"date\":\"2019-10-01 \\u5230 2019-10-31\",\"section\":\"1\"}', '127.0.0.1', "2020/08/20 17:39:05");
INSERT INTO `operation_log` VALUES (10017, 13, 'report', 'order', '订单销量', '{\"date\":\"2019-08-13 \\u5230 2019-11-12\",\"section\":\"1\"}', '127.0.0.1', "2020/08/20 17:39:05");
INSERT INTO `operation_log` VALUES (10018, 13, 'report', 'order', '订单销量', '{\"date\":\"2019-05-13 \\u5230 2019-11-12\",\"section\":\"1\"}', '127.0.0.1', "2020/08/20 17:39:05");
INSERT INTO `operation_log` VALUES (10019, 13, 'report', 'order', '订单销量', '{\"date\":\"2019-11-01 \\u5230 2019-11-12\",\"section\":\"1\"}', '127.0.0.1', "2020/08/20 17:39:05");
INSERT INTO `operation_log` VALUES (10020, 13, 'report', 'order', '订单销量', '{\"date\":\"2019-11-11 \\u5230 2019-11-11\",\"section\":\"1\"}', '127.0.0.1', "2020/08/20 17:39:05");
INSERT INTO `operation_log` VALUES (10021, 13, 'report', 'order', '订单销量', '{\"date\":\"2019-11-06 \\u5230 2019-11-12\",\"section\":\"1\"}', '127.0.0.1', "2020/08/20 17:39:05");
INSERT INTO `operation_log` VALUES (10022, 13, 'report', 'order', '订单销量', '{\"date\":\"2019-11-11 \\u5230 2019-11-12\",\"section\":\"1\"}', '127.0.0.1', "2020/08/20 17:39:05");
INSERT INTO `operation_log` VALUES (10023, 13, 'report', 'order', '订单销量', '{\"date\":\"2019-11-04 \\u5230 2019-11-10\",\"section\":\"1\"}', '127.0.0.1', "2020/08/20 17:39:05");
INSERT INTO `operation_log` VALUES (10024, 13, 'report', 'payments', '财务收款', '{\"date\":\"2019-11-12 \\u5230 2019-11-12\",\"section\":\"1\"}', '127.0.0.1', "2020/08/20 17:39:05");
INSERT INTO `operation_log` VALUES (10025, 13, 'pages', 'savecustom', '保存配置', '{\"data\":[{\"type\":\"search\",\"value\":{\"keywords\":\"\\u8bf7\\u8f93\\u5165\\u5173\\u952e\\u5b57\\u641c\\u7d22\",\"style\":\"round\"},\"key\":\"search_"2020/08/20 17:39:05"041_368039\"},{\"type\":\"articleClassify\",\"name\":\"\\u6587\\u7ae0\\u5206\\u7c7b\",\"value\":{\"limit\":\"3\",\"articleClassifyId\":\"\"},\"icon\":\"icon-wenzhangfenlei\",\"key\":\"articleClassify_"2020/08/20 17:39:05"118_947584\"},{\"type\":\"imgSlide\",\"value\":{\"duration\":\"2500\",\"list\":[{\"image\":\"\\/static\\/images\\/empty-banner.png\",\"linkType\":\"\",\"linkValue\":\"\"},{\"image\":\"\\/static\\/images\\/empty-banner.png\",\"linkType\":\"\",\"linkValue\":\"\"}]},\"key\":\"imgSlide_"2020/08/20 17:39:05"041_525579\"},{\"type\":\"notice\",\"value\":{\"type\":\"auto\"},\"key\":\"notice_"2020/08/20 17:39:05"042_894605\"},{\"type\":\"navBar\",\"value\":{\"limit\":\"4\",\"list\":[{\"image\":\"\\/static\\/images\\/empty.png\",\"text\":\"\\u6309\\u94ae1\",\"linkType\":\"\",\"linkValue\":\"\"},{\"image\":\"\\/static\\/images\\/empty.png\",\"text\":\"\\u6309\\u94ae2\",\"linkType\":\"\",\"linkValue\":\"\"},{\"image\":\"\\/static\\/images\\/empty.png\",\"text\":\"\\u6309\\u94ae3\",\"linkType\":\"\",\"linkValue\":\"\"},{\"image\":\"\\/static\\/images\\/empty.png\",\"text\":\"\\u6309\\u94ae4\",\"linkType\":\"\",\"linkValue\":\"\"}]},\"key\":\"navBar_"2020/08/20 17:39:05"042_637393\"},{\"type\":\"goods\",\"value\":{\"title\":\"\\u70ed\\u95e8\\u5546\\u54c1\",\"lookMore\":\"true\",\"type\":\"auto\",\"classifyId\":\"\",\"brandId\":\"\",\"limit\":\"10\",\"display\":\"list\",\"column\":\"2\",\"list\":[{\"id\":\"1\",\"name\":\"DKCHENPIN2018\\u79cb\\u65b0\\u6b3e\\u5929\\u4e1d\\u4e2d\\u957f\\u6b3e\\u4fee\\u8eab\\u98ce\\u8863\\u5916\\u5957\\u5973\",\"bn\":\"118336505\",\"brief\":\"\\u53ef\\u8c03\\u8282\\u8896 \\u7cfb\\u5e26\\u6536\\u8170\\u8bbe\",\"price\":\"450.00\",\"mktprice\":\"600.00\",\"image_id\":\"b419e4164d5726d057b2ae195f9a96df\",\"goods_cat_id\":\"18\",\"goods_type_id\":\"1\",\"brand_id\":\"14\",\"is_nomal_virtual\":\"1\",\"marketable\":\"1\",\"stock\":\"2796\",\"weight\":\"400.00\",\"unit\":\"\\u4ef6\",\"spes_desc\":{\"\\u989c\\u8272\":[\"\\u7ea2\\u8272\",\"\\u767d\\u8272\",\"\\u7eff\\u8272\",\"\\u84dd\\u8272\"],\"\\u89c4\\u683c\":[\"\\u89c4\\u683c1\",\"\\u89c4\\u683c2\",\"\\u89c4\\u683c3\",\"\\u89c4\\u683c4\"]},\"params\":\"a:1:{s:6:\\\"\\u6750\\u8d28\\\";s:6:\\\"\\u5316\\u7ea4\\\";}\",\"comments_count\":\"0\",\"view_count\":\"0\",\"buy_count\":\"0\",\"sort\":\"100\",\"is_recommend\":\"1\",\"is_hot\":\"1\",\"brand_name\":\"DKCHENPIN\",\"cat_name\":\"\\u98ce\\u8863\",\"image_url\":\"http:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/b7\\/03\\/ed\\/5ba9e78922087.jpg\",\"product\":{\"id\":\"1\",\"goods_id\":\"1\",\"barcode\":\"\",\"sn\":\"P5378659179491\",\"price\":\"450.00\",\"mktprice\":\"600.00\",\"marketable\":\"1\",\"stock\":\"196\",\"spes_desc\":\"\\u989c\\u8272:\\u7ea2\\u8272,\\u89c4\\u683c:\\u89c4\\u683c1\",\"is_defalut\":\"1\",\"image_id\":\"\",\"isdel\":\"\",\"name\":\"DKCHENPIN2018\\u79cb\\u65b0\\u6b3e\\u5929\\u4e1d\\u4e2d\\u957f\\u6b3e\\u4fee\\u8eab\\u98ce\\u8863\\u5916\\u5957\\u5973\",\"bn\":\"118336505\",\"image_path\":\"http:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/b7\\/03\\/ed\\/5ba9e78922087.jpg\",\"total_stock\":\"198\",\"grade_info\":{\"id\":\"\"},\"default_spes_desc\":{\"\\u989c\\u8272\":{\"\\u7ea2\\u8272\":{\"name\":\"\\u7ea2\\u8272\",\"is_default\":\"true\"},\"\\u767d\\u8272\":{\"name\":\"\\u767d\\u8272\",\"product_id\":\"2\"},\"\\u7eff\\u8272\":{\"name\":\"\\u7eff\\u8272\",\"product_id\":\"22\"},\"\\u84dd\\u8272\":{\"name\":\"\\u84dd\\u8272\",\"product_id\":\"3\"}},\"\\u89c4\\u683c\":{\"\\u89c4\\u683c1\":{\"name\":\"\\u89c4\\u683c1\",\"is_default\":\"true\"},\"\\u89c4\\u683c2\":{\"name\":\"\\u89c4\\u683c2\",\"product_id\":\"22\"},\"\\u89c4\\u683c3\":{\"name\":\"\\u89c4\\u683c3\",\"product_id\":\"7\"},\"\\u89c4\\u683c4\":{\"name\":\"\\u89c4\\u683c4\",\"product_id\":\"11\"}}},\"amount\":\"450.00\",\"promotion_amount\":\"0\"},\"album\":[\"http:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/b7\\/03\\/ed\\/5ba9e78922087.jpg\",\"http:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/5b\\/ff\\/67\\/5ba9e78294c5a.jpg\",\"http:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/9f\\/81\\/10\\/5ba9e786c45eb.jpg\",\"http:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/df\\/6d\\/df\\/5ba9e78ac77d0.jpg\",\"http:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/e9\\/bc\\/30\\/5ba9e786e2f66.jpg\"],\"isfav\":\"false\"},{\"id\":\"2\",\"name\":\"\\u4e03\\u5339\\u72fc\\u7fbd\\u7ed2\\u670d\\u7537\\u77ed\\u6b3e2018\\u51ac\\u5b63\\u65b0\\u6b3e\\u7537\\u58eb\\u4e2d\\u5e74\\u4f11\\u95f2\\u7238\\u7238\\u88c5\\u7537\\u88c5\\u6f6e\\u6d41\\u5916\\u5957\",\"bn\":\"5446546546\",\"brief\":\"8\\u5468\\u5e74\\u5e97\\u5e86\\uff0c22\\u53f710\\u70b9\\u523011\\u70b9 \\u5168\\u573a\\u5546\\u54c13\\u4ef66\\u6298\",\"price\":\"600.00\",\"mktprice\":\"590.00\",\"image_id\":\"6ee0f5a5ac6c53418852ee6cc78aeb48\",\"goods_cat_id\":\"10\",\"goods_type_id\":\"1\",\"brand_id\":\"11\",\"is_nomal_virtual\":\"1\",\"marketable\":\"1\",\"stock\":\"679\",\"weight\":\"0.00\",\"unit\":\"\\u4ef6\",\"spes_desc\":{\"\\u989c\\u8272\":{\"1\":\"\\u767d\\u8272\",\"3\":\"\\u84dd\\u8272\",\"4\":\"\\u7d2b\\u8272\"},\"\\u89c4\\u683c\":[\"\\u89c4\\u683c1\",\"\\u89c4\\u683c2\"]},\"params\":\"\",\"comments_count\":\"0\",\"view_count\":\"0\",\"buy_count\":\"0\",\"sort\":\"100\",\"is_recommend\":\"1\",\"is_hot\":\"1\",\"brand_name\":\"\\u5343\\u4ede\\u5c97\",\"cat_name\":\"\\u6bdb\\u5462\\u5916\\u5957\",\"image_url\":\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/8c\\/f8\\/53\\/5bc9a3b2916a4.jpg\",\"product\":{\"id\":\"23\",\"goods_id\":\"2\",\"barcode\":\"\",\"sn\":\"-1\",\"price\":\"600.00\",\"mktprice\":\"590.00\",\"marketable\":\"1\",\"stock\":\"98\",\"spes_desc\":\"\\u989c\\u8272:\\u767d\\u8272,\\u89c4\\u683c:\\u89c4\\u683c1\",\"is_defalut\":\"1\",\"image_id\":\"\",\"isdel\":\"\",\"name\":\"\\u4e03\\u5339\\u72fc\\u7fbd\\u7ed2\\u670d\\u7537\\u77ed\\u6b3e2018\\u51ac\\u5b63\\u65b0\\u6b3e\\u7537\\u58eb\\u4e2d\\u5e74\\u4f11\\u95f2\\u7238\\u7238\\u88c5\\u7537\\u88c5\\u6f6e\\u6d41\\u5916\\u5957\",\"bn\":\"5446546546\",\"image_path\":\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/8c\\/f8\\/53\\/5bc9a3b2916a4.jpg\",\"total_stock\":\"98\",\"grade_info\":{\"id\":\"\"},\"default_spes_desc\":{\"\\u989c\\u8272\":{\"\\u767d\\u8272\":{\"name\":\"\\u767d\\u8272\",\"is_default\":\"true\"},\"\\u84dd\\u8272\":{\"name\":\"\\u84dd\\u8272\",\"product_id\":\"24\"},\"\\u7d2b\\u8272\":{\"name\":\"\\u7d2b\\u8272\",\"product_id\":\"25\"}},\"\\u89c4\\u683c\":{\"\\u89c4\\u683c1\":{\"name\":\"\\u89c4\\u683c1\",\"is_default\":\"true\"},\"\\u89c4\\u683c2\":{\"name\":\"\\u89c4\\u683c2\",\"product_id\":\"26\"}}},\"amount\":\"600.00\",\"promotion_amount\":\"0\"},\"album\":[\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/8c\\/f8\\/53\\/5bc9a3b2916a4.jpg\"],\"isfav\":\"false\"},{\"id\":\"4\",\"name\":\"\\u8299\\u5a1c\\u59ae2018\\u79cb\\u51ac\\u540a\\u5e26\\u8fde\\u8863\\u88d9\\u5973\\u4e24\\u4ef6\\u5957\\u6761\\u7eb9\\u9488\\u7ec7\\u6253\\u5e95\\u886b\\u80cc\\u5e26PU\\u76ae\\u88d9\\u5957\\u88c5\",\"bn\":\"78678657865\",\"brief\":\"\\u54c1\\u724c: \\u8299\\u5a1c\\u59ae\\u9002\\u7528\\u5e74\\u9f84: 25-29\\u5468\\u5c81\\u5c3a\\u7801: S M L XL\\u56fe\\u6848: \\u6761\\u7eb9\\u98ce\\u683c: \\u8857\\u5934\\u8857\\u5934: \\u6b27\\u7f8e\\u9886\\u578b: \\u5706\\u9886\\u8170\\u578b: \\u4e2d\\u8170\\u8863\\u95e8\\u895f: \\u5957\\u5934\\u989c\\u8272\\u5206\\u7c7b: \\u7ea2\\u8272\\u8896\\u578b: \\u5176\\u4ed6\\u7ec4\\u5408\\u5f62\\u5f0f: \\u4e24\\u4ef6\\u5957\",\"price\":\"200.00\",\"mktprice\":\"200.00\",\"image_id\":\"fce63f9c69c6c4ec606b544fcc7610a2\",\"goods_cat_id\":\"4\",\"goods_type_id\":\"1\",\"brand_id\":\"15\",\"is_nomal_virtual\":\"1\",\"marketable\":\"1\",\"stock\":\"560\",\"weight\":\"0.00\",\"unit\":\"\\u4ef6\",\"spes_desc\":{\"\\u989c\\u8272\":[\"\\u7ea2\\u8272\",\"\\u767d\\u8272\"],\"\\u89c4\\u683c\":[\"\\u89c4\\u683c1\",\"\\u89c4\\u683c2\"]},\"params\":\"\",\"comments_count\":\"0\",\"view_count\":\"0\",\"buy_count\":\"0\",\"sort\":\"100\",\"is_recommend\":\"1\",\"is_hot\":\"1\",\"brand_name\":\"\\u8587\\u5494\\u62c9\",\"cat_name\":\"\\u6d6a\\u6f2b\\u88d9\\u88c5\",\"image_url\":\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/dd\\/bd\\/35\\/5bc9a50154075.jpg\",\"product\":{\"id\":\"29\",\"goods_id\":\"4\",\"barcode\":\"\",\"sn\":\"51111\",\"price\":\"200.00\",\"mktprice\":\"200.00\",\"marketable\":\"2\",\"stock\":\"98\",\"spes_desc\":\"\\u989c\\u8272:\\u7ea2\\u8272,\\u89c4\\u683c:\\u89c4\\u683c1\",\"is_defalut\":\"1\",\"image_id\":\"\",\"isdel\":\"\",\"name\":\"\\u8299\\u5a1c\\u59ae2018\\u79cb\\u51ac\\u540a\\u5e26\\u8fde\\u8863\\u88d9\\u5973\\u4e24\\u4ef6\\u5957\\u6761\\u7eb9\\u9488\\u7ec7\\u6253\\u5e95\\u886b\\u80cc\\u5e26PU\\u76ae\\u88d9\\u5957\\u88c5\",\"bn\":\"78678657865\",\"image_path\":\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/dd\\/bd\\/35\\/5bc9a50154075.jpg\",\"total_stock\":\"98\",\"grade_info\":{\"id\":\"\"},\"default_spes_desc\":{\"\\u989c\\u8272\":{\"\\u7ea2\\u8272\":{\"name\":\"\\u7ea2\\u8272\",\"is_default\":\"true\"},\"\\u767d\\u8272\":{\"name\":\"\\u767d\\u8272\",\"product_id\":\"30\"}},\"\\u89c4\\u683c\":{\"\\u89c4\\u683c1\":{\"name\":\"\\u89c4\\u683c1\",\"is_default\":\"true\"},\"\\u89c4\\u683c2\":{\"name\":\"\\u89c4\\u683c2\",\"product_id\":\"31\"}}},\"amount\":\"200.00\",\"promotion_amount\":\"0\"},\"album\":[\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/dd\\/bd\\/35\\/5bc9a50154075.jpg\",\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/b3\\/16\\/38\\/5bc9a50662303.jpg\",\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/2e\\/1b\\/3b\\/5bc9a50900998.jpg\"],\"isfav\":\"false\"},{\"id\":\"5\",\"name\":\"\\u6b63\\u54c1\\u4ee3\\u8d2dPINKO\\u5973\\u53052018\\u65b0\\u6b3e\\u71d5\\u5b50\\u5305\\u5355\\u80a9\\u659c\\u630e\\u538b\\u82b1\\u5fbd\\u7ae0\\u5c0f\\u9999\\u98ce\\u94fe\\u6761\\u5305\",\"bn\":\"5465\",\"brief\":\"PINKO\\u8d28\\u5730: \\u725b\\u76ae\\u76ae\\u9769\\u6750\\u8d28: \\u5934\\u5c42\\u725b\\u76ae\\u98ce\\u683c: \\u6b27\\u7f8e\\u65f6\\u5c1a\\u6210\\u8272: \\u5168\\u65b0\\u989c\\u8272\\u5206\\u7c7b: \\u70ed\\u5e26\\u96e8\\u6797 \\u9ed1\\u8272\\u52cb\\u7ae0 \\u767d\\u8272\\u52cb\\u7ae0 \\u7f16\\u7ec7\\u5c0f\\u9999\\u98ce \\u9ed1\\u8272\\u538b\\u82b1 \\u7ea2\\u8272\\u538b\\u82b1 \\u9ed1\\u8272\\u9576\\u94bb\\u773c \\u9ed1\\u8272\\u5355\\u6392 \\u7ea2\\u8272\\u5355\\u6392 \\u767d\\u8272\\u6d82\\u9e26 \\u9ed1\\u8272\\u6d82\\u9e26 \\u7c89\\u9ed1\\u6d82\\u9e26 \\u9ec4\\u9ed1\\u6d82\\u9e26 \\u9ed1\\u8272\\u5b57\\u6bcd\\u53ef\\u4e50 \\u767d\\u8272\\u5b57\\u6bcd\\u9cc4\\u9c7c\\u7eb9 \\u7ea2\\u8272\\u5b57\\u6bcd \\u9ed1\\u8272\\u67aa\\u6392 \\u7ea2\\u8272love \\u767d\\u8272\\u73cd\\u73e0 \\u9ed1\\u8272\\u73cd\\u73e0 \\u9ed1\\u8272\\u9576\\u94bb\\u53cc\\u6392 \\u7c89\\u8272\\u9576\\u94bb\\u53cc\\u6392 \\u5176\\u4ed6\\u989c\\u8272\\u62cd\\u4e0b\\u5907\\u6ce8\\u989c\\u8272\\u6709\\u65e0\\u5939\\u5c42: \\u6709\\u80cc\\u5305\\u65b9\\u5f0f: \\u5355\\u80a9\\u659c\\u630e\\u624b\\u63d0\\u9002\\u7528\\u573a\\u666f: \\u4f11\\u95f2\",\"price\":\"200.00\",\"mktprice\":\"190.00\",\"image_id\":\"3e1c30dd1125de24e5395d3cd39ef5d8\",\"goods_cat_id\":\"9\",\"goods_type_id\":\"1\",\"brand_id\":\"0\",\"is_nomal_virtual\":\"1\",\"marketable\":\"1\",\"stock\":\"200\",\"weight\":\"0.00\",\"unit\":\"\\u4ef6\",\"spes_desc\":\"\",\"params\":\"\",\"comments_count\":\"0\",\"view_count\":\"0\",\"buy_count\":\"0\",\"sort\":\"100\",\"is_recommend\":\"1\",\"is_hot\":\"1\",\"brand_name\":\"\",\"cat_name\":\"\\u5973\\u5305\",\"image_url\":\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/af\\/00\\/b7\\/5bc9a5b89bd9a.jpg\",\"product\":{\"id\":\"33\",\"goods_id\":\"5\",\"barcode\":\"\",\"sn\":\"564456\",\"price\":\"200.00\",\"mktprice\":\"190.00\",\"marketable\":\"1\",\"stock\":\"200\",\"spes_desc\":\"\",\"is_defalut\":\"1\",\"image_id\":\"\",\"isdel\":\"\",\"name\":\"\\u6b63\\u54c1\\u4ee3\\u8d2dPINKO\\u5973\\u53052018\\u65b0\\u6b3e\\u71d5\\u5b50\\u5305\\u5355\\u80a9\\u659c\\u630e\\u538b\\u82b1\\u5fbd\\u7ae0\\u5c0f\\u9999\\u98ce\\u94fe\\u6761\\u5305\",\"bn\":\"5465\",\"image_path\":\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/af\\/00\\/b7\\/5bc9a5b89bd9a.jpg\",\"total_stock\":\"200\",\"grade_info\":{\"id\":\"\"},\"amount\":\"200.00\",\"promotion_amount\":\"0\"},\"album\":[\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/af\\/00\\/b7\\/5bc9a5b89bd9a.jpg\",\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/b7\\/9f\\/72\\/5bc9a5c440801.jpg\",\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/4c\\/28\\/57\\/5bc9a5c53aa6e.jpg\",\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/76\\/7e\\/81\\/5bc9a5c7bbc8e.jpg\"],\"isfav\":\"false\"},{\"id\":\"7\",\"name\":\"\\u592a\\u5e73\\u9e1f\\u7537\\u88c5 \\u590f\\u5b63\\u65b0\\u54c1\\u7eaf\\u68c9T\\u6064\\u7537\\u58eb\\u9ed1\\u8272\\u77ed\\u8896\\u6f6e\\u5b57\\u6bcd\\u5370\\u82b1\\u97e9\\u7248\\u4fee\\u8eabT\\u6064\",\"bn\":\"\",\"brief\":\"\\u54c1\\u724c: PEACEBIRD\\/\\u592a\\u5e73\\u9e1f\\u8d27\\u53f7: BWDA82170\\u4e0a\\u5e02\\u5e74\\u4efd\\u5b63\\u8282: 2018\\u5e74\\u590f\\u5b63\\u9500\\u552e\\u6e20\\u9053\\u7c7b\\u578b: \\u7eaf\\u7535\\u5546(\\u53ea\\u5728\\u7ebf\\u4e0a\\u9500\\u552e)\\u539a\\u8584: \\u5e38\\u89c4\\u9762\\u6599\\u5206\\u7c7b: \\u68c9\\u6bdb\\u5e03\",\"price\":\"99.00\",\"mktprice\":\"99.00\",\"image_id\":\"4f86bd749dddd098403fc44a1e473643\",\"goods_cat_id\":\"3\",\"goods_type_id\":\"1\",\"brand_id\":\"12\",\"is_nomal_virtual\":\"1\",\"marketable\":\"1\",\"stock\":\"1741\",\"weight\":\"0.00\",\"unit\":\"\",\"spes_desc\":{\"\\u989c\\u8272\":{\"1\":\"\\u767d\\u8272\",\"5\":\"\\u9ed1\\u8272\"},\"\\u89c4\\u683c\":[\"\\u89c4\\u683c1\",\"\\u89c4\\u683c2\",\"\\u89c4\\u683c3\"]},\"params\":\"\",\"comments_count\":\"0\",\"view_count\":\"0\",\"buy_count\":\"0\",\"sort\":\"100\",\"is_recommend\":\"1\",\"is_hot\":\"1\",\"brand_name\":\"\\u827e\\u5c1a\\u81e3\",\"cat_name\":\"\\u7cbe\\u9009\\u4e0a\\u8863\",\"image_url\":\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/0b\\/b2\\/ff\\/5bc9a6de5361c.jpg\",\"product\":{\"id\":\"34\",\"goods_id\":\"7\",\"barcode\":\"\",\"sn\":\"1111\",\"price\":\"99.00\",\"mktprice\":\"99.00\",\"marketable\":\"2\",\"stock\":\"299\",\"spes_desc\":\"\\u989c\\u8272:\\u767d\\u8272,\\u89c4\\u683c:\\u89c4\\u683c1\",\"is_defalut\":\"1\",\"image_id\":\"\",\"isdel\":\"\",\"name\":\"\\u592a\\u5e73\\u9e1f\\u7537\\u88c5 \\u590f\\u5b63\\u65b0\\u54c1\\u7eaf\\u68c9T\\u6064\\u7537\\u58eb\\u9ed1\\u8272\\u77ed\\u8896\\u6f6e\\u5b57\\u6bcd\\u5370\\u82b1\\u97e9\\u7248\\u4fee\\u8eabT\\u6064\",\"bn\":\"\",\"image_path\":\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/0b\\/b2\\/ff\\/5bc9a6de5361c.jpg\",\"total_stock\":\"299\",\"grade_info\":{\"id\":\"\"},\"default_spes_desc\":{\"\\u989c\\u8272\":{\"\\u767d\\u8272\":{\"name\":\"\\u767d\\u8272\",\"is_default\":\"true\"},\"\\u9ed1\\u8272\":{\"name\":\"\\u9ed1\\u8272\",\"product_id\":\"37\"}},\"\\u89c4\\u683c\":{\"\\u89c4\\u683c1\":{\"name\":\"\\u89c4\\u683c1\",\"is_default\":\"true\"},\"\\u89c4\\u683c2\":{\"name\":\"\\u89c4\\u683c2\",\"product_id\":\"35\"},\"\\u89c4\\u683c3\":{\"name\":\"\\u89c4\\u683c3\",\"product_id\":\"36\"}}},\"amount\":\"99.00\",\"promotion_amount\":\"0\"},\"album\":[\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/0b\\/b2\\/ff\\/5bc9a6de5361c.jpg\",\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/58\\/57\\/c8\\/5bc9a6de50a60.jpg\",\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/d1\\/d7\\/cb\\/5bc9a6dee7ebb.jpg\"],\"isfav\":\"false\"},{\"id\":\"8\",\"name\":\"\\u79cb\\u88c5\\u8fde\\u8863\\u88d9\\u59732018\\u65b0\\u6b3e\\u4e03\\u5206\\u8896\\u804c\\u4e1a\\u540d\\u5a9b\\u6c14\\u8d28\\u4e2d\\u957f\\u5973\\u88c5\\u6b63\\u5f0f\\u573a\\u5408\\u88d9\\u5b50\",\"bn\":\"\",\"brief\":\"\\u7ec4\\u5408\\u5f62\\u5f0f: \\u5355\\u4ef6\\u88d9\\u957f: \\u4e2d\\u957f\\u88d9\\u6b3e\\u5f0f: \\u5176\\u4ed6\\/other\\u8896\\u957f: \\u4e03\\u5206\\u8896\\u9886\\u578b: V\\u9886\\u8896\\u578b: \\u5176\\u4ed6\\u8170\\u578b: \\u9ad8\\u8170\\u8863\\u95e8\\u895f: \\u5957\\u5934\",\"price\":\"220.00\",\"mktprice\":\"220.00\",\"image_id\":\""2020/08/20 17:39:05"75d200f105ba941d815ab5\",\"goods_cat_id\":\"4\",\"goods_type_id\":\"1\",\"brand_id\":\"1\",\"is_nomal_virtual\":\"1\",\"marketable\":\"1\",\"stock\":\"1500\",\"weight\":\"0.00\",\"unit\":\"\\u4ef6\",\"spes_desc\":{\"\\u989c\\u8272\":{\"0\":\"\\u7ea2\\u8272\",\"3\":\"\\u84dd\\u8272\"},\"\\u89c4\\u683c\":[\"\\u89c4\\u683c1\",\"\\u89c4\\u683c2\",\"\\u89c4\\u683c3\"]},\"params\":\"\",\"comments_count\":\"0\",\"view_count\":\"0\",\"buy_count\":\"0\",\"sort\":\"100\",\"is_recommend\":\"1\",\"is_hot\":\"1\",\"brand_name\":\"\\u4f9d\\u5b05\\u838e\",\"cat_name\":\"\\u6d6a\\u6f2b\\u88d9\\u88c5\",\"image_url\":\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/ce\\/ae\\/8d\\/5bc9a81609585.jpg\",\"product\":{\"id\":\"40\",\"goods_id\":\"8\",\"barcode\":\"\",\"sn\":\"21111\",\"price\":\"220.00\",\"mktprice\":\"220.00\",\"marketable\":\"2\",\"stock\":\"188\",\"spes_desc\":\"\\u989c\\u8272:\\u7ea2\\u8272,\\u89c4\\u683c:\\u89c4\\u683c1\",\"is_defalut\":\"1\",\"image_id\":\"\",\"isdel\":\"\",\"name\":\"\\u79cb\\u88c5\\u8fde\\u8863\\u88d9\\u59732018\\u65b0\\u6b3e\\u4e03\\u5206\\u8896\\u804c\\u4e1a\\u540d\\u5a9b\\u6c14\\u8d28\\u4e2d\\u957f\\u5973\\u88c5\\u6b63\\u5f0f\\u573a\\u5408\\u88d9\\u5b50\",\"bn\":\"\",\"image_path\":\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/ce\\/ae\\/8d\\/5bc9a81609585.jpg\",\"total_stock\":\"198\",\"grade_info\":{\"id\":\"\"},\"default_spes_desc\":{\"\\u989c\\u8272\":{\"\\u7ea2\\u8272\":{\"name\":\"\\u7ea2\\u8272\",\"is_default\":\"true\"},\"\\u84dd\\u8272\":{\"name\":\"\\u84dd\\u8272\",\"product_id\":\"43\"}},\"\\u89c4\\u683c\":{\"\\u89c4\\u683c1\":{\"name\":\"\\u89c4\\u683c1\",\"is_default\":\"true\"},\"\\u89c4\\u683c2\":{\"name\":\"\\u89c4\\u683c2\",\"product_id\":\"41\"},\"\\u89c4\\u683c3\":{\"name\":\"\\u89c4\\u683c3\",\"product_id\":\"42\"}}},\"amount\":\"220.00\",\"promotion_amount\":\"0\"},\"album\":[\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/ce\\/ae\\/8d\\/5bc9a81609585.jpg\",\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/e9\\/ac\\/a3\\/5bc9a8167a827.jpg\",\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/7e\\/18\\/48\\/5bc9a816ce21b.jpg\",\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/99\\/3c\\/3e\\/5bc9a817e6b9d.jpg\"],\"isfav\":\"false\"},{\"id\":\"9\",\"name\":\"2018\\u51b7\\u51ac\\u65b0\\u6b3e\\u68c9\\u8863\\u7537\\u58eb\\u52a0\\u80a5\\u52a0\\u5927\\u7801\\u4e2d\\u957f\\u6b3e\\u68c9\\u670d\\u97e9\\u7248\\u6f6e\\u6d41\\u52a0\\u539a\\u68c9\\u8884\\u5916\\u5957\",\"bn\":\"\",\"brief\":\"\\u54c1\\u724c: \\u5962\\u65fa\\u586b\\u5145\\u7269: \\u4eff\\u4e1d\\u68c9\\u8d27\\u53f7: \\u4e4b\\u6c5fA09--MY001\\u57fa\\u7840\\u98ce\\u683c: \\u9752\\u6625\\u6d41\\u884c\\u4e0a\\u5e02\\u5e74\\u4efd\\u5b63\\u8282: 2018\\u5e74\\u79cb\\u5b63\\u539a\\u8584: \\u5e38\\u89c4\\u6750\\u8d28\\u6210\\u5206: \\u805a\\u916f\\u7ea4\\u7ef4100%\",\"price\":\"300.00\",\"mktprice\":\"320.00\",\"image_id\":\"052d4af90ec88851c10982bf7fdfa763\",\"goods_cat_id\":\"3\",\"goods_type_id\":\"1\",\"brand_id\":\"0\",\"is_nomal_virtual\":\"1\",\"marketable\":\"1\",\"stock\":\"500\",\"weight\":\"0.00\",\"unit\":\"\",\"spes_desc\":\"\",\"params\":\"\",\"comments_count\":\"0\",\"view_count\":\"0\",\"buy_count\":\"0\",\"sort\":\"100\",\"is_recommend\":\"1\",\"is_hot\":\"1\",\"brand_name\":\"\",\"cat_name\":\"\\u7cbe\\u9009\\u4e0a\\u8863\",\"image_url\":\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/a4\\/cd\\/ec\\/5bc9a989cb351.jpg\",\"product\":{\"id\":\"46\",\"goods_id\":\"9\",\"barcode\":\"\",\"sn\":\"23045242\",\"price\":\"300.00\",\"mktprice\":\"320.00\",\"marketable\":\"1\",\"stock\":\"499\",\"spes_desc\":\"\",\"is_defalut\":\"1\",\"image_id\":\"\",\"isdel\":\"\",\"name\":\"2018\\u51b7\\u51ac\\u65b0\\u6b3e\\u68c9\\u8863\\u7537\\u58eb\\u52a0\\u80a5\\u52a0\\u5927\\u7801\\u4e2d\\u957f\\u6b3e\\u68c9\\u670d\\u97e9\\u7248\\u6f6e\\u6d41\\u52a0\\u539a\\u68c9\\u8884\\u5916\\u5957\",\"bn\":\"\",\"image_path\":\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/a4\\/cd\\/ec\\/5bc9a989cb351.jpg\",\"total_stock\":\"499\",\"grade_info\":{\"id\":\"\"},\"amount\":\"300.00\",\"promotion_amount\":\"0\"},\"album\":[\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/a4\\/cd\\/ec\\/5bc9a989cb351.jpg\",\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/76\\/6d\\/d5\\/5bc9a988051b3.jpg\",\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/51\\/3a\\/27\\/5bc9a98957a8c.jpg\",\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/99\\/99\\/1d\\/5bc9a98960531.jpg\"],\"isfav\":\"false\"},{\"id\":\"10\",\"name\":\"\\u886c\\u886b\\u7537\\u58eb\\u79cb\\u5b63\\u97e9\\u7248\\u4fee\\u8eab\\u6f6e\\u6d41\\u767e\\u642d\\u5e05\\u6c14\\u4f11\\u95f2\\u5916\\u5957\\u767d\\u8272\\u886c\\u8863\\u52a0\\u7ed2\\u957f\\u8896\\u5bf8\\u886b\",\"bn\":\"456546456\",\"brief\":\"\\u54c1\\u724c: \\u7b80\\u65d7\\u8d27\\u53f7: 22TC144\\u57fa\\u7840\\u98ce\\u683c: \\u9752\\u6625\\u6d41\\u884c\\u4e0a\\u5e02\\u5e74\\u4efd\\u5b63\\u8282: 2018\\u5e74\\u590f\\u5b63\\u539a\\u8584: \\u5e38\\u89c4\\u6750\\u8d28\\u6210\\u5206: \\u68c9100%\",\"price\":\"69.00\",\"mktprice\":\"69.00\",\"image_id\":\"deed2e4f1c54f87eb672ad8c444ba229\",\"goods_cat_id\":\"3\",\"goods_type_id\":\"1\",\"brand_id\":\"14\",\"is_nomal_virtual\":\"1\",\"marketable\":\"1\",\"stock\":\"1880\",\"weight\":\"0.00\",\"unit\":\"\\u4ef6\",\"spes_desc\":{\"\\u989c\\u8272\":{\"1\":\"\\u767d\\u8272\",\"3\":\"\\u84dd\\u8272\",\"6\":\"\\u68d5\\u8272\"},\"\\u89c4\\u683c\":{\"1\":\"\\u89c4\\u683c2\",\"2\":\"\\u89c4\\u683c3\"}},\"params\":\"\",\"comments_count\":\"0\",\"view_count\":\"0\",\"buy_count\":\"0\",\"sort\":\"100\",\"is_recommend\":\"1\",\"is_hot\":\"1\",\"brand_name\":\"DKCHENPIN\",\"cat_name\":\"\\u7cbe\\u9009\\u4e0a\\u8863\",\"image_url\":\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/0c\\/4b\\/01\\/5bc9ab85cc335.jpg\",\"product\":{\"id\":\"47\",\"goods_id\":\"10\",\"barcode\":\"\",\"sn\":\"61111\",\"price\":\"69.00\",\"mktprice\":\"69.00\",\"marketable\":\"2\",\"stock\":\"289\",\"spes_desc\":\"\\u989c\\u8272:\\u767d\\u8272,\\u89c4\\u683c:\\u89c4\\u683c2\",\"is_defalut\":\"1\",\"image_id\":\"\",\"isdel\":\"\",\"name\":\"\\u886c\\u886b\\u7537\\u58eb\\u79cb\\u5b63\\u97e9\\u7248\\u4fee\\u8eab\\u6f6e\\u6d41\\u767e\\u642d\\u5e05\\u6c14\\u4f11\\u95f2\\u5916\\u5957\\u767d\\u8272\\u886c\\u8863\\u52a0\\u7ed2\\u957f\\u8896\\u5bf8\\u886b\",\"bn\":\"456546456\",\"image_path\":\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/0c\\/4b\\/01\\/5bc9ab85cc335.jpg\",\"total_stock\":\"289\",\"grade_info\":{\"id\":\"\"},\"default_spes_desc\":{\"\\u989c\\u8272\":{\"\\u767d\\u8272\":{\"name\":\"\\u767d\\u8272\",\"is_default\":\"true\"},\"\\u84dd\\u8272\":{\"name\":\"\\u84dd\\u8272\",\"product_id\":\"48\"},\"\\u68d5\\u8272\":{\"name\":\"\\u68d5\\u8272\",\"product_id\":\"49\"}},\"\\u89c4\\u683c\":{\"\\u89c4\\u683c2\":{\"name\":\"\\u89c4\\u683c2\",\"is_default\":\"true\"},\"\\u89c4\\u683c3\":{\"name\":\"\\u89c4\\u683c3\",\"product_id\":\"50\"}}},\"amount\":\"69.00\",\"promotion_amount\":\"0\"},\"album\":[\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/0c\\/4b\\/01\\/5bc9ab85cc335.jpg\",\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/08\\/d0\\/3a\\/5bc9ab837a41a.jpg\",\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/46\\/4e\\/5e\\/5bc9ab85b6541.jpg\",\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/83\\/37\\/8a\\/5bc9ab85d0414.jpg\"],\"isfav\":\"false\"},{\"id\":\"11\",\"name\":\"33\",\"bn\":\"99\",\"brief\":\"999\",\"price\":\"0.00\",\"mktprice\":\"0.00\",\"image_id\":\"48d7337ff7a02c6a98e866752b1292b7\",\"goods_cat_id\":\"3\",\"goods_type_id\":\"1\",\"brand_id\":\"14\",\"is_nomal_virtual\":\"1\",\"marketable\":\"1\",\"stock\":\"0\",\"weight\":\"0.00\",\"unit\":\"\",\"spes_desc\":\"\",\"params\":\"\",\"comments_count\":\"0\",\"view_count\":\"0\",\"buy_count\":\"0\",\"sort\":\"100\",\"is_recommend\":\"2\",\"is_hot\":\"2\",\"label_ids\":\"\"}]},\"key\":\"goods_"2020/08/20 17:39:05"042_248658\"},{\"type\":\"imgSlide\",\"value\":{\"duration\":\"2500\",\"list\":[{\"image\":\"\\/static\\/images\\/empty-banner.png\",\"linkType\":\"\",\"linkValue\":\"\"},{\"image\":\"\\/static\\/images\\/empty-banner.png\",\"linkType\":\"\",\"linkValue\":\"\"}]},\"key\":\"imgSlide_"2020/08/20 17:39:05"042_605292\"},{\"type\":\"goods\",\"value\":{\"title\":\"\\u63a8\\u8350\\u5546\\u54c1\",\"lookMore\":\"true\",\"type\":\"auto\",\"classifyId\":\"\",\"brandId\":\"\",\"limit\":\"10\",\"display\":\"list\",\"column\":\"2\",\"list\":[{\"id\":\"1\",\"name\":\"DKCHENPIN2018\\u79cb\\u65b0\\u6b3e\\u5929\\u4e1d\\u4e2d\\u957f\\u6b3e\\u4fee\\u8eab\\u98ce\\u8863\\u5916\\u5957\\u5973\",\"bn\":\"118336505\",\"brief\":\"\\u53ef\\u8c03\\u8282\\u8896 \\u7cfb\\u5e26\\u6536\\u8170\\u8bbe\",\"price\":\"450.00\",\"mktprice\":\"600.00\",\"image_id\":\"b419e4164d5726d057b2ae195f9a96df\",\"goods_cat_id\":\"18\",\"goods_type_id\":\"1\",\"brand_id\":\"14\",\"is_nomal_virtual\":\"1\",\"marketable\":\"1\",\"stock\":\"2796\",\"weight\":\"400.00\",\"unit\":\"\\u4ef6\",\"spes_desc\":{\"\\u989c\\u8272\":[\"\\u7ea2\\u8272\",\"\\u767d\\u8272\",\"\\u7eff\\u8272\",\"\\u84dd\\u8272\"],\"\\u89c4\\u683c\":[\"\\u89c4\\u683c1\",\"\\u89c4\\u683c2\",\"\\u89c4\\u683c3\",\"\\u89c4\\u683c4\"]},\"params\":\"a:1:{s:6:\\\"\\u6750\\u8d28\\\";s:6:\\\"\\u5316\\u7ea4\\\";}\",\"comments_count\":\"0\",\"view_count\":\"0\",\"buy_count\":\"0\",\"sort\":\"100\",\"is_recommend\":\"1\",\"is_hot\":\"1\",\"brand_name\":\"DKCHENPIN\",\"cat_name\":\"\\u98ce\\u8863\",\"image_url\":\"http:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/b7\\/03\\/ed\\/5ba9e78922087.jpg\",\"product\":{\"id\":\"1\",\"goods_id\":\"1\",\"barcode\":\"\",\"sn\":\"P5378659179491\",\"price\":\"450.00\",\"mktprice\":\"600.00\",\"marketable\":\"1\",\"stock\":\"196\",\"spes_desc\":\"\\u989c\\u8272:\\u7ea2\\u8272,\\u89c4\\u683c:\\u89c4\\u683c1\",\"is_defalut\":\"1\",\"image_id\":\"\",\"isdel\":\"\",\"name\":\"DKCHENPIN2018\\u79cb\\u65b0\\u6b3e\\u5929\\u4e1d\\u4e2d\\u957f\\u6b3e\\u4fee\\u8eab\\u98ce\\u8863\\u5916\\u5957\\u5973\",\"bn\":\"118336505\",\"image_path\":\"http:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/b7\\/03\\/ed\\/5ba9e78922087.jpg\",\"total_stock\":\"198\",\"grade_info\":{\"id\":\"\"},\"default_spes_desc\":{\"\\u989c\\u8272\":{\"\\u7ea2\\u8272\":{\"name\":\"\\u7ea2\\u8272\",\"is_default\":\"true\"},\"\\u767d\\u8272\":{\"name\":\"\\u767d\\u8272\",\"product_id\":\"2\"},\"\\u7eff\\u8272\":{\"name\":\"\\u7eff\\u8272\",\"product_id\":\"22\"},\"\\u84dd\\u8272\":{\"name\":\"\\u84dd\\u8272\",\"product_id\":\"3\"}},\"\\u89c4\\u683c\":{\"\\u89c4\\u683c1\":{\"name\":\"\\u89c4\\u683c1\",\"is_default\":\"true\"},\"\\u89c4\\u683c2\":{\"name\":\"\\u89c4\\u683c2\",\"product_id\":\"22\"},\"\\u89c4\\u683c3\":{\"name\":\"\\u89c4\\u683c3\",\"product_id\":\"7\"},\"\\u89c4\\u683c4\":{\"name\":\"\\u89c4\\u683c4\",\"product_id\":\"11\"}}},\"amount\":\"450.00\",\"promotion_amount\":\"0\"},\"album\":[\"http:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/b7\\/03\\/ed\\/5ba9e78922087.jpg\",\"http:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/5b\\/ff\\/67\\/5ba9e78294c5a.jpg\",\"http:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/9f\\/81\\/10\\/5ba9e786c45eb.jpg\",\"http:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/df\\/6d\\/df\\/5ba9e78ac77d0.jpg\",\"http:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/e9\\/bc\\/30\\/5ba9e786e2f66.jpg\"],\"isfav\":\"false\"},{\"id\":\"2\",\"name\":\"\\u4e03\\u5339\\u72fc\\u7fbd\\u7ed2\\u670d\\u7537\\u77ed\\u6b3e2018\\u51ac\\u5b63\\u65b0\\u6b3e\\u7537\\u58eb\\u4e2d\\u5e74\\u4f11\\u95f2\\u7238\\u7238\\u88c5\\u7537\\u88c5\\u6f6e\\u6d41\\u5916\\u5957\",\"bn\":\"5446546546\",\"brief\":\"8\\u5468\\u5e74\\u5e97\\u5e86\\uff0c22\\u53f710\\u70b9\\u523011\\u70b9 \\u5168\\u573a\\u5546\\u54c13\\u4ef66\\u6298\",\"price\":\"600.00\",\"mktprice\":\"590.00\",\"image_id\":\"6ee0f5a5ac6c53418852ee6cc78aeb48\",\"goods_cat_id\":\"10\",\"goods_type_id\":\"1\",\"brand_id\":\"11\",\"is_nomal_virtual\":\"1\",\"marketable\":\"1\",\"stock\":\"679\",\"weight\":\"0.00\",\"unit\":\"\\u4ef6\",\"spes_desc\":{\"\\u989c\\u8272\":{\"1\":\"\\u767d\\u8272\",\"3\":\"\\u84dd\\u8272\",\"4\":\"\\u7d2b\\u8272\"},\"\\u89c4\\u683c\":[\"\\u89c4\\u683c1\",\"\\u89c4\\u683c2\"]},\"params\":\"\",\"comments_count\":\"0\",\"view_count\":\"0\",\"buy_count\":\"0\",\"sort\":\"100\",\"is_recommend\":\"1\",\"is_hot\":\"1\",\"brand_name\":\"\\u5343\\u4ede\\u5c97\",\"cat_name\":\"\\u6bdb\\u5462\\u5916\\u5957\",\"image_url\":\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/8c\\/f8\\/53\\/5bc9a3b2916a4.jpg\",\"product\":{\"id\":\"23\",\"goods_id\":\"2\",\"barcode\":\"\",\"sn\":\"-1\",\"price\":\"600.00\",\"mktprice\":\"590.00\",\"marketable\":\"1\",\"stock\":\"98\",\"spes_desc\":\"\\u989c\\u8272:\\u767d\\u8272,\\u89c4\\u683c:\\u89c4\\u683c1\",\"is_defalut\":\"1\",\"image_id\":\"\",\"isdel\":\"\",\"name\":\"\\u4e03\\u5339\\u72fc\\u7fbd\\u7ed2\\u670d\\u7537\\u77ed\\u6b3e2018\\u51ac\\u5b63\\u65b0\\u6b3e\\u7537\\u58eb\\u4e2d\\u5e74\\u4f11\\u95f2\\u7238\\u7238\\u88c5\\u7537\\u88c5\\u6f6e\\u6d41\\u5916\\u5957\",\"bn\":\"5446546546\",\"image_path\":\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/8c\\/f8\\/53\\/5bc9a3b2916a4.jpg\",\"total_stock\":\"98\",\"grade_info\":{\"id\":\"\"},\"default_spes_desc\":{\"\\u989c\\u8272\":{\"\\u767d\\u8272\":{\"name\":\"\\u767d\\u8272\",\"is_default\":\"true\"},\"\\u84dd\\u8272\":{\"name\":\"\\u84dd\\u8272\",\"product_id\":\"24\"},\"\\u7d2b\\u8272\":{\"name\":\"\\u7d2b\\u8272\",\"product_id\":\"25\"}},\"\\u89c4\\u683c\":{\"\\u89c4\\u683c1\":{\"name\":\"\\u89c4\\u683c1\",\"is_default\":\"true\"},\"\\u89c4\\u683c2\":{\"name\":\"\\u89c4\\u683c2\",\"product_id\":\"26\"}}},\"amount\":\"600.00\",\"promotion_amount\":\"0\"},\"album\":[\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/8c\\/f8\\/53\\/5bc9a3b2916a4.jpg\"],\"isfav\":\"false\"},{\"id\":\"4\",\"name\":\"\\u8299\\u5a1c\\u59ae2018\\u79cb\\u51ac\\u540a\\u5e26\\u8fde\\u8863\\u88d9\\u5973\\u4e24\\u4ef6\\u5957\\u6761\\u7eb9\\u9488\\u7ec7\\u6253\\u5e95\\u886b\\u80cc\\u5e26PU\\u76ae\\u88d9\\u5957\\u88c5\",\"bn\":\"78678657865\",\"brief\":\"\\u54c1\\u724c: \\u8299\\u5a1c\\u59ae\\u9002\\u7528\\u5e74\\u9f84: 25-29\\u5468\\u5c81\\u5c3a\\u7801: S M L XL\\u56fe\\u6848: \\u6761\\u7eb9\\u98ce\\u683c: \\u8857\\u5934\\u8857\\u5934: \\u6b27\\u7f8e\\u9886\\u578b: \\u5706\\u9886\\u8170\\u578b: \\u4e2d\\u8170\\u8863\\u95e8\\u895f: \\u5957\\u5934\\u989c\\u8272\\u5206\\u7c7b: \\u7ea2\\u8272\\u8896\\u578b: \\u5176\\u4ed6\\u7ec4\\u5408\\u5f62\\u5f0f: \\u4e24\\u4ef6\\u5957\",\"price\":\"200.00\",\"mktprice\":\"200.00\",\"image_id\":\"fce63f9c69c6c4ec606b544fcc7610a2\",\"goods_cat_id\":\"4\",\"goods_type_id\":\"1\",\"brand_id\":\"15\",\"is_nomal_virtual\":\"1\",\"marketable\":\"1\",\"stock\":\"560\",\"weight\":\"0.00\",\"unit\":\"\\u4ef6\",\"spes_desc\":{\"\\u989c\\u8272\":[\"\\u7ea2\\u8272\",\"\\u767d\\u8272\"],\"\\u89c4\\u683c\":[\"\\u89c4\\u683c1\",\"\\u89c4\\u683c2\"]},\"params\":\"\",\"comments_count\":\"0\",\"view_count\":\"0\",\"buy_count\":\"0\",\"sort\":\"100\",\"is_recommend\":\"1\",\"is_hot\":\"1\",\"brand_name\":\"\\u8587\\u5494\\u62c9\",\"cat_name\":\"\\u6d6a\\u6f2b\\u88d9\\u88c5\",\"image_url\":\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/dd\\/bd\\/35\\/5bc9a50154075.jpg\",\"product\":{\"id\":\"29\",\"goods_id\":\"4\",\"barcode\":\"\",\"sn\":\"51111\",\"price\":\"200.00\",\"mktprice\":\"200.00\",\"marketable\":\"2\",\"stock\":\"98\",\"spes_desc\":\"\\u989c\\u8272:\\u7ea2\\u8272,\\u89c4\\u683c:\\u89c4\\u683c1\",\"is_defalut\":\"1\",\"image_id\":\"\",\"isdel\":\"\",\"name\":\"\\u8299\\u5a1c\\u59ae2018\\u79cb\\u51ac\\u540a\\u5e26\\u8fde\\u8863\\u88d9\\u5973\\u4e24\\u4ef6\\u5957\\u6761\\u7eb9\\u9488\\u7ec7\\u6253\\u5e95\\u886b\\u80cc\\u5e26PU\\u76ae\\u88d9\\u5957\\u88c5\",\"bn\":\"78678657865\",\"image_path\":\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/dd\\/bd\\/35\\/5bc9a50154075.jpg\",\"total_stock\":\"98\",\"grade_info\":{\"id\":\"\"},\"default_spes_desc\":{\"\\u989c\\u8272\":{\"\\u7ea2\\u8272\":{\"name\":\"\\u7ea2\\u8272\",\"is_default\":\"true\"},\"\\u767d\\u8272\":{\"name\":\"\\u767d\\u8272\",\"product_id\":\"30\"}},\"\\u89c4\\u683c\":{\"\\u89c4\\u683c1\":{\"name\":\"\\u89c4\\u683c1\",\"is_default\":\"true\"},\"\\u89c4\\u683c2\":{\"name\":\"\\u89c4\\u683c2\",\"product_id\":\"31\"}}},\"amount\":\"200.00\",\"promotion_amount\":\"0\"},\"album\":[\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/dd\\/bd\\/35\\/5bc9a50154075.jpg\",\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/b3\\/16\\/38\\/5bc9a50662303.jpg\",\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/2e\\/1b\\/3b\\/5bc9a50900998.jpg\"],\"isfav\":\"false\"},{\"id\":\"5\",\"name\":\"\\u6b63\\u54c1\\u4ee3\\u8d2dPINKO\\u5973\\u53052018\\u65b0\\u6b3e\\u71d5\\u5b50\\u5305\\u5355\\u80a9\\u659c\\u630e\\u538b\\u82b1\\u5fbd\\u7ae0\\u5c0f\\u9999\\u98ce\\u94fe\\u6761\\u5305\",\"bn\":\"5465\",\"brief\":\"PINKO\\u8d28\\u5730: \\u725b\\u76ae\\u76ae\\u9769\\u6750\\u8d28: \\u5934\\u5c42\\u725b\\u76ae\\u98ce\\u683c: \\u6b27\\u7f8e\\u65f6\\u5c1a\\u6210\\u8272: \\u5168\\u65b0\\u989c\\u8272\\u5206\\u7c7b: \\u70ed\\u5e26\\u96e8\\u6797 \\u9ed1\\u8272\\u52cb\\u7ae0 \\u767d\\u8272\\u52cb\\u7ae0 \\u7f16\\u7ec7\\u5c0f\\u9999\\u98ce \\u9ed1\\u8272\\u538b\\u82b1 \\u7ea2\\u8272\\u538b\\u82b1 \\u9ed1\\u8272\\u9576\\u94bb\\u773c \\u9ed1\\u8272\\u5355\\u6392 \\u7ea2\\u8272\\u5355\\u6392 \\u767d\\u8272\\u6d82\\u9e26 \\u9ed1\\u8272\\u6d82\\u9e26 \\u7c89\\u9ed1\\u6d82\\u9e26 \\u9ec4\\u9ed1\\u6d82\\u9e26 \\u9ed1\\u8272\\u5b57\\u6bcd\\u53ef\\u4e50 \\u767d\\u8272\\u5b57\\u6bcd\\u9cc4\\u9c7c\\u7eb9 \\u7ea2\\u8272\\u5b57\\u6bcd \\u9ed1\\u8272\\u67aa\\u6392 \\u7ea2\\u8272love \\u767d\\u8272\\u73cd\\u73e0 \\u9ed1\\u8272\\u73cd\\u73e0 \\u9ed1\\u8272\\u9576\\u94bb\\u53cc\\u6392 \\u7c89\\u8272\\u9576\\u94bb\\u53cc\\u6392 \\u5176\\u4ed6\\u989c\\u8272\\u62cd\\u4e0b\\u5907\\u6ce8\\u989c\\u8272\\u6709\\u65e0\\u5939\\u5c42: \\u6709\\u80cc\\u5305\\u65b9\\u5f0f: \\u5355\\u80a9\\u659c\\u630e\\u624b\\u63d0\\u9002\\u7528\\u573a\\u666f: \\u4f11\\u95f2\",\"price\":\"200.00\",\"mktprice\":\"190.00\",\"image_id\":\"3e1c30dd1125de24e5395d3cd39ef5d8\",\"goods_cat_id\":\"9\",\"goods_type_id\":\"1\",\"brand_id\":\"0\",\"is_nomal_virtual\":\"1\",\"marketable\":\"1\",\"stock\":\"200\",\"weight\":\"0.00\",\"unit\":\"\\u4ef6\",\"spes_desc\":\"\",\"params\":\"\",\"comments_count\":\"0\",\"view_count\":\"0\",\"buy_count\":\"0\",\"sort\":\"100\",\"is_recommend\":\"1\",\"is_hot\":\"1\",\"brand_name\":\"\",\"cat_name\":\"\\u5973\\u5305\",\"image_url\":\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/af\\/00\\/b7\\/5bc9a5b89bd9a.jpg\",\"product\":{\"id\":\"33\",\"goods_id\":\"5\",\"barcode\":\"\",\"sn\":\"564456\",\"price\":\"200.00\",\"mktprice\":\"190.00\",\"marketable\":\"1\",\"stock\":\"200\",\"spes_desc\":\"\",\"is_defalut\":\"1\",\"image_id\":\"\",\"isdel\":\"\",\"name\":\"\\u6b63\\u54c1\\u4ee3\\u8d2dPINKO\\u5973\\u53052018\\u65b0\\u6b3e\\u71d5\\u5b50\\u5305\\u5355\\u80a9\\u659c\\u630e\\u538b\\u82b1\\u5fbd\\u7ae0\\u5c0f\\u9999\\u98ce\\u94fe\\u6761\\u5305\",\"bn\":\"5465\",\"image_path\":\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/af\\/00\\/b7\\/5bc9a5b89bd9a.jpg\",\"total_stock\":\"200\",\"grade_info\":{\"id\":\"\"},\"amount\":\"200.00\",\"promotion_amount\":\"0\"},\"album\":[\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/af\\/00\\/b7\\/5bc9a5b89bd9a.jpg\",\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/b7\\/9f\\/72\\/5bc9a5c440801.jpg\",\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/4c\\/28\\/57\\/5bc9a5c53aa6e.jpg\",\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/76\\/7e\\/81\\/5bc9a5c7bbc8e.jpg\"],\"isfav\":\"false\"},{\"id\":\"7\",\"name\":\"\\u592a\\u5e73\\u9e1f\\u7537\\u88c5 \\u590f\\u5b63\\u65b0\\u54c1\\u7eaf\\u68c9T\\u6064\\u7537\\u58eb\\u9ed1\\u8272\\u77ed\\u8896\\u6f6e\\u5b57\\u6bcd\\u5370\\u82b1\\u97e9\\u7248\\u4fee\\u8eabT\\u6064\",\"bn\":\"\",\"brief\":\"\\u54c1\\u724c: PEACEBIRD\\/\\u592a\\u5e73\\u9e1f\\u8d27\\u53f7: BWDA82170\\u4e0a\\u5e02\\u5e74\\u4efd\\u5b63\\u8282: 2018\\u5e74\\u590f\\u5b63\\u9500\\u552e\\u6e20\\u9053\\u7c7b\\u578b: \\u7eaf\\u7535\\u5546(\\u53ea\\u5728\\u7ebf\\u4e0a\\u9500\\u552e)\\u539a\\u8584: \\u5e38\\u89c4\\u9762\\u6599\\u5206\\u7c7b: \\u68c9\\u6bdb\\u5e03\",\"price\":\"99.00\",\"mktprice\":\"99.00\",\"image_id\":\"4f86bd749dddd098403fc44a1e473643\",\"goods_cat_id\":\"3\",\"goods_type_id\":\"1\",\"brand_id\":\"12\",\"is_nomal_virtual\":\"1\",\"marketable\":\"1\",\"stock\":\"1741\",\"weight\":\"0.00\",\"unit\":\"\",\"spes_desc\":{\"\\u989c\\u8272\":{\"1\":\"\\u767d\\u8272\",\"5\":\"\\u9ed1\\u8272\"},\"\\u89c4\\u683c\":[\"\\u89c4\\u683c1\",\"\\u89c4\\u683c2\",\"\\u89c4\\u683c3\"]},\"params\":\"\",\"comments_count\":\"0\",\"view_count\":\"0\",\"buy_count\":\"0\",\"sort\":\"100\",\"is_recommend\":\"1\",\"is_hot\":\"1\",\"brand_name\":\"\\u827e\\u5c1a\\u81e3\",\"cat_name\":\"\\u7cbe\\u9009\\u4e0a\\u8863\",\"image_url\":\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/0b\\/b2\\/ff\\/5bc9a6de5361c.jpg\",\"product\":{\"id\":\"34\",\"goods_id\":\"7\",\"barcode\":\"\",\"sn\":\"1111\",\"price\":\"99.00\",\"mktprice\":\"99.00\",\"marketable\":\"2\",\"stock\":\"299\",\"spes_desc\":\"\\u989c\\u8272:\\u767d\\u8272,\\u89c4\\u683c:\\u89c4\\u683c1\",\"is_defalut\":\"1\",\"image_id\":\"\",\"isdel\":\"\",\"name\":\"\\u592a\\u5e73\\u9e1f\\u7537\\u88c5 \\u590f\\u5b63\\u65b0\\u54c1\\u7eaf\\u68c9T\\u6064\\u7537\\u58eb\\u9ed1\\u8272\\u77ed\\u8896\\u6f6e\\u5b57\\u6bcd\\u5370\\u82b1\\u97e9\\u7248\\u4fee\\u8eabT\\u6064\",\"bn\":\"\",\"image_path\":\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/0b\\/b2\\/ff\\/5bc9a6de5361c.jpg\",\"total_stock\":\"299\",\"grade_info\":{\"id\":\"\"},\"default_spes_desc\":{\"\\u989c\\u8272\":{\"\\u767d\\u8272\":{\"name\":\"\\u767d\\u8272\",\"is_default\":\"true\"},\"\\u9ed1\\u8272\":{\"name\":\"\\u9ed1\\u8272\",\"product_id\":\"37\"}},\"\\u89c4\\u683c\":{\"\\u89c4\\u683c1\":{\"name\":\"\\u89c4\\u683c1\",\"is_default\":\"true\"},\"\\u89c4\\u683c2\":{\"name\":\"\\u89c4\\u683c2\",\"product_id\":\"35\"},\"\\u89c4\\u683c3\":{\"name\":\"\\u89c4\\u683c3\",\"product_id\":\"36\"}}},\"amount\":\"99.00\",\"promotion_amount\":\"0\"},\"album\":[\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/0b\\/b2\\/ff\\/5bc9a6de5361c.jpg\",\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/58\\/57\\/c8\\/5bc9a6de50a60.jpg\",\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/d1\\/d7\\/cb\\/5bc9a6dee7ebb.jpg\"],\"isfav\":\"false\"},{\"id\":\"8\",\"name\":\"\\u79cb\\u88c5\\u8fde\\u8863\\u88d9\\u59732018\\u65b0\\u6b3e\\u4e03\\u5206\\u8896\\u804c\\u4e1a\\u540d\\u5a9b\\u6c14\\u8d28\\u4e2d\\u957f\\u5973\\u88c5\\u6b63\\u5f0f\\u573a\\u5408\\u88d9\\u5b50\",\"bn\":\"\",\"brief\":\"\\u7ec4\\u5408\\u5f62\\u5f0f: \\u5355\\u4ef6\\u88d9\\u957f: \\u4e2d\\u957f\\u88d9\\u6b3e\\u5f0f: \\u5176\\u4ed6\\/other\\u8896\\u957f: \\u4e03\\u5206\\u8896\\u9886\\u578b: V\\u9886\\u8896\\u578b: \\u5176\\u4ed6\\u8170\\u578b: \\u9ad8\\u8170\\u8863\\u95e8\\u895f: \\u5957\\u5934\",\"price\":\"220.00\",\"mktprice\":\"220.00\",\"image_id\":\""2020/08/20 17:39:05"75d200f105ba941d815ab5\",\"goods_cat_id\":\"4\",\"goods_type_id\":\"1\",\"brand_id\":\"1\",\"is_nomal_virtual\":\"1\",\"marketable\":\"1\",\"stock\":\"1500\",\"weight\":\"0.00\",\"unit\":\"\\u4ef6\",\"spes_desc\":{\"\\u989c\\u8272\":{\"0\":\"\\u7ea2\\u8272\",\"3\":\"\\u84dd\\u8272\"},\"\\u89c4\\u683c\":[\"\\u89c4\\u683c1\",\"\\u89c4\\u683c2\",\"\\u89c4\\u683c3\"]},\"params\":\"\",\"comments_count\":\"0\",\"view_count\":\"0\",\"buy_count\":\"0\",\"sort\":\"100\",\"is_recommend\":\"1\",\"is_hot\":\"1\",\"brand_name\":\"\\u4f9d\\u5b05\\u838e\",\"cat_name\":\"\\u6d6a\\u6f2b\\u88d9\\u88c5\",\"image_url\":\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/ce\\/ae\\/8d\\/5bc9a81609585.jpg\",\"product\":{\"id\":\"40\",\"goods_id\":\"8\",\"barcode\":\"\",\"sn\":\"21111\",\"price\":\"220.00\",\"mktprice\":\"220.00\",\"marketable\":\"2\",\"stock\":\"188\",\"spes_desc\":\"\\u989c\\u8272:\\u7ea2\\u8272,\\u89c4\\u683c:\\u89c4\\u683c1\",\"is_defalut\":\"1\",\"image_id\":\"\",\"isdel\":\"\",\"name\":\"\\u79cb\\u88c5\\u8fde\\u8863\\u88d9\\u59732018\\u65b0\\u6b3e\\u4e03\\u5206\\u8896\\u804c\\u4e1a\\u540d\\u5a9b\\u6c14\\u8d28\\u4e2d\\u957f\\u5973\\u88c5\\u6b63\\u5f0f\\u573a\\u5408\\u88d9\\u5b50\",\"bn\":\"\",\"image_path\":\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/ce\\/ae\\/8d\\/5bc9a81609585.jpg\",\"total_stock\":\"198\",\"grade_info\":{\"id\":\"\"},\"default_spes_desc\":{\"\\u989c\\u8272\":{\"\\u7ea2\\u8272\":{\"name\":\"\\u7ea2\\u8272\",\"is_default\":\"true\"},\"\\u84dd\\u8272\":{\"name\":\"\\u84dd\\u8272\",\"product_id\":\"43\"}},\"\\u89c4\\u683c\":{\"\\u89c4\\u683c1\":{\"name\":\"\\u89c4\\u683c1\",\"is_default\":\"true\"},\"\\u89c4\\u683c2\":{\"name\":\"\\u89c4\\u683c2\",\"product_id\":\"41\"},\"\\u89c4\\u683c3\":{\"name\":\"\\u89c4\\u683c3\",\"product_id\":\"42\"}}},\"amount\":\"220.00\",\"promotion_amount\":\"0\"},\"album\":[\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/ce\\/ae\\/8d\\/5bc9a81609585.jpg\",\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/e9\\/ac\\/a3\\/5bc9a8167a827.jpg\",\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/7e\\/18\\/48\\/5bc9a816ce21b.jpg\",\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/99\\/3c\\/3e\\/5bc9a817e6b9d.jpg\"],\"isfav\":\"false\"},{\"id\":\"9\",\"name\":\"2018\\u51b7\\u51ac\\u65b0\\u6b3e\\u68c9\\u8863\\u7537\\u58eb\\u52a0\\u80a5\\u52a0\\u5927\\u7801\\u4e2d\\u957f\\u6b3e\\u68c9\\u670d\\u97e9\\u7248\\u6f6e\\u6d41\\u52a0\\u539a\\u68c9\\u8884\\u5916\\u5957\",\"bn\":\"\",\"brief\":\"\\u54c1\\u724c: \\u5962\\u65fa\\u586b\\u5145\\u7269: \\u4eff\\u4e1d\\u68c9\\u8d27\\u53f7: \\u4e4b\\u6c5fA09--MY001\\u57fa\\u7840\\u98ce\\u683c: \\u9752\\u6625\\u6d41\\u884c\\u4e0a\\u5e02\\u5e74\\u4efd\\u5b63\\u8282: 2018\\u5e74\\u79cb\\u5b63\\u539a\\u8584: \\u5e38\\u89c4\\u6750\\u8d28\\u6210\\u5206: \\u805a\\u916f\\u7ea4\\u7ef4100%\",\"price\":\"300.00\",\"mktprice\":\"320.00\",\"image_id\":\"052d4af90ec88851c10982bf7fdfa763\",\"goods_cat_id\":\"3\",\"goods_type_id\":\"1\",\"brand_id\":\"0\",\"is_nomal_virtual\":\"1\",\"marketable\":\"1\",\"stock\":\"500\",\"weight\":\"0.00\",\"unit\":\"\",\"spes_desc\":\"\",\"params\":\"\",\"comments_count\":\"0\",\"view_count\":\"0\",\"buy_count\":\"0\",\"sort\":\"100\",\"is_recommend\":\"1\",\"is_hot\":\"1\",\"brand_name\":\"\",\"cat_name\":\"\\u7cbe\\u9009\\u4e0a\\u8863\",\"image_url\":\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/a4\\/cd\\/ec\\/5bc9a989cb351.jpg\",\"product\":{\"id\":\"46\",\"goods_id\":\"9\",\"barcode\":\"\",\"sn\":\"23045242\",\"price\":\"300.00\",\"mktprice\":\"320.00\",\"marketable\":\"1\",\"stock\":\"499\",\"spes_desc\":\"\",\"is_defalut\":\"1\",\"image_id\":\"\",\"isdel\":\"\",\"name\":\"2018\\u51b7\\u51ac\\u65b0\\u6b3e\\u68c9\\u8863\\u7537\\u58eb\\u52a0\\u80a5\\u52a0\\u5927\\u7801\\u4e2d\\u957f\\u6b3e\\u68c9\\u670d\\u97e9\\u7248\\u6f6e\\u6d41\\u52a0\\u539a\\u68c9\\u8884\\u5916\\u5957\",\"bn\":\"\",\"image_path\":\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/a4\\/cd\\/ec\\/5bc9a989cb351.jpg\",\"total_stock\":\"499\",\"grade_info\":{\"id\":\"\"},\"amount\":\"300.00\",\"promotion_amount\":\"0\"},\"album\":[\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/a4\\/cd\\/ec\\/5bc9a989cb351.jpg\",\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/76\\/6d\\/d5\\/5bc9a988051b3.jpg\",\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/51\\/3a\\/27\\/5bc9a98957a8c.jpg\",\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/99\\/99\\/1d\\/5bc9a98960531.jpg\"],\"isfav\":\"false\"},{\"id\":\"10\",\"name\":\"\\u886c\\u886b\\u7537\\u58eb\\u79cb\\u5b63\\u97e9\\u7248\\u4fee\\u8eab\\u6f6e\\u6d41\\u767e\\u642d\\u5e05\\u6c14\\u4f11\\u95f2\\u5916\\u5957\\u767d\\u8272\\u886c\\u8863\\u52a0\\u7ed2\\u957f\\u8896\\u5bf8\\u886b\",\"bn\":\"456546456\",\"brief\":\"\\u54c1\\u724c: \\u7b80\\u65d7\\u8d27\\u53f7: 22TC144\\u57fa\\u7840\\u98ce\\u683c: \\u9752\\u6625\\u6d41\\u884c\\u4e0a\\u5e02\\u5e74\\u4efd\\u5b63\\u8282: 2018\\u5e74\\u590f\\u5b63\\u539a\\u8584: \\u5e38\\u89c4\\u6750\\u8d28\\u6210\\u5206: \\u68c9100%\",\"price\":\"69.00\",\"mktprice\":\"69.00\",\"image_id\":\"deed2e4f1c54f87eb672ad8c444ba229\",\"goods_cat_id\":\"3\",\"goods_type_id\":\"1\",\"brand_id\":\"14\",\"is_nomal_virtual\":\"1\",\"marketable\":\"1\",\"stock\":\"1880\",\"weight\":\"0.00\",\"unit\":\"\\u4ef6\",\"spes_desc\":{\"\\u989c\\u8272\":{\"1\":\"\\u767d\\u8272\",\"3\":\"\\u84dd\\u8272\",\"6\":\"\\u68d5\\u8272\"},\"\\u89c4\\u683c\":{\"1\":\"\\u89c4\\u683c2\",\"2\":\"\\u89c4\\u683c3\"}},\"params\":\"\",\"comments_count\":\"0\",\"view_count\":\"0\",\"buy_count\":\"0\",\"sort\":\"100\",\"is_recommend\":\"1\",\"is_hot\":\"1\",\"brand_name\":\"DKCHENPIN\",\"cat_name\":\"\\u7cbe\\u9009\\u4e0a\\u8863\",\"image_url\":\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/0c\\/4b\\/01\\/5bc9ab85cc335.jpg\",\"product\":{\"id\":\"47\",\"goods_id\":\"10\",\"barcode\":\"\",\"sn\":\"61111\",\"price\":\"69.00\",\"mktprice\":\"69.00\",\"marketable\":\"2\",\"stock\":\"289\",\"spes_desc\":\"\\u989c\\u8272:\\u767d\\u8272,\\u89c4\\u683c:\\u89c4\\u683c2\",\"is_defalut\":\"1\",\"image_id\":\"\",\"isdel\":\"\",\"name\":\"\\u886c\\u886b\\u7537\\u58eb\\u79cb\\u5b63\\u97e9\\u7248\\u4fee\\u8eab\\u6f6e\\u6d41\\u767e\\u642d\\u5e05\\u6c14\\u4f11\\u95f2\\u5916\\u5957\\u767d\\u8272\\u886c\\u8863\\u52a0\\u7ed2\\u957f\\u8896\\u5bf8\\u886b\",\"bn\":\"456546456\",\"image_path\":\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/0c\\/4b\\/01\\/5bc9ab85cc335.jpg\",\"total_stock\":\"289\",\"grade_info\":{\"id\":\"\"},\"default_spes_desc\":{\"\\u989c\\u8272\":{\"\\u767d\\u8272\":{\"name\":\"\\u767d\\u8272\",\"is_default\":\"true\"},\"\\u84dd\\u8272\":{\"name\":\"\\u84dd\\u8272\",\"product_id\":\"48\"},\"\\u68d5\\u8272\":{\"name\":\"\\u68d5\\u8272\",\"product_id\":\"49\"}},\"\\u89c4\\u683c\":{\"\\u89c4\\u683c2\":{\"name\":\"\\u89c4\\u683c2\",\"is_default\":\"true\"},\"\\u89c4\\u683c3\":{\"name\":\"\\u89c4\\u683c3\",\"product_id\":\"50\"}}},\"amount\":\"69.00\",\"promotion_amount\":\"0\"},\"album\":[\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/0c\\/4b\\/01\\/5bc9ab85cc335.jpg\",\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/08\\/d0\\/3a\\/5bc9ab837a41a.jpg\",\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/46\\/4e\\/5e\\/5bc9ab85b6541.jpg\",\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/83\\/37\\/8a\\/5bc9ab85d0414.jpg\"],\"isfav\":\"false\"},{\"id\":\"11\",\"name\":\"33\",\"bn\":\"99\",\"brief\":\"999\",\"price\":\"0.00\",\"mktprice\":\"0.00\",\"image_id\":\"48d7337ff7a02c6a98e866752b1292b7\",\"goods_cat_id\":\"3\",\"goods_type_id\":\"1\",\"brand_id\":\"14\",\"is_nomal_virtual\":\"1\",\"marketable\":\"1\",\"stock\":\"0\",\"weight\":\"0.00\",\"unit\":\"\",\"spes_desc\":\"\",\"params\":\"\",\"comments_count\":\"0\",\"view_count\":\"0\",\"buy_count\":\"0\",\"sort\":\"100\",\"is_recommend\":\"2\",\"is_hot\":\"2\",\"label_ids\":\"\"}]},\"key\":\"goods_"2020/08/20 17:39:05"042_710742\"},{\"type\":\"imgSingle\",\"value\":{\"list\":[{\"image\":\"\\/static\\/images\\/empty-banner.png\",\"linkType\":\"\",\"linkValue\":\"\"}]},\"key\":\"imgSingle_"2020/08/20 17:39:05"042_324571\"}],\"pageCode\":\"mobile_home\"}', '127.0.0.1', "2020/08/20 17:39:05");
INSERT INTO `operation_log` VALUES (10026, 13, 'pages', 'savecustom', '保存配置', '{\"data\":[{\"type\":\"search\",\"value\":{\"keywords\":\"\\u8bf7\\u8f93\\u5165\\u5173\\u952e\\u5b57\\u641c\\u7d22\",\"style\":\"round\"},\"key\":\"search_"2020/08/20 17:39:05"041_368039\"},{\"type\":\"articleClassify\",\"name\":\"\\u6587\\u7ae0\\u5206\\u7c7b\",\"value\":{\"limit\":\"3\",\"articleClassifyId\":\"\"},\"icon\":\"icon-wenzhangfenlei\",\"key\":\"articleClassify_"2020/08/20 17:39:05"118_947584\"},{\"type\":\"imgSlide\",\"value\":{\"duration\":\"2500\",\"list\":[{\"image\":\"\\/static\\/images\\/empty-banner.png\",\"linkType\":\"\",\"linkValue\":\"\"},{\"image\":\"\\/static\\/images\\/empty-banner.png\",\"linkType\":\"\",\"linkValue\":\"\"}]},\"key\":\"imgSlide_"2020/08/20 17:39:05"041_525579\"},{\"type\":\"notice\",\"value\":{\"type\":\"auto\"},\"key\":\"notice_"2020/08/20 17:39:05"042_894605\"},{\"type\":\"navBar\",\"value\":{\"limit\":\"4\",\"list\":[{\"image\":\"\\/static\\/images\\/empty.png\",\"text\":\"\\u6309\\u94ae1\",\"linkType\":\"\",\"linkValue\":\"\"},{\"image\":\"\\/static\\/images\\/empty.png\",\"text\":\"\\u6309\\u94ae2\",\"linkType\":\"\",\"linkValue\":\"\"},{\"image\":\"\\/static\\/images\\/empty.png\",\"text\":\"\\u6309\\u94ae3\",\"linkType\":\"\",\"linkValue\":\"\"},{\"image\":\"\\/static\\/images\\/empty.png\",\"text\":\"\\u6309\\u94ae4\",\"linkType\":\"\",\"linkValue\":\"\"}]},\"key\":\"navBar_"2020/08/20 17:39:05"042_637393\"},{\"type\":\"goods\",\"value\":{\"title\":\"\\u70ed\\u95e8\\u5546\\u54c1\",\"lookMore\":\"true\",\"type\":\"auto\",\"classifyId\":\"\",\"brandId\":\"\",\"limit\":\"10\",\"display\":\"list\",\"column\":\"2\",\"list\":[{\"id\":\"1\",\"name\":\"DKCHENPIN2018\\u79cb\\u65b0\\u6b3e\\u5929\\u4e1d\\u4e2d\\u957f\\u6b3e\\u4fee\\u8eab\\u98ce\\u8863\\u5916\\u5957\\u5973\",\"bn\":\"118336505\",\"brief\":\"\\u53ef\\u8c03\\u8282\\u8896 \\u7cfb\\u5e26\\u6536\\u8170\\u8bbe\",\"price\":\"450.00\",\"mktprice\":\"600.00\",\"image_id\":\"b419e4164d5726d057b2ae195f9a96df\",\"goods_cat_id\":\"18\",\"goods_type_id\":\"1\",\"brand_id\":\"14\",\"is_nomal_virtual\":\"1\",\"marketable\":\"1\",\"stock\":\"2796\",\"weight\":\"400.00\",\"unit\":\"\\u4ef6\",\"spes_desc\":{\"\\u989c\\u8272\":[\"\\u7ea2\\u8272\",\"\\u767d\\u8272\",\"\\u7eff\\u8272\",\"\\u84dd\\u8272\"],\"\\u89c4\\u683c\":[\"\\u89c4\\u683c1\",\"\\u89c4\\u683c2\",\"\\u89c4\\u683c3\",\"\\u89c4\\u683c4\"]},\"params\":\"a:1:{s:6:\\\"\\u6750\\u8d28\\\";s:6:\\\"\\u5316\\u7ea4\\\";}\",\"comments_count\":\"0\",\"view_count\":\"0\",\"buy_count\":\"0\",\"sort\":\"100\",\"is_recommend\":\"1\",\"is_hot\":\"1\",\"brand_name\":\"DKCHENPIN\",\"cat_name\":\"\\u98ce\\u8863\",\"image_url\":\"http:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/b7\\/03\\/ed\\/5ba9e78922087.jpg\",\"product\":{\"id\":\"1\",\"goods_id\":\"1\",\"barcode\":\"\",\"sn\":\"P5378659179491\",\"price\":\"450.00\",\"mktprice\":\"600.00\",\"marketable\":\"1\",\"stock\":\"196\",\"spes_desc\":\"\\u989c\\u8272:\\u7ea2\\u8272,\\u89c4\\u683c:\\u89c4\\u683c1\",\"is_defalut\":\"1\",\"image_id\":\"\",\"isdel\":\"\",\"name\":\"DKCHENPIN2018\\u79cb\\u65b0\\u6b3e\\u5929\\u4e1d\\u4e2d\\u957f\\u6b3e\\u4fee\\u8eab\\u98ce\\u8863\\u5916\\u5957\\u5973\",\"bn\":\"118336505\",\"image_path\":\"http:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/b7\\/03\\/ed\\/5ba9e78922087.jpg\",\"total_stock\":\"198\",\"grade_info\":{\"id\":\"\"},\"default_spes_desc\":{\"\\u989c\\u8272\":{\"\\u7ea2\\u8272\":{\"name\":\"\\u7ea2\\u8272\",\"is_default\":\"true\"},\"\\u767d\\u8272\":{\"name\":\"\\u767d\\u8272\",\"product_id\":\"2\"},\"\\u7eff\\u8272\":{\"name\":\"\\u7eff\\u8272\",\"product_id\":\"22\"},\"\\u84dd\\u8272\":{\"name\":\"\\u84dd\\u8272\",\"product_id\":\"3\"}},\"\\u89c4\\u683c\":{\"\\u89c4\\u683c1\":{\"name\":\"\\u89c4\\u683c1\",\"is_default\":\"true\"},\"\\u89c4\\u683c2\":{\"name\":\"\\u89c4\\u683c2\",\"product_id\":\"22\"},\"\\u89c4\\u683c3\":{\"name\":\"\\u89c4\\u683c3\",\"product_id\":\"7\"},\"\\u89c4\\u683c4\":{\"name\":\"\\u89c4\\u683c4\",\"product_id\":\"11\"}}},\"amount\":\"450.00\",\"promotion_amount\":\"0\"},\"album\":[\"http:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/b7\\/03\\/ed\\/5ba9e78922087.jpg\",\"http:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/5b\\/ff\\/67\\/5ba9e78294c5a.jpg\",\"http:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/9f\\/81\\/10\\/5ba9e786c45eb.jpg\",\"http:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/df\\/6d\\/df\\/5ba9e78ac77d0.jpg\",\"http:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/e9\\/bc\\/30\\/5ba9e786e2f66.jpg\"],\"isfav\":\"false\"},{\"id\":\"2\",\"name\":\"\\u4e03\\u5339\\u72fc\\u7fbd\\u7ed2\\u670d\\u7537\\u77ed\\u6b3e2018\\u51ac\\u5b63\\u65b0\\u6b3e\\u7537\\u58eb\\u4e2d\\u5e74\\u4f11\\u95f2\\u7238\\u7238\\u88c5\\u7537\\u88c5\\u6f6e\\u6d41\\u5916\\u5957\",\"bn\":\"5446546546\",\"brief\":\"8\\u5468\\u5e74\\u5e97\\u5e86\\uff0c22\\u53f710\\u70b9\\u523011\\u70b9 \\u5168\\u573a\\u5546\\u54c13\\u4ef66\\u6298\",\"price\":\"600.00\",\"mktprice\":\"590.00\",\"image_id\":\"6ee0f5a5ac6c53418852ee6cc78aeb48\",\"goods_cat_id\":\"10\",\"goods_type_id\":\"1\",\"brand_id\":\"11\",\"is_nomal_virtual\":\"1\",\"marketable\":\"1\",\"stock\":\"679\",\"weight\":\"0.00\",\"unit\":\"\\u4ef6\",\"spes_desc\":{\"\\u989c\\u8272\":{\"1\":\"\\u767d\\u8272\",\"3\":\"\\u84dd\\u8272\",\"4\":\"\\u7d2b\\u8272\"},\"\\u89c4\\u683c\":[\"\\u89c4\\u683c1\",\"\\u89c4\\u683c2\"]},\"params\":\"\",\"comments_count\":\"0\",\"view_count\":\"0\",\"buy_count\":\"0\",\"sort\":\"100\",\"is_recommend\":\"1\",\"is_hot\":\"1\",\"brand_name\":\"\\u5343\\u4ede\\u5c97\",\"cat_name\":\"\\u6bdb\\u5462\\u5916\\u5957\",\"image_url\":\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/8c\\/f8\\/53\\/5bc9a3b2916a4.jpg\",\"product\":{\"id\":\"23\",\"goods_id\":\"2\",\"barcode\":\"\",\"sn\":\"-1\",\"price\":\"600.00\",\"mktprice\":\"590.00\",\"marketable\":\"1\",\"stock\":\"98\",\"spes_desc\":\"\\u989c\\u8272:\\u767d\\u8272,\\u89c4\\u683c:\\u89c4\\u683c1\",\"is_defalut\":\"1\",\"image_id\":\"\",\"isdel\":\"\",\"name\":\"\\u4e03\\u5339\\u72fc\\u7fbd\\u7ed2\\u670d\\u7537\\u77ed\\u6b3e2018\\u51ac\\u5b63\\u65b0\\u6b3e\\u7537\\u58eb\\u4e2d\\u5e74\\u4f11\\u95f2\\u7238\\u7238\\u88c5\\u7537\\u88c5\\u6f6e\\u6d41\\u5916\\u5957\",\"bn\":\"5446546546\",\"image_path\":\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/8c\\/f8\\/53\\/5bc9a3b2916a4.jpg\",\"total_stock\":\"98\",\"grade_info\":{\"id\":\"\"},\"default_spes_desc\":{\"\\u989c\\u8272\":{\"\\u767d\\u8272\":{\"name\":\"\\u767d\\u8272\",\"is_default\":\"true\"},\"\\u84dd\\u8272\":{\"name\":\"\\u84dd\\u8272\",\"product_id\":\"24\"},\"\\u7d2b\\u8272\":{\"name\":\"\\u7d2b\\u8272\",\"product_id\":\"25\"}},\"\\u89c4\\u683c\":{\"\\u89c4\\u683c1\":{\"name\":\"\\u89c4\\u683c1\",\"is_default\":\"true\"},\"\\u89c4\\u683c2\":{\"name\":\"\\u89c4\\u683c2\",\"product_id\":\"26\"}}},\"amount\":\"600.00\",\"promotion_amount\":\"0\"},\"album\":[\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/8c\\/f8\\/53\\/5bc9a3b2916a4.jpg\"],\"isfav\":\"false\"},{\"id\":\"4\",\"name\":\"\\u8299\\u5a1c\\u59ae2018\\u79cb\\u51ac\\u540a\\u5e26\\u8fde\\u8863\\u88d9\\u5973\\u4e24\\u4ef6\\u5957\\u6761\\u7eb9\\u9488\\u7ec7\\u6253\\u5e95\\u886b\\u80cc\\u5e26PU\\u76ae\\u88d9\\u5957\\u88c5\",\"bn\":\"78678657865\",\"brief\":\"\\u54c1\\u724c: \\u8299\\u5a1c\\u59ae\\u9002\\u7528\\u5e74\\u9f84: 25-29\\u5468\\u5c81\\u5c3a\\u7801: S M L XL\\u56fe\\u6848: \\u6761\\u7eb9\\u98ce\\u683c: \\u8857\\u5934\\u8857\\u5934: \\u6b27\\u7f8e\\u9886\\u578b: \\u5706\\u9886\\u8170\\u578b: \\u4e2d\\u8170\\u8863\\u95e8\\u895f: \\u5957\\u5934\\u989c\\u8272\\u5206\\u7c7b: \\u7ea2\\u8272\\u8896\\u578b: \\u5176\\u4ed6\\u7ec4\\u5408\\u5f62\\u5f0f: \\u4e24\\u4ef6\\u5957\",\"price\":\"200.00\",\"mktprice\":\"200.00\",\"image_id\":\"fce63f9c69c6c4ec606b544fcc7610a2\",\"goods_cat_id\":\"4\",\"goods_type_id\":\"1\",\"brand_id\":\"15\",\"is_nomal_virtual\":\"1\",\"marketable\":\"1\",\"stock\":\"560\",\"weight\":\"0.00\",\"unit\":\"\\u4ef6\",\"spes_desc\":{\"\\u989c\\u8272\":[\"\\u7ea2\\u8272\",\"\\u767d\\u8272\"],\"\\u89c4\\u683c\":[\"\\u89c4\\u683c1\",\"\\u89c4\\u683c2\"]},\"params\":\"\",\"comments_count\":\"0\",\"view_count\":\"0\",\"buy_count\":\"0\",\"sort\":\"100\",\"is_recommend\":\"1\",\"is_hot\":\"1\",\"brand_name\":\"\\u8587\\u5494\\u62c9\",\"cat_name\":\"\\u6d6a\\u6f2b\\u88d9\\u88c5\",\"image_url\":\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/dd\\/bd\\/35\\/5bc9a50154075.jpg\",\"product\":{\"id\":\"29\",\"goods_id\":\"4\",\"barcode\":\"\",\"sn\":\"51111\",\"price\":\"200.00\",\"mktprice\":\"200.00\",\"marketable\":\"2\",\"stock\":\"98\",\"spes_desc\":\"\\u989c\\u8272:\\u7ea2\\u8272,\\u89c4\\u683c:\\u89c4\\u683c1\",\"is_defalut\":\"1\",\"image_id\":\"\",\"isdel\":\"\",\"name\":\"\\u8299\\u5a1c\\u59ae2018\\u79cb\\u51ac\\u540a\\u5e26\\u8fde\\u8863\\u88d9\\u5973\\u4e24\\u4ef6\\u5957\\u6761\\u7eb9\\u9488\\u7ec7\\u6253\\u5e95\\u886b\\u80cc\\u5e26PU\\u76ae\\u88d9\\u5957\\u88c5\",\"bn\":\"78678657865\",\"image_path\":\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/dd\\/bd\\/35\\/5bc9a50154075.jpg\",\"total_stock\":\"98\",\"grade_info\":{\"id\":\"\"},\"default_spes_desc\":{\"\\u989c\\u8272\":{\"\\u7ea2\\u8272\":{\"name\":\"\\u7ea2\\u8272\",\"is_default\":\"true\"},\"\\u767d\\u8272\":{\"name\":\"\\u767d\\u8272\",\"product_id\":\"30\"}},\"\\u89c4\\u683c\":{\"\\u89c4\\u683c1\":{\"name\":\"\\u89c4\\u683c1\",\"is_default\":\"true\"},\"\\u89c4\\u683c2\":{\"name\":\"\\u89c4\\u683c2\",\"product_id\":\"31\"}}},\"amount\":\"200.00\",\"promotion_amount\":\"0\"},\"album\":[\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/dd\\/bd\\/35\\/5bc9a50154075.jpg\",\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/b3\\/16\\/38\\/5bc9a50662303.jpg\",\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/2e\\/1b\\/3b\\/5bc9a50900998.jpg\"],\"isfav\":\"false\"},{\"id\":\"5\",\"name\":\"\\u6b63\\u54c1\\u4ee3\\u8d2dPINKO\\u5973\\u53052018\\u65b0\\u6b3e\\u71d5\\u5b50\\u5305\\u5355\\u80a9\\u659c\\u630e\\u538b\\u82b1\\u5fbd\\u7ae0\\u5c0f\\u9999\\u98ce\\u94fe\\u6761\\u5305\",\"bn\":\"5465\",\"brief\":\"PINKO\\u8d28\\u5730: \\u725b\\u76ae\\u76ae\\u9769\\u6750\\u8d28: \\u5934\\u5c42\\u725b\\u76ae\\u98ce\\u683c: \\u6b27\\u7f8e\\u65f6\\u5c1a\\u6210\\u8272: \\u5168\\u65b0\\u989c\\u8272\\u5206\\u7c7b: \\u70ed\\u5e26\\u96e8\\u6797 \\u9ed1\\u8272\\u52cb\\u7ae0 \\u767d\\u8272\\u52cb\\u7ae0 \\u7f16\\u7ec7\\u5c0f\\u9999\\u98ce \\u9ed1\\u8272\\u538b\\u82b1 \\u7ea2\\u8272\\u538b\\u82b1 \\u9ed1\\u8272\\u9576\\u94bb\\u773c \\u9ed1\\u8272\\u5355\\u6392 \\u7ea2\\u8272\\u5355\\u6392 \\u767d\\u8272\\u6d82\\u9e26 \\u9ed1\\u8272\\u6d82\\u9e26 \\u7c89\\u9ed1\\u6d82\\u9e26 \\u9ec4\\u9ed1\\u6d82\\u9e26 \\u9ed1\\u8272\\u5b57\\u6bcd\\u53ef\\u4e50 \\u767d\\u8272\\u5b57\\u6bcd\\u9cc4\\u9c7c\\u7eb9 \\u7ea2\\u8272\\u5b57\\u6bcd \\u9ed1\\u8272\\u67aa\\u6392 \\u7ea2\\u8272love \\u767d\\u8272\\u73cd\\u73e0 \\u9ed1\\u8272\\u73cd\\u73e0 \\u9ed1\\u8272\\u9576\\u94bb\\u53cc\\u6392 \\u7c89\\u8272\\u9576\\u94bb\\u53cc\\u6392 \\u5176\\u4ed6\\u989c\\u8272\\u62cd\\u4e0b\\u5907\\u6ce8\\u989c\\u8272\\u6709\\u65e0\\u5939\\u5c42: \\u6709\\u80cc\\u5305\\u65b9\\u5f0f: \\u5355\\u80a9\\u659c\\u630e\\u624b\\u63d0\\u9002\\u7528\\u573a\\u666f: \\u4f11\\u95f2\",\"price\":\"200.00\",\"mktprice\":\"190.00\",\"image_id\":\"3e1c30dd1125de24e5395d3cd39ef5d8\",\"goods_cat_id\":\"9\",\"goods_type_id\":\"1\",\"brand_id\":\"0\",\"is_nomal_virtual\":\"1\",\"marketable\":\"1\",\"stock\":\"200\",\"weight\":\"0.00\",\"unit\":\"\\u4ef6\",\"spes_desc\":\"\",\"params\":\"\",\"comments_count\":\"0\",\"view_count\":\"0\",\"buy_count\":\"0\",\"sort\":\"100\",\"is_recommend\":\"1\",\"is_hot\":\"1\",\"brand_name\":\"\",\"cat_name\":\"\\u5973\\u5305\",\"image_url\":\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/af\\/00\\/b7\\/5bc9a5b89bd9a.jpg\",\"product\":{\"id\":\"33\",\"goods_id\":\"5\",\"barcode\":\"\",\"sn\":\"564456\",\"price\":\"200.00\",\"mktprice\":\"190.00\",\"marketable\":\"1\",\"stock\":\"200\",\"spes_desc\":\"\",\"is_defalut\":\"1\",\"image_id\":\"\",\"isdel\":\"\",\"name\":\"\\u6b63\\u54c1\\u4ee3\\u8d2dPINKO\\u5973\\u53052018\\u65b0\\u6b3e\\u71d5\\u5b50\\u5305\\u5355\\u80a9\\u659c\\u630e\\u538b\\u82b1\\u5fbd\\u7ae0\\u5c0f\\u9999\\u98ce\\u94fe\\u6761\\u5305\",\"bn\":\"5465\",\"image_path\":\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/af\\/00\\/b7\\/5bc9a5b89bd9a.jpg\",\"total_stock\":\"200\",\"grade_info\":{\"id\":\"\"},\"amount\":\"200.00\",\"promotion_amount\":\"0\"},\"album\":[\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/af\\/00\\/b7\\/5bc9a5b89bd9a.jpg\",\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/b7\\/9f\\/72\\/5bc9a5c440801.jpg\",\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/4c\\/28\\/57\\/5bc9a5c53aa6e.jpg\",\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/76\\/7e\\/81\\/5bc9a5c7bbc8e.jpg\"],\"isfav\":\"false\"},{\"id\":\"7\",\"name\":\"\\u592a\\u5e73\\u9e1f\\u7537\\u88c5 \\u590f\\u5b63\\u65b0\\u54c1\\u7eaf\\u68c9T\\u6064\\u7537\\u58eb\\u9ed1\\u8272\\u77ed\\u8896\\u6f6e\\u5b57\\u6bcd\\u5370\\u82b1\\u97e9\\u7248\\u4fee\\u8eabT\\u6064\",\"bn\":\"\",\"brief\":\"\\u54c1\\u724c: PEACEBIRD\\/\\u592a\\u5e73\\u9e1f\\u8d27\\u53f7: BWDA82170\\u4e0a\\u5e02\\u5e74\\u4efd\\u5b63\\u8282: 2018\\u5e74\\u590f\\u5b63\\u9500\\u552e\\u6e20\\u9053\\u7c7b\\u578b: \\u7eaf\\u7535\\u5546(\\u53ea\\u5728\\u7ebf\\u4e0a\\u9500\\u552e)\\u539a\\u8584: \\u5e38\\u89c4\\u9762\\u6599\\u5206\\u7c7b: \\u68c9\\u6bdb\\u5e03\",\"price\":\"99.00\",\"mktprice\":\"99.00\",\"image_id\":\"4f86bd749dddd098403fc44a1e473643\",\"goods_cat_id\":\"3\",\"goods_type_id\":\"1\",\"brand_id\":\"12\",\"is_nomal_virtual\":\"1\",\"marketable\":\"1\",\"stock\":\"1741\",\"weight\":\"0.00\",\"unit\":\"\",\"spes_desc\":{\"\\u989c\\u8272\":{\"1\":\"\\u767d\\u8272\",\"5\":\"\\u9ed1\\u8272\"},\"\\u89c4\\u683c\":[\"\\u89c4\\u683c1\",\"\\u89c4\\u683c2\",\"\\u89c4\\u683c3\"]},\"params\":\"\",\"comments_count\":\"0\",\"view_count\":\"0\",\"buy_count\":\"0\",\"sort\":\"100\",\"is_recommend\":\"1\",\"is_hot\":\"1\",\"brand_name\":\"\\u827e\\u5c1a\\u81e3\",\"cat_name\":\"\\u7cbe\\u9009\\u4e0a\\u8863\",\"image_url\":\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/0b\\/b2\\/ff\\/5bc9a6de5361c.jpg\",\"product\":{\"id\":\"34\",\"goods_id\":\"7\",\"barcode\":\"\",\"sn\":\"1111\",\"price\":\"99.00\",\"mktprice\":\"99.00\",\"marketable\":\"2\",\"stock\":\"299\",\"spes_desc\":\"\\u989c\\u8272:\\u767d\\u8272,\\u89c4\\u683c:\\u89c4\\u683c1\",\"is_defalut\":\"1\",\"image_id\":\"\",\"isdel\":\"\",\"name\":\"\\u592a\\u5e73\\u9e1f\\u7537\\u88c5 \\u590f\\u5b63\\u65b0\\u54c1\\u7eaf\\u68c9T\\u6064\\u7537\\u58eb\\u9ed1\\u8272\\u77ed\\u8896\\u6f6e\\u5b57\\u6bcd\\u5370\\u82b1\\u97e9\\u7248\\u4fee\\u8eabT\\u6064\",\"bn\":\"\",\"image_path\":\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/0b\\/b2\\/ff\\/5bc9a6de5361c.jpg\",\"total_stock\":\"299\",\"grade_info\":{\"id\":\"\"},\"default_spes_desc\":{\"\\u989c\\u8272\":{\"\\u767d\\u8272\":{\"name\":\"\\u767d\\u8272\",\"is_default\":\"true\"},\"\\u9ed1\\u8272\":{\"name\":\"\\u9ed1\\u8272\",\"product_id\":\"37\"}},\"\\u89c4\\u683c\":{\"\\u89c4\\u683c1\":{\"name\":\"\\u89c4\\u683c1\",\"is_default\":\"true\"},\"\\u89c4\\u683c2\":{\"name\":\"\\u89c4\\u683c2\",\"product_id\":\"35\"},\"\\u89c4\\u683c3\":{\"name\":\"\\u89c4\\u683c3\",\"product_id\":\"36\"}}},\"amount\":\"99.00\",\"promotion_amount\":\"0\"},\"album\":[\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/0b\\/b2\\/ff\\/5bc9a6de5361c.jpg\",\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/58\\/57\\/c8\\/5bc9a6de50a60.jpg\",\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/d1\\/d7\\/cb\\/5bc9a6dee7ebb.jpg\"],\"isfav\":\"false\"},{\"id\":\"8\",\"name\":\"\\u79cb\\u88c5\\u8fde\\u8863\\u88d9\\u59732018\\u65b0\\u6b3e\\u4e03\\u5206\\u8896\\u804c\\u4e1a\\u540d\\u5a9b\\u6c14\\u8d28\\u4e2d\\u957f\\u5973\\u88c5\\u6b63\\u5f0f\\u573a\\u5408\\u88d9\\u5b50\",\"bn\":\"\",\"brief\":\"\\u7ec4\\u5408\\u5f62\\u5f0f: \\u5355\\u4ef6\\u88d9\\u957f: \\u4e2d\\u957f\\u88d9\\u6b3e\\u5f0f: \\u5176\\u4ed6\\/other\\u8896\\u957f: \\u4e03\\u5206\\u8896\\u9886\\u578b: V\\u9886\\u8896\\u578b: \\u5176\\u4ed6\\u8170\\u578b: \\u9ad8\\u8170\\u8863\\u95e8\\u895f: \\u5957\\u5934\",\"price\":\"220.00\",\"mktprice\":\"220.00\",\"image_id\":\""2020/08/20 17:39:05"75d200f105ba941d815ab5\",\"goods_cat_id\":\"4\",\"goods_type_id\":\"1\",\"brand_id\":\"1\",\"is_nomal_virtual\":\"1\",\"marketable\":\"1\",\"stock\":\"1500\",\"weight\":\"0.00\",\"unit\":\"\\u4ef6\",\"spes_desc\":{\"\\u989c\\u8272\":{\"0\":\"\\u7ea2\\u8272\",\"3\":\"\\u84dd\\u8272\"},\"\\u89c4\\u683c\":[\"\\u89c4\\u683c1\",\"\\u89c4\\u683c2\",\"\\u89c4\\u683c3\"]},\"params\":\"\",\"comments_count\":\"0\",\"view_count\":\"0\",\"buy_count\":\"0\",\"sort\":\"100\",\"is_recommend\":\"1\",\"is_hot\":\"1\",\"brand_name\":\"\\u4f9d\\u5b05\\u838e\",\"cat_name\":\"\\u6d6a\\u6f2b\\u88d9\\u88c5\",\"image_url\":\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/ce\\/ae\\/8d\\/5bc9a81609585.jpg\",\"product\":{\"id\":\"40\",\"goods_id\":\"8\",\"barcode\":\"\",\"sn\":\"21111\",\"price\":\"220.00\",\"mktprice\":\"220.00\",\"marketable\":\"2\",\"stock\":\"188\",\"spes_desc\":\"\\u989c\\u8272:\\u7ea2\\u8272,\\u89c4\\u683c:\\u89c4\\u683c1\",\"is_defalut\":\"1\",\"image_id\":\"\",\"isdel\":\"\",\"name\":\"\\u79cb\\u88c5\\u8fde\\u8863\\u88d9\\u59732018\\u65b0\\u6b3e\\u4e03\\u5206\\u8896\\u804c\\u4e1a\\u540d\\u5a9b\\u6c14\\u8d28\\u4e2d\\u957f\\u5973\\u88c5\\u6b63\\u5f0f\\u573a\\u5408\\u88d9\\u5b50\",\"bn\":\"\",\"image_path\":\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/ce\\/ae\\/8d\\/5bc9a81609585.jpg\",\"total_stock\":\"198\",\"grade_info\":{\"id\":\"\"},\"default_spes_desc\":{\"\\u989c\\u8272\":{\"\\u7ea2\\u8272\":{\"name\":\"\\u7ea2\\u8272\",\"is_default\":\"true\"},\"\\u84dd\\u8272\":{\"name\":\"\\u84dd\\u8272\",\"product_id\":\"43\"}},\"\\u89c4\\u683c\":{\"\\u89c4\\u683c1\":{\"name\":\"\\u89c4\\u683c1\",\"is_default\":\"true\"},\"\\u89c4\\u683c2\":{\"name\":\"\\u89c4\\u683c2\",\"product_id\":\"41\"},\"\\u89c4\\u683c3\":{\"name\":\"\\u89c4\\u683c3\",\"product_id\":\"42\"}}},\"amount\":\"220.00\",\"promotion_amount\":\"0\"},\"album\":[\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/ce\\/ae\\/8d\\/5bc9a81609585.jpg\",\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/e9\\/ac\\/a3\\/5bc9a8167a827.jpg\",\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/7e\\/18\\/48\\/5bc9a816ce21b.jpg\",\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/99\\/3c\\/3e\\/5bc9a817e6b9d.jpg\"],\"isfav\":\"false\"},{\"id\":\"9\",\"name\":\"2018\\u51b7\\u51ac\\u65b0\\u6b3e\\u68c9\\u8863\\u7537\\u58eb\\u52a0\\u80a5\\u52a0\\u5927\\u7801\\u4e2d\\u957f\\u6b3e\\u68c9\\u670d\\u97e9\\u7248\\u6f6e\\u6d41\\u52a0\\u539a\\u68c9\\u8884\\u5916\\u5957\",\"bn\":\"\",\"brief\":\"\\u54c1\\u724c: \\u5962\\u65fa\\u586b\\u5145\\u7269: \\u4eff\\u4e1d\\u68c9\\u8d27\\u53f7: \\u4e4b\\u6c5fA09--MY001\\u57fa\\u7840\\u98ce\\u683c: \\u9752\\u6625\\u6d41\\u884c\\u4e0a\\u5e02\\u5e74\\u4efd\\u5b63\\u8282: 2018\\u5e74\\u79cb\\u5b63\\u539a\\u8584: \\u5e38\\u89c4\\u6750\\u8d28\\u6210\\u5206: \\u805a\\u916f\\u7ea4\\u7ef4100%\",\"price\":\"300.00\",\"mktprice\":\"320.00\",\"image_id\":\"052d4af90ec88851c10982bf7fdfa763\",\"goods_cat_id\":\"3\",\"goods_type_id\":\"1\",\"brand_id\":\"0\",\"is_nomal_virtual\":\"1\",\"marketable\":\"1\",\"stock\":\"500\",\"weight\":\"0.00\",\"unit\":\"\",\"spes_desc\":\"\",\"params\":\"\",\"comments_count\":\"0\",\"view_count\":\"0\",\"buy_count\":\"0\",\"sort\":\"100\",\"is_recommend\":\"1\",\"is_hot\":\"1\",\"brand_name\":\"\",\"cat_name\":\"\\u7cbe\\u9009\\u4e0a\\u8863\",\"image_url\":\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/a4\\/cd\\/ec\\/5bc9a989cb351.jpg\",\"product\":{\"id\":\"46\",\"goods_id\":\"9\",\"barcode\":\"\",\"sn\":\"23045242\",\"price\":\"300.00\",\"mktprice\":\"320.00\",\"marketable\":\"1\",\"stock\":\"499\",\"spes_desc\":\"\",\"is_defalut\":\"1\",\"image_id\":\"\",\"isdel\":\"\",\"name\":\"2018\\u51b7\\u51ac\\u65b0\\u6b3e\\u68c9\\u8863\\u7537\\u58eb\\u52a0\\u80a5\\u52a0\\u5927\\u7801\\u4e2d\\u957f\\u6b3e\\u68c9\\u670d\\u97e9\\u7248\\u6f6e\\u6d41\\u52a0\\u539a\\u68c9\\u8884\\u5916\\u5957\",\"bn\":\"\",\"image_path\":\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/a4\\/cd\\/ec\\/5bc9a989cb351.jpg\",\"total_stock\":\"499\",\"grade_info\":{\"id\":\"\"},\"amount\":\"300.00\",\"promotion_amount\":\"0\"},\"album\":[\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/a4\\/cd\\/ec\\/5bc9a989cb351.jpg\",\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/76\\/6d\\/d5\\/5bc9a988051b3.jpg\",\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/51\\/3a\\/27\\/5bc9a98957a8c.jpg\",\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/99\\/99\\/1d\\/5bc9a98960531.jpg\"],\"isfav\":\"false\"},{\"id\":\"10\",\"name\":\"\\u886c\\u886b\\u7537\\u58eb\\u79cb\\u5b63\\u97e9\\u7248\\u4fee\\u8eab\\u6f6e\\u6d41\\u767e\\u642d\\u5e05\\u6c14\\u4f11\\u95f2\\u5916\\u5957\\u767d\\u8272\\u886c\\u8863\\u52a0\\u7ed2\\u957f\\u8896\\u5bf8\\u886b\",\"bn\":\"456546456\",\"brief\":\"\\u54c1\\u724c: \\u7b80\\u65d7\\u8d27\\u53f7: 22TC144\\u57fa\\u7840\\u98ce\\u683c: \\u9752\\u6625\\u6d41\\u884c\\u4e0a\\u5e02\\u5e74\\u4efd\\u5b63\\u8282: 2018\\u5e74\\u590f\\u5b63\\u539a\\u8584: \\u5e38\\u89c4\\u6750\\u8d28\\u6210\\u5206: \\u68c9100%\",\"price\":\"69.00\",\"mktprice\":\"69.00\",\"image_id\":\"deed2e4f1c54f87eb672ad8c444ba229\",\"goods_cat_id\":\"3\",\"goods_type_id\":\"1\",\"brand_id\":\"14\",\"is_nomal_virtual\":\"1\",\"marketable\":\"1\",\"stock\":\"1880\",\"weight\":\"0.00\",\"unit\":\"\\u4ef6\",\"spes_desc\":{\"\\u989c\\u8272\":{\"1\":\"\\u767d\\u8272\",\"3\":\"\\u84dd\\u8272\",\"6\":\"\\u68d5\\u8272\"},\"\\u89c4\\u683c\":{\"1\":\"\\u89c4\\u683c2\",\"2\":\"\\u89c4\\u683c3\"}},\"params\":\"\",\"comments_count\":\"0\",\"view_count\":\"0\",\"buy_count\":\"0\",\"sort\":\"100\",\"is_recommend\":\"1\",\"is_hot\":\"1\",\"brand_name\":\"DKCHENPIN\",\"cat_name\":\"\\u7cbe\\u9009\\u4e0a\\u8863\",\"image_url\":\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/0c\\/4b\\/01\\/5bc9ab85cc335.jpg\",\"product\":{\"id\":\"47\",\"goods_id\":\"10\",\"barcode\":\"\",\"sn\":\"61111\",\"price\":\"69.00\",\"mktprice\":\"69.00\",\"marketable\":\"2\",\"stock\":\"289\",\"spes_desc\":\"\\u989c\\u8272:\\u767d\\u8272,\\u89c4\\u683c:\\u89c4\\u683c2\",\"is_defalut\":\"1\",\"image_id\":\"\",\"isdel\":\"\",\"name\":\"\\u886c\\u886b\\u7537\\u58eb\\u79cb\\u5b63\\u97e9\\u7248\\u4fee\\u8eab\\u6f6e\\u6d41\\u767e\\u642d\\u5e05\\u6c14\\u4f11\\u95f2\\u5916\\u5957\\u767d\\u8272\\u886c\\u8863\\u52a0\\u7ed2\\u957f\\u8896\\u5bf8\\u886b\",\"bn\":\"456546456\",\"image_path\":\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/0c\\/4b\\/01\\/5bc9ab85cc335.jpg\",\"total_stock\":\"289\",\"grade_info\":{\"id\":\"\"},\"default_spes_desc\":{\"\\u989c\\u8272\":{\"\\u767d\\u8272\":{\"name\":\"\\u767d\\u8272\",\"is_default\":\"true\"},\"\\u84dd\\u8272\":{\"name\":\"\\u84dd\\u8272\",\"product_id\":\"48\"},\"\\u68d5\\u8272\":{\"name\":\"\\u68d5\\u8272\",\"product_id\":\"49\"}},\"\\u89c4\\u683c\":{\"\\u89c4\\u683c2\":{\"name\":\"\\u89c4\\u683c2\",\"is_default\":\"true\"},\"\\u89c4\\u683c3\":{\"name\":\"\\u89c4\\u683c3\",\"product_id\":\"50\"}}},\"amount\":\"69.00\",\"promotion_amount\":\"0\"},\"album\":[\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/0c\\/4b\\/01\\/5bc9ab85cc335.jpg\",\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/08\\/d0\\/3a\\/5bc9ab837a41a.jpg\",\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/46\\/4e\\/5e\\/5bc9ab85b6541.jpg\",\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/83\\/37\\/8a\\/5bc9ab85d0414.jpg\"],\"isfav\":\"false\"},{\"id\":\"11\",\"name\":\"33\",\"bn\":\"99\",\"brief\":\"999\",\"price\":\"0.00\",\"mktprice\":\"0.00\",\"image_id\":\"48d7337ff7a02c6a98e866752b1292b7\",\"goods_cat_id\":\"3\",\"goods_type_id\":\"1\",\"brand_id\":\"14\",\"is_nomal_virtual\":\"1\",\"marketable\":\"1\",\"stock\":\"0\",\"weight\":\"0.00\",\"unit\":\"\",\"spes_desc\":\"\",\"params\":\"\",\"comments_count\":\"0\",\"view_count\":\"0\",\"buy_count\":\"0\",\"sort\":\"100\",\"is_recommend\":\"2\",\"is_hot\":\"2\",\"label_ids\":\"\"}]},\"key\":\"goods_"2020/08/20 17:39:05"042_248658\"},{\"type\":\"imgSlide\",\"value\":{\"duration\":\"2500\",\"list\":[{\"image\":\"\\/static\\/images\\/empty-banner.png\",\"linkType\":\"\",\"linkValue\":\"\"},{\"image\":\"\\/static\\/images\\/empty-banner.png\",\"linkType\":\"\",\"linkValue\":\"\"}]},\"key\":\"imgSlide_"2020/08/20 17:39:05"042_605292\"},{\"type\":\"goods\",\"value\":{\"title\":\"\\u63a8\\u8350\\u5546\\u54c1\",\"lookMore\":\"true\",\"type\":\"auto\",\"classifyId\":\"\",\"brandId\":\"\",\"limit\":\"10\",\"display\":\"list\",\"column\":\"2\",\"list\":[{\"id\":\"1\",\"name\":\"DKCHENPIN2018\\u79cb\\u65b0\\u6b3e\\u5929\\u4e1d\\u4e2d\\u957f\\u6b3e\\u4fee\\u8eab\\u98ce\\u8863\\u5916\\u5957\\u5973\",\"bn\":\"118336505\",\"brief\":\"\\u53ef\\u8c03\\u8282\\u8896 \\u7cfb\\u5e26\\u6536\\u8170\\u8bbe\",\"price\":\"450.00\",\"mktprice\":\"600.00\",\"image_id\":\"b419e4164d5726d057b2ae195f9a96df\",\"goods_cat_id\":\"18\",\"goods_type_id\":\"1\",\"brand_id\":\"14\",\"is_nomal_virtual\":\"1\",\"marketable\":\"1\",\"stock\":\"2796\",\"weight\":\"400.00\",\"unit\":\"\\u4ef6\",\"spes_desc\":{\"\\u989c\\u8272\":[\"\\u7ea2\\u8272\",\"\\u767d\\u8272\",\"\\u7eff\\u8272\",\"\\u84dd\\u8272\"],\"\\u89c4\\u683c\":[\"\\u89c4\\u683c1\",\"\\u89c4\\u683c2\",\"\\u89c4\\u683c3\",\"\\u89c4\\u683c4\"]},\"params\":\"a:1:{s:6:\\\"\\u6750\\u8d28\\\";s:6:\\\"\\u5316\\u7ea4\\\";}\",\"comments_count\":\"0\",\"view_count\":\"0\",\"buy_count\":\"0\",\"sort\":\"100\",\"is_recommend\":\"1\",\"is_hot\":\"1\",\"brand_name\":\"DKCHENPIN\",\"cat_name\":\"\\u98ce\\u8863\",\"image_url\":\"http:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/b7\\/03\\/ed\\/5ba9e78922087.jpg\",\"product\":{\"id\":\"1\",\"goods_id\":\"1\",\"barcode\":\"\",\"sn\":\"P5378659179491\",\"price\":\"450.00\",\"mktprice\":\"600.00\",\"marketable\":\"1\",\"stock\":\"196\",\"spes_desc\":\"\\u989c\\u8272:\\u7ea2\\u8272,\\u89c4\\u683c:\\u89c4\\u683c1\",\"is_defalut\":\"1\",\"image_id\":\"\",\"isdel\":\"\",\"name\":\"DKCHENPIN2018\\u79cb\\u65b0\\u6b3e\\u5929\\u4e1d\\u4e2d\\u957f\\u6b3e\\u4fee\\u8eab\\u98ce\\u8863\\u5916\\u5957\\u5973\",\"bn\":\"118336505\",\"image_path\":\"http:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/b7\\/03\\/ed\\/5ba9e78922087.jpg\",\"total_stock\":\"198\",\"grade_info\":{\"id\":\"\"},\"default_spes_desc\":{\"\\u989c\\u8272\":{\"\\u7ea2\\u8272\":{\"name\":\"\\u7ea2\\u8272\",\"is_default\":\"true\"},\"\\u767d\\u8272\":{\"name\":\"\\u767d\\u8272\",\"product_id\":\"2\"},\"\\u7eff\\u8272\":{\"name\":\"\\u7eff\\u8272\",\"product_id\":\"22\"},\"\\u84dd\\u8272\":{\"name\":\"\\u84dd\\u8272\",\"product_id\":\"3\"}},\"\\u89c4\\u683c\":{\"\\u89c4\\u683c1\":{\"name\":\"\\u89c4\\u683c1\",\"is_default\":\"true\"},\"\\u89c4\\u683c2\":{\"name\":\"\\u89c4\\u683c2\",\"product_id\":\"22\"},\"\\u89c4\\u683c3\":{\"name\":\"\\u89c4\\u683c3\",\"product_id\":\"7\"},\"\\u89c4\\u683c4\":{\"name\":\"\\u89c4\\u683c4\",\"product_id\":\"11\"}}},\"amount\":\"450.00\",\"promotion_amount\":\"0\"},\"album\":[\"http:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/b7\\/03\\/ed\\/5ba9e78922087.jpg\",\"http:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/5b\\/ff\\/67\\/5ba9e78294c5a.jpg\",\"http:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/9f\\/81\\/10\\/5ba9e786c45eb.jpg\",\"http:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/df\\/6d\\/df\\/5ba9e78ac77d0.jpg\",\"http:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/e9\\/bc\\/30\\/5ba9e786e2f66.jpg\"],\"isfav\":\"false\"},{\"id\":\"2\",\"name\":\"\\u4e03\\u5339\\u72fc\\u7fbd\\u7ed2\\u670d\\u7537\\u77ed\\u6b3e2018\\u51ac\\u5b63\\u65b0\\u6b3e\\u7537\\u58eb\\u4e2d\\u5e74\\u4f11\\u95f2\\u7238\\u7238\\u88c5\\u7537\\u88c5\\u6f6e\\u6d41\\u5916\\u5957\",\"bn\":\"5446546546\",\"brief\":\"8\\u5468\\u5e74\\u5e97\\u5e86\\uff0c22\\u53f710\\u70b9\\u523011\\u70b9 \\u5168\\u573a\\u5546\\u54c13\\u4ef66\\u6298\",\"price\":\"600.00\",\"mktprice\":\"590.00\",\"image_id\":\"6ee0f5a5ac6c53418852ee6cc78aeb48\",\"goods_cat_id\":\"10\",\"goods_type_id\":\"1\",\"brand_id\":\"11\",\"is_nomal_virtual\":\"1\",\"marketable\":\"1\",\"stock\":\"679\",\"weight\":\"0.00\",\"unit\":\"\\u4ef6\",\"spes_desc\":{\"\\u989c\\u8272\":{\"1\":\"\\u767d\\u8272\",\"3\":\"\\u84dd\\u8272\",\"4\":\"\\u7d2b\\u8272\"},\"\\u89c4\\u683c\":[\"\\u89c4\\u683c1\",\"\\u89c4\\u683c2\"]},\"params\":\"\",\"comments_count\":\"0\",\"view_count\":\"0\",\"buy_count\":\"0\",\"sort\":\"100\",\"is_recommend\":\"1\",\"is_hot\":\"1\",\"brand_name\":\"\\u5343\\u4ede\\u5c97\",\"cat_name\":\"\\u6bdb\\u5462\\u5916\\u5957\",\"image_url\":\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/8c\\/f8\\/53\\/5bc9a3b2916a4.jpg\",\"product\":{\"id\":\"23\",\"goods_id\":\"2\",\"barcode\":\"\",\"sn\":\"-1\",\"price\":\"600.00\",\"mktprice\":\"590.00\",\"marketable\":\"1\",\"stock\":\"98\",\"spes_desc\":\"\\u989c\\u8272:\\u767d\\u8272,\\u89c4\\u683c:\\u89c4\\u683c1\",\"is_defalut\":\"1\",\"image_id\":\"\",\"isdel\":\"\",\"name\":\"\\u4e03\\u5339\\u72fc\\u7fbd\\u7ed2\\u670d\\u7537\\u77ed\\u6b3e2018\\u51ac\\u5b63\\u65b0\\u6b3e\\u7537\\u58eb\\u4e2d\\u5e74\\u4f11\\u95f2\\u7238\\u7238\\u88c5\\u7537\\u88c5\\u6f6e\\u6d41\\u5916\\u5957\",\"bn\":\"5446546546\",\"image_path\":\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/8c\\/f8\\/53\\/5bc9a3b2916a4.jpg\",\"total_stock\":\"98\",\"grade_info\":{\"id\":\"\"},\"default_spes_desc\":{\"\\u989c\\u8272\":{\"\\u767d\\u8272\":{\"name\":\"\\u767d\\u8272\",\"is_default\":\"true\"},\"\\u84dd\\u8272\":{\"name\":\"\\u84dd\\u8272\",\"product_id\":\"24\"},\"\\u7d2b\\u8272\":{\"name\":\"\\u7d2b\\u8272\",\"product_id\":\"25\"}},\"\\u89c4\\u683c\":{\"\\u89c4\\u683c1\":{\"name\":\"\\u89c4\\u683c1\",\"is_default\":\"true\"},\"\\u89c4\\u683c2\":{\"name\":\"\\u89c4\\u683c2\",\"product_id\":\"26\"}}},\"amount\":\"600.00\",\"promotion_amount\":\"0\"},\"album\":[\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/8c\\/f8\\/53\\/5bc9a3b2916a4.jpg\"],\"isfav\":\"false\"},{\"id\":\"4\",\"name\":\"\\u8299\\u5a1c\\u59ae2018\\u79cb\\u51ac\\u540a\\u5e26\\u8fde\\u8863\\u88d9\\u5973\\u4e24\\u4ef6\\u5957\\u6761\\u7eb9\\u9488\\u7ec7\\u6253\\u5e95\\u886b\\u80cc\\u5e26PU\\u76ae\\u88d9\\u5957\\u88c5\",\"bn\":\"78678657865\",\"brief\":\"\\u54c1\\u724c: \\u8299\\u5a1c\\u59ae\\u9002\\u7528\\u5e74\\u9f84: 25-29\\u5468\\u5c81\\u5c3a\\u7801: S M L XL\\u56fe\\u6848: \\u6761\\u7eb9\\u98ce\\u683c: \\u8857\\u5934\\u8857\\u5934: \\u6b27\\u7f8e\\u9886\\u578b: \\u5706\\u9886\\u8170\\u578b: \\u4e2d\\u8170\\u8863\\u95e8\\u895f: \\u5957\\u5934\\u989c\\u8272\\u5206\\u7c7b: \\u7ea2\\u8272\\u8896\\u578b: \\u5176\\u4ed6\\u7ec4\\u5408\\u5f62\\u5f0f: \\u4e24\\u4ef6\\u5957\",\"price\":\"200.00\",\"mktprice\":\"200.00\",\"image_id\":\"fce63f9c69c6c4ec606b544fcc7610a2\",\"goods_cat_id\":\"4\",\"goods_type_id\":\"1\",\"brand_id\":\"15\",\"is_nomal_virtual\":\"1\",\"marketable\":\"1\",\"stock\":\"560\",\"weight\":\"0.00\",\"unit\":\"\\u4ef6\",\"spes_desc\":{\"\\u989c\\u8272\":[\"\\u7ea2\\u8272\",\"\\u767d\\u8272\"],\"\\u89c4\\u683c\":[\"\\u89c4\\u683c1\",\"\\u89c4\\u683c2\"]},\"params\":\"\",\"comments_count\":\"0\",\"view_count\":\"0\",\"buy_count\":\"0\",\"sort\":\"100\",\"is_recommend\":\"1\",\"is_hot\":\"1\",\"brand_name\":\"\\u8587\\u5494\\u62c9\",\"cat_name\":\"\\u6d6a\\u6f2b\\u88d9\\u88c5\",\"image_url\":\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/dd\\/bd\\/35\\/5bc9a50154075.jpg\",\"product\":{\"id\":\"29\",\"goods_id\":\"4\",\"barcode\":\"\",\"sn\":\"51111\",\"price\":\"200.00\",\"mktprice\":\"200.00\",\"marketable\":\"2\",\"stock\":\"98\",\"spes_desc\":\"\\u989c\\u8272:\\u7ea2\\u8272,\\u89c4\\u683c:\\u89c4\\u683c1\",\"is_defalut\":\"1\",\"image_id\":\"\",\"isdel\":\"\",\"name\":\"\\u8299\\u5a1c\\u59ae2018\\u79cb\\u51ac\\u540a\\u5e26\\u8fde\\u8863\\u88d9\\u5973\\u4e24\\u4ef6\\u5957\\u6761\\u7eb9\\u9488\\u7ec7\\u6253\\u5e95\\u886b\\u80cc\\u5e26PU\\u76ae\\u88d9\\u5957\\u88c5\",\"bn\":\"78678657865\",\"image_path\":\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/dd\\/bd\\/35\\/5bc9a50154075.jpg\",\"total_stock\":\"98\",\"grade_info\":{\"id\":\"\"},\"default_spes_desc\":{\"\\u989c\\u8272\":{\"\\u7ea2\\u8272\":{\"name\":\"\\u7ea2\\u8272\",\"is_default\":\"true\"},\"\\u767d\\u8272\":{\"name\":\"\\u767d\\u8272\",\"product_id\":\"30\"}},\"\\u89c4\\u683c\":{\"\\u89c4\\u683c1\":{\"name\":\"\\u89c4\\u683c1\",\"is_default\":\"true\"},\"\\u89c4\\u683c2\":{\"name\":\"\\u89c4\\u683c2\",\"product_id\":\"31\"}}},\"amount\":\"200.00\",\"promotion_amount\":\"0\"},\"album\":[\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/dd\\/bd\\/35\\/5bc9a50154075.jpg\",\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/b3\\/16\\/38\\/5bc9a50662303.jpg\",\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/2e\\/1b\\/3b\\/5bc9a50900998.jpg\"],\"isfav\":\"false\"},{\"id\":\"5\",\"name\":\"\\u6b63\\u54c1\\u4ee3\\u8d2dPINKO\\u5973\\u53052018\\u65b0\\u6b3e\\u71d5\\u5b50\\u5305\\u5355\\u80a9\\u659c\\u630e\\u538b\\u82b1\\u5fbd\\u7ae0\\u5c0f\\u9999\\u98ce\\u94fe\\u6761\\u5305\",\"bn\":\"5465\",\"brief\":\"PINKO\\u8d28\\u5730: \\u725b\\u76ae\\u76ae\\u9769\\u6750\\u8d28: \\u5934\\u5c42\\u725b\\u76ae\\u98ce\\u683c: \\u6b27\\u7f8e\\u65f6\\u5c1a\\u6210\\u8272: \\u5168\\u65b0\\u989c\\u8272\\u5206\\u7c7b: \\u70ed\\u5e26\\u96e8\\u6797 \\u9ed1\\u8272\\u52cb\\u7ae0 \\u767d\\u8272\\u52cb\\u7ae0 \\u7f16\\u7ec7\\u5c0f\\u9999\\u98ce \\u9ed1\\u8272\\u538b\\u82b1 \\u7ea2\\u8272\\u538b\\u82b1 \\u9ed1\\u8272\\u9576\\u94bb\\u773c \\u9ed1\\u8272\\u5355\\u6392 \\u7ea2\\u8272\\u5355\\u6392 \\u767d\\u8272\\u6d82\\u9e26 \\u9ed1\\u8272\\u6d82\\u9e26 \\u7c89\\u9ed1\\u6d82\\u9e26 \\u9ec4\\u9ed1\\u6d82\\u9e26 \\u9ed1\\u8272\\u5b57\\u6bcd\\u53ef\\u4e50 \\u767d\\u8272\\u5b57\\u6bcd\\u9cc4\\u9c7c\\u7eb9 \\u7ea2\\u8272\\u5b57\\u6bcd \\u9ed1\\u8272\\u67aa\\u6392 \\u7ea2\\u8272love \\u767d\\u8272\\u73cd\\u73e0 \\u9ed1\\u8272\\u73cd\\u73e0 \\u9ed1\\u8272\\u9576\\u94bb\\u53cc\\u6392 \\u7c89\\u8272\\u9576\\u94bb\\u53cc\\u6392 \\u5176\\u4ed6\\u989c\\u8272\\u62cd\\u4e0b\\u5907\\u6ce8\\u989c\\u8272\\u6709\\u65e0\\u5939\\u5c42: \\u6709\\u80cc\\u5305\\u65b9\\u5f0f: \\u5355\\u80a9\\u659c\\u630e\\u624b\\u63d0\\u9002\\u7528\\u573a\\u666f: \\u4f11\\u95f2\",\"price\":\"200.00\",\"mktprice\":\"190.00\",\"image_id\":\"3e1c30dd1125de24e5395d3cd39ef5d8\",\"goods_cat_id\":\"9\",\"goods_type_id\":\"1\",\"brand_id\":\"0\",\"is_nomal_virtual\":\"1\",\"marketable\":\"1\",\"stock\":\"200\",\"weight\":\"0.00\",\"unit\":\"\\u4ef6\",\"spes_desc\":\"\",\"params\":\"\",\"comments_count\":\"0\",\"view_count\":\"0\",\"buy_count\":\"0\",\"sort\":\"100\",\"is_recommend\":\"1\",\"is_hot\":\"1\",\"brand_name\":\"\",\"cat_name\":\"\\u5973\\u5305\",\"image_url\":\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/af\\/00\\/b7\\/5bc9a5b89bd9a.jpg\",\"product\":{\"id\":\"33\",\"goods_id\":\"5\",\"barcode\":\"\",\"sn\":\"564456\",\"price\":\"200.00\",\"mktprice\":\"190.00\",\"marketable\":\"1\",\"stock\":\"200\",\"spes_desc\":\"\",\"is_defalut\":\"1\",\"image_id\":\"\",\"isdel\":\"\",\"name\":\"\\u6b63\\u54c1\\u4ee3\\u8d2dPINKO\\u5973\\u53052018\\u65b0\\u6b3e\\u71d5\\u5b50\\u5305\\u5355\\u80a9\\u659c\\u630e\\u538b\\u82b1\\u5fbd\\u7ae0\\u5c0f\\u9999\\u98ce\\u94fe\\u6761\\u5305\",\"bn\":\"5465\",\"image_path\":\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/af\\/00\\/b7\\/5bc9a5b89bd9a.jpg\",\"total_stock\":\"200\",\"grade_info\":{\"id\":\"\"},\"amount\":\"200.00\",\"promotion_amount\":\"0\"},\"album\":[\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/af\\/00\\/b7\\/5bc9a5b89bd9a.jpg\",\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/b7\\/9f\\/72\\/5bc9a5c440801.jpg\",\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/4c\\/28\\/57\\/5bc9a5c53aa6e.jpg\",\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/76\\/7e\\/81\\/5bc9a5c7bbc8e.jpg\"],\"isfav\":\"false\"},{\"id\":\"7\",\"name\":\"\\u592a\\u5e73\\u9e1f\\u7537\\u88c5 \\u590f\\u5b63\\u65b0\\u54c1\\u7eaf\\u68c9T\\u6064\\u7537\\u58eb\\u9ed1\\u8272\\u77ed\\u8896\\u6f6e\\u5b57\\u6bcd\\u5370\\u82b1\\u97e9\\u7248\\u4fee\\u8eabT\\u6064\",\"bn\":\"\",\"brief\":\"\\u54c1\\u724c: PEACEBIRD\\/\\u592a\\u5e73\\u9e1f\\u8d27\\u53f7: BWDA82170\\u4e0a\\u5e02\\u5e74\\u4efd\\u5b63\\u8282: 2018\\u5e74\\u590f\\u5b63\\u9500\\u552e\\u6e20\\u9053\\u7c7b\\u578b: \\u7eaf\\u7535\\u5546(\\u53ea\\u5728\\u7ebf\\u4e0a\\u9500\\u552e)\\u539a\\u8584: \\u5e38\\u89c4\\u9762\\u6599\\u5206\\u7c7b: \\u68c9\\u6bdb\\u5e03\",\"price\":\"99.00\",\"mktprice\":\"99.00\",\"image_id\":\"4f86bd749dddd098403fc44a1e473643\",\"goods_cat_id\":\"3\",\"goods_type_id\":\"1\",\"brand_id\":\"12\",\"is_nomal_virtual\":\"1\",\"marketable\":\"1\",\"stock\":\"1741\",\"weight\":\"0.00\",\"unit\":\"\",\"spes_desc\":{\"\\u989c\\u8272\":{\"1\":\"\\u767d\\u8272\",\"5\":\"\\u9ed1\\u8272\"},\"\\u89c4\\u683c\":[\"\\u89c4\\u683c1\",\"\\u89c4\\u683c2\",\"\\u89c4\\u683c3\"]},\"params\":\"\",\"comments_count\":\"0\",\"view_count\":\"0\",\"buy_count\":\"0\",\"sort\":\"100\",\"is_recommend\":\"1\",\"is_hot\":\"1\",\"brand_name\":\"\\u827e\\u5c1a\\u81e3\",\"cat_name\":\"\\u7cbe\\u9009\\u4e0a\\u8863\",\"image_url\":\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/0b\\/b2\\/ff\\/5bc9a6de5361c.jpg\",\"product\":{\"id\":\"34\",\"goods_id\":\"7\",\"barcode\":\"\",\"sn\":\"1111\",\"price\":\"99.00\",\"mktprice\":\"99.00\",\"marketable\":\"2\",\"stock\":\"299\",\"spes_desc\":\"\\u989c\\u8272:\\u767d\\u8272,\\u89c4\\u683c:\\u89c4\\u683c1\",\"is_defalut\":\"1\",\"image_id\":\"\",\"isdel\":\"\",\"name\":\"\\u592a\\u5e73\\u9e1f\\u7537\\u88c5 \\u590f\\u5b63\\u65b0\\u54c1\\u7eaf\\u68c9T\\u6064\\u7537\\u58eb\\u9ed1\\u8272\\u77ed\\u8896\\u6f6e\\u5b57\\u6bcd\\u5370\\u82b1\\u97e9\\u7248\\u4fee\\u8eabT\\u6064\",\"bn\":\"\",\"image_path\":\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/0b\\/b2\\/ff\\/5bc9a6de5361c.jpg\",\"total_stock\":\"299\",\"grade_info\":{\"id\":\"\"},\"default_spes_desc\":{\"\\u989c\\u8272\":{\"\\u767d\\u8272\":{\"name\":\"\\u767d\\u8272\",\"is_default\":\"true\"},\"\\u9ed1\\u8272\":{\"name\":\"\\u9ed1\\u8272\",\"product_id\":\"37\"}},\"\\u89c4\\u683c\":{\"\\u89c4\\u683c1\":{\"name\":\"\\u89c4\\u683c1\",\"is_default\":\"true\"},\"\\u89c4\\u683c2\":{\"name\":\"\\u89c4\\u683c2\",\"product_id\":\"35\"},\"\\u89c4\\u683c3\":{\"name\":\"\\u89c4\\u683c3\",\"product_id\":\"36\"}}},\"amount\":\"99.00\",\"promotion_amount\":\"0\"},\"album\":[\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/0b\\/b2\\/ff\\/5bc9a6de5361c.jpg\",\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/58\\/57\\/c8\\/5bc9a6de50a60.jpg\",\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/d1\\/d7\\/cb\\/5bc9a6dee7ebb.jpg\"],\"isfav\":\"false\"},{\"id\":\"8\",\"name\":\"\\u79cb\\u88c5\\u8fde\\u8863\\u88d9\\u59732018\\u65b0\\u6b3e\\u4e03\\u5206\\u8896\\u804c\\u4e1a\\u540d\\u5a9b\\u6c14\\u8d28\\u4e2d\\u957f\\u5973\\u88c5\\u6b63\\u5f0f\\u573a\\u5408\\u88d9\\u5b50\",\"bn\":\"\",\"brief\":\"\\u7ec4\\u5408\\u5f62\\u5f0f: \\u5355\\u4ef6\\u88d9\\u957f: \\u4e2d\\u957f\\u88d9\\u6b3e\\u5f0f: \\u5176\\u4ed6\\/other\\u8896\\u957f: \\u4e03\\u5206\\u8896\\u9886\\u578b: V\\u9886\\u8896\\u578b: \\u5176\\u4ed6\\u8170\\u578b: \\u9ad8\\u8170\\u8863\\u95e8\\u895f: \\u5957\\u5934\",\"price\":\"220.00\",\"mktprice\":\"220.00\",\"image_id\":\""2020/08/20 17:39:05"75d200f105ba941d815ab5\",\"goods_cat_id\":\"4\",\"goods_type_id\":\"1\",\"brand_id\":\"1\",\"is_nomal_virtual\":\"1\",\"marketable\":\"1\",\"stock\":\"1500\",\"weight\":\"0.00\",\"unit\":\"\\u4ef6\",\"spes_desc\":{\"\\u989c\\u8272\":{\"0\":\"\\u7ea2\\u8272\",\"3\":\"\\u84dd\\u8272\"},\"\\u89c4\\u683c\":[\"\\u89c4\\u683c1\",\"\\u89c4\\u683c2\",\"\\u89c4\\u683c3\"]},\"params\":\"\",\"comments_count\":\"0\",\"view_count\":\"0\",\"buy_count\":\"0\",\"sort\":\"100\",\"is_recommend\":\"1\",\"is_hot\":\"1\",\"brand_name\":\"\\u4f9d\\u5b05\\u838e\",\"cat_name\":\"\\u6d6a\\u6f2b\\u88d9\\u88c5\",\"image_url\":\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/ce\\/ae\\/8d\\/5bc9a81609585.jpg\",\"product\":{\"id\":\"40\",\"goods_id\":\"8\",\"barcode\":\"\",\"sn\":\"21111\",\"price\":\"220.00\",\"mktprice\":\"220.00\",\"marketable\":\"2\",\"stock\":\"188\",\"spes_desc\":\"\\u989c\\u8272:\\u7ea2\\u8272,\\u89c4\\u683c:\\u89c4\\u683c1\",\"is_defalut\":\"1\",\"image_id\":\"\",\"isdel\":\"\",\"name\":\"\\u79cb\\u88c5\\u8fde\\u8863\\u88d9\\u59732018\\u65b0\\u6b3e\\u4e03\\u5206\\u8896\\u804c\\u4e1a\\u540d\\u5a9b\\u6c14\\u8d28\\u4e2d\\u957f\\u5973\\u88c5\\u6b63\\u5f0f\\u573a\\u5408\\u88d9\\u5b50\",\"bn\":\"\",\"image_path\":\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/ce\\/ae\\/8d\\/5bc9a81609585.jpg\",\"total_stock\":\"198\",\"grade_info\":{\"id\":\"\"},\"default_spes_desc\":{\"\\u989c\\u8272\":{\"\\u7ea2\\u8272\":{\"name\":\"\\u7ea2\\u8272\",\"is_default\":\"true\"},\"\\u84dd\\u8272\":{\"name\":\"\\u84dd\\u8272\",\"product_id\":\"43\"}},\"\\u89c4\\u683c\":{\"\\u89c4\\u683c1\":{\"name\":\"\\u89c4\\u683c1\",\"is_default\":\"true\"},\"\\u89c4\\u683c2\":{\"name\":\"\\u89c4\\u683c2\",\"product_id\":\"41\"},\"\\u89c4\\u683c3\":{\"name\":\"\\u89c4\\u683c3\",\"product_id\":\"42\"}}},\"amount\":\"220.00\",\"promotion_amount\":\"0\"},\"album\":[\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/ce\\/ae\\/8d\\/5bc9a81609585.jpg\",\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/e9\\/ac\\/a3\\/5bc9a8167a827.jpg\",\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/7e\\/18\\/48\\/5bc9a816ce21b.jpg\",\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/99\\/3c\\/3e\\/5bc9a817e6b9d.jpg\"],\"isfav\":\"false\"},{\"id\":\"9\",\"name\":\"2018\\u51b7\\u51ac\\u65b0\\u6b3e\\u68c9\\u8863\\u7537\\u58eb\\u52a0\\u80a5\\u52a0\\u5927\\u7801\\u4e2d\\u957f\\u6b3e\\u68c9\\u670d\\u97e9\\u7248\\u6f6e\\u6d41\\u52a0\\u539a\\u68c9\\u8884\\u5916\\u5957\",\"bn\":\"\",\"brief\":\"\\u54c1\\u724c: \\u5962\\u65fa\\u586b\\u5145\\u7269: \\u4eff\\u4e1d\\u68c9\\u8d27\\u53f7: \\u4e4b\\u6c5fA09--MY001\\u57fa\\u7840\\u98ce\\u683c: \\u9752\\u6625\\u6d41\\u884c\\u4e0a\\u5e02\\u5e74\\u4efd\\u5b63\\u8282: 2018\\u5e74\\u79cb\\u5b63\\u539a\\u8584: \\u5e38\\u89c4\\u6750\\u8d28\\u6210\\u5206: \\u805a\\u916f\\u7ea4\\u7ef4100%\",\"price\":\"300.00\",\"mktprice\":\"320.00\",\"image_id\":\"052d4af90ec88851c10982bf7fdfa763\",\"goods_cat_id\":\"3\",\"goods_type_id\":\"1\",\"brand_id\":\"0\",\"is_nomal_virtual\":\"1\",\"marketable\":\"1\",\"stock\":\"500\",\"weight\":\"0.00\",\"unit\":\"\",\"spes_desc\":\"\",\"params\":\"\",\"comments_count\":\"0\",\"view_count\":\"0\",\"buy_count\":\"0\",\"sort\":\"100\",\"is_recommend\":\"1\",\"is_hot\":\"1\",\"brand_name\":\"\",\"cat_name\":\"\\u7cbe\\u9009\\u4e0a\\u8863\",\"image_url\":\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/a4\\/cd\\/ec\\/5bc9a989cb351.jpg\",\"product\":{\"id\":\"46\",\"goods_id\":\"9\",\"barcode\":\"\",\"sn\":\"23045242\",\"price\":\"300.00\",\"mktprice\":\"320.00\",\"marketable\":\"1\",\"stock\":\"499\",\"spes_desc\":\"\",\"is_defalut\":\"1\",\"image_id\":\"\",\"isdel\":\"\",\"name\":\"2018\\u51b7\\u51ac\\u65b0\\u6b3e\\u68c9\\u8863\\u7537\\u58eb\\u52a0\\u80a5\\u52a0\\u5927\\u7801\\u4e2d\\u957f\\u6b3e\\u68c9\\u670d\\u97e9\\u7248\\u6f6e\\u6d41\\u52a0\\u539a\\u68c9\\u8884\\u5916\\u5957\",\"bn\":\"\",\"image_path\":\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/a4\\/cd\\/ec\\/5bc9a989cb351.jpg\",\"total_stock\":\"499\",\"grade_info\":{\"id\":\"\"},\"amount\":\"300.00\",\"promotion_amount\":\"0\"},\"album\":[\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/a4\\/cd\\/ec\\/5bc9a989cb351.jpg\",\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/76\\/6d\\/d5\\/5bc9a988051b3.jpg\",\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/51\\/3a\\/27\\/5bc9a98957a8c.jpg\",\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/99\\/99\\/1d\\/5bc9a98960531.jpg\"],\"isfav\":\"false\"},{\"id\":\"10\",\"name\":\"\\u886c\\u886b\\u7537\\u58eb\\u79cb\\u5b63\\u97e9\\u7248\\u4fee\\u8eab\\u6f6e\\u6d41\\u767e\\u642d\\u5e05\\u6c14\\u4f11\\u95f2\\u5916\\u5957\\u767d\\u8272\\u886c\\u8863\\u52a0\\u7ed2\\u957f\\u8896\\u5bf8\\u886b\",\"bn\":\"456546456\",\"brief\":\"\\u54c1\\u724c: \\u7b80\\u65d7\\u8d27\\u53f7: 22TC144\\u57fa\\u7840\\u98ce\\u683c: \\u9752\\u6625\\u6d41\\u884c\\u4e0a\\u5e02\\u5e74\\u4efd\\u5b63\\u8282: 2018\\u5e74\\u590f\\u5b63\\u539a\\u8584: \\u5e38\\u89c4\\u6750\\u8d28\\u6210\\u5206: \\u68c9100%\",\"price\":\"69.00\",\"mktprice\":\"69.00\",\"image_id\":\"deed2e4f1c54f87eb672ad8c444ba229\",\"goods_cat_id\":\"3\",\"goods_type_id\":\"1\",\"brand_id\":\"14\",\"is_nomal_virtual\":\"1\",\"marketable\":\"1\",\"stock\":\"1880\",\"weight\":\"0.00\",\"unit\":\"\\u4ef6\",\"spes_desc\":{\"\\u989c\\u8272\":{\"1\":\"\\u767d\\u8272\",\"3\":\"\\u84dd\\u8272\",\"6\":\"\\u68d5\\u8272\"},\"\\u89c4\\u683c\":{\"1\":\"\\u89c4\\u683c2\",\"2\":\"\\u89c4\\u683c3\"}},\"params\":\"\",\"comments_count\":\"0\",\"view_count\":\"0\",\"buy_count\":\"0\",\"sort\":\"100\",\"is_recommend\":\"1\",\"is_hot\":\"1\",\"brand_name\":\"DKCHENPIN\",\"cat_name\":\"\\u7cbe\\u9009\\u4e0a\\u8863\",\"image_url\":\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/0c\\/4b\\/01\\/5bc9ab85cc335.jpg\",\"product\":{\"id\":\"47\",\"goods_id\":\"10\",\"barcode\":\"\",\"sn\":\"61111\",\"price\":\"69.00\",\"mktprice\":\"69.00\",\"marketable\":\"2\",\"stock\":\"289\",\"spes_desc\":\"\\u989c\\u8272:\\u767d\\u8272,\\u89c4\\u683c:\\u89c4\\u683c2\",\"is_defalut\":\"1\",\"image_id\":\"\",\"isdel\":\"\",\"name\":\"\\u886c\\u886b\\u7537\\u58eb\\u79cb\\u5b63\\u97e9\\u7248\\u4fee\\u8eab\\u6f6e\\u6d41\\u767e\\u642d\\u5e05\\u6c14\\u4f11\\u95f2\\u5916\\u5957\\u767d\\u8272\\u886c\\u8863\\u52a0\\u7ed2\\u957f\\u8896\\u5bf8\\u886b\",\"bn\":\"456546456\",\"image_path\":\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/0c\\/4b\\/01\\/5bc9ab85cc335.jpg\",\"total_stock\":\"289\",\"grade_info\":{\"id\":\"\"},\"default_spes_desc\":{\"\\u989c\\u8272\":{\"\\u767d\\u8272\":{\"name\":\"\\u767d\\u8272\",\"is_default\":\"true\"},\"\\u84dd\\u8272\":{\"name\":\"\\u84dd\\u8272\",\"product_id\":\"48\"},\"\\u68d5\\u8272\":{\"name\":\"\\u68d5\\u8272\",\"product_id\":\"49\"}},\"\\u89c4\\u683c\":{\"\\u89c4\\u683c2\":{\"name\":\"\\u89c4\\u683c2\",\"is_default\":\"true\"},\"\\u89c4\\u683c3\":{\"name\":\"\\u89c4\\u683c3\",\"product_id\":\"50\"}}},\"amount\":\"69.00\",\"promotion_amount\":\"0\"},\"album\":[\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/0c\\/4b\\/01\\/5bc9ab85cc335.jpg\",\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/08\\/d0\\/3a\\/5bc9ab837a41a.jpg\",\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/46\\/4e\\/5e\\/5bc9ab85b6541.jpg\",\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/83\\/37\\/8a\\/5bc9ab85d0414.jpg\"],\"isfav\":\"false\"},{\"id\":\"11\",\"name\":\"33\",\"bn\":\"99\",\"brief\":\"999\",\"price\":\"0.00\",\"mktprice\":\"0.00\",\"image_id\":\"48d7337ff7a02c6a98e866752b1292b7\",\"goods_cat_id\":\"3\",\"goods_type_id\":\"1\",\"brand_id\":\"14\",\"is_nomal_virtual\":\"1\",\"marketable\":\"1\",\"stock\":\"0\",\"weight\":\"0.00\",\"unit\":\"\",\"spes_desc\":\"\",\"params\":\"\",\"comments_count\":\"0\",\"view_count\":\"0\",\"buy_count\":\"0\",\"sort\":\"100\",\"is_recommend\":\"2\",\"is_hot\":\"2\",\"label_ids\":\"\"}]},\"key\":\"goods_"2020/08/20 17:39:05"042_710742\"},{\"type\":\"imgSingle\",\"value\":{\"list\":[{\"image\":\"\\/static\\/images\\/empty-banner.png\",\"linkType\":\"\",\"linkValue\":\"\"}]},\"key\":\"imgSingle_"2020/08/20 17:39:05"042_324571\"}],\"pageCode\":\"mobile_home\"}', '127.0.0.1', "2020/08/20 17:39:05");
INSERT INTO `operation_log` VALUES (10027, 13, 'messagecenter', 'edit', '消息编辑', '{\"code\":\"seller_order_notice\",\"message\":\"1\"}', '127.0.0.1', "2020/08/20 17:39:05");
INSERT INTO `operation_log` VALUES (10028, 13, 'messagecenter', 'edit', '消息编辑', '{\"code\":\"seller_order_notice\",\"message\":\"2\"}', '127.0.0.1', "2020/08/20 17:39:05");
INSERT INTO `operation_log` VALUES (10029, 13, 'messagecenter', 'edit', '消息编辑', '{\"code\":\"refund_success\",\"sms\":\"1\"}', '127.0.0.1', "2020/08/20 17:39:05");
INSERT INTO `operation_log` VALUES (10030, 13, 'messagecenter', 'edit', '消息编辑', '{\"code\":\"refund_success\",\"sms\":\"2\"}', '127.0.0.1', "2020/08/20 17:39:05");
INSERT INTO `operation_log` VALUES (10031, 13, 'messagecenter', 'edit', '消息编辑', '{\"code\":\"aftersales_pass\",\"sms\":\"1\"}', '127.0.0.1', "2020/08/20 17:39:05");
INSERT INTO `operation_log` VALUES (10032, 13, 'messagecenter', 'edit', '消息编辑', '{\"code\":\"aftersales_pass\",\"sms\":\"2\"}', '127.0.0.1', "2020/08/20 17:39:05");
INSERT INTO `operation_log` VALUES (10033, 13, 'messagecenter', 'edit', '消息编辑', '{\"code\":\"aftersales_pass\",\"sms\":\"1\"}', '127.0.0.1', "2020/08/20 17:39:05");
INSERT INTO `operation_log` VALUES (10034, 13, 'messagecenter', 'edit', '消息编辑', '{\"code\":\"aftersales_pass\",\"sms\":\"2\"}', '127.0.0.1', "2020/08/20 17:39:05");
INSERT INTO `operation_log` VALUES (10035, 13, 'messagecenter', 'edit', '消息编辑', '{\"code\":\"aftersales_pass\",\"sms\":\"1\"}', '127.0.0.1', "2020/08/20 17:39:05");
INSERT INTO `operation_log` VALUES (10036, 13, 'messagecenter', 'edit', '消息编辑', '{\"code\":\"aftersales_pass\",\"sms\":\"2\"}', '127.0.0.1', "2020/08/20 17:39:05");
INSERT INTO `operation_log` VALUES (10037, 13, 'messagecenter', 'edit', '消息编辑', '{\"code\":\"aftersales_pass\",\"sms\":\"1\"}', '127.0.0.1', "2020/08/20 17:39:05");
INSERT INTO `operation_log` VALUES (10038, 13, 'messagecenter', 'edit', '消息编辑', '{\"code\":\"create_order\",\"sms\":\"1\"}', '127.0.0.1', "2020/08/20 17:39:05");
INSERT INTO `operation_log` VALUES (10039, 13, 'messagecenter', 'edit', '消息编辑', '{\"code\":\"create_order\",\"sms\":\"2\"}', '127.0.0.1', "2020/08/20 17:39:05");
INSERT INTO `operation_log` VALUES (10040, 13, 'messagecenter', 'edit', '消息编辑', '{\"code\":\"order_payed\",\"sms\":\"1\"}', '127.0.0.1', "2020/08/20 17:39:05");
INSERT INTO `operation_log` VALUES (10041, 13, 'messagecenter', 'edit', '消息编辑', '{\"code\":\"create_order\",\"sms\":\"1\"}', '127.0.0.1', "2020/08/20 17:39:05");
INSERT INTO `operation_log` VALUES (10042, 13, 'messagecenter', 'edit', '消息编辑', '{\"code\":\"create_order\",\"sms\":\"2\"}', '127.0.0.1', "2020/08/20 17:39:05");
INSERT INTO `operation_log` VALUES (10043, 13, 'messagecenter', 'edit', '消息编辑', '{\"code\":\"create_order\",\"sms\":\"1\"}', '127.0.0.1', "2020/08/20 17:39:05");
INSERT INTO `operation_log` VALUES (10044, 13, 'messagecenter', 'edit', '消息编辑', '{\"code\":\"create_order\",\"wx_tpl_message\":\"1\"}', '127.0.0.1', "2020/08/20 17:39:05");
INSERT INTO `operation_log` VALUES (10045, 13, 'messagecenter', 'edit', '消息编辑', '{\"code\":\"create_order\",\"wx_tpl_message\":\"2\"}', '127.0.0.1', "2020/08/20 17:39:05");
INSERT INTO `operation_log` VALUES (10046, 13, 'messagecenter', 'edit', '消息编辑', '{\"code\":\"create_order\",\"message\":\"2\"}', '127.0.0.1', "2020/08/20 17:39:05");
INSERT INTO `operation_log` VALUES (10047, 13, 'messagecenter', 'edit', '消息编辑', '{\"code\":\"create_order\",\"sms\":\"2\"}', '127.0.0.1', "2020/08/20 17:39:05");
INSERT INTO `operation_log` VALUES (10048, 13, 'addons', 'install', '安装插件：Distribution', '{\"name\":\"Distribution\"}', '127.0.0.1', "2020/08/20 17:39:05");
INSERT INTO `operation_log` VALUES (10049, 13, 'addons', 'install', '安装插件：Distribution', '{\"name\":\"Distribution\"}', '127.0.0.1', "2020/08/20 17:39:05");
INSERT INTO `operation_log` VALUES (10050, 13, 'area', 'index', '地区管理', '{\"type\":\"province\",\"id\":\"0\"}', '127.0.0.1', "2020/08/20 17:39:05");
INSERT INTO `operation_log` VALUES (10051, 13, 'area', 'index', '地区管理：230000', '{\"type\":\"city\",\"id\":\"230000\"}', '127.0.0.1', "2020/08/20 17:39:05");
INSERT INTO `operation_log` VALUES (10052, 13, 'area', 'index', '地区管理：230300', '{\"type\":\"area\",\"id\":\"230300\"}', '127.0.0.1', "2020/08/20 17:39:05");
INSERT INTO `operation_log` VALUES (10053, 13, 'area', 'index', '地区管理：230302', '{\"type\":\"four\",\"id\":\"230302\"}', '127.0.0.1', "2020/08/20 17:39:05");
INSERT INTO `operation_log` VALUES (10054, 13, 'area', 'index', '地区管理', '{\"type\":\"province\",\"id\":\"0\"}', '127.0.0.1', "2020/08/20 17:39:05");
INSERT INTO `operation_log` VALUES (10055, 13, 'area', 'index', '地区管理：130000', '{\"type\":\"city\",\"id\":\"130000\"}', '127.0.0.1', "2020/08/20 17:39:05");
INSERT INTO `operation_log` VALUES (10056, 13, 'area', 'index', '地区管理：130100', '{\"type\":\"area\",\"id\":\"130100\"}', '127.0.0.1', "2020/08/20 17:39:05");
INSERT INTO `operation_log` VALUES (10057, 13, 'area', 'index', '地区管理', '{\"type\":\"province\",\"id\":\"0\"}', '127.0.0.1', "2020/08/20 17:39:05");
INSERT INTO `operation_log` VALUES (10058, 13, 'area', 'index', '地区管理', '{\"type\":\"province\",\"id\":\"0\"}', '127.0.0.1', "2020/08/20 17:39:05");
INSERT INTO `operation_log` VALUES (10059, 13, 'area', 'index', '地区管理：110000', '{\"type\":\"city\",\"id\":\"110000\"}', '127.0.0.1', "2020/08/20 17:39:05");
INSERT INTO `operation_log` VALUES (10060, 13, 'area', 'index', '地区管理', '{\"type\":\"province\",\"id\":\"0\"}', '127.0.0.1', "2020/08/20 17:39:05");
INSERT INTO `operation_log` VALUES (10061, 13, 'area', 'index', '地区管理：120000', '{\"type\":\"city\",\"id\":\"120000\"}', '127.0.0.1', "2020/08/20 17:39:05");
INSERT INTO `operation_log` VALUES (10062, 13, 'area', 'index', '地区管理：120100', '{\"type\":\"area\",\"id\":\"120100\"}', '127.0.0.1', "2020/08/20 17:39:05");
INSERT INTO `operation_log` VALUES (10063, 13, 'area', 'index', '地区管理：210000', '{\"type\":\"city\",\"id\":\"210000\"}', '127.0.0.1', "2020/08/20 17:39:05");
INSERT INTO `operation_log` VALUES (10064, 13, 'area', 'index', '地区管理：220000', '{\"type\":\"city\",\"id\":\"220000\"}', '127.0.0.1', "2020/08/20 17:39:05");
INSERT INTO `operation_log` VALUES (10065, 13, 'promotion', 'groupadd', '添加团购：te', '{\"name\":\"te\",\"status\":\"1\",\"sort\":\"100\",\"type\":\"3\",\"date\":\"2019-11-13 00:00:00 \\u5230 2019-12-10 00:00:00\",\"__Jshop_Token__\":\"569f40b54210b183567b675fd6af7647a78a2155\"}', '127.0.0.1', "2020/08/20 17:39:05");
INSERT INTO `operation_log` VALUES (10066, 13, 'promotion', 'groupedit', '编辑团购：te', '{\"id\":\"1\",\"name\":\"te\",\"status\":\"1\",\"sort\":\"100\",\"type\":\"3\",\"date\":\"2019-11-13 00:00:00 \\u5230 2019-12-10 00:00:00\",\"goods_id\":\"10\",\"__Jshop_Token__\":\"d6cf817ec734833eb0982d192dc0a1c913fb8c85\"}', '127.0.0.1', "2020/08/20 17:39:05");
INSERT INTO `operation_log` VALUES (10067, 13, 'sms', 'index', '短信管理', '{\"page\":\"1\",\"limit\":\"20\"}', '127.0.0.1', "2020/08/20 17:39:05");
INSERT INTO `operation_log` VALUES (10068, 13, 'sms', 'index', '短信管理', '{\"page\":\"1\",\"limit\":\"20\"}', '127.0.0.1', "2020/08/20 17:39:05");
INSERT INTO `operation_log` VALUES (10069, 13, 'administrator', 'add', '管理员添加', '{\"username\":\"Liuqi\",\"mobile\":\"17621778414\",\"password\":\"123456\",\"__Jshop_Token__\":\"b46e20c6bd4db511524294e590a3822c143824a1\"}', '127.0.0.1', "2020/08/20 17:39:05");
INSERT INTO `operation_log` VALUES (10070, 13, 'role', 'add', '角色添加：超管', '{\"name\":\"\\u8d85\\u7ba1\",\"__Jshop_Token__\":\"e8111a316c4fb5982fa9200c0656cc78c66c133f\"}', '127.0.0.1', "2020/08/20 17:39:05");
INSERT INTO `operation_log` VALUES (10071, 13, 'role', 'getoperation', '编辑权限：1', '{\"id\":\"1\"}', '127.0.0.1', "2020/08/20 17:39:05");
INSERT INTO `operation_log` VALUES (10072, 13, 'role', 'saveperm', '角色保存权限：1', '{\"id\":\"1\",\"data\":[{\"id\":\"238\",\"pid\":\"2\",\"name\":\"\\u4f1a\\u5458\\u7ba1\\u7406\"},{\"id\":\"239\",\"pid\":\"238\",\"name\":\"\\u7528\\u6237\\u5217\\u8868\"},{\"id\":\"242\",\"pid\":\"238\",\"name\":\"\\u79ef\\u5206\\u8bb0\\u5f55\\u67e5\\u8be2\"},{\"id\":\"243\",\"pid\":\"238\",\"name\":\"\\u79ef\\u5206\\u7f16\\u8f91\"},{\"id\":\"529\",\"pid\":\"238\",\"name\":\"\\u9080\\u8bf7\\u4eba\\u4fee\\u6539\"},{\"id\":\"530\",\"pid\":\"238\",\"name\":\"\\u4f1a\\u5458\\u7f16\\u8f91\"},{\"id\":\"531\",\"pid\":\"238\",\"name\":\"\\u4f59\\u989d\\u4fee\\u6539\"},{\"id\":\"532\",\"pid\":\"238\",\"name\":\"\\u4f59\\u989d\\u660e\\u7ec6\"},{\"id\":\"533\",\"pid\":\"238\",\"name\":\"\\u6dfb\\u52a0\\u4f1a\\u5458\"},{\"id\":\"553\",\"pid\":\"238\",\"name\":\"\\u7528\\u6237\\u7b49\\u7ea7\"},{\"id\":\"554\",\"pid\":\"238\",\"name\":\"\\u6dfb\\u52a0&\\u4fee\\u6539\"},{\"id\":\"417\",\"pid\":\"416\",\"name\":\"\\u7ba1\\u7406\\u5458\\u7ba1\\u7406\"},{\"id\":\"418\",\"pid\":\"416\",\"name\":\"\\u7ba1\\u7406\\u5458\\u6dfb\\u52a0\"},{\"id\":\"419\",\"pid\":\"416\",\"name\":\"\\u7ba1\\u7406\\u5458\\u4fee\\u6539\"},{\"id\":\"420\",\"pid\":\"416\",\"name\":\"\\u7ba1\\u7406\\u5458\\u5220\\u9664\"},{\"id\":\"411\",\"pid\":\"410\",\"name\":\"\\u89d2\\u8272\\u7ba1\\u7406\"},{\"id\":\"412\",\"pid\":\"410\",\"name\":\"\\u89d2\\u8272\\u6dfb\\u52a0\"},{\"id\":\"413\",\"pid\":\"410\",\"name\":\"\\u89d2\\u8272\\u5220\\u9664\"},{\"id\":\"414\",\"pid\":\"410\",\"name\":\"\\u7f16\\u8f91\\u6743\\u9650\"}]}', '127.0.0.1', "2020/08/20 17:39:05");
INSERT INTO `operation_log` VALUES (10073, 13, 'sms', 'index', '短信管理', '{\"page\":\"1\",\"limit\":\"20\"}', '127.0.0.1', "2020/08/20 17:39:05");
INSERT INTO `operation_log` VALUES (10074, 13, 'administrator', 'edit', '管理员修改：14', '{\"id\":\"14\",\"mobile\":\"17621778414\",\"password\":\"\",\"role_id\":{\"1\":\"on\"},\"__Jshop_Token__\":\"333462c60ddb680e9022291af16ae0c45a0c59cd\"}', '127.0.0.1', "2020/08/20 17:39:05");
INSERT INTO `operation_log` VALUES (10075, 13, 'administrator', 'edit', '管理员修改：14', '{\"id\":\"14\",\"mobile\":\"17621778414\",\"password\":\"123456\",\"role_id\":{\"1\":\"on\"},\"__Jshop_Token__\":\"333462c60ddb680e9022291af16ae0c45a0c59cd\"}', '127.0.0.1', "2020/08/20 17:39:05");
INSERT INTO `operation_log` VALUES (10076, 13, 'area', 'index', '地区管理', '{\"type\":\"province\",\"id\":\"0\"}', '127.0.0.1', "2020/08/20 17:39:05");
INSERT INTO `operation_log` VALUES (10077, 13, 'report', 'payments', '财务收款', '{\"date\":\"2020-01-07 \\u5230 2020-01-07\",\"section\":\"1\"}', '127.0.0.1', "2020/08/20 17:39:05");
INSERT INTO `operation_log` VALUES (10078, 13, 'wechat', 'doedit', '保存配置', '{\"wx_official_name\":\"\\u5218\\u742a\",\"wx_official_id\":\"914501855\",\"wx_official_appid\":\"wx666c273d83483a67\",\"wx_official_app_secret\":\"3a74628fa5d4e2a9515adc134518f303\",\"wx_official_source_id\":\"gh_f3a2065c9584\",\"wx_official_token\":\"liuqi\",\"wx_official_encodeaeskey\":\"MOFFvrF8X4ozNGE5C1zUIvahIVmwrVMIXYaKcb0Bx6K\",\"wx_official_type\":\"subscribe\",\"wx_official_head_img\":\"\",\"__Jshop_Token__\":\"13bcc83909b5d2855f8a4ae34fbad23c867d0ff0\"}', '127.0.0.1', "2020/08/20 17:39:05");
INSERT INTO `operation_log` VALUES (10079, 13, 'wechat', 'doeditmenu', '公众号菜单-编辑保存：我的博客', '{\"name\":\"\\u6211\\u7684\\u535a\\u5ba2\",\"menu_id\":\"2\",\"pid\":\"0\",\"type\":\"view\",\"params\":{\"keyword\":\"\",\"url\":\"https:\\/\\/blog.theliuqi.top\\/\",\"appid\":\"\",\"program_url\":\"\",\"page\":\"\"},\"__Jshop_Token__\":\"754f5f6bdf1141a48339c7efab12bcec37ac6708\"}', '127.0.0.1', "2020/08/20 17:39:05");
INSERT INTO `operation_log` VALUES (10080, 13, 'role', 'getoperation', '编辑权限：1', '{\"id\":\"1\"}', '127.0.0.1', "2020/08/20 17:39:05");
INSERT INTO `operation_log` VALUES (10081, 13, 'report', 'order', '订单销量', '{\"date\":\"2020-02-26 \\u5230 2020-02-26\",\"section\":\"1\"}', '127.0.0.1', 1582709863);
INSERT INTO `operation_log` VALUES (10082, 13, 'role', 'getoperation', '编辑权限：1', '{\"id\":\"1\"}', '127.0.0.1', 1582719895);
INSERT INTO `operation_log` VALUES (10083, 13, 'role', 'getoperation', '编辑权限：1', '{\"id\":\"1\"}', '127.0.0.1', 1582722797);
INSERT INTO `operation_log` VALUES (10084, 13, 'role', 'saveperm', '角色保存权限：1', '{\"id\":\"1\",\"data\":[{\"id\":\"238\",\"pid\":\"2\",\"name\":\"\\u4f1a\\u5458\\u7ba1\\u7406\"},{\"id\":\"239\",\"pid\":\"238\",\"name\":\"\\u7528\\u6237\\u5217\\u8868\"},{\"id\":\"242\",\"pid\":\"238\",\"name\":\"\\u79ef\\u5206\\u8bb0\\u5f55\\u67e5\\u8be2\"},{\"id\":\"243\",\"pid\":\"238\",\"name\":\"\\u79ef\\u5206\\u7f16\\u8f91\"},{\"id\":\"529\",\"pid\":\"238\",\"name\":\"\\u9080\\u8bf7\\u4eba\\u4fee\\u6539\"},{\"id\":\"530\",\"pid\":\"238\",\"name\":\"\\u4f1a\\u5458\\u7f16\\u8f91\"},{\"id\":\"531\",\"pid\":\"238\",\"name\":\"\\u4f59\\u989d\\u4fee\\u6539\"},{\"id\":\"532\",\"pid\":\"238\",\"name\":\"\\u4f59\\u989d\\u660e\\u7ec6\"},{\"id\":\"533\",\"pid\":\"238\",\"name\":\"\\u6dfb\\u52a0\\u4f1a\\u5458\"},{\"id\":\"553\",\"pid\":\"238\",\"name\":\"\\u7528\\u6237\\u7b49\\u7ea7\"},{\"id\":\"554\",\"pid\":\"238\",\"name\":\"\\u6dfb\\u52a0&\\u4fee\\u6539\"},{\"id\":\"417\",\"pid\":\"416\",\"name\":\"\\u7ba1\\u7406\\u5458\\u7ba1\\u7406\"},{\"id\":\"418\",\"pid\":\"416\",\"name\":\"\\u7ba1\\u7406\\u5458\\u6dfb\\u52a0\"},{\"id\":\"419\",\"pid\":\"416\",\"name\":\"\\u7ba1\\u7406\\u5458\\u4fee\\u6539\"},{\"id\":\"420\",\"pid\":\"416\",\"name\":\"\\u7ba1\\u7406\\u5458\\u5220\\u9664\"},{\"id\":\"411\",\"pid\":\"410\",\"name\":\"\\u89d2\\u8272\\u7ba1\\u7406\"},{\"id\":\"412\",\"pid\":\"410\",\"name\":\"\\u89d2\\u8272\\u6dfb\\u52a0\"},{\"id\":\"413\",\"pid\":\"410\",\"name\":\"\\u89d2\\u8272\\u5220\\u9664\"},{\"id\":\"414\",\"pid\":\"410\",\"name\":\"\\u7f16\\u8f91\\u6743\\u9650\"},{\"id\":\"305\",\"pid\":\"2\",\"name\":\"\\u5546\\u54c1\\u7ba1\\u7406\"},{\"id\":\"306\",\"pid\":\"305\",\"name\":\"\\u5546\\u54c1\\u5217\\u8868\"},{\"id\":\"307\",\"pid\":\"305\",\"name\":\"\\u6dfb\\u52a0\\u5546\\u54c1\"},{\"id\":\"309\",\"pid\":\"305\",\"name\":\"\\u5546\\u54c1\\u8bc4\\u4ef7\\u5217\\u8868\"},{\"id\":\"316\",\"pid\":\"305\",\"name\":\"\\u7f16\\u8f91\\u5546\\u54c1\"},{\"id\":\"321\",\"pid\":\"305\",\"name\":\"\\u5220\\u9664\\u5546\\u54c1\"},{\"id\":\"394\",\"pid\":\"392\",\"name\":\"\\u5bfc\\u51fa\"},{\"id\":\"395\",\"pid\":\"392\",\"name\":\"\\u5bfc\\u5165\"},{\"id\":\"292\",\"pid\":\"291\",\"name\":\"\\u5546\\u54c1\\u5206\\u7c7b\"},{\"id\":\"293\",\"pid\":\"291\",\"name\":\"\\u6dfb\\u52a0\\u5546\\u54c1\\u5206\\u7c7b\"},{\"id\":\"294\",\"pid\":\"291\",\"name\":\"\\u7f16\\u8f91\\u5546\\u54c1\\u5206\\u7c7b\"},{\"id\":\"295\",\"pid\":\"291\",\"name\":\"\\u5220\\u9664\\u5546\\u54c1\\u5206\\u7c7b\"},{\"id\":\"287\",\"pid\":\"286\",\"name\":\"\\u54c1\\u724c\\u5217\\u8868\"},{\"id\":\"288\",\"pid\":\"286\",\"name\":\"\\u54c1\\u724c\\u6dfb\\u52a0\"},{\"id\":\"289\",\"pid\":\"286\",\"name\":\"\\u54c1\\u724c\\u4fee\\u6539\"},{\"id\":\"290\",\"pid\":\"286\",\"name\":\"\\u54c1\\u724c\\u5220\\u9664\"},{\"id\":\"324\",\"pid\":\"323\",\"name\":\"\\u5546\\u54c1\\u7c7b\\u578b\"},{\"id\":\"325\",\"pid\":\"323\",\"name\":\"\\u6dfb\\u52a0\\u7c7b\\u578b\"},{\"id\":\"327\",\"pid\":\"323\",\"name\":\"\\u7f16\\u8f91\\u5c5e\\u6027\"},{\"id\":\"328\",\"pid\":\"323\",\"name\":\"\\u5220\\u9664\\u5c5e\\u6027\"},{\"id\":\"331\",\"pid\":\"330\",\"name\":\"\\u5546\\u54c1\\u5c5e\\u6027\"},{\"id\":\"422\",\"pid\":\"421\",\"name\":\"\\u53c2\\u6570\\u5217\\u8868\"},{\"id\":\"423\",\"pid\":\"421\",\"name\":\"\\u6dfb\\u52a0\\u53c2\\u6570\"},{\"id\":\"424\",\"pid\":\"421\",\"name\":\"\\u7f16\\u8f91\\u53c2\\u6570\"},{\"id\":\"425\",\"pid\":\"421\",\"name\":\"\\u5220\\u9664\\u53c2\\u6570\"},{\"id\":\"240\",\"pid\":\"238\",\"name\":\"\\u5546\\u54c1\\u8bc4\\u4ef7\"},{\"id\":\"296\",\"pid\":\"2\",\"name\":\"\\u8ba2\\u5355\\u7ba1\\u7406\"},{\"id\":\"297\",\"pid\":\"296\",\"name\":\"\\u8ba2\\u5355\\u5217\\u8868\"},{\"id\":\"299\",\"pid\":\"296\",\"name\":\"\\u7f16\\u8f91\\u8ba2\\u5355\"},{\"id\":\"300\",\"pid\":\"296\",\"name\":\"\\u8ba2\\u5355\\u53d1\\u8d27\"},{\"id\":\"303\",\"pid\":\"296\",\"name\":\"\\u5220\\u9664\\u8ba2\\u5355\"},{\"id\":\"405\",\"pid\":\"404\",\"name\":\"\\u53d1\\u8d27\\u5355\\u5217\\u8868\"},{\"id\":\"488\",\"pid\":\"487\",\"name\":\"\\u63d0\\u8d27\\u5355\\u5217\\u8868\"},{\"id\":\"490\",\"pid\":\"487\",\"name\":\"\\u5220\\u9664\\u63d0\\u8d27\\u5355\"},{\"id\":\"503\",\"pid\":\"487\",\"name\":\"\\u63d0\\u8d27\\u5355\\u6838\\u9500\"},{\"id\":\"344\",\"pid\":\"343\",\"name\":\"\\u552e\\u540e\\u5355\\u5217\\u8868\"},{\"id\":\"345\",\"pid\":\"343\",\"name\":\"\\u552e\\u540e\\u5355\\u5ba1\\u6838\"},{\"id\":\"348\",\"pid\":\"347\",\"name\":\"\\u9000\\u8d27\\u5355\\u5217\\u8868\"},{\"id\":\"350\",\"pid\":\"347\",\"name\":\"\\u9000\\u8d27\\u5355\\u786e\\u8ba4\\u6536\\u8d27\"},{\"id\":\"266\",\"pid\":\"2\",\"name\":\"\\u8fd0\\u8425\\u7ba1\\u7406\"},{\"id\":\"253\",\"pid\":\"252\",\"name\":\"\\u6587\\u7ae0\\u5206\\u7c7b\"},{\"id\":\"254\",\"pid\":\"252\",\"name\":\"\\u6587\\u7ae0\\u5206\\u7c7b\\u6dfb\\u52a0\"},{\"id\":\"255\",\"pid\":\"252\",\"name\":\"\\u6587\\u7ae0\\u5206\\u7c7b\\u4fee\\u6539\"},{\"id\":\"256\",\"pid\":\"252\",\"name\":\"\\u6587\\u7ae0\\u5206\\u7c7b\\u5220\\u9664\"},{\"id\":\"259\",\"pid\":\"258\",\"name\":\"\\u6587\\u7ae0\\u5217\\u8868\"},{\"id\":\"260\",\"pid\":\"258\",\"name\":\"\\u6587\\u7ae0\\u6dfb\\u52a0\"},{\"id\":\"261\",\"pid\":\"258\",\"name\":\"\\u6587\\u7ae0\\u4fee\\u6539\"},{\"id\":\"262\",\"pid\":\"258\",\"name\":\"\\u6587\\u7ae0\\u5220\\u9664\"},{\"id\":\"267\",\"pid\":\"266\",\"name\":\"\\u516c\\u544a\\u5217\\u8868\"},{\"id\":\"268\",\"pid\":\"266\",\"name\":\"\\u516c\\u544a\\u6dfb\\u52a0\"},{\"id\":\"269\",\"pid\":\"266\",\"name\":\"\\u516c\\u544a\\u4fee\\u6539\"},{\"id\":\"270\",\"pid\":\"266\",\"name\":\"\\u516c\\u544a\\u5220\\u9664\"},{\"id\":\"272\",\"pid\":\"271\",\"name\":\"\\u5e7f\\u544a\\u4f4d\\u5217\\u8868\"},{\"id\":\"273\",\"pid\":\"271\",\"name\":\"\\u5e7f\\u544a\\u4f4d\\u6dfb\\u52a0\"},{\"id\":\"274\",\"pid\":\"271\",\"name\":\"\\u5e7f\\u544a\\u4f4d\\u4fee\\u6539\"},{\"id\":\"275\",\"pid\":\"271\",\"name\":\"\\u5e7f\\u544a\\u4f4d\\u5220\\u9664\"},{\"id\":\"278\",\"pid\":\"277\",\"name\":\"\\u5e7f\\u544a\\u5217\\u8868\"},{\"id\":\"279\",\"pid\":\"277\",\"name\":\"\\u5e7f\\u544a\\u6dfb\\u52a0\"},{\"id\":\"280\",\"pid\":\"277\",\"name\":\"\\u5e7f\\u544a\\u4fee\\u6539\"},{\"id\":\"281\",\"pid\":\"277\",\"name\":\"\\u5e7f\\u544a\\u5220\\u9664\"},{\"id\":\"356\",\"pid\":\"2\",\"name\":\"\\u4fc3\\u9500\\u7ba1\\u7406\"},{\"id\":\"357\",\"pid\":\"356\",\"name\":\"\\u4fc3\\u9500\\u5217\\u8868\"},{\"id\":\"358\",\"pid\":\"356\",\"name\":\"\\u6dfb\\u52a0\\u4fc3\\u9500\"},{\"id\":\"359\",\"pid\":\"356\",\"name\":\"\\u4fc3\\u9500\\u7f16\\u8f91\"},{\"id\":\"360\",\"pid\":\"356\",\"name\":\"\\u4fc3\\u9500\\u5220\\u9664\"},{\"id\":\"361\",\"pid\":\"356\",\"name\":\"\\u4f18\\u60e0\\u5238\\u5217\\u8868\"},{\"id\":\"264\",\"pid\":\"263\",\"name\":\"\\u4f18\\u60e0\\u5238\\u9886\\u53d6\\u5217\\u8868\"},{\"id\":\"265\",\"pid\":\"263\",\"name\":\"\\u4f18\\u60e0\\u5238\\u5220\\u9664\"},{\"id\":\"362\",\"pid\":\"356\",\"name\":\"\\u6dfb\\u52a0\\u4f18\\u60e0\\u5238\\u89c4\\u5219\"},{\"id\":\"363\",\"pid\":\"356\",\"name\":\"\\u4f18\\u60e0\\u5238\\u89c4\\u5219\\u7f16\\u8f91\"},{\"id\":\"364\",\"pid\":\"356\",\"name\":\"\\u4f18\\u60e0\\u5238\\u89c4\\u5219\\u5220\\u9664\"},{\"id\":\"491\",\"pid\":\"356\",\"name\":\"\\u56e2\\u8d2d\\u79d2\\u6740\\u5217\\u8868\"},{\"id\":\"492\",\"pid\":\"356\",\"name\":\"\\u6dfb\\u52a0\\u56e2\\u8d2d\"},{\"id\":\"493\",\"pid\":\"356\",\"name\":\"\\u7f16\\u8f91\\u56e2\\u8d2d\"},{\"id\":\"494\",\"pid\":\"356\",\"name\":\"\\u5220\\u9664\\u56e2\\u8d2d\"},{\"id\":\"399\",\"pid\":\"2\",\"name\":\"\\u8d22\\u52a1\\u7ba1\\u7406\"},{\"id\":\"247\",\"pid\":\"246\",\"name\":\"\\u652f\\u4ed8\\u65b9\\u5f0f\\u5217\\u8868\"},{\"id\":\"249\",\"pid\":\"246\",\"name\":\"\\u652f\\u4ed8\\u65b9\\u5f0f\\u4fee\\u6539\"},{\"id\":\"251\",\"pid\":\"246\",\"name\":\"\\u652f\\u4ed8\\u65b9\\u5f0f\\u542f\\/\\u7981\\u7528\"},{\"id\":\"400\",\"pid\":\"399\",\"name\":\"\\u652f\\u4ed8\\u5355\\u5217\\u8868\"},{\"id\":\"401\",\"pid\":\"399\",\"name\":\"\\u540e\\u53f0\\u652f\\u4ed8\"},{\"id\":\"460\",\"pid\":\"431\",\"name\":\"\\u63d0\\u73b0\\u5217\\u8868\"},{\"id\":\"461\",\"pid\":\"431\",\"name\":\"\\u63d0\\u73b0\\u5ba1\\u6838\"},{\"id\":\"352\",\"pid\":\"351\",\"name\":\"\\u9000\\u6b3e\\u5355\\u5217\\u8868\"},{\"id\":\"354\",\"pid\":\"351\",\"name\":\"\\u64cd\\u4f5c\\u9000\\u6b3e\"},{\"id\":\"432\",\"pid\":\"431\",\"name\":\"\\u8d26\\u6237\\u8d44\\u91d1\\u7ba1\\u7406\"},{\"id\":\"244\",\"pid\":\"2\",\"name\":\"\\u63a7\\u5236\\u9762\\u677f\"},{\"id\":\"245\",\"pid\":\"244\",\"name\":\"\\u5e73\\u53f0\\u8bbe\\u7f6e\"},{\"id\":\"336\",\"pid\":\"335\",\"name\":\"\\u914d\\u9001\\u65b9\\u5f0f\\u5217\\u8868\"},{\"id\":\"337\",\"pid\":\"335\",\"name\":\"\\u6dfb\\u52a0\\u914d\\u9001\\u65b9\\u5f0f\"},{\"id\":\"338\",\"pid\":\"335\",\"name\":\"\\u7f16\\u8f91\\u914d\\u9001\\u65b9\\u5f0f\"},{\"id\":\"339\",\"pid\":\"335\",\"name\":\"\\u5220\\u9664\\u914d\\u9001\\u65b9\\u5f0f\"},{\"id\":\"366\",\"pid\":\"365\",\"name\":\"\\u95e8\\u5e97\\u5217\\u8868\"},{\"id\":\"367\",\"pid\":\"365\",\"name\":\"\\u95e8\\u5e97\\u6dfb\\u52a0\"},{\"id\":\"368\",\"pid\":\"365\",\"name\":\"\\u95e8\\u5e97\\u4fee\\u6539\"},{\"id\":\"369\",\"pid\":\"365\",\"name\":\"\\u95e8\\u5e97\\u5220\\u9664\"},{\"id\":\"484\",\"pid\":\"365\",\"name\":\"\\u5e97\\u5458\\u5217\\u8868\"},{\"id\":\"485\",\"pid\":\"365\",\"name\":\"\\u6dfb\\u52a0\\u5e97\\u5458\"},{\"id\":\"486\",\"pid\":\"365\",\"name\":\"\\u5220\\u9664\\u5e97\\u5458\"},{\"id\":\"391\",\"pid\":\"390\",\"name\":\"\\u56fe\\u7247\\u5217\\u8868\"},{\"id\":\"539\",\"pid\":\"390\",\"name\":\"\\u5220\\u9664\\u56fe\\u7247\"},{\"id\":\"393\",\"pid\":\"392\",\"name\":\"\\u5bfc\\u5165\\u5bfc\\u51fa\"},{\"id\":\"397\",\"pid\":\"392\",\"name\":\"\\u4e0b\\u8f7d\\u6587\\u4ef6\"},{\"id\":\"409\",\"pid\":\"408\",\"name\":\"\\u6d88\\u606f\\u914d\\u7f6e\"},{\"id\":\"510\",\"pid\":\"408\",\"name\":\"\\u6d88\\u606f\\u7f16\\u8f91\"},{\"id\":\"463\",\"pid\":\"462\",\"name\":\"\\u94a9\\u5b50\\u5217\\u8868\"},{\"id\":\"471\",\"pid\":\"462\",\"name\":\"\\u6dfb\\u52a0\\u94a9\\u5b50\"},{\"id\":\"472\",\"pid\":\"462\",\"name\":\"\\u7f16\\u8f91\\u94a9\\u5b50\"},{\"id\":\"473\",\"pid\":\"462\",\"name\":\"\\u5220\\u9664\\u94a9\\u5b50\"},{\"id\":\"465\",\"pid\":\"464\",\"name\":\"\\u63d2\\u4ef6\\u5217\\u8868\"},{\"id\":\"474\",\"pid\":\"464\",\"name\":\"\\u5b89\\u88c5\\u63d2\\u4ef6\"},{\"id\":\"475\",\"pid\":\"464\",\"name\":\"\\u5378\\u8f7d\\u63d2\\u4ef6\"},{\"id\":\"476\",\"pid\":\"464\",\"name\":\"\\u63d2\\u4ef6\\u914d\\u7f6e\"},{\"id\":\"478\",\"pid\":\"464\",\"name\":\"\\u63d2\\u4ef6\\u542f\\u7528\\/\\u505c\\u7528\"},{\"id\":\"467\",\"pid\":\"466\",\"name\":\"\\u5730\\u533a\\u7ba1\\u7406\"},{\"id\":\"468\",\"pid\":\"466\",\"name\":\"\\u6dfb\\u52a0\\u5730\\u533a\"},{\"id\":\"469\",\"pid\":\"466\",\"name\":\"\\u7f16\\u8f91\\u5730\\u533a\"},{\"id\":\"470\",\"pid\":\"466\",\"name\":\"\\u5220\\u9664\\u5730\\u533a\"},{\"id\":\"563\",\"pid\":\"466\",\"name\":\"\\u751f\\u6210\\u7f13\\u5b58\"},{\"id\":\"512\",\"pid\":\"511\",\"name\":\"\\u64cd\\u4f5c\\u65e5\\u5fd7\"},{\"id\":\"496\",\"pid\":\"495\",\"name\":\"\\u7269\\u6d41\\u516c\\u53f8\\u5217\\u8868\"},{\"id\":\"497\",\"pid\":\"495\",\"name\":\"\\u6dfb\\u52a0\"},{\"id\":\"498\",\"pid\":\"495\",\"name\":\"\\u7f16\\u8f91\"},{\"id\":\"499\",\"pid\":\"495\",\"name\":\"\\u5220\\u9664\"},{\"id\":\"435\",\"pid\":\"434\",\"name\":\"\\u8282\\u70b9\\u7ba1\\u7406\"},{\"id\":\"436\",\"pid\":\"434\",\"name\":\"\\u8282\\u70b9\\u5220\\u9664\"},{\"id\":\"437\",\"pid\":\"434\",\"name\":\"\\u8282\\u70b9\\u7f16\\u8f91\"},{\"id\":\"559\",\"pid\":\"2\",\"name\":\"\\u9875\\u9762\\u7ba1\\u7406\"},{\"id\":\"560\",\"pid\":\"559\",\"name\":\"\\u5e03\\u5c40\\u7ba1\\u7406\"},{\"id\":\"562\",\"pid\":\"559\",\"name\":\"\\u9875\\u9762\\u7f16\\u8f91\"},{\"id\":\"535\",\"pid\":\"2\",\"name\":\"\\u62a5\\u8868\\u7edf\\u8ba1\"},{\"id\":\"536\",\"pid\":\"535\",\"name\":\"\\u8ba2\\u5355\\u9500\\u91cf\"},{\"id\":\"537\",\"pid\":\"535\",\"name\":\"\\u8d22\\u52a1\\u6536\\u6b3e\"},{\"id\":\"538\",\"pid\":\"535\",\"name\":\"\\u5546\\u54c1\\u9500\\u91cf\"},{\"id\":\"558\",\"pid\":\"535\",\"name\":\"\\u7528\\u6237\\u6536\\u85cf\\u7edf\\u8ba1\"},{\"id\":\"479\",\"pid\":\"2\",\"name\":\"\\u5fae\\u4fe1\\u7ba1\\u7406\"},{\"id\":\"480\",\"pid\":\"479\",\"name\":\"\\u5c0f\\u7a0b\\u5e8f\\u914d\\u7f6e\"},{\"id\":\"481\",\"pid\":\"479\",\"name\":\"\\u6a21\\u677f\\u5217\\u8868\"},{\"id\":\"483\",\"pid\":\"479\",\"name\":\"\\u516c\\u4f17\\u53f7\\u914d\\u7f6e\"},{\"id\":\"517\",\"pid\":\"479\",\"name\":\"\\u516c\\u4f17\\u53f7\\u83dc\\u5355\"},{\"id\":\"518\",\"pid\":\"479\",\"name\":\"\\u516c\\u4f17\\u53f7\\u83dc\\u5355-\\u7f16\\u8f91\"},{\"id\":\"519\",\"pid\":\"479\",\"name\":\"\\u516c\\u4f17\\u53f7\\u83dc\\u5355-\\u7f16\\u8f91\\u4fdd\\u5b58\"},{\"id\":\"520\",\"pid\":\"479\",\"name\":\"\\u516c\\u4f17\\u53f7\\u83dc\\u5355-\\u5220\\u9664\"},{\"id\":\"521\",\"pid\":\"479\",\"name\":\"\\u516c\\u4f17\\u53f7\\u83dc\\u5355-\\u540c\\u6b65\"},{\"id\":\"522\",\"pid\":\"479\",\"name\":\"\\u5fae\\u4fe1\\u6d88\\u606f\\u7ba1\\u7406\"},{\"id\":\"523\",\"pid\":\"479\",\"name\":\"\\u5fae\\u4fe1\\u6d88\\u606f-\\u6dfb\\u52a0\"},{\"id\":\"524\",\"pid\":\"479\",\"name\":\"\\u5fae\\u4fe1\\u6d88\\u606f-\\u5220\\u9664\"},{\"id\":\"525\",\"pid\":\"479\",\"name\":\"\\u5fae\\u4fe1\\u6d88\\u606f-\\u7f16\\u8f91\"},{\"id\":\"526\",\"pid\":\"479\",\"name\":\"\\u5fae\\u4fe1\\u6d88\\u606f-\\u4e92\\u52a8\"},{\"id\":\"541\",\"pid\":\"2\",\"name\":\"\\u667a\\u80fd\\u8868\\u5355\"},{\"id\":\"542\",\"pid\":\"541\",\"name\":\"\\u8868\\u5355\\u5217\\u8868\"},{\"id\":\"543\",\"pid\":\"541\",\"name\":\"\\u6dfb\\u52a0\\u8868\\u5355\"},{\"id\":\"544\",\"pid\":\"541\",\"name\":\"\\u7f16\\u8f91\\u8868\\u5355\"},{\"id\":\"545\",\"pid\":\"541\",\"name\":\"\\u5220\\u9664\\u8868\\u5355\"},{\"id\":\"546\",\"pid\":\"541\",\"name\":\"\\u5c0f\\u7a0b\\u5e8f\\u7801\"},{\"id\":\"548\",\"pid\":\"541\",\"name\":\"\\u8868\\u5355\\u62a5\\u8868\"},{\"id\":\"549\",\"pid\":\"541\",\"name\":\"\\u8868\\u5355\\u7edf\\u8ba1\"},{\"id\":\"547\",\"pid\":\"541\",\"name\":\"\\u63d0\\u4ea4\\u5217\\u8868\"},{\"id\":\"550\",\"pid\":\"541\",\"name\":\"\\u5220\\u9664\\u63d0\\u4ea4\"},{\"id\":\"551\",\"pid\":\"541\",\"name\":\"\\u63d0\\u4ea4\\u660e\\u7ec6\"},{\"id\":\"552\",\"pid\":\"541\",\"name\":\"\\u53cd\\u9988\"}]}', '127.0.0.1', 1582722807);
INSERT INTO `operation_log` VALUES (10085, 13, 'sms', 'index', '短信管理', '{\"page\":\"1\",\"limit\":\"20\"}', '127.0.0.1', 1583976479);
INSERT INTO `operation_log` VALUES (10086, 13, 'role', 'getoperation', '编辑权限：1', '{\"id\":\"1\"}', '127.0.0.1', 1583976529);
INSERT INTO `operation_log` VALUES (10087, 13, 'role', 'getoperation', '编辑权限：1', '{\"id\":\"1\"}', '127.0.0.1', 1583976556);
INSERT INTO `operation_log` VALUES (10088, 13, 'sms', 'index', '短信管理', '{\"page\":\"1\",\"limit\":\"20\"}', '127.0.0.1', 1583976956);
INSERT INTO `operation_log` VALUES (10089, 13, 'report', 'order', '订单销量', '{\"date\":\"2020-03-12 \\u5230 2020-03-12\",\"section\":\"1\"}', '127.0.0.1', 1583980336);
INSERT INTO `operation_log` VALUES (10090, 13, 'report', 'payments', '财务收款', '{\"date\":\"2020-03-12 \\u5230 2020-03-12\",\"section\":\"1\"}', '127.0.0.1', 1583980368);
INSERT INTO `operation_log` VALUES (10091, 13, 'report', 'order', '订单销量', '{\"date\":\"2020-04-08 \\u5230 2020-04-08\",\"section\":\"1\"}', '127.0.0.1', 1586314282);
INSERT INTO `operation_log` VALUES (10092, 13, 'article', 'edit', '文章修改：1', '{\"id\":\"1\",\"type_id\":\"1\",\"title\":\"\\u6d4b\\u8bd5\",\"cover\":\"a422f452969f04e4493af4728eec3ab8\",\"editorValue\":\"<p><br\\/><\\/p>\",\"content\":\"<p>\\u8fd9\\u662f\\u6d4b\\u8bd5\\u6807\\u9898<em><strong>\\u4ed6<\\/strong><\\/em><\\/p>\",\"is_pub\":\"1\",\"sort\":\"100\",\"__Jshop_Token__\":\"d4b3fefdfb8aa8cbb1a64b047c56cbc24a6ce764\"}', '127.0.0.1', 1586421336);
INSERT INTO `operation_log` VALUES (10093, 13, 'article', 'add', '文章添加', '{\"type_id\":\"2\",\"title\":\"44\",\"cover\":\"\",\"content\":\"<p>66<\\/p>\",\"is_pub\":\"1\",\"sort\":\"100\",\"__Jshop_Token__\":\"df25899789db0c4f4ea5de77441b02905e6a1859\"}', '127.0.0.1', 1586421358);
INSERT INTO `operation_log` VALUES (10094, 13, 'article', 'add', '文章添加', '{\"type_id\":\"2\",\"title\":\"44\",\"cover\":\"\",\"editorValue\":\"<p><br\\/><\\/p>\",\"content\":\"<p>66tdfd<\\/p>\",\"is_pub\":\"1\",\"sort\":\"100\",\"__Jshop_Token__\":\"df25899789db0c4f4ea5de77441b02905e6a1859\"}', '127.0.0.1', 1586421417);
INSERT INTO `operation_log` VALUES (10095, 13, 'articletype', 'add', '文章分类添加', '{\"pid\":\"\",\"type_name\":\"\\u6d4b\\u8bd5\",\"__Jshop_Token__\":\"847b056344d2cfd94355a4a1025b3220fe61fef7\"}', '127.0.0.1', 1586485497);
INSERT INTO `operation_log` VALUES (10096, 13, 'article', 'edit', '文章修改：1', '{\"id\":\"1\",\"type_id\":\"1\",\"title\":\"\\u6d4b\\u8bd5\",\"cover\":\"6554e73ccd5a4b81b196b5ec3f412d0c\",\"editorValue\":\"<p><img src=\\\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/b3\\/16\\/38\\/5bc9a50662303.jpg\\\" alt=\\\"5bc9a50662303.jpg\\\"\\/><\\/p>\",\"content\":\"<p>\\u8fd9\\u662f\\u6d4b\\u8bd5\\u6807\\u9898<em><strong>\\u4ed6<\\/strong><\\/em><\\/p>\",\"is_pub\":\"1\",\"sort\":\"100\",\"__Jshop_Token__\":\"8232054a11114a819592375289d9791dd59f6624\"}', '127.0.0.1', 1586616676);
INSERT INTO `operation_log` VALUES (10097, 13, 'report', 'order', '订单销量', '{\"date\":\"2020-04-22 \\u5230 2020-04-22\",\"section\":\"1\"}', '127.0.0.1', 1587525801);
INSERT INTO `operation_log` VALUES (10098, 13, 'addons', 'setting', '插件配置：Distribution', '{\"name\":\"Distribution\"}', '127.0.0.1', 1587525905);
INSERT INTO `operation_log` VALUES (10099, 13, 'addons', 'dosetting', '保存配置：Distribution', '{\"setting\":{\"level1\":\"0.5\",\"level2\":\"0.2\"},\"name\":\"Distribution\"}', '127.0.0.1', 1587525932);
INSERT INTO `operation_log` VALUES (10100, 13, 'addons', 'install', '安装插件：Trustlogin', '{\"name\":\"Trustlogin\"}', '127.0.0.1', 1587525961);
INSERT INTO `operation_log` VALUES (10101, 13, 'addons', 'install', '安装插件：Appletmessage', '{\"name\":\"Appletmessage\"}', '127.0.0.1', 1587531037);
INSERT INTO `operation_log` VALUES (10102, 13, 'addons', 'install', '安装插件：Aliyunsms', '{\"name\":\"Aliyunsms\"}', '127.0.0.1', 1587531045);
INSERT INTO `operation_log` VALUES (10103, 13, 'addons', 'install', '安装插件：KdniaoExpress', '{\"name\":\"KdniaoExpress\"}', '127.0.0.1', 1587531060);
INSERT INTO `operation_log` VALUES (10104, 13, 'wechat', 'doedit', '保存配置', '{\"wx_official_name\":\"\\u5218\\u742a\",\"wx_official_id\":\"914501855\",\"wx_official_appid\":\"wx666c273d83483a67\",\"wx_official_app_secret\":\"3a74628fa5d4e2a9515adc134518f303\",\"wx_official_source_id\":\"gh_f3a2065c9584\",\"wx_official_token\":\"liuqi\",\"wx_official_encodeaeskey\":\"MOFFvrF8X4ozNGE5C1zUIvahIVmwrVMIXYaKcb0Bx6K\",\"wx_official_type\":\"subscribe\",\"wx_official_head_img\":\"62a308d70f490d3a7bcdff5219e8a693\",\"editorValue\":\"<p><img src=\\\"theliuqi.top\\/static\\/uploads\\/images\\/2020\\/04\\/25\\/15877850865ea3ad7ec2322.png\\\"\\/><\\/p>\",\"__Jshop_Token__\":\"1ead7c717ed4019a555ea7a54edfc20960d726bd\"}', '127.0.0.1', 1587785096);
INSERT INTO `operation_log` VALUES (10105, 13, 'sms', 'index', '短信管理', '{\"page\":\"1\",\"limit\":\"20\"}', '127.0.0.1', 1596680128);
INSERT INTO `operation_log` VALUES (10106, 13, 'billdelivery', 'index', '发货单列表', '{\"page\":\"1\",\"limit\":\"20\"}', '127.0.0.1', 1596680168);

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order`  (
  `order_id` varchar(20) NOT NULL COMMENT '订单号',
  `goods_amount` decimal(10, 2) UNSIGNED NULL DEFAULT 0.00 COMMENT '商品总价',
  `payed` decimal(10, 2) UNSIGNED NULL DEFAULT 0.00 COMMENT '已支付的金额',
  `order_amount` decimal(10, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '订单实际销售总额',
  `pay_status` tinyint(1) UNSIGNED NULL DEFAULT 1 COMMENT '支付状态 1=未付款 2=已付款 3=部分付款 4=部分退款 5=已退款',
  `ship_status` tinyint(1) UNSIGNED NULL DEFAULT 1 COMMENT '发货状态 1=未发货 2=部分发货 3=已发货 4=部分退货 5=已退货',
  `status` tinyint(1) UNSIGNED NULL DEFAULT 1 COMMENT '订单状态 1=正常 2=完成 3=取消',
  `order_type` tinyint(2) UNSIGNED NOT NULL DEFAULT 1 COMMENT '订单类型，1是普通订单，2是拼团订单',
  `payment_code` varchar(20) NULL DEFAULT NULL COMMENT '支付方式代码',
  `payment_time` bigint(12) NULL DEFAULT NULL COMMENT '支付时间',
  `logistics_id` varchar(20) NULL DEFAULT NULL COMMENT '配送方式ID 关联ship.id',
  `logistics_name` varchar(50) NULL DEFAULT NULL COMMENT '配送方式名称',
  `cost_freight` decimal(6, 2) UNSIGNED NULL DEFAULT 0.00 COMMENT '配送费用',
  `user_id` int(10) UNSIGNED NULL DEFAULT NULL COMMENT '用户ID 关联user.id',
  `seller_id` int(10) UNSIGNED NULL DEFAULT NULL COMMENT '店铺ID 关联seller.id',
  `confirm` tinyint(1) UNSIGNED NULL DEFAULT 1 COMMENT '售后状态 1=未确认收货 2=已确认收货',
  `confirm_time` bigint(12) UNSIGNED NULL DEFAULT NULL COMMENT '确认收货时间',
  `store_id` int(10) UNSIGNED NULL DEFAULT 0 COMMENT '自提门店ID，0就是不门店自提',
  `ship_area_id` int(10) UNSIGNED NULL DEFAULT 0 COMMENT '收货地区ID',
  `ship_address` varchar(200) NULL DEFAULT NULL COMMENT '收货详细地址',
  `ship_name` varchar(50) NULL DEFAULT NULL COMMENT '收货人姓名',
  `ship_mobile` char(15) NULL DEFAULT NULL COMMENT '收货电话',
  `weight` double(10, 2) UNSIGNED NULL DEFAULT 0.00 COMMENT '商品总重量',
  `tax_type` tinyint(1) UNSIGNED NULL DEFAULT 1 COMMENT '是否开发票 1=不发票 2=个人发票 3=公司发票',
  `tax_content` varchar(255) NULL DEFAULT '商品详情' COMMENT '发票内容',
  `tax_code` varchar(50) NULL DEFAULT NULL COMMENT '税号',
  `tax_title` varchar(50) NULL DEFAULT NULL COMMENT '发票抬头',
  `point` int(10) UNSIGNED NULL DEFAULT NULL COMMENT '使用积分',
  `point_money` decimal(10, 2) NULL DEFAULT NULL COMMENT '积分抵扣金额',
  `order_pmt` decimal(10, 2) UNSIGNED NULL DEFAULT 0.00 COMMENT '订单优惠金额',
  `goods_pmt` decimal(10, 2) UNSIGNED NULL DEFAULT 0.00 COMMENT '商品优惠金额',
  `coupon_pmt` decimal(10, 2) UNSIGNED NULL DEFAULT 0.00 COMMENT '优惠券优惠额度',
  `coupon` varchar(5000) NULL DEFAULT NULL COMMENT '优惠券信息',
  `promotion_list` varchar(255) NULL DEFAULT NULL COMMENT '优惠信息',
  `memo` varchar(255) NULL DEFAULT NULL COMMENT '买家备注',
  `ip` varchar(50) NULL DEFAULT NULL COMMENT '下单IP',
  `mark` varchar(510) NULL DEFAULT NULL COMMENT '卖家备注',
  `source` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '订单来源 1=PC页面 2=H5页面 3=微信小程序',
  `is_comment` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '是否评论，1未评论，2已评论',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `utime` bigint(12) UNSIGNED NULL DEFAULT NULL COMMENT '更新时间',
  `isdel` bigint(12) UNSIGNED NULL DEFAULT NULL COMMENT '删除标志 有数据表示删除',
  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE = InnoDB COMMENT = '订单表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for order_items
-- ----------------------------
DROP TABLE IF EXISTS `order_items`;
CREATE TABLE `order_items`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_id` varchar(20) NOT NULL COMMENT '订单ID 关联order.id',
  `goods_id` int(10) UNSIGNED NULL DEFAULT NULL COMMENT '商品ID 关联goods.id',
  `product_id` int(10) UNSIGNED NULL DEFAULT NULL COMMENT '货品ID 关联products.id',
  `sn` varchar(30) NULL DEFAULT NULL COMMENT '货品编码',
  `bn` varchar(30) NULL DEFAULT NULL COMMENT '商品编码',
  `name` varchar(200) NULL DEFAULT NULL COMMENT '商品名称',
  `price` decimal(10, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '货品价格单价',
  `costprice` decimal(10, 2) UNSIGNED NULL DEFAULT 0.00 COMMENT '货品成本价单价',
  `mktprice` decimal(10, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '市场价',
  `image_url` varchar(100) NOT NULL COMMENT '图片',
  `nums` smallint(5) UNSIGNED NULL DEFAULT NULL COMMENT '数量',
  `amount` decimal(10, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '总价',
  `promotion_amount` decimal(10, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '商品优惠总金额',
  `promotion_list` varchar(255) NOT NULL COMMENT '促销信息',
  `weight` decimal(10, 2) NULL DEFAULT NULL COMMENT '总重量',
  `sendnums` smallint(5) UNSIGNED NULL DEFAULT NULL COMMENT '发货数量',
  `addon` text NULL COMMENT '货品明细序列号存储',
  `utime` bigint(12) UNSIGNED NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 COMMENT = '订单明细表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for order_log
-- ----------------------------
DROP TABLE IF EXISTS `order_log`;
CREATE TABLE `order_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `order_id` varchar(20) NULL DEFAULT NULL COMMENT '订单ID',
  `user_id` int(10) UNSIGNED NULL DEFAULT NULL COMMENT '用户ID',
  `type` tinyint(2) UNSIGNED NULL DEFAULT 1 COMMENT '类型',
  `msg` varchar(100) NULL DEFAULT NULL COMMENT '描述介绍',
  `data` varchar(1000) NULL DEFAULT NULL COMMENT '请求的数据json',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 COMMENT = '订单记录表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for pages
-- ----------------------------
DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '可视化区域编码',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '可编辑区域名称',
  `desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '描述',
  `layout` tinyint(2) UNSIGNED NULL DEFAULT 1 COMMENT '布局样式编码，1，手机端',
  `type` tinyint(1) UNSIGNED NULL DEFAULT 1 COMMENT '1手机端，2PC端',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 ROW_FORMAT = Compact;

-- ----------------------------
-- Records of pages
-- ----------------------------
INSERT INTO `pages` VALUES (1, 'mobile_home', '移动端首页', '移动端首页相关操作，可视化移动端、小程序端首页布局', 1, 1);

-- ----------------------------
-- Table structure for pages_items
-- ----------------------------
DROP TABLE IF EXISTS `pages_items`;
CREATE TABLE `pages_items`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `widget_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '组件编码',
  `page_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '页面编码',
  `position_id` tinyint(2) UNSIGNED NOT NULL DEFAULT 1 COMMENT '布局位置',
  `sort` tinyint(2) UNSIGNED NOT NULL DEFAULT 1 COMMENT '排序，越小越靠前',
  `params` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '组件配置内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 ROW_FORMAT = Compact;

-- ----------------------------
-- Records of pages_items
-- ----------------------------
INSERT INTO `pages_items` VALUES (22, 'search', 'mobile_home', 0, 1, '{\"keywords\":\"请输入关键字搜索\",\"style\":\"round\"}');
INSERT INTO `pages_items` VALUES (23, 'articleClassify', 'mobile_home', 1, 2, '{\"limit\":3,\"articleClassifyId\":\"\"}');
INSERT INTO `pages_items` VALUES (24, 'imgSlide', 'mobile_home', 2, 3, '{\"duration\":2500,\"list\":[{\"image\":\"\\/static\\/images\\/empty-banner.png\",\"linkType\":\"\",\"linkValue\":\"\"},{\"image\":\"\\/static\\/images\\/empty-banner.png\",\"linkType\":\"\",\"linkValue\":\"\"}]}');
INSERT INTO `pages_items` VALUES (25, 'notice', 'mobile_home', 3, 4, '{\"type\":\"auto\"}');
INSERT INTO `pages_items` VALUES (26, 'navBar', 'mobile_home', 4, 5, '{\"limit\":4,\"list\":[{\"image\":\"\\/static\\/images\\/empty.png\",\"text\":\"按钮1\",\"linkType\":\"\",\"linkValue\":\"\"},{\"image\":\"\\/static\\/images\\/empty.png\",\"text\":\"按钮2\",\"linkType\":\"\",\"linkValue\":\"\"},{\"image\":\"\\/static\\/images\\/empty.png\",\"text\":\"按钮3\",\"linkType\":\"\",\"linkValue\":\"\"},{\"image\":\"\\/static\\/images\\/empty.png\",\"text\":\"按钮4\",\"linkType\":\"\",\"linkValue\":\"\"}]}');
INSERT INTO `pages_items` VALUES (27, 'goods', 'mobile_home', 5, 6, '{\"title\":\"热门商品\",\"lookMore\":\"true\",\"type\":\"auto\",\"classifyId\":\"\",\"brandId\":\"\",\"limit\":10,\"display\":\"list\",\"column\":2,\"list\":[{\"id\":1,\"name\":\"DKCHENPIN2018秋新款天丝中长款修身风衣外套女\",\"bn\":118336505,\"brief\":\"可调节袖 系带收腰设\",\"price\":450,\"mktprice\":600,\"image_id\":\"b419e4164d5726d057b2ae195f9a96df\",\"goods_cat_id\":18,\"goods_type_id\":1,\"brand_id\":14,\"is_nomal_virtual\":1,\"marketable\":1,\"stock\":2796,\"weight\":400,\"unit\":\"件\",\"spes_desc\":{\"颜色\":[\"红色\",\"白色\",\"绿色\",\"蓝色\"],\"规格\":[\"规格1\",\"规格2\",\"规格3\",\"规格4\"]},\"params\":\"a:1:{s:6:\\u0022材质\\u0022;s:6:\\u0022化纤\\u0022;}\",\"comments_count\":0,\"view_count\":0,\"buy_count\":0,\"sort\":100,\"is_recommend\":1,\"is_hot\":1,\"brand_name\":\"DKCHENPIN\",\"cat_name\":\"风衣\",\"image_url\":\"http:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/b7\\/03\\/ed\\/5ba9e78922087.jpg\",\"product\":{\"id\":1,\"goods_id\":1,\"barcode\":\"\",\"sn\":\"P5378659179491\",\"price\":450,\"mktprice\":600,\"marketable\":1,\"stock\":196,\"spes_desc\":\"颜色:红色,规格:规格1\",\"is_defalut\":1,\"image_id\":\"\",\"isdel\":\"\",\"name\":\"DKCHENPIN2018秋新款天丝中长款修身风衣外套女\",\"bn\":118336505,\"image_path\":\"http:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/b7\\/03\\/ed\\/5ba9e78922087.jpg\",\"total_stock\":198,\"grade_info\":{\"id\":\"\"},\"default_spes_desc\":{\"颜色\":{\"红色\":{\"name\":\"红色\",\"is_default\":\"true\"},\"白色\":{\"name\":\"白色\",\"product_id\":2},\"绿色\":{\"name\":\"绿色\",\"product_id\":22},\"蓝色\":{\"name\":\"蓝色\",\"product_id\":3}},\"规格\":{\"规格1\":{\"name\":\"规格1\",\"is_default\":\"true\"},\"规格2\":{\"name\":\"规格2\",\"product_id\":22},\"规格3\":{\"name\":\"规格3\",\"product_id\":7},\"规格4\":{\"name\":\"规格4\",\"product_id\":11}}},\"amount\":450,\"promotion_amount\":0},\"album\":[\"http:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/b7\\/03\\/ed\\/5ba9e78922087.jpg\",\"http:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/5b\\/ff\\/67\\/5ba9e78294c5a.jpg\",\"http:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/9f\\/81\\/10\\/5ba9e786c45eb.jpg\",\"http:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/df\\/6d\\/df\\/5ba9e78ac77d0.jpg\",\"http:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/e9\\/bc\\/30\\/5ba9e786e2f66.jpg\"],\"isfav\":\"false\"},{\"id\":2,\"name\":\"七匹狼羽绒服男短款2018冬季新款男士中年休闲爸爸装男装潮流外套\",\"bn\":5446546546,\"brief\":\"8周年店庆，22号10点到11点 全场商品3件6折\",\"price\":600,\"mktprice\":590,\"image_id\":\"6ee0f5a5ac6c53418852ee6cc78aeb48\",\"goods_cat_id\":10,\"goods_type_id\":1,\"brand_id\":11,\"is_nomal_virtual\":1,\"marketable\":1,\"stock\":679,\"weight\":0,\"unit\":\"件\",\"spes_desc\":{\"颜色\":{\"1\":\"白色\",\"3\":\"蓝色\",\"4\":\"紫色\"},\"规格\":[\"规格1\",\"规格2\"]},\"params\":\"\",\"comments_count\":0,\"view_count\":0,\"buy_count\":0,\"sort\":100,\"is_recommend\":1,\"is_hot\":1,\"brand_name\":\"千仞岗\",\"cat_name\":\"毛呢外套\",\"image_url\":\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/8c\\/f8\\/53\\/5bc9a3b2916a4.jpg\",\"product\":{\"id\":23,\"goods_id\":2,\"barcode\":\"\",\"sn\":-1,\"price\":600,\"mktprice\":590,\"marketable\":1,\"stock\":98,\"spes_desc\":\"颜色:白色,规格:规格1\",\"is_defalut\":1,\"image_id\":\"\",\"isdel\":\"\",\"name\":\"七匹狼羽绒服男短款2018冬季新款男士中年休闲爸爸装男装潮流外套\",\"bn\":5446546546,\"image_path\":\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/8c\\/f8\\/53\\/5bc9a3b2916a4.jpg\",\"total_stock\":98,\"grade_info\":{\"id\":\"\"},\"default_spes_desc\":{\"颜色\":{\"白色\":{\"name\":\"白色\",\"is_default\":\"true\"},\"蓝色\":{\"name\":\"蓝色\",\"product_id\":24},\"紫色\":{\"name\":\"紫色\",\"product_id\":25}},\"规格\":{\"规格1\":{\"name\":\"规格1\",\"is_default\":\"true\"},\"规格2\":{\"name\":\"规格2\",\"product_id\":26}}},\"amount\":600,\"promotion_amount\":0},\"album\":[\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/8c\\/f8\\/53\\/5bc9a3b2916a4.jpg\"],\"isfav\":\"false\"},{\"id\":4,\"name\":\"芙娜妮2018秋冬吊带连衣裙女两件套条纹针织打底衫背带PU皮裙套装\",\"bn\":78678657865,\"brief\":\"品牌: 芙娜妮适用年龄: 25-29周岁尺码: S M L XL图案: 条纹风格: 街头街头: 欧美领型: 圆领腰型: 中腰衣门襟: 套头颜色分类: 红色袖型: 其他组合形式: 两件套\",\"price\":200,\"mktprice\":200,\"image_id\":\"fce63f9c69c6c4ec606b544fcc7610a2\",\"goods_cat_id\":4,\"goods_type_id\":1,\"brand_id\":15,\"is_nomal_virtual\":1,\"marketable\":1,\"stock\":560,\"weight\":0,\"unit\":\"件\",\"spes_desc\":{\"颜色\":[\"红色\",\"白色\"],\"规格\":[\"规格1\",\"规格2\"]},\"params\":\"\",\"comments_count\":0,\"view_count\":0,\"buy_count\":0,\"sort\":100,\"is_recommend\":1,\"is_hot\":1,\"brand_name\":\"薇咔拉\",\"cat_name\":\"浪漫裙装\",\"image_url\":\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/dd\\/bd\\/35\\/5bc9a50154075.jpg\",\"product\":{\"id\":29,\"goods_id\":4,\"barcode\":\"\",\"sn\":51111,\"price\":200,\"mktprice\":200,\"marketable\":2,\"stock\":98,\"spes_desc\":\"颜色:红色,规格:规格1\",\"is_defalut\":1,\"image_id\":\"\",\"isdel\":\"\",\"name\":\"芙娜妮2018秋冬吊带连衣裙女两件套条纹针织打底衫背带PU皮裙套装\",\"bn\":78678657865,\"image_path\":\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/dd\\/bd\\/35\\/5bc9a50154075.jpg\",\"total_stock\":98,\"grade_info\":{\"id\":\"\"},\"default_spes_desc\":{\"颜色\":{\"红色\":{\"name\":\"红色\",\"is_default\":\"true\"},\"白色\":{\"name\":\"白色\",\"product_id\":30}},\"规格\":{\"规格1\":{\"name\":\"规格1\",\"is_default\":\"true\"},\"规格2\":{\"name\":\"规格2\",\"product_id\":31}}},\"amount\":200,\"promotion_amount\":0},\"album\":[\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/dd\\/bd\\/35\\/5bc9a50154075.jpg\",\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/b3\\/16\\/38\\/5bc9a50662303.jpg\",\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/2e\\/1b\\/3b\\/5bc9a50900998.jpg\"],\"isfav\":\"false\"},{\"id\":5,\"name\":\"正品代购PINKO女包2018新款燕子包单肩斜挎压花徽章小香风链条包\",\"bn\":5465,\"brief\":\"PINKO质地: 牛皮皮革材质: 头层牛皮风格: 欧美时尚成色: 全新颜色分类: 热带雨林 黑色勋章 白色勋章 编织小香风 黑色压花 红色压花 黑色镶钻眼 黑色单排 红色单排 白色涂鸦 黑色涂鸦 粉黑涂鸦 黄黑涂鸦 黑色字母可乐 白色字母鳄鱼纹 红色字母 黑色枪排 红色love 白色珍珠 黑色珍珠 黑色镶钻双排 粉色镶钻双排 其他颜色拍下备注颜色有无夹层: 有背包方式: 单肩斜挎手提适用场景: 休闲\",\"price\":200,\"mktprice\":190,\"image_id\":\"3e1c30dd1125de24e5395d3cd39ef5d8\",\"goods_cat_id\":9,\"goods_type_id\":1,\"brand_id\":0,\"is_nomal_virtual\":1,\"marketable\":1,\"stock\":200,\"weight\":0,\"unit\":\"件\",\"spes_desc\":\"\",\"params\":\"\",\"comments_count\":0,\"view_count\":0,\"buy_count\":0,\"sort\":100,\"is_recommend\":1,\"is_hot\":1,\"brand_name\":\"\",\"cat_name\":\"女包\",\"image_url\":\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/af\\/00\\/b7\\/5bc9a5b89bd9a.jpg\",\"product\":{\"id\":33,\"goods_id\":5,\"barcode\":\"\",\"sn\":564456,\"price\":200,\"mktprice\":190,\"marketable\":1,\"stock\":200,\"spes_desc\":\"\",\"is_defalut\":1,\"image_id\":\"\",\"isdel\":\"\",\"name\":\"正品代购PINKO女包2018新款燕子包单肩斜挎压花徽章小香风链条包\",\"bn\":5465,\"image_path\":\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/af\\/00\\/b7\\/5bc9a5b89bd9a.jpg\",\"total_stock\":200,\"grade_info\":{\"id\":\"\"},\"amount\":200,\"promotion_amount\":0},\"album\":[\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/af\\/00\\/b7\\/5bc9a5b89bd9a.jpg\",\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/b7\\/9f\\/72\\/5bc9a5c440801.jpg\",\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/4c\\/28\\/57\\/5bc9a5c53aa6e.jpg\",\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/76\\/7e\\/81\\/5bc9a5c7bbc8e.jpg\"],\"isfav\":\"false\"},{\"id\":7,\"name\":\"太平鸟男装 夏季新品纯棉T恤男士黑色短袖潮字母印花韩版修身T恤\",\"bn\":\"\",\"brief\":\"品牌: PEACEBIRD\\/太平鸟货号: BWDA82170上市年份季节: 2018年夏季销售渠道类型: 纯电商(只在线上销售)厚薄: 常规面料分类: 棉毛布\",\"price\":99,\"mktprice\":99,\"image_id\":\"4f86bd749dddd098403fc44a1e473643\",\"goods_cat_id\":3,\"goods_type_id\":1,\"brand_id\":12,\"is_nomal_virtual\":1,\"marketable\":1,\"stock\":1741,\"weight\":0,\"unit\":\"\",\"spes_desc\":{\"颜色\":{\"1\":\"白色\",\"5\":\"黑色\"},\"规格\":[\"规格1\",\"规格2\",\"规格3\"]},\"params\":\"\",\"comments_count\":0,\"view_count\":0,\"buy_count\":0,\"sort\":100,\"is_recommend\":1,\"is_hot\":1,\"brand_name\":\"艾尚臣\",\"cat_name\":\"精选上衣\",\"image_url\":\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/0b\\/b2\\/ff\\/5bc9a6de5361c.jpg\",\"product\":{\"id\":34,\"goods_id\":7,\"barcode\":\"\",\"sn\":1111,\"price\":99,\"mktprice\":99,\"marketable\":2,\"stock\":299,\"spes_desc\":\"颜色:白色,规格:规格1\",\"is_defalut\":1,\"image_id\":\"\",\"isdel\":\"\",\"name\":\"太平鸟男装 夏季新品纯棉T恤男士黑色短袖潮字母印花韩版修身T恤\",\"bn\":\"\",\"image_path\":\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/0b\\/b2\\/ff\\/5bc9a6de5361c.jpg\",\"total_stock\":299,\"grade_info\":{\"id\":\"\"},\"default_spes_desc\":{\"颜色\":{\"白色\":{\"name\":\"白色\",\"is_default\":\"true\"},\"黑色\":{\"name\":\"黑色\",\"product_id\":37}},\"规格\":{\"规格1\":{\"name\":\"规格1\",\"is_default\":\"true\"},\"规格2\":{\"name\":\"规格2\",\"product_id\":35},\"规格3\":{\"name\":\"规格3\",\"product_id\":36}}},\"amount\":99,\"promotion_amount\":0},\"album\":[\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/0b\\/b2\\/ff\\/5bc9a6de5361c.jpg\",\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/58\\/57\\/c8\\/5bc9a6de50a60.jpg\",\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/d1\\/d7\\/cb\\/5bc9a6dee7ebb.jpg\"],\"isfav\":\"false\"},{\"id\":8,\"name\":\"秋装连衣裙女2018新款七分袖职业名媛气质中长女装正式场合裙子\",\"bn\":\"\",\"brief\":\"组合形式: 单件裙长: 中长裙款式: 其他\\/other袖长: 七分袖领型: V领袖型: 其他腰型: 高腰衣门襟: 套头\",\"price\":220,\"mktprice\":220,\"image_id\":\""2020/08/20 17:39:05"75d200f105ba941d815ab5\",\"goods_cat_id\":4,\"goods_type_id\":1,\"brand_id\":1,\"is_nomal_virtual\":1,\"marketable\":1,\"stock\":1500,\"weight\":0,\"unit\":\"件\",\"spes_desc\":{\"颜色\":{\"0\":\"红色\",\"3\":\"蓝色\"},\"规格\":[\"规格1\",\"规格2\",\"规格3\"]},\"params\":\"\",\"comments_count\":0,\"view_count\":0,\"buy_count\":0,\"sort\":100,\"is_recommend\":1,\"is_hot\":1,\"brand_name\":\"依嬅莎\",\"cat_name\":\"浪漫裙装\",\"image_url\":\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/ce\\/ae\\/8d\\/5bc9a81609585.jpg\",\"product\":{\"id\":40,\"goods_id\":8,\"barcode\":\"\",\"sn\":21111,\"price\":220,\"mktprice\":220,\"marketable\":2,\"stock\":188,\"spes_desc\":\"颜色:红色,规格:规格1\",\"is_defalut\":1,\"image_id\":\"\",\"isdel\":\"\",\"name\":\"秋装连衣裙女2018新款七分袖职业名媛气质中长女装正式场合裙子\",\"bn\":\"\",\"image_path\":\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/ce\\/ae\\/8d\\/5bc9a81609585.jpg\",\"total_stock\":198,\"grade_info\":{\"id\":\"\"},\"default_spes_desc\":{\"颜色\":{\"红色\":{\"name\":\"红色\",\"is_default\":\"true\"},\"蓝色\":{\"name\":\"蓝色\",\"product_id\":43}},\"规格\":{\"规格1\":{\"name\":\"规格1\",\"is_default\":\"true\"},\"规格2\":{\"name\":\"规格2\",\"product_id\":41},\"规格3\":{\"name\":\"规格3\",\"product_id\":42}}},\"amount\":220,\"promotion_amount\":0},\"album\":[\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/ce\\/ae\\/8d\\/5bc9a81609585.jpg\",\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/e9\\/ac\\/a3\\/5bc9a8167a827.jpg\",\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/7e\\/18\\/48\\/5bc9a816ce21b.jpg\",\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/99\\/3c\\/3e\\/5bc9a817e6b9d.jpg\"],\"isfav\":\"false\"},{\"id\":9,\"name\":\"2018冷冬新款棉衣男士加肥加大码中长款棉服韩版潮流加厚棉袄外套\",\"bn\":\"\",\"brief\":\"品牌: 奢旺填充物: 仿丝棉货号: 之江A09--MY001基础风格: 青春流行上市年份季节: 2018年秋季厚薄: 常规材质成分: 聚酯纤维100%\",\"price\":300,\"mktprice\":320,\"image_id\":\"052d4af90ec88851c10982bf7fdfa763\",\"goods_cat_id\":3,\"goods_type_id\":1,\"brand_id\":0,\"is_nomal_virtual\":1,\"marketable\":1,\"stock\":500,\"weight\":0,\"unit\":\"\",\"spes_desc\":\"\",\"params\":\"\",\"comments_count\":0,\"view_count\":0,\"buy_count\":0,\"sort\":100,\"is_recommend\":1,\"is_hot\":1,\"brand_name\":\"\",\"cat_name\":\"精选上衣\",\"image_url\":\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/a4\\/cd\\/ec\\/5bc9a989cb351.jpg\",\"product\":{\"id\":46,\"goods_id\":9,\"barcode\":\"\",\"sn\":23045242,\"price\":300,\"mktprice\":320,\"marketable\":1,\"stock\":499,\"spes_desc\":\"\",\"is_defalut\":1,\"image_id\":\"\",\"isdel\":\"\",\"name\":\"2018冷冬新款棉衣男士加肥加大码中长款棉服韩版潮流加厚棉袄外套\",\"bn\":\"\",\"image_path\":\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/a4\\/cd\\/ec\\/5bc9a989cb351.jpg\",\"total_stock\":499,\"grade_info\":{\"id\":\"\"},\"amount\":300,\"promotion_amount\":0},\"album\":[\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/a4\\/cd\\/ec\\/5bc9a989cb351.jpg\",\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/76\\/6d\\/d5\\/5bc9a988051b3.jpg\",\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/51\\/3a\\/27\\/5bc9a98957a8c.jpg\",\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/99\\/99\\/1d\\/5bc9a98960531.jpg\"],\"isfav\":\"false\"},{\"id\":10,\"name\":\"衬衫男士秋季韩版修身潮流百搭帅气休闲外套白色衬衣加绒长袖寸衫\",\"bn\":456546456,\"brief\":\"品牌: 简旗货号: 22TC144基础风格: 青春流行上市年份季节: 2018年夏季厚薄: 常规材质成分: 棉100%\",\"price\":69,\"mktprice\":69,\"image_id\":\"deed2e4f1c54f87eb672ad8c444ba229\",\"goods_cat_id\":3,\"goods_type_id\":1,\"brand_id\":14,\"is_nomal_virtual\":1,\"marketable\":1,\"stock\":1880,\"weight\":0,\"unit\":\"件\",\"spes_desc\":{\"颜色\":{\"1\":\"白色\",\"3\":\"蓝色\",\"6\":\"棕色\"},\"规格\":{\"1\":\"规格2\",\"2\":\"规格3\"}},\"params\":\"\",\"comments_count\":0,\"view_count\":0,\"buy_count\":0,\"sort\":100,\"is_recommend\":1,\"is_hot\":1,\"brand_name\":\"DKCHENPIN\",\"cat_name\":\"精选上衣\",\"image_url\":\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/0c\\/4b\\/01\\/5bc9ab85cc335.jpg\",\"product\":{\"id\":47,\"goods_id\":10,\"barcode\":\"\",\"sn\":61111,\"price\":69,\"mktprice\":69,\"marketable\":2,\"stock\":289,\"spes_desc\":\"颜色:白色,规格:规格2\",\"is_defalut\":1,\"image_id\":\"\",\"isdel\":\"\",\"name\":\"衬衫男士秋季韩版修身潮流百搭帅气休闲外套白色衬衣加绒长袖寸衫\",\"bn\":456546456,\"image_path\":\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/0c\\/4b\\/01\\/5bc9ab85cc335.jpg\",\"total_stock\":289,\"grade_info\":{\"id\":\"\"},\"default_spes_desc\":{\"颜色\":{\"白色\":{\"name\":\"白色\",\"is_default\":\"true\"},\"蓝色\":{\"name\":\"蓝色\",\"product_id\":48},\"棕色\":{\"name\":\"棕色\",\"product_id\":49}},\"规格\":{\"规格2\":{\"name\":\"规格2\",\"is_default\":\"true\"},\"规格3\":{\"name\":\"规格3\",\"product_id\":50}}},\"amount\":69,\"promotion_amount\":0},\"album\":[\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/0c\\/4b\\/01\\/5bc9ab85cc335.jpg\",\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/08\\/d0\\/3a\\/5bc9ab837a41a.jpg\",\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/46\\/4e\\/5e\\/5bc9ab85b6541.jpg\",\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/83\\/37\\/8a\\/5bc9ab85d0414.jpg\"],\"isfav\":\"false\"},{\"id\":11,\"name\":33,\"bn\":99,\"brief\":999,\"price\":0,\"mktprice\":0,\"image_id\":\"48d7337ff7a02c6a98e866752b1292b7\",\"goods_cat_id\":3,\"goods_type_id\":1,\"brand_id\":14,\"is_nomal_virtual\":1,\"marketable\":1,\"stock\":0,\"weight\":0,\"unit\":\"\",\"spes_desc\":\"\",\"params\":\"\",\"comments_count\":0,\"view_count\":0,\"buy_count\":0,\"sort\":100,\"is_recommend\":2,\"is_hot\":2,\"label_ids\":\"\"}]}');
INSERT INTO `pages_items` VALUES (28, 'imgSlide', 'mobile_home', 6, 7, '{\"duration\":2500,\"list\":[{\"image\":\"\\/static\\/images\\/empty-banner.png\",\"linkType\":\"\",\"linkValue\":\"\"},{\"image\":\"\\/static\\/images\\/empty-banner.png\",\"linkType\":\"\",\"linkValue\":\"\"}]}');
INSERT INTO `pages_items` VALUES (29, 'goods', 'mobile_home', 7, 8, '{\"title\":\"推荐商品\",\"lookMore\":\"true\",\"type\":\"auto\",\"classifyId\":\"\",\"brandId\":\"\",\"limit\":10,\"display\":\"list\",\"column\":2,\"list\":[{\"id\":1,\"name\":\"DKCHENPIN2018秋新款天丝中长款修身风衣外套女\",\"bn\":118336505,\"brief\":\"可调节袖 系带收腰设\",\"price\":450,\"mktprice\":600,\"image_id\":\"b419e4164d5726d057b2ae195f9a96df\",\"goods_cat_id\":18,\"goods_type_id\":1,\"brand_id\":14,\"is_nomal_virtual\":1,\"marketable\":1,\"stock\":2796,\"weight\":400,\"unit\":\"件\",\"spes_desc\":{\"颜色\":[\"红色\",\"白色\",\"绿色\",\"蓝色\"],\"规格\":[\"规格1\",\"规格2\",\"规格3\",\"规格4\"]},\"params\":\"a:1:{s:6:\\u0022材质\\u0022;s:6:\\u0022化纤\\u0022;}\",\"comments_count\":0,\"view_count\":0,\"buy_count\":0,\"sort\":100,\"is_recommend\":1,\"is_hot\":1,\"brand_name\":\"DKCHENPIN\",\"cat_name\":\"风衣\",\"image_url\":\"http:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/b7\\/03\\/ed\\/5ba9e78922087.jpg\",\"product\":{\"id\":1,\"goods_id\":1,\"barcode\":\"\",\"sn\":\"P5378659179491\",\"price\":450,\"mktprice\":600,\"marketable\":1,\"stock\":196,\"spes_desc\":\"颜色:红色,规格:规格1\",\"is_defalut\":1,\"image_id\":\"\",\"isdel\":\"\",\"name\":\"DKCHENPIN2018秋新款天丝中长款修身风衣外套女\",\"bn\":118336505,\"image_path\":\"http:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/b7\\/03\\/ed\\/5ba9e78922087.jpg\",\"total_stock\":198,\"grade_info\":{\"id\":\"\"},\"default_spes_desc\":{\"颜色\":{\"红色\":{\"name\":\"红色\",\"is_default\":\"true\"},\"白色\":{\"name\":\"白色\",\"product_id\":2},\"绿色\":{\"name\":\"绿色\",\"product_id\":22},\"蓝色\":{\"name\":\"蓝色\",\"product_id\":3}},\"规格\":{\"规格1\":{\"name\":\"规格1\",\"is_default\":\"true\"},\"规格2\":{\"name\":\"规格2\",\"product_id\":22},\"规格3\":{\"name\":\"规格3\",\"product_id\":7},\"规格4\":{\"name\":\"规格4\",\"product_id\":11}}},\"amount\":450,\"promotion_amount\":0},\"album\":[\"http:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/b7\\/03\\/ed\\/5ba9e78922087.jpg\",\"http:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/5b\\/ff\\/67\\/5ba9e78294c5a.jpg\",\"http:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/9f\\/81\\/10\\/5ba9e786c45eb.jpg\",\"http:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/df\\/6d\\/df\\/5ba9e78ac77d0.jpg\",\"http:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/e9\\/bc\\/30\\/5ba9e786e2f66.jpg\"],\"isfav\":\"false\"},{\"id\":2,\"name\":\"七匹狼羽绒服男短款2018冬季新款男士中年休闲爸爸装男装潮流外套\",\"bn\":5446546546,\"brief\":\"8周年店庆，22号10点到11点 全场商品3件6折\",\"price\":600,\"mktprice\":590,\"image_id\":\"6ee0f5a5ac6c53418852ee6cc78aeb48\",\"goods_cat_id\":10,\"goods_type_id\":1,\"brand_id\":11,\"is_nomal_virtual\":1,\"marketable\":1,\"stock\":679,\"weight\":0,\"unit\":\"件\",\"spes_desc\":{\"颜色\":{\"1\":\"白色\",\"3\":\"蓝色\",\"4\":\"紫色\"},\"规格\":[\"规格1\",\"规格2\"]},\"params\":\"\",\"comments_count\":0,\"view_count\":0,\"buy_count\":0,\"sort\":100,\"is_recommend\":1,\"is_hot\":1,\"brand_name\":\"千仞岗\",\"cat_name\":\"毛呢外套\",\"image_url\":\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/8c\\/f8\\/53\\/5bc9a3b2916a4.jpg\",\"product\":{\"id\":23,\"goods_id\":2,\"barcode\":\"\",\"sn\":-1,\"price\":600,\"mktprice\":590,\"marketable\":1,\"stock\":98,\"spes_desc\":\"颜色:白色,规格:规格1\",\"is_defalut\":1,\"image_id\":\"\",\"isdel\":\"\",\"name\":\"七匹狼羽绒服男短款2018冬季新款男士中年休闲爸爸装男装潮流外套\",\"bn\":5446546546,\"image_path\":\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/8c\\/f8\\/53\\/5bc9a3b2916a4.jpg\",\"total_stock\":98,\"grade_info\":{\"id\":\"\"},\"default_spes_desc\":{\"颜色\":{\"白色\":{\"name\":\"白色\",\"is_default\":\"true\"},\"蓝色\":{\"name\":\"蓝色\",\"product_id\":24},\"紫色\":{\"name\":\"紫色\",\"product_id\":25}},\"规格\":{\"规格1\":{\"name\":\"规格1\",\"is_default\":\"true\"},\"规格2\":{\"name\":\"规格2\",\"product_id\":26}}},\"amount\":600,\"promotion_amount\":0},\"album\":[\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/8c\\/f8\\/53\\/5bc9a3b2916a4.jpg\"],\"isfav\":\"false\"},{\"id\":4,\"name\":\"芙娜妮2018秋冬吊带连衣裙女两件套条纹针织打底衫背带PU皮裙套装\",\"bn\":78678657865,\"brief\":\"品牌: 芙娜妮适用年龄: 25-29周岁尺码: S M L XL图案: 条纹风格: 街头街头: 欧美领型: 圆领腰型: 中腰衣门襟: 套头颜色分类: 红色袖型: 其他组合形式: 两件套\",\"price\":200,\"mktprice\":200,\"image_id\":\"fce63f9c69c6c4ec606b544fcc7610a2\",\"goods_cat_id\":4,\"goods_type_id\":1,\"brand_id\":15,\"is_nomal_virtual\":1,\"marketable\":1,\"stock\":560,\"weight\":0,\"unit\":\"件\",\"spes_desc\":{\"颜色\":[\"红色\",\"白色\"],\"规格\":[\"规格1\",\"规格2\"]},\"params\":\"\",\"comments_count\":0,\"view_count\":0,\"buy_count\":0,\"sort\":100,\"is_recommend\":1,\"is_hot\":1,\"brand_name\":\"薇咔拉\",\"cat_name\":\"浪漫裙装\",\"image_url\":\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/dd\\/bd\\/35\\/5bc9a50154075.jpg\",\"product\":{\"id\":29,\"goods_id\":4,\"barcode\":\"\",\"sn\":51111,\"price\":200,\"mktprice\":200,\"marketable\":2,\"stock\":98,\"spes_desc\":\"颜色:红色,规格:规格1\",\"is_defalut\":1,\"image_id\":\"\",\"isdel\":\"\",\"name\":\"芙娜妮2018秋冬吊带连衣裙女两件套条纹针织打底衫背带PU皮裙套装\",\"bn\":78678657865,\"image_path\":\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/dd\\/bd\\/35\\/5bc9a50154075.jpg\",\"total_stock\":98,\"grade_info\":{\"id\":\"\"},\"default_spes_desc\":{\"颜色\":{\"红色\":{\"name\":\"红色\",\"is_default\":\"true\"},\"白色\":{\"name\":\"白色\",\"product_id\":30}},\"规格\":{\"规格1\":{\"name\":\"规格1\",\"is_default\":\"true\"},\"规格2\":{\"name\":\"规格2\",\"product_id\":31}}},\"amount\":200,\"promotion_amount\":0},\"album\":[\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/dd\\/bd\\/35\\/5bc9a50154075.jpg\",\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/b3\\/16\\/38\\/5bc9a50662303.jpg\",\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/2e\\/1b\\/3b\\/5bc9a50900998.jpg\"],\"isfav\":\"false\"},{\"id\":5,\"name\":\"正品代购PINKO女包2018新款燕子包单肩斜挎压花徽章小香风链条包\",\"bn\":5465,\"brief\":\"PINKO质地: 牛皮皮革材质: 头层牛皮风格: 欧美时尚成色: 全新颜色分类: 热带雨林 黑色勋章 白色勋章 编织小香风 黑色压花 红色压花 黑色镶钻眼 黑色单排 红色单排 白色涂鸦 黑色涂鸦 粉黑涂鸦 黄黑涂鸦 黑色字母可乐 白色字母鳄鱼纹 红色字母 黑色枪排 红色love 白色珍珠 黑色珍珠 黑色镶钻双排 粉色镶钻双排 其他颜色拍下备注颜色有无夹层: 有背包方式: 单肩斜挎手提适用场景: 休闲\",\"price\":200,\"mktprice\":190,\"image_id\":\"3e1c30dd1125de24e5395d3cd39ef5d8\",\"goods_cat_id\":9,\"goods_type_id\":1,\"brand_id\":0,\"is_nomal_virtual\":1,\"marketable\":1,\"stock\":200,\"weight\":0,\"unit\":\"件\",\"spes_desc\":\"\",\"params\":\"\",\"comments_count\":0,\"view_count\":0,\"buy_count\":0,\"sort\":100,\"is_recommend\":1,\"is_hot\":1,\"brand_name\":\"\",\"cat_name\":\"女包\",\"image_url\":\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/af\\/00\\/b7\\/5bc9a5b89bd9a.jpg\",\"product\":{\"id\":33,\"goods_id\":5,\"barcode\":\"\",\"sn\":564456,\"price\":200,\"mktprice\":190,\"marketable\":1,\"stock\":200,\"spes_desc\":\"\",\"is_defalut\":1,\"image_id\":\"\",\"isdel\":\"\",\"name\":\"正品代购PINKO女包2018新款燕子包单肩斜挎压花徽章小香风链条包\",\"bn\":5465,\"image_path\":\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/af\\/00\\/b7\\/5bc9a5b89bd9a.jpg\",\"total_stock\":200,\"grade_info\":{\"id\":\"\"},\"amount\":200,\"promotion_amount\":0},\"album\":[\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/af\\/00\\/b7\\/5bc9a5b89bd9a.jpg\",\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/b7\\/9f\\/72\\/5bc9a5c440801.jpg\",\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/4c\\/28\\/57\\/5bc9a5c53aa6e.jpg\",\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/76\\/7e\\/81\\/5bc9a5c7bbc8e.jpg\"],\"isfav\":\"false\"},{\"id\":7,\"name\":\"太平鸟男装 夏季新品纯棉T恤男士黑色短袖潮字母印花韩版修身T恤\",\"bn\":\"\",\"brief\":\"品牌: PEACEBIRD\\/太平鸟货号: BWDA82170上市年份季节: 2018年夏季销售渠道类型: 纯电商(只在线上销售)厚薄: 常规面料分类: 棉毛布\",\"price\":99,\"mktprice\":99,\"image_id\":\"4f86bd749dddd098403fc44a1e473643\",\"goods_cat_id\":3,\"goods_type_id\":1,\"brand_id\":12,\"is_nomal_virtual\":1,\"marketable\":1,\"stock\":1741,\"weight\":0,\"unit\":\"\",\"spes_desc\":{\"颜色\":{\"1\":\"白色\",\"5\":\"黑色\"},\"规格\":[\"规格1\",\"规格2\",\"规格3\"]},\"params\":\"\",\"comments_count\":0,\"view_count\":0,\"buy_count\":0,\"sort\":100,\"is_recommend\":1,\"is_hot\":1,\"brand_name\":\"艾尚臣\",\"cat_name\":\"精选上衣\",\"image_url\":\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/0b\\/b2\\/ff\\/5bc9a6de5361c.jpg\",\"product\":{\"id\":34,\"goods_id\":7,\"barcode\":\"\",\"sn\":1111,\"price\":99,\"mktprice\":99,\"marketable\":2,\"stock\":299,\"spes_desc\":\"颜色:白色,规格:规格1\",\"is_defalut\":1,\"image_id\":\"\",\"isdel\":\"\",\"name\":\"太平鸟男装 夏季新品纯棉T恤男士黑色短袖潮字母印花韩版修身T恤\",\"bn\":\"\",\"image_path\":\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/0b\\/b2\\/ff\\/5bc9a6de5361c.jpg\",\"total_stock\":299,\"grade_info\":{\"id\":\"\"},\"default_spes_desc\":{\"颜色\":{\"白色\":{\"name\":\"白色\",\"is_default\":\"true\"},\"黑色\":{\"name\":\"黑色\",\"product_id\":37}},\"规格\":{\"规格1\":{\"name\":\"规格1\",\"is_default\":\"true\"},\"规格2\":{\"name\":\"规格2\",\"product_id\":35},\"规格3\":{\"name\":\"规格3\",\"product_id\":36}}},\"amount\":99,\"promotion_amount\":0},\"album\":[\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/0b\\/b2\\/ff\\/5bc9a6de5361c.jpg\",\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/58\\/57\\/c8\\/5bc9a6de50a60.jpg\",\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/d1\\/d7\\/cb\\/5bc9a6dee7ebb.jpg\"],\"isfav\":\"false\"},{\"id\":8,\"name\":\"秋装连衣裙女2018新款七分袖职业名媛气质中长女装正式场合裙子\",\"bn\":\"\",\"brief\":\"组合形式: 单件裙长: 中长裙款式: 其他\\/other袖长: 七分袖领型: V领袖型: 其他腰型: 高腰衣门襟: 套头\",\"price\":220,\"mktprice\":220,\"image_id\":\""2020/08/20 17:39:05"75d200f105ba941d815ab5\",\"goods_cat_id\":4,\"goods_type_id\":1,\"brand_id\":1,\"is_nomal_virtual\":1,\"marketable\":1,\"stock\":1500,\"weight\":0,\"unit\":\"件\",\"spes_desc\":{\"颜色\":{\"0\":\"红色\",\"3\":\"蓝色\"},\"规格\":[\"规格1\",\"规格2\",\"规格3\"]},\"params\":\"\",\"comments_count\":0,\"view_count\":0,\"buy_count\":0,\"sort\":100,\"is_recommend\":1,\"is_hot\":1,\"brand_name\":\"依嬅莎\",\"cat_name\":\"浪漫裙装\",\"image_url\":\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/ce\\/ae\\/8d\\/5bc9a81609585.jpg\",\"product\":{\"id\":40,\"goods_id\":8,\"barcode\":\"\",\"sn\":21111,\"price\":220,\"mktprice\":220,\"marketable\":2,\"stock\":188,\"spes_desc\":\"颜色:红色,规格:规格1\",\"is_defalut\":1,\"image_id\":\"\",\"isdel\":\"\",\"name\":\"秋装连衣裙女2018新款七分袖职业名媛气质中长女装正式场合裙子\",\"bn\":\"\",\"image_path\":\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/ce\\/ae\\/8d\\/5bc9a81609585.jpg\",\"total_stock\":198,\"grade_info\":{\"id\":\"\"},\"default_spes_desc\":{\"颜色\":{\"红色\":{\"name\":\"红色\",\"is_default\":\"true\"},\"蓝色\":{\"name\":\"蓝色\",\"product_id\":43}},\"规格\":{\"规格1\":{\"name\":\"规格1\",\"is_default\":\"true\"},\"规格2\":{\"name\":\"规格2\",\"product_id\":41},\"规格3\":{\"name\":\"规格3\",\"product_id\":42}}},\"amount\":220,\"promotion_amount\":0},\"album\":[\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/ce\\/ae\\/8d\\/5bc9a81609585.jpg\",\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/e9\\/ac\\/a3\\/5bc9a8167a827.jpg\",\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/7e\\/18\\/48\\/5bc9a816ce21b.jpg\",\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/99\\/3c\\/3e\\/5bc9a817e6b9d.jpg\"],\"isfav\":\"false\"},{\"id\":9,\"name\":\"2018冷冬新款棉衣男士加肥加大码中长款棉服韩版潮流加厚棉袄外套\",\"bn\":\"\",\"brief\":\"品牌: 奢旺填充物: 仿丝棉货号: 之江A09--MY001基础风格: 青春流行上市年份季节: 2018年秋季厚薄: 常规材质成分: 聚酯纤维100%\",\"price\":300,\"mktprice\":320,\"image_id\":\"052d4af90ec88851c10982bf7fdfa763\",\"goods_cat_id\":3,\"goods_type_id\":1,\"brand_id\":0,\"is_nomal_virtual\":1,\"marketable\":1,\"stock\":500,\"weight\":0,\"unit\":\"\",\"spes_desc\":\"\",\"params\":\"\",\"comments_count\":0,\"view_count\":0,\"buy_count\":0,\"sort\":100,\"is_recommend\":1,\"is_hot\":1,\"brand_name\":\"\",\"cat_name\":\"精选上衣\",\"image_url\":\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/a4\\/cd\\/ec\\/5bc9a989cb351.jpg\",\"product\":{\"id\":46,\"goods_id\":9,\"barcode\":\"\",\"sn\":23045242,\"price\":300,\"mktprice\":320,\"marketable\":1,\"stock\":499,\"spes_desc\":\"\",\"is_defalut\":1,\"image_id\":\"\",\"isdel\":\"\",\"name\":\"2018冷冬新款棉衣男士加肥加大码中长款棉服韩版潮流加厚棉袄外套\",\"bn\":\"\",\"image_path\":\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/a4\\/cd\\/ec\\/5bc9a989cb351.jpg\",\"total_stock\":499,\"grade_info\":{\"id\":\"\"},\"amount\":300,\"promotion_amount\":0},\"album\":[\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/a4\\/cd\\/ec\\/5bc9a989cb351.jpg\",\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/76\\/6d\\/d5\\/5bc9a988051b3.jpg\",\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/51\\/3a\\/27\\/5bc9a98957a8c.jpg\",\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/99\\/99\\/1d\\/5bc9a98960531.jpg\"],\"isfav\":\"false\"},{\"id\":10,\"name\":\"衬衫男士秋季韩版修身潮流百搭帅气休闲外套白色衬衣加绒长袖寸衫\",\"bn\":456546456,\"brief\":\"品牌: 简旗货号: 22TC144基础风格: 青春流行上市年份季节: 2018年夏季厚薄: 常规材质成分: 棉100%\",\"price\":69,\"mktprice\":69,\"image_id\":\"deed2e4f1c54f87eb672ad8c444ba229\",\"goods_cat_id\":3,\"goods_type_id\":1,\"brand_id\":14,\"is_nomal_virtual\":1,\"marketable\":1,\"stock\":1880,\"weight\":0,\"unit\":\"件\",\"spes_desc\":{\"颜色\":{\"1\":\"白色\",\"3\":\"蓝色\",\"6\":\"棕色\"},\"规格\":{\"1\":\"规格2\",\"2\":\"规格3\"}},\"params\":\"\",\"comments_count\":0,\"view_count\":0,\"buy_count\":0,\"sort\":100,\"is_recommend\":1,\"is_hot\":1,\"brand_name\":\"DKCHENPIN\",\"cat_name\":\"精选上衣\",\"image_url\":\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/0c\\/4b\\/01\\/5bc9ab85cc335.jpg\",\"product\":{\"id\":47,\"goods_id\":10,\"barcode\":\"\",\"sn\":61111,\"price\":69,\"mktprice\":69,\"marketable\":2,\"stock\":289,\"spes_desc\":\"颜色:白色,规格:规格2\",\"is_defalut\":1,\"image_id\":\"\",\"isdel\":\"\",\"name\":\"衬衫男士秋季韩版修身潮流百搭帅气休闲外套白色衬衣加绒长袖寸衫\",\"bn\":456546456,\"image_path\":\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/0c\\/4b\\/01\\/5bc9ab85cc335.jpg\",\"total_stock\":289,\"grade_info\":{\"id\":\"\"},\"default_spes_desc\":{\"颜色\":{\"白色\":{\"name\":\"白色\",\"is_default\":\"true\"},\"蓝色\":{\"name\":\"蓝色\",\"product_id\":48},\"棕色\":{\"name\":\"棕色\",\"product_id\":49}},\"规格\":{\"规格2\":{\"name\":\"规格2\",\"is_default\":\"true\"},\"规格3\":{\"name\":\"规格3\",\"product_id\":50}}},\"amount\":69,\"promotion_amount\":0},\"album\":[\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/0c\\/4b\\/01\\/5bc9ab85cc335.jpg\",\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/08\\/d0\\/3a\\/5bc9ab837a41a.jpg\",\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/46\\/4e\\/5e\\/5bc9ab85b6541.jpg\",\"https:\\/\\/b2c.jihainet.com\\/static\\/uploads\\/83\\/37\\/8a\\/5bc9ab85d0414.jpg\"],\"isfav\":\"false\"},{\"id\":11,\"name\":33,\"bn\":99,\"brief\":999,\"price\":0,\"mktprice\":0,\"image_id\":\"48d7337ff7a02c6a98e866752b1292b7\",\"goods_cat_id\":3,\"goods_type_id\":1,\"brand_id\":14,\"is_nomal_virtual\":1,\"marketable\":1,\"stock\":0,\"weight\":0,\"unit\":\"\",\"spes_desc\":\"\",\"params\":\"\",\"comments_count\":0,\"view_count\":0,\"buy_count\":0,\"sort\":100,\"is_recommend\":2,\"is_hot\":2,\"label_ids\":\"\"}]}');
INSERT INTO `pages_items` VALUES (30, 'imgSingle', 'mobile_home', 8, 9, '{\"list\":[{\"image\":\"\\/static\\/images\\/empty-banner.png\",\"linkType\":\"\",\"linkValue\":\"\"}]}');

-- ----------------------------
-- Table structure for payments
-- ----------------------------
DROP TABLE IF EXISTS `payments`;
CREATE TABLE `payments`  (
  `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `code` varchar(50) NULL DEFAULT NULL COMMENT '支付类型编码',
  `name` varchar(50) NULL DEFAULT NULL COMMENT '支付类型名称',
  `is_online` tinyint(1) UNSIGNED NULL DEFAULT 1 COMMENT '是否线上支付 1=线上支付 2=线下支付',
  `params` text NOT NULL COMMENT '参数',
  `sort` smallint(5) UNSIGNED NOT NULL DEFAULT 100 COMMENT '排序',
  `memo` varchar(200) NOT NULL COMMENT '支付方式描述',
  `status` smallint(1) UNSIGNED NOT NULL DEFAULT 2 COMMENT '启用状态 1=启用 2=停用',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `status`(`status`) USING BTREE,
  INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 COMMENT = '支付方式表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of payments
-- ----------------------------
INSERT INTO `payments` VALUES (1, 'wechatpay', '微信支付', 1, '{\"appid\":\"\",\"mch_id\":\"\",\"key\":\"\",\"sslcert\":\"\",\"sslkey\":\"\"}', 100, '点击去微信支付', 2);
INSERT INTO `payments` VALUES (2, 'alipay', '支付宝支付', 1, '{\"appid\":\"\",\"rsa_private_key\":\"\",\"alipay_public_key\":\"\"}', 100, '点击去支付宝支付', 2);
INSERT INTO `payments` VALUES (3, 'offline', '线下支付', 2, '', 100, '联系客服进行线下付款', 1);
INSERT INTO `payments` VALUES (4, 'balancepay', '余额支付', 1, '', 100, '账户余额支付', 1);

-- ----------------------------
-- Table structure for print_express
-- ----------------------------
DROP TABLE IF EXISTS `print_express`;
CREATE TABLE `print_express`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单号',
  `shipper_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '快递公司编码',
  `logistic_code` varchar(400) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '快递单号',
  `print_template` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '面单打印模板内容(html格式)',
  `ctime` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '创建时间',
  `utime` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `order_id`(`order_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '货品ID',
  `goods_id` int(10) UNSIGNED NULL DEFAULT NULL COMMENT '商品id 关联goods.id',
  `barcode` varchar(128) NULL DEFAULT NULL COMMENT '货品条码',
  `sn` varchar(30) NULL DEFAULT NULL COMMENT '商品编码',
  `price` decimal(10, 2) NULL DEFAULT NULL COMMENT '货品价格',
  `costprice` decimal(10, 2) NULL DEFAULT NULL COMMENT '货品成本价',
  `mktprice` decimal(10, 2) NULL DEFAULT NULL COMMENT '货品市场价',
  `marketable` tinyint(1) UNSIGNED NULL DEFAULT NULL COMMENT '上架标志 1=上架 2=下架',
  `stock` int(11) UNSIGNED NULL DEFAULT 0 COMMENT '库存',
  `freeze_stock` int(11) UNSIGNED NULL DEFAULT 0 COMMENT '冻结库存',
  `spes_desc` text NULL COMMENT '规格值逗号分隔存储',
  `is_defalut` tinyint(1) UNSIGNED NULL DEFAULT 2 COMMENT '是否默认货品 1=是 2=否',
  `image_id` char(32) NULL DEFAULT NULL COMMENT '规格图片ID',
  `isdel` bigint(12) UNSIGNED NULL DEFAULT NULL COMMENT '删除标志',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `isdel`(`isdel`) USING BTREE,
  INDEX `goods_id`(`goods_id`) USING BTREE,
  INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 57 COMMENT = '货品表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES (1, 1, NULL, 'P5378659179491', 450.00, 0.00, 600.00, 1, 198, 2, '颜色:红色,规格:规格1', 1, NULL, NULL);
INSERT INTO `products` VALUES (2, 1, NULL, 'P5378659179512', 0.10, 0.00, 600.00, 2, 196, 1, '颜色:白色,规格:规格1', 2, NULL, NULL);
INSERT INTO `products` VALUES (3, 1, NULL, 'P5378659179940', 450.00, 0.00, 0.00, 2, 200, 0, '颜色:蓝色,规格:规格1', 2, NULL, NULL);
INSERT INTO `products` VALUES (4, 1, NULL, 'P5378659179961', 450.00, 0.00, 0.00, 2, 200, 0, '颜色:白色,规格:规格2', 2, NULL, NULL);
INSERT INTO `products` VALUES (5, 1, NULL, 'P5378659179972', 450.00, 0.00, 0.00, 2, 200, 0, '颜色:绿色,规格:规格2', 2, NULL, NULL);
INSERT INTO `products` VALUES (6, 1, NULL, 'P5378659179981', 450.00, 0.00, 0.00, 2, 200, 0, '颜色:蓝色,规格:规格2', 2, NULL, NULL);
INSERT INTO `products` VALUES (7, 1, NULL, 'P5378659179993', 450.00, 0.00, 0.00, 2, 196, 0, '颜色:红色,规格:规格3', 2, NULL, NULL);
INSERT INTO `products` VALUES (8, 1, NULL, 'P5378659180005', 450.00, 0.00, 0.00, 2, 200, 0, '颜色:白色,规格:规格3', 2, NULL, NULL);
INSERT INTO `products` VALUES (9, 1, NULL, 'P5378659180001', 450.00, 0.00, 0.00, 2, 200, 0, '颜色:绿色,规格:规格3', 2, NULL, NULL);
INSERT INTO `products` VALUES (10, 1, NULL, 'P5378659180011', 450.00, 0.00, 0.00, 2, 200, 0, '颜色:蓝色,规格:规格3', 2, NULL, NULL);
INSERT INTO `products` VALUES (11, 1, NULL, 'P5378659180024', 450.00, 0.00, 0.00, 2, 200, 0, '颜色:红色,规格:规格4', 2, NULL, NULL);
INSERT INTO `products` VALUES (12, 1, NULL, 'P5378659180035', 450.00, 0.00, 0.00, 2, 200, 0, '颜色:白色,规格:规格4', 2, NULL, NULL);
INSERT INTO `products` VALUES (13, 1, NULL, 'P5378659180105', 450.00, 0.00, 0.00, 2, 200, 0, '颜色:绿色,规格:规格4', 2, NULL, NULL);
INSERT INTO `products` VALUES (14, 1, NULL, 'P5378659180100', 450.00, 0.00, 0.00, 2, 200, 0, '颜色:蓝色,规格:规格4', 2, NULL, NULL);
INSERT INTO `products` VALUES (22, 1, NULL, 'P5379429769422', 0.00, 0.00, 0.00, 1, 0, 0, 'id', 2, NULL, NULL);
INSERT INTO `products` VALUES (23, 2, NULL, '-1', 600.00, 590.00, 590.00, 1, 98, 0, '颜色:白色,规格:规格1', 1, NULL, NULL);
INSERT INTO `products` VALUES (24, 2, NULL, '-2', 610.00, 600.00, 600.00, 2, 100, 0, '颜色:蓝色,规格:规格1', 2, NULL, NULL);
INSERT INTO `products` VALUES (25, 2, NULL, '-3', 610.00, 600.00, 600.00, 2, 150, 0, '颜色:紫色,规格:规格1', 2, NULL, NULL);
INSERT INTO `products` VALUES (26, 2, NULL, '-4', 610.00, 600.00, 600.00, 2, 120, 0, '颜色:白色,规格:规格2', 2, NULL, NULL);
INSERT INTO `products` VALUES (27, 2, NULL, '-5', 600.00, 600.00, 600.00, 2, 110, 0, '颜色:蓝色,规格:规格2', 2, NULL, NULL);
INSERT INTO `products` VALUES (28, 2, NULL, '-6', 600.00, 600.00, 600.00, 2, 100, 0, '颜色:紫色,规格:规格2', 2, NULL, NULL);
INSERT INTO `products` VALUES (29, 4, NULL, '51111', 200.00, 200.00, 200.00, 2, 98, 0, '颜色:红色,规格:规格1', 1, NULL, NULL);
INSERT INTO `products` VALUES (30, 4, NULL, '5222', 209.00, 200.00, 200.00, 2, 130, 0, '颜色:白色,规格:规格1', 2, NULL, NULL);
INSERT INTO `products` VALUES (31, 4, NULL, '5333', 210.00, 200.00, 200.00, 2, 150, 0, '颜色:红色,规格:规格2', 2, NULL, NULL);
INSERT INTO `products` VALUES (32, 4, NULL, '5444', 220.00, 200.00, 200.00, 2, 180, 0, '颜色:白色,规格:规格2', 2, NULL, NULL);
INSERT INTO `products` VALUES (33, 5, NULL, '564456', 200.00, 190.00, 190.00, 1, 200, 0, NULL, 1, NULL, NULL);
INSERT INTO `products` VALUES (34, 7, NULL, '1111', 99.00, 99.00, 99.00, 2, 299, 0, '颜色:白色,规格:规格1', 1, NULL, NULL);
INSERT INTO `products` VALUES (35, 7, NULL, '222', 98.00, 98.00, 98.00, 2, 300, 0, '颜色:白色,规格:规格2', 2, NULL, NULL);
INSERT INTO `products` VALUES (36, 7, NULL, '3333', 98.00, 98.00, 99.00, 2, 320, 0, '颜色:白色,规格:规格3', 2, NULL, NULL);
INSERT INTO `products` VALUES (37, 7, NULL, '4444', 97.00, 98.00, 98.00, 2, 321, 0, '颜色:黑色,规格:规格1', 2, NULL, NULL);
INSERT INTO `products` VALUES (38, 7, NULL, '5555', 94.00, 94.00, 94.00, 2, 300, 0, '颜色:黑色,规格:规格2', 2, NULL, NULL);
INSERT INTO `products` VALUES (39, 7, NULL, '6666', 90.00, 90.00, 90.00, 2, 200, 0, '颜色:黑色,规格:规格3', 2, NULL, NULL);
INSERT INTO `products` VALUES (40, 8, NULL, '21111', 220.00, 220.00, 220.00, 2, 198, 10, '颜色:红色,规格:规格1', 1, NULL, NULL);
INSERT INTO `products` VALUES (41, 8, NULL, '22222', 230.00, 230.00, 230.00, 2, 300, 0, '颜色:红色,规格:规格2', 2, NULL, NULL);
INSERT INTO `products` VALUES (42, 8, NULL, '23333', 230.00, 230.00, 230.00, 2, 200, 0, '颜色:红色,规格:规格3', 2, NULL, NULL);
INSERT INTO `products` VALUES (43, 8, NULL, '24444', 225.00, 225.00, 225.00, 2, 200, 0, '颜色:蓝色,规格:规格1', 2, NULL, NULL);
INSERT INTO `products` VALUES (44, 8, NULL, '25555', 225.00, 225.00, 225.00, 2, 300, 0, '颜色:蓝色,规格:规格2', 2, NULL, NULL);
INSERT INTO `products` VALUES (45, 8, NULL, '26666', 224.00, 224.00, 224.00, 2, 300, 0, '颜色:蓝色,规格:规格3', 2, NULL, NULL);
INSERT INTO `products` VALUES (46, 9, NULL, '23045242', 300.00, 320.00, 320.00, 1, 499, 0, NULL, 1, NULL, NULL);
INSERT INTO `products` VALUES (47, 10, NULL, '61111', 69.00, 69.00, 69.00, 2, 289, 0, '颜色:白色,规格:规格2', 1, NULL, NULL);
INSERT INTO `products` VALUES (48, 10, NULL, '62222', 69.00, 69.00, 69.00, 2, 320, 1, '颜色:蓝色,规格:规格2', 2, NULL, NULL);
INSERT INTO `products` VALUES (49, 10, NULL, '63333', 65.00, 65.00, 65.00, 2, 320, 0, '颜色:棕色,规格:规格2', 2, NULL, NULL);
INSERT INTO `products` VALUES (50, 10, NULL, '64444', 65.00, 65.00, 65.00, 2, 330, 0, '颜色:白色,规格:规格3', 2, NULL, NULL);
INSERT INTO `products` VALUES (51, 10, NULL, '65555', 66.00, 66.00, 66.00, 2, 300, 0, '颜色:蓝色,规格:规格3', 2, NULL, NULL);
INSERT INTO `products` VALUES (52, 10, NULL, '66666', 66.00, 66.00, 66.00, 2, 310, 0, '颜色:棕色,规格:规格3', 2, NULL, NULL);
INSERT INTO `products` VALUES (56, 2, NULL, 'P5401938461902', 0.00, 0.00, 0.00, 1, 0, 0, 'id', 2, NULL, NULL);

-- ----------------------------
-- Table structure for promotion
-- ----------------------------
DROP TABLE IF EXISTS `promotion`;
CREATE TABLE `promotion`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL COMMENT '促销名称',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '启用状态，1开启，2关闭',
  `type` smallint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '类型：1促销，2优惠券，3团购，4秒杀',
  `sort` smallint(5) UNSIGNED NOT NULL DEFAULT 100 COMMENT '排序',
  `exclusive` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '排他，1不排他，2排他',
  `auto_receive` smallint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '当时优惠券的时候，自动是否自动领取，1自动领取，2不自动领取',
  `params` text NULL COMMENT '其它参数',
  `stime` bigint(12) UNSIGNED NOT NULL COMMENT '开始时间',
  `etime` bigint(12) UNSIGNED NOT NULL COMMENT '结束时间',
  `isdel` bigint(12) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `isdel`(`isdel`) USING BTREE,
  INDEX `sort`(`sort`) USING BTREE,
  INDEX `status`(`status`) USING BTREE,
  INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 COMMENT = '促销表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of promotion
-- ----------------------------
INSERT INTO `promotion` VALUES (1, 'te'"2020/08/20 17:39:05"0, 2, 1, '[]', 1573574400, 1575907200, NULL);

-- ----------------------------
-- Table structure for promotion_condition
-- ----------------------------
DROP TABLE IF EXISTS `promotion_condition`;
CREATE TABLE `promotion_condition`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `promotion_id` int(10) UNSIGNED NULL DEFAULT NULL COMMENT '促销ID',
  `code` varchar(50) NULL DEFAULT NULL COMMENT '促销条件编码',
  `params` text NULL COMMENT '支付配置参数序列号存储',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `promotion_id`(`promotion_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 COMMENT = '促销条件表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of promotion_condition
-- ----------------------------
INSERT INTO `promotion_condition` VALUES (1, 1, 'GOODS_IDS', '{\"goods_id\":\"10\",\"nums\":\"1\"}');

-- ----------------------------
-- Table structure for promotion_result
-- ----------------------------
DROP TABLE IF EXISTS `promotion_result`;
CREATE TABLE `promotion_result`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `promotion_id` int(10) UNSIGNED NULL DEFAULT NULL COMMENT '促销ID',
  `code` varchar(50) NULL DEFAULT NULL COMMENT '促销条件编码',
  `params` text NULL COMMENT '支付配置参数序列号存储',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `promotion_id`(`promotion_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 COMMENT = '促销结果表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of promotion_result
-- ----------------------------
INSERT INTO `promotion_result` VALUES (1, 1, 'GOODS_DISCOUNT', '{\"discount\":\"4.4\"}');

-- ----------------------------
-- Table structure for qq
-- ----------------------------
DROP TABLE IF EXISTS `qq`;
CREATE TABLE `qq`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `qq` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` int(10) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qq
-- ----------------------------
INSERT INTO `qq` VALUES (19, '淘集集阿里健康个月', 'tt6ttffygyggg', "2020/08/20 17:39:05");
INSERT INTO `qq` VALUES (20, '公交｡◕‿◕｡(๑`･ᴗ･´๑)', 'frrggg', "2020/08/20 17:39:05");
INSERT INTO `qq` VALUES (21, '5554556', 'yghjoohg', "2020/08/20 17:39:05");
INSERT INTO `qq` VALUES (22, '5885368', 'hvcucc', "2020/08/20 17:39:05");

-- ----------------------------
-- Table structure for setting
-- ----------------------------
DROP TABLE IF EXISTS `setting`;
CREATE TABLE `setting`  (
  `skey` varchar(50) NOT NULL DEFAULT '' COMMENT '键',
  `value` text NULL COMMENT '值',
  PRIMARY KEY (`skey`) USING BTREE,
  INDEX `skey`(`skey`) USING BTREE
) ENGINE = InnoDB COMMENT = '店铺设置表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of setting
-- ----------------------------
INSERT INTO `setting` VALUES ('cate_style', '3');
INSERT INTO `setting` VALUES ('cate_type', '1');
INSERT INTO `setting` VALUES ('image_storage_params', '{\"domain\":\"theliuqi.top\",\"accessKeyId\":\"LTAI4Fsy5PWtGt3avPiXfe8X\",\"accessKeySecret\":\"p3XWWJzgTpQJ7yttKFsuOBoBiSbWPw\",\"endpoint\":\"oss-cn-shenzhen.aliyuncs.com\",\"bucket\":\"theliuqi\"}');
INSERT INTO `setting` VALUES ('image_storage_type', 'Aliyun');
INSERT INTO `setting` VALUES ('invoice_switch', '1');
INSERT INTO `setting` VALUES ('kuaidi100_customer', '');
INSERT INTO `setting` VALUES ('kuaidi100_key', '');
INSERT INTO `setting` VALUES ('qq_map_key', '');
INSERT INTO `setting` VALUES ('recommend_keys', '羽绒服 iphone 小米mix');
INSERT INTO `setting` VALUES ('shop_beian', '网站备案信息');
INSERT INTO `setting` VALUES ('shop_default_image', '');
INSERT INTO `setting` VALUES ('shop_desc', '平台描述会展示在前台及微信分享店铺描述');
INSERT INTO `setting` VALUES ('shop_logo', '');
INSERT INTO `setting` VALUES ('shop_mobile', '');
INSERT INTO `setting` VALUES ('shop_name', '我的平台');
INSERT INTO `setting` VALUES ('statistics_code', '');
INSERT INTO `setting` VALUES ('store_switch', '2');
INSERT INTO `setting` VALUES ('wx_official_appid', 'wx666c273d83483a67');
INSERT INTO `setting` VALUES ('wx_official_app_secret', '3a74628fa5d4e2a9515adc134518f303');
INSERT INTO `setting` VALUES ('wx_official_encodeaeskey', 'MOFFvrF8X4ozNGE5C1zUIvahIVmwrVMIXYaKcb0Bx6K');
INSERT INTO `setting` VALUES ('wx_official_head_img', '022bbf0657d3b9ed38a97dd746b2e84c');
INSERT INTO `setting` VALUES ('wx_official_id', '914501855');
INSERT INTO `setting` VALUES ('wx_official_name', '刘琪');
INSERT INTO `setting` VALUES ('wx_official_source_id', 'gh_f3a2065c9584');
INSERT INTO `setting` VALUES ('wx_official_token', 'liuqi');
INSERT INTO `setting` VALUES ('wx_official_type', 'subscribe');

-- ----------------------------
-- Table structure for ship
-- ----------------------------
DROP TABLE IF EXISTS `ship`;
CREATE TABLE `ship`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NULL DEFAULT NULL COMMENT '配送方式名称',
  `has_cod` tinyint(1) UNSIGNED NULL DEFAULT 1 COMMENT '是否货到付款 1=不是货到付款 2=是货到付款',
  `firstunit` mediumint(8) UNSIGNED NULL DEFAULT NULL COMMENT '首重',
  `continueunit` mediumint(8) UNSIGNED NULL DEFAULT NULL COMMENT '续重',
  `def_area_fee` tinyint(1) UNSIGNED NULL DEFAULT 1 COMMENT '按地区设置配送费用是否启用默认配送费用 1=启用 2=不启用',
  `type` tinyint(1) UNSIGNED NULL DEFAULT 1 COMMENT '地区类型 1=全部地区 2=指定地区',
  `firstunit_price` decimal(10, 2) UNSIGNED NULL DEFAULT NULL COMMENT '首重费用',
  `continueunit_price` decimal(10, 2) UNSIGNED NULL DEFAULT NULL COMMENT '续重费用',
  `exp` text NULL COMMENT '配送费用计算表达式',
  `logi_name` varchar(50) NULL DEFAULT NULL COMMENT '物流公司名称',
  `logi_code` varchar(50) NULL DEFAULT NULL COMMENT '物流公司编码',
  `is_def` tinyint(1) UNSIGNED NULL DEFAULT 2 COMMENT '是否默认 1=默认 2=不默认',
  `sort` smallint(5) UNSIGNED NULL DEFAULT 100 COMMENT '配送方式排序 越小越靠前',
  `status` tinyint(1) UNSIGNED NULL DEFAULT 1 COMMENT '状态 1=正常 2=停用',
  `free_postage` tinyint(1) UNSIGNED NULL DEFAULT 2 COMMENT '是否包邮，1包邮，2不包邮',
  `area_fee` text NULL COMMENT '地区配送费用',
  `goodsmoney` decimal(20, 2) NULL DEFAULT 0.00 COMMENT '商品总额满多少免运费',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id`(`id`) USING BTREE,
  INDEX `sort`(`sort`) USING BTREE,
  INDEX `sort_2`(`sort`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 COMMENT = '配送方式表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for sms
-- ----------------------------
DROP TABLE IF EXISTS `sms`;
CREATE TABLE `sms`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `mobile` varchar(15) NOT NULL COMMENT '手机号码',
  `code` varchar(60) NOT NULL,
  `params` varchar(5000) NOT NULL COMMENT '参数',
  `content` varchar(200) NOT NULL COMMENT '内容',
  `update_time` timestamp NOT NULL COMMENT '创建时间',
  `ip` varchar(50) NOT NULL COMMENT 'ip',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1未使用，2已使用',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `mobile`(`mobile`) USING BTREE,
  INDEX `status`(`status`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sms
-- ----------------------------
INSERT INTO `sms` VALUES (1, '17621778414', 'login', '{\"code\":874415}', '您正在登陆账号，验证码是874415，请勿告诉他人。', "2020/08/20 17:39:05", '127.0.0.1', 1);
INSERT INTO `sms` VALUES (2, '17621778414', 'login', '{\"code\":318403}', '您正在登陆账号，验证码是318403，请勿告诉他人。', "2020/08/20 17:39:05", '127.0.0.1', 1);
INSERT INTO `sms` VALUES (3, '17621778414', 'login', '{\"code\":176340}', '您正在登陆账号，验证码是176340，请勿告诉他人。', "2020/08/20 17:39:05", '127.0.0.1', 1);

-- ----------------------------
-- Table structure for store
-- ----------------------------
DROP TABLE IF EXISTS `store`;
CREATE TABLE `store`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'id',
  `store_name` varchar(125) NULL DEFAULT NULL COMMENT '门店名称',
  `mobile` varchar(13) NULL DEFAULT NULL COMMENT '门店电话/手机号',
  `linkman` varchar(32) NULL DEFAULT NULL COMMENT '门店联系人',
  `logo` char(32) NULL DEFAULT NULL COMMENT '门店logo',
  `area_id` int(10) UNSIGNED NULL DEFAULT NULL COMMENT '门店地区id',
  `address` varchar(200) NULL DEFAULT NULL COMMENT '门店详细地址',
  `coordinate` varchar(50) NULL DEFAULT NULL,
  `latitude` varchar(40) NULL DEFAULT NULL COMMENT '纬度',
  `longitude` varchar(40) NULL DEFAULT NULL COMMENT '经度',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `utime` bigint(12) UNSIGNED NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for template
-- ----------------------------
DROP TABLE IF EXISTS `template`;
CREATE TABLE `template`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '模板名称',
  `th_template_id` int(10) UNSIGNED NULL DEFAULT NULL COMMENT '模板ID，第三方平台id',
  `create_time` int(10) UNSIGNED NULL DEFAULT 0 COMMENT '创建时间',
  `user_desc` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '模板描述',
  `source_appid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '模板APPID',
  `developer` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '模板开发者',
  `version` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '模板版本，总共3位，第一位表示重大版本升级，第二位表示小版本升级，第三位表示补丁或更新',
  `image_id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '模板主图',
  `desc` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '模板需要注意事项',
  `qr_demo` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '二维码预览图片',
  `type` tinyint(1) UNSIGNED NULL DEFAULT 1 COMMENT '模板类型，1为小程序',
  `ext_json` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '模板增加模板配置字段',
  `ctime` int(10) NULL DEFAULT NULL COMMENT '数据创建时间',
  `utime` int(10) NULL DEFAULT NULL COMMENT '数据更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 COMMENT = '模板列表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for template_message
-- ----------------------------
DROP TABLE IF EXISTS `template_message`;
CREATE TABLE `template_message`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '消息ID',
  `type` varchar(32) NULL DEFAULT NULL COMMENT '消息类型',
  `code` varchar(32) NULL DEFAULT NULL COMMENT '单号',
  `form_id` varchar(64) NULL DEFAULT NULL COMMENT '要发生给的用户',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `utime` bigint(12) UNSIGNED NULL DEFAULT NULL COMMENT '更新时间',
  `status` tinyint(1) UNSIGNED NULL DEFAULT 1 COMMENT '发送状态 1=未发送 2=已发送',
  `isdel` bigint(12) UNSIGNED NULL DEFAULT NULL COMMENT '删除标识',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for template_order
-- ----------------------------
DROP TABLE IF EXISTS `template_order`;
CREATE TABLE `template_order`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `template_id` int(10) UNSIGNED NULL DEFAULT 0 COMMENT '模板id',
  `appid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商户appid',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `utime` bigint(12) UNSIGNED NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 COMMENT = '模板订购记录表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `username` varchar(20) NULL DEFAULT NULL COMMENT '用户名',
  `password` char(32) NULL DEFAULT NULL COMMENT '密码 md5(md5()+创建时间)',
  `mobile` varchar(15) NULL DEFAULT NULL COMMENT '手机号',
  `sex` tinyint(1) UNSIGNED NULL DEFAULT 3 COMMENT '1=男 2=女 3=未知',
  `birthday` date NULL DEFAULT NULL COMMENT '生日',
  `avatar` varchar(255) NULL DEFAULT NULL COMMENT '头像',
  `nickname` varchar(50) NULL DEFAULT NULL COMMENT '昵称',
  `balance` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '余额',
  `point` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分',
  `grade` tinyint(2) UNSIGNED NOT NULL DEFAULT 0 COMMENT '用户等级',
  `update_time` timestamp NULL DEFAULT NULL,
  `utime` bigint(12) UNSIGNED NULL DEFAULT NULL,
  `status` tinyint(1) UNSIGNED NULL DEFAULT 1 COMMENT '1 = 正常 2 = 停用',
  `pid` int(10) UNSIGNED NULL DEFAULT 0 COMMENT '推荐人',
  `isdel` bigint(12) UNSIGNED NULL DEFAULT NULL COMMENT '删除标志 有数据就是删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 COMMENT = '用户表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, NULL, '14e1b600b1fd579f47433b88e8d85291', '17621778414', 3, NULL, NULL, NULL, 0.00, 0, 0, NULL, NULL, 1, 0, NULL);

-- ----------------------------
-- Table structure for user_bankcards
-- ----------------------------
DROP TABLE IF EXISTS `user_bankcards`;
CREATE TABLE `user_bankcards`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID号',
  `user_id` int(10) UNSIGNED NULL DEFAULT NULL COMMENT '用户ID',
  `bank_name` varchar(60) NULL DEFAULT NULL COMMENT '银行名称',
  `bank_code` varchar(12) NULL DEFAULT NULL COMMENT '银行缩写',
  `bank_area_id` int(10) UNSIGNED NULL DEFAULT NULL COMMENT '账号地区ID',
  `account_bank` varchar(255) NULL DEFAULT NULL COMMENT '开户行',
  `account_name` varchar(60) NULL DEFAULT NULL COMMENT '账户名',
  `card_number` varchar(30) NULL DEFAULT NULL COMMENT '卡号',
  `card_type` tinyint(1) NULL DEFAULT 1 COMMENT '银行卡类型: 1=储蓄卡 2=信用卡',
  `is_default` tinyint(1) UNSIGNED NULL DEFAULT 2 COMMENT '默认卡 1=默认 2=不默认',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `utime` bigint(12) UNSIGNED NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for user_grade
-- ----------------------------
DROP TABLE IF EXISTS `user_grade`;
CREATE TABLE `user_grade`  (
  `id` tinyint(2) UNSIGNED NOT NULL COMMENT 'id',
  `name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '名称',
  `is_def` tinyint(1) NOT NULL DEFAULT 2 COMMENT '1默认，2不默认',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '用户等级表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_grade
-- ----------------------------
INSERT INTO `user_grade` VALUES (1, '普通等级', 1);

-- ----------------------------
-- Table structure for user_log
-- ----------------------------
DROP TABLE IF EXISTS `user_log`;
CREATE TABLE `user_log`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` int(11) UNSIGNED NOT NULL COMMENT '用户id',
  `state` tinyint(1) NULL DEFAULT NULL COMMENT '登录 1  退出2,3注册',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '时间',
  `params` varchar(200) NULL DEFAULT '' COMMENT '参数',
  `ip` varchar(15) NULL DEFAULT NULL COMMENT 'ip地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10010 ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user_log
-- ----------------------------
INSERT INTO `user_log` VALUES (10000, 10000, 2, "2020/08/20 17:39:05", '[]', '127.0.0.1');
INSERT INTO `user_log` VALUES (10001, 13, 1, "2020/08/20 17:39:05", '[]', '127.0.0.1');
INSERT INTO `user_log` VALUES (10002, 13, 1, "2020/08/20 17:39:05", '[]', '192.168.1.101');
INSERT INTO `user_log` VALUES (10003, 13, 1, "2020/08/20 17:39:05", '[]', '192.168.1.113');
INSERT INTO `user_log` VALUES (10004, 14, 1, "2020/08/20 17:39:05", '[]', '127.0.0.1');
INSERT INTO `user_log` VALUES (10005, 13, 1, "2020/08/20 17:39:05", '[]', '127.0.0.1');
INSERT INTO `user_log` VALUES (10006, 13, 2, "2020/08/20 17:39:05", '[]', '127.0.0.1');
INSERT INTO `user_log` VALUES (10007, 13, 1, "2020/08/20 17:39:05", '[]', '127.0.0.1');
INSERT INTO `user_log` VALUES (10008, 13, 1, 1581989537, '[]', '127.0.0.1');
INSERT INTO `user_log` VALUES (10009, 13, 1, 1596678035, '[]', '127.0.0.1');

-- ----------------------------
-- Table structure for user_point_log
-- ----------------------------
DROP TABLE IF EXISTS `user_point_log`;
CREATE TABLE `user_point_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `user_id` int(10) UNSIGNED NOT NULL COMMENT '用户ID',
  `type` tinyint(1) UNSIGNED NULL DEFAULT 1 COMMENT '类型 1=签到 2=购物返积分 3=购物使用积分',
  `num` int(10) NULL DEFAULT 0 COMMENT '积分数量',
  `balance` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '积分余额',
  `remarks` varchar(255) NULL DEFAULT NULL COMMENT '备注',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 COMMENT = '用户积分记录表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for user_ship
-- ----------------------------
DROP TABLE IF EXISTS `user_ship`;
CREATE TABLE `user_ship`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NULL DEFAULT NULL COMMENT '用户id 关联user.id',
  `area_id` int(10) UNSIGNED NULL DEFAULT NULL COMMENT '收货地区ID',
  `address` varchar(200) NULL DEFAULT NULL COMMENT '收货详细地址',
  `name` varchar(50) NULL DEFAULT NULL COMMENT '收货人姓名',
  `mobile` char(15) NULL DEFAULT NULL COMMENT '收货电话',
  `utime` bigint(12) NOT NULL COMMENT '更新时间',
  `is_def` tinyint(1) UNSIGNED NULL DEFAULT NULL COMMENT '是否默认 1=默认 2=不默认',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for user_tocash
-- ----------------------------
DROP TABLE IF EXISTS `user_tocash`;
CREATE TABLE `user_tocash`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID号',
  `user_id` int(10) UNSIGNED NULL DEFAULT NULL COMMENT '用户ID',
  `money` decimal(8, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '提现金额',
  `bank_name` varchar(60) NULL DEFAULT NULL COMMENT '银行名称',
  `bank_code` varchar(12) NULL DEFAULT NULL COMMENT '银行缩写',
  `bank_area_id` int(10) UNSIGNED NULL DEFAULT NULL COMMENT '账号地区ID',
  `account_bank` varchar(255) NULL DEFAULT NULL COMMENT '开户行',
  `account_name` varchar(60) NULL DEFAULT NULL COMMENT '账户名',
  `card_number` varchar(30) NULL DEFAULT NULL COMMENT '卡号',
  `withdrawals` decimal(8, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '提现服务费',
  `type` smallint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1默认，2提现成功，3提现失败',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `utime` bigint(12) UNSIGNED NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for user_token
-- ----------------------------
DROP TABLE IF EXISTS `user_token`;
CREATE TABLE `user_token`  (
  `token` char(32) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `platform` smallint(2) NOT NULL DEFAULT 1 COMMENT '平台类型，1就是默认，2就是微信小程序',
  `update_time` timestamp NOT NULL,
  PRIMARY KEY (`token`) USING BTREE
) ENGINE = InnoDB COMMENT = '用户token' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user_token
-- ----------------------------
INSERT INTO `user_token` VALUES ('6239224bf8a7c1948f36a8ab4fb2cf93', 1, 1, 1584185974);

-- ----------------------------
-- Table structure for user_wx
-- ----------------------------
DROP TABLE IF EXISTS `user_wx`;
CREATE TABLE `user_wx`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `type` tinyint(1) UNSIGNED NULL DEFAULT 1 COMMENT '第三方登录类型，1微信小程序，2微信公众号',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '关联用户表',
  `openid` varchar(50) NULL DEFAULT NULL,
  `session_key` varchar(50) NULL DEFAULT NULL,
  `unionid` varchar(50) NULL DEFAULT NULL,
  `avatar` varchar(255) NULL DEFAULT NULL COMMENT '头像',
  `nickname` varchar(50) NULL DEFAULT NULL COMMENT '昵称',
  `gender` smallint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '性别 0：未知、1：男、2：女',
  `language` varchar(50) NULL DEFAULT NULL COMMENT '语言',
  `city` varchar(80) NULL DEFAULT NULL COMMENT '城市',
  `province` varchar(80) NULL DEFAULT NULL COMMENT '省',
  `country` varchar(80) NULL DEFAULT NULL COMMENT '国家',
  `country_code` varchar(20) NULL DEFAULT NULL COMMENT '手机号码国家编码',
  `mobile` varchar(20) NULL DEFAULT NULL COMMENT '手机号码',
  `update_time` timestamp NULL DEFAULT NULL,
  `utime` bigint(12) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 COMMENT = '用户表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for weixin_author
-- ----------------------------
DROP TABLE IF EXISTS `weixin_author`;
CREATE TABLE `weixin_author`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nick_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '授权方昵称',
  `head_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '授权方头像',
  `service_type_info` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '默认为0',
  `verify_type_info` tinyint(1) NULL DEFAULT -1 COMMENT '授权方认证类型，-1代表未认证，0代表微信认证',
  `user_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '小程序的原始ID',
  `signature` tinytext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '帐号介绍',
  `principal_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '小程序的主体名称',
  `business_info` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '用以了解以下功能的开通状况（0代表未开通，1代表已开通）： open_store:是否开通微信门店功能 open_scan:是否开通微信扫商品功能 open_pay:是否开通微信支付功能 open_card:是否开通微信卡券功能 open_shake:是否开通微信摇一摇功能',
  `qrcode_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '二维码图片的URL',
  `authorization_info` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '授权信息',
  `appid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '授权方appid',
  `appsecret` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '授权方AppSecret',
  `miniprograminfo` tinytext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '可根据这个字段判断是否为小程序类型授权,有值为小程序',
  `func_info` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '小程序授权给开发者的权限集列表，ID为17到19时分别代表： 17.帐号管理权限 18.开发管理权限 19.客服消息管理权限 请注意： 1）该字段的返回不会考虑小程序是否具备该权限集的权限（因为可能部分具备）',
  `authorizer_refresh_token` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '刷新token',
  `authorizer_access_token` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'token',
  `bind_type` tinyint(1) UNSIGNED NULL DEFAULT 2 COMMENT '绑定类型，1为第三方授权绑定，2为自助绑定',
  `author_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'b2c' COMMENT '授权类型，默认b2c',
  `expires_in` int(10) UNSIGNED NULL DEFAULT 0 COMMENT '绑定授权到期时间',
  `ctime` int(10) UNSIGNED NULL DEFAULT 0 COMMENT '小程序授权时间',
  `utime` int(10) UNSIGNED NULL DEFAULT 0 COMMENT '小程序更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 COMMENT = '获取授权方的帐号基本信息表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for weixin_media_message
-- ----------------------------
DROP TABLE IF EXISTS `weixin_media_message`;
CREATE TABLE `weixin_media_message`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NULL DEFAULT NULL COMMENT '标题',
  `author` varchar(100) NULL DEFAULT NULL COMMENT '作者',
  `brief` varchar(255) NULL DEFAULT NULL COMMENT '摘要',
  `image` char(32) NULL DEFAULT NULL COMMENT '封面',
  `content` text NULL COMMENT '文章详情',
  `url` varchar(255) NULL DEFAULT NULL COMMENT '原文地址',
  `ctime` bigint(12) NULL DEFAULT 0 COMMENT '创建时间',
  `utime` bigint(12) NULL DEFAULT 0 COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 COMMENT = '微信图文消息表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for weixin_menu
-- ----------------------------
DROP TABLE IF EXISTS `weixin_menu`;
CREATE TABLE `weixin_menu`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) NOT NULL COMMENT '菜单id',
  `pid` int(10) NOT NULL DEFAULT 0 COMMENT '父级菜单',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单名称',
  `type` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单类型',
  `params` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单参数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10003 COMMENT = '微信公众号菜单表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of weixin_menu
-- ----------------------------
INSERT INTO `weixin_menu` VALUES (10000, 3, 3, 'test', 'view', '{\"keyword\":\"\",\"url\":\"http:\\/\\/baidu.com\",\"appid\":\"\",\"program_url\":\"\",\"page\":\"\"}');
INSERT INTO `weixin_menu` VALUES (10001, 3, 0, 'test', 'click', '{\"keyword\":\"Liuqi,I love you!\",\"url\":\"\",\"appid\":\"\",\"program_url\":\"\",\"page\":\"\"}');
INSERT INTO `weixin_menu` VALUES (10002, 2, 0, '我的博客', 'view', '{\"keyword\":\"\",\"url\":\"https:\\/\\/blog.theliuqi.top\\/\",\"appid\":\"\",\"program_url\":\"\",\"page\":\"\"}');

-- ----------------------------
-- Table structure for weixin_message
-- ----------------------------
DROP TABLE IF EXISTS `weixin_message`;
CREATE TABLE `weixin_message`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '消息名称',
  `type` tinyint(1) NULL DEFAULT 1 COMMENT '消息类型1:文本消息，2:图文消息',
  `params` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '消息参数',
  `ctime` bigint(12) NULL DEFAULT 0 COMMENT '创建时间',
  `utime` bigint(12) NULL DEFAULT 0 COMMENT '更新时间',
  `is_attention` tinyint(1) NULL DEFAULT 2 COMMENT '关注回复，1是关注回复，2不是关注回复',
  `is_default` tinyint(1) NULL DEFAULT 2 COMMENT '是否默认回复，1是，2不是',
  `enable` tinyint(1) NULL DEFAULT 1 COMMENT '1启用，2禁用',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 COMMENT = '微信消息表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for weixin_publish
-- ----------------------------
DROP TABLE IF EXISTS `weixin_publish`;
CREATE TABLE `weixin_publish`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `template_id` int(10) UNSIGNED NULL DEFAULT 0 COMMENT '模板id，不是第三方平台模板id',
  `ctime` int(10) UNSIGNED NULL DEFAULT 0 COMMENT '购买模板时间',
  `audit_status` tinyint(1) NULL DEFAULT NULL COMMENT '审核状态，其中0为审核成功，1为审核失败，2为审核中,-1为未提交审核',
  `reason` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '审核反馈',
  `publish_status` tinyint(1) NULL DEFAULT 0 COMMENT '发布状态，0未发布，1已发布，2发布成功，3发布失败',
  `publish_msg` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '发布反馈',
  `auditid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '审核id',
  `ext_json` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '第三方自定义的json',
  `user_version` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '代码版本号',
  `user_desc` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '代码描述',
  `appid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '授权appid',
  `qrcode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预览二维码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 COMMENT = '小程序发布审核表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for worksheet
-- ----------------------------
DROP TABLE IF EXISTS `worksheet`;
CREATE TABLE `worksheet`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` char(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '未处理',
  `job_num` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '工单号',
  `create_time` int(11) NOT NULL COMMENT '提交时间',
  `type` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for wsdetail
-- ----------------------------
DROP TABLE IF EXISTS `wsdetail`;
CREATE TABLE `wsdetail`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_num` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `event` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_time` int(11) NOT NULL,
  `pic_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 ROW_FORMAT = Compact;

SET FOREIGN_KEY_CHECKS = 1;
