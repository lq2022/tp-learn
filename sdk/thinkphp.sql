DROP TABLE IF EXISTS `advert_position`;
CREATE TABLE `advert_position`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(120) NOT NULL DEFAULT '' COMMENT '幻灯片名称',
  `code` varchar(32) NOT NULL DEFAULT '' COMMENT '广告位置编码',
  `state` tinyint(1) UNSIGNED NULL DEFAULT 1 COMMENT '1 启用  2禁用',
  `sort` tinyint(3) UNSIGNED NULL DEFAULT 0 COMMENT '排序',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB COMMENT = '广告位置表';

-- ----------------------------
-- Records of advert_position
-- ----------------------------
INSERT INTO `advert_position` VALUES (1, '首页广告位', 'tpl1_slider', 1540172590, 1540221472, 1, 100);

DROP TABLE IF EXISTS `area`;
CREATE TABLE `area`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '父级ID',
  `depth` tinyint(1) NOT NULL DEFAULT 0 COMMENT '地区深度',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '地区名称',
  `postal_code` varchar(50) NOT NULL DEFAULT '' COMMENT '邮编',
  `sort` int(10) NOT NULL DEFAULT 0 COMMENT '地区排序',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id`(`id`, `parent_id`, `name`) USING BTREE
) ENGINE = InnoDB COMMENT = '地区表';

DROP TABLE IF EXISTS `article`;
CREATE TABLE `article`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL DEFAULT '' COMMENT '文章标题',
  `cover` char(32) NOT NULL DEFAULT '' COMMENT '文章封面图',
  `content` longtext NOT NULL DEFAULT '' COMMENT '文章内容',
  `sort` smallint(5) NOT NULL DEFAULT 0 COMMENT '文章排序  从小到大',
  `is_pub` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1 发布  2 不发布',
  `type_id` tinyint(2) UNSIGNED NULL DEFAULT 0 COMMENT '文章分类id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `delete_time` timestamp NULL DEFAULT NULL COMMENT '软删除位置  有时间代表删除',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `is_del`(`delete_time`) USING BTREE
) ENGINE = InnoDB COMMENT = '文章表';

INSERT INTO `article` VALUES (1, '测试', '6554e73ccd5a4b81b196b5ec3f412d0c', '<p>这是测试标题<em><strong>他</strong></em></p>', 1, 1540179322, 1586616676, 100, 1, NULL);

DROP TABLE IF EXISTS `article_type`;
CREATE TABLE `article_type`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0 COMMENT '父id',
  `type_name` varchar(32) NOT NULL DEFAULT '' COMMENT '分类名称',
  PRIMARY KEY (`id`) USING BTREE,
) ENGINE = InnoDB COMMENT = '文章表';

DROP TABLE IF EXISTS `backstage_notice`;
CREATE TABLE `backstage_notice`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL DEFAULT '' COMMENT '公告标题',
  `cover` char(32) NOT NULL DEFAULT '' COMMENT '文章封面图',
  `content` text NOT NULL DEFAULT '' COMMENT '公告内容',
  `sort` smallint(5) NOT NULL DEFAULT 0 COMMENT '文章排序  从小到大',
  `is_pub` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1 发布  2 不发布',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `delete_time` timestamp NULL DEFAULT NULL COMMENT '软删除位置  有时间代表删除',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `is_del`(`delete_time`) USING BTREE
) ENGINE = InnoDB COMMENT = '公告表';

DROP TABLE IF EXISTS `balance`;
CREATE TABLE `balance`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT 0 COMMENT '用户id',
  `money` decimal(10, 2) NOT NULL COMMENT '金额',
  `balance` decimal(10, 2) NOT NULL COMMENT '余额',
  `describe` text NOT NULL DEFAULT '' COMMENT '描述',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `is_del`(`delete_time`) USING BTREE
) ENGINE = InnoDB COMMENT = '用户余额表';

DROP TABLE IF EXISTS `bill_payments`;
CREATE TABLE `bill_payments`  (
  `payment_id` varchar(20) NOT NULL COMMENT '支付单号',
  `money` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '支付金额',
  `user_id` int(11) NOT NULL COMMENT '用户ID 关联user.id',
  `type` tinyint(1) NOT NULL COMMENT '资源类型1=订单,2充值单',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '支付状态 1=未支付 2=支付成功 3=其他',
  `payment_code` varchar(50) NOT NULL DEFAULT '' COMMENT '支付类型编码 关联payments.code',
  `ip` varchar(50) NOT NULL DEFAULT '' COMMENT '支付单生成IP',
  `params` varchar(200) NOT NULL DEFAULT '' COMMENT '支付的时候需要的参数，存的是json格式的一维数组',
  `payed_msg` varchar(50) NOT NULL DEFAULT '' COMMENT '支付回调后的状态描述',
  `trade_no` varchar(50) NOT NULL DEFAULT '' COMMENT '第三方平台交易流水号',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`payment_id`) USING BTREE,
  INDEX `payments`(`payment_id`, `status`, `type`) USING BTREE
) ENGINE = InnoDB COMMENT = '支付单表';

DROP TABLE IF EXISTS `brand`;
CREATE TABLE `brand`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '品牌ID',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '品牌名称',
  `logo` char(32) NOT NULL COMMENT '品牌LOGO 图片ID',
  `sort` smallint(5) NOT NULL DEFAULT 0 COMMENT '文章排序  从小到大',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `delete_time` timestamp NULL DEFAULT NULL COMMENT '软删除位置  有时间代表删除',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index`(`id`, `sort`, `delete_time`) USING BTREE
) ENGINE = InnoDB COMMENT = '品牌表';

INSERT INTO `brand` VALUES (1, '依嬅莎', '56020c21a0e3b07e9906c1c6f06bee6a', 100, '2020-08-19 14:08:44', NULL);
INSERT INTO `brand` VALUES (2, '玖姿', '14b44959327363e274c8a2ba9dba3ace', 100, '2020-08-19 14:08:44', NULL);
INSERT INTO `brand` VALUES (3, '裂帛', '03ca799895a0b094bca75116e322539c', 100, '2020-08-19 14:08:44', NULL);
INSERT INTO `brand` VALUES (4, '恩裳', 'dcc56740b60745aac85a1b0433767a8d', 100, '2020-08-19 14:08:44', NULL);
INSERT INTO `brand` VALUES (5, '水墨青华', 'b9d70b1b457f77b3796cd4229c9b0aa2', 100, '2020-08-19 14:08:44', NULL);

DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '',
  `user_id` int(10) UNSIGNED NULL DEFAULT NULL COMMENT '用户ID 关联user.id',
  `product_id` int(10) UNSIGNED NULL DEFAULT NULL COMMENT '货品ID',
  `nums` smallint(5) UNSIGNED NULL DEFAULT 0 COMMENT '货品数量',
  `type` tinyint(2) UNSIGNED NOT NULL DEFAULT 1 COMMENT '购物车类型,1普通类型，2拼团类型',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index`(`user_id`) USING BTREE
) ENGINE = InnoDB COMMENT = '购物车表（每个用户最多加100条信息）';

DROP TABLE IF EXISTS `coupon`;
CREATE TABLE `coupon`  (
  `coupon_code` varchar(20) NOT NULL COMMENT '优惠券编码',
  `promotion_id` int(10) UNSIGNED NULL DEFAULT NULL COMMENT '优惠券id',
  `is_used` int(10) UNSIGNED NULL DEFAULT NULL COMMENT '是否使用1未使用，2已使用',
  `user_id` int(10) UNSIGNED NULL DEFAULT 0 COMMENT '谁领取了',
  `used_id` int(10) UNSIGNED NULL DEFAULT 0 COMMENT '被谁用了',
   `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
   `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`coupon_code`) USING BTREE,
) ENGINE = InnoDB COMMENT = '优惠券表';

DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '商品ID',
  `bn` varchar(30) NOT NULL DEFAULT '' COMMENT '商品编码',
  `name` varchar(200) NOT NULL DEFAULT '' COMMENT '商品名称',
  `brief` varchar(255) NOT NULL DEFAULT '' COMMENT '商品简介',
  `price` decimal(10, 2) NOT NULL DEFAULT '' COMMENT '商品价格',
  `costprice` decimal(10, 2) NOT NULL DEFAULT '' COMMENT '成本价',
  `mktprice` decimal(10, 2) NOT NULL DEFAULT '' COMMENT '市场价',
  `image_id` char(32) NOT NULL DEFAULT '' COMMENT '默认图片 图片id',
  `goods_cat_id` int(10) NOT NULL COMMENT '商品分类ID 关联category.id',
  `goods_type_id` int(10) NOT NULL COMMENT '商品类别ID',
  `brand_id` int(10) UNSIGNED NULL DEFAULT 0 COMMENT '品牌ID 关联brand.id',
  `marketable` tinyint(1) NOT NULL DEFAULT 0 COMMENT '上架标志 1=上架 2=下架',
  `stock` int(8) NOT NULL DEFAULT 0 COMMENT '库存',
  `weight` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '重量',
  `intro` longtext NULL DEFAULT 0 COMMENT '商品详情',
  `spec_desc` text NULL DEFAULT 0 COMMENT '商品规格序列号存储',
  `comments_count` int(10) NOT NULL DEFAULT 0 COMMENT '评论次数',
  `view_count` int(10) NOT NULL DEFAULT 0 COMMENT '浏览次数',
  `buy_count` int(10) NOT NULL DEFAULT 0 COMMENT '购买次数',
  `uptime` timestamp NULL DEFAULT NULL COMMENT '上架时间',
  `downtime` timestamp NULL DEFAULT NULL COMMENT '下架时间',
  `sort` smallint(5) NOT NULL DEFAULT 0 COMMENT '商品排序 越小越靠前',
  `is_recommend` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否推荐，1是，2不是推荐',
  `is_hot` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否热门，1是，2否',
  `label_ids` varchar(10) NOT NULL DEFAULT '' COMMENT '标签id逗号分隔',
  `view_count` int(10) NOT NULL DEFAULT 0 COMMENT '',
  `view_count` int(10) NOT NULL DEFAULT 0 COMMENT '浏览次数',
   `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
   `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
   `delete_time` timestamp NULL DEFAULT NULL COMMENT '删除标志 有数据表示删除',
  PRIMARY KEY (`coupon_code`) USING BTREE,
) ENGINE = InnoDB COMMENT = '商品表';

INSERT INTO `goods` VALUES (1, '118336505', 'DKCHENPIN2018秋新款天丝中长款修身风衣外套女', '可调节袖 系带收腰设', 450.00, 0.00, 600.00, 'b419e4164d5726d057b2ae195f9a96df', 18, 1, 14, 1, 1, 2796, 0, 400.00, '件', '<p><img class=\"desc_anchor img-ks-lazyload\" id=\"desc-module-1\" src=\"https://assets.alicdn.com/kissy/1.0.0/build/imglazyload/spaceball.gif\"/></p><p><a style=\"margin: 0px; padding: 0px; color: rgb(51, 85, 170); outline: 0px;\"></a></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 1.4; color: rgb(64, 64, 64); font-family: tahoma, arial, 宋体, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"><a href=\"https://meidian.play.m.jaeapp.com/?iid=991593&cpp=0\" target=\"_blank\" style=\"margin: 0px; padding: 0px; text-decoration-line: none; color: rgb(51, 85, 170); outline: 0px;\"><img alt=\"\" src=\"https://img.alicdn.com/imgextra/i1/356060330/O1CN011EJBA7NKQe5fuXI_!!356060330.jpg\" class=\"img-ks-lazyload\"/></a></p><p><a style=\"margin: 0px; padding: 0px; color: rgb(51, 85, 170); outline: 0px;\"></a></p><p><a style=\"margin: 0px; padding: 0px; color: rgb(51, 85, 170); outline: 0px;\"></a></p><p><img src=\"https://gdp.alicdn.com/imgextra/i2/356060330/O1CN011EJBA7UknUQjGCt_!!356060330.jpg\" class=\"img-ks-lazyload\"/></p><ul style=\"list-style-type: none;\" class=\" list-paddingleft-2\"><li><p><br/></p></li></ul><p><img class=\"desc_anchor img-ks-lazyload\" id=\"desc-module-2\" src=\"https://assets.alicdn.com/kissy/1.0.0/build/imglazyload/spaceball.gif\"/></p><p><img src=\"https://img.alicdn.com/imgextra/i4/356060330/TB2L0NmwhSYBuNjSsphXXbGvVXa-356060330.jpg\" class=\"img-ks-lazyload\"/></p><p><img src=\"https://img.alicdn.com/imgextra/i2/356060330/TB26FUOnLuSBuNkHFqDXXXfhVXa-356060330.jpg\" class=\"img-ks-lazyload\"/></p><p><img src=\"https://img.alicdn.com/imgextra/i4/356060330/TB2CinchHZnBKNjSZFhXXc.oXXa-356060330.jpg\" width=\"730\" height=\"1046\" class=\"img-ks-lazyload\"/></p><p><img class=\"desc_anchor img-ks-lazyload\" id=\"desc-module-3\" src=\"https://assets.alicdn.com/kissy/1.0.0/build/imglazyload/spaceball.gif\"/></p><p><img src=\"https://img.alicdn.com/imgextra/i3/356060330/TB2XcAnnIyYBuNkSnfoXXcWgVXa-356060330.jpg\" width=\"249\" height=\"47\" class=\"img-ks-lazyload\"/></p><p><img src=\"https://img.alicdn.com/imgextra/i4/356060330/TB2eItzhP7nBKNjSZLeXXbxCFXa-356060330.jpg\" width=\"730\" height=\"1168\" class=\"img-ks-lazyload\"/></p><p><img src=\"https://img.alicdn.com/imgextra/i4/356060330/TB20a1OwmBYBeNjy0FeXXbnmFXa-356060330.jpg\" width=\"608\" class=\"img-ks-lazyload\"/></p><p><img src=\"https://img.alicdn.com/imgextra/i2/356060330/TB24SvFhHArBKNjSZFLXXc_dVXa-356060330.jpg\" width=\"730\" height=\"1168\" class=\"img-ks-lazyload\"/></p><p><img src=\"https://img.alicdn.com/imgextra/i1/356060330/TB2QndxwbGYBuNjy0FoXXciBFXa-356060330.jpg\" width=\"608\" class=\"img-ks-lazyload\"/></p><p><img src=\"https://img.alicdn.com/imgextra/i4/356060330/TB2EntxwbGYBuNjy0FoXXciBFXa-356060330.jpg\" width=\"730\" height=\"1168\" class=\"img-ks-lazyload\"/></p><p>翻领垂性风衣</p><p>柔软亲肤面料 可调节袖口 饰有侧边口袋 配有同色腰带可调节腰身</p><p><img src=\"https://img.alicdn.com/imgextra/i4/356060330/TB2jlFQwk9WBuNjSspeXXaz5VXa-356060330.jpg\" width=\"249\" height=\"40\" class=\"img-ks-lazyload\"/></p><table width=\"730\"><tbody style=\"margin: 0px; padding: 0px;\"><tr style=\"margin: 0px; padding: 0px;\" class=\"firstRow\"><td width=\"363\" style=\"margin: 0px; padding: 0px; border-color: rgb(0, 0, 0);\"><img src=\"https://img.alicdn.com/imgextra/i1/356060330/TB2TVtZwh1YBuNjy1zcXXbNcXXa-356060330.jpg\" width=\"363\" height=\"581\" class=\"img-ks-lazyload\"/></td><td width=\"4\" style=\"margin: 0px; padding: 0px; border-color: rgb(0, 0, 0);\"><br/></td><td width=\"363\" style=\"margin: 0px; padding: 0px; border-color: rgb(0, 0, 0);\"><img src=\"https://img.alicdn.com/imgextra/i2/356060330/TB2BFJ2weuSBuNjy1XcXXcYjFXa-356060330.jpg\" width=\"363\" height=\"581\" class=\"img-ks-lazyload\"/></td></tr><tr style=\"margin: 0px; padding: 0px; font-size: 20px; text-align: center; line-height: 20px;\"><td style=\"margin: 0px; padding: 20px 0px 40px; border-color: rgb(0, 0, 0);\">里约红</td><td style=\"margin: 0px; padding: 20px 0px 40px; border-color: rgb(0, 0, 0);\"><br/></td><td style=\"margin: 0px; padding: 20px 0px 40px; border-color: rgb(0, 0, 0);\">蒸汽灰</td></tr></tbody></table><table width=\"730\"><tbody style=\"margin: 0px; padding: 0px;\"><tr style=\"margin: 0px; padding: 0px;\" class=\"firstRow\"><td colspan=\"3\" style=\"margin: 0px; padding: 0px; border-color: rgb(0, 0, 0);\"><img src=\"https://img.alicdn.com/imgextra/i3/356060330/TB2W1snnIyYBuNkSnfoXXcWgVXa-356060330.jpg\" width=\"730\" class=\"img-ks-lazyload\"/></td></tr></tbody></table><p><br/></p>', 'a:2:{s:6:\"颜色\";a:4:{i:0;s:6:\"红色\";i:1;s:6:\"白色\";i:2;s:6:\"绿色\";i:3;s:6:\"蓝色\";}s:6:\"规格\";a:4:{i:0;s:7:\"规格1\";i:1;s:7:\"规格2\";i:2;s:7:\"规格3\";i:3;s:7:\"规格4\";}}', 'a:1:{s:6:\"材质\";s:6:\"化纤\";}', 0, 0, 0, NULL, NULL, 100, 1, 1, NULL, NULL, NULL, 1540430157, NULL);

DROP TABLE IF EXISTS `goods_collection`;
CREATE TABLE `goods_collection`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '商品ID',
  `goods_id` varchar(30) NOT NULL DEFAULT '' COMMENT '商品id 关联goods.id',
  `user_id` varchar(200) NOT NULL DEFAULT '' COMMENT '用户id',
  `goods_name` varchar(255) NOT NULL DEFAULT '' COMMENT '商品名称',
   `create_time` timestamp NULL DEFAULT NULL COMMENT '浏览时间',
  PRIMARY KEY (`coupon_code`) USING BTREE,
) ENGINE = InnoDB COMMENT = '商品收藏表';

DROP TABLE IF EXISTS `goods_collection`;
CREATE TABLE `goods_collection`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '商品ID',
  `goods_id` varchar(30) NOT NULL DEFAULT '' COMMENT '商品id 关联goods.id',
  `user_id` varchar(200) NOT NULL DEFAULT '' COMMENT '用户id',
  `goods_name` varchar(255) NOT NULL DEFAULT '' COMMENT '商品名称',
   `create_time` timestamp NULL DEFAULT NULL COMMENT '浏览时间',
  PRIMARY KEY (`coupon_code`) USING BTREE,
) ENGINE = InnoDB COMMENT = '商品收藏表';

DROP TABLE IF EXISTS `images`;
CREATE TABLE `images`  (
  `id` char(32) NOT NULL COMMENT '图片ID',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '图片名称',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '绝对地址',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT '物理地址',
  `tpye` varchar(10) NOT NULL DEFAULT 'local' COMMENT '存储引擎',
  `goods_name` varchar(255) NOT NULL DEFAULT '' COMMENT '商品名称',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `delete_time` timestamp NULL DEFAULT NULL COMMENT '删除标志 有数据代表删除',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE,
  UNIQUE INDEX `delete_time`(`delete_time`) USING BTREE,
) ENGINE = InnoDB COMMENT = '图片表';

DROP TABLE IF EXISTS `manage`;
CREATE TABLE `manage`  (
  `id` char(32) NOT NULL COMMENT '图片ID',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '图片名称',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '绝对地址',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT '物理地址',
  `tpye` varchar(10) NOT NULL DEFAULT 'local' COMMENT '存储引擎',
  `goods_name` varchar(255) NOT NULL DEFAULT '' COMMENT '商品名称',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `delete_time` timestamp NULL DEFAULT NULL COMMENT '删除标志 有数据代表删除',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE,
  UNIQUE INDEX `delete_time`(`delete_time`) USING BTREE,
) ENGINE = InnoDB COMMENT = '图片表';

-- ----------------------------
-- Table structure for setting
-- ----------------------------
DROP TABLE IF EXISTS `configs`;
CREATE TABLE `configs`  (
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '名称',
  `value` text NOT NULL DEFAULT '' COMMENT '值',
  PRIMARY KEY (`name`) USING BTREE
) ENGINE = InnoDB;

DROP TABLE IF EXISTS `manage`;
CREATE TABLE `manage`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `username` varchar(20) NULL DEFAULT NULL COMMENT '用户名',
  `password` char(32) NULL DEFAULT NULL COMMENT '密码 md5(pa+liuqi)',
  `mobile` char(15) NULL DEFAULT NULL COMMENT '手机号',
  `avatar` varchar(255) NULL DEFAULT NULL COMMENT '头像',
  `nickname` varchar(50) NULL DEFAULT NULL COMMENT '昵称',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `status` tinyint(1) UNSIGNED NULL DEFAULT 1 COMMENT '1 = 正常 2 = 停用',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB COMMENT = '管理员表';

DROP TABLE IF EXISTS `user_log`;
CREATE TABLE `user_log`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` int(11) UNSIGNED NOT NULL COMMENT '用户id',
  `state` tinyint(1) NULL DEFAULT NULL COMMENT '登录 1  退出2,3注册',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `params` varchar(200) NULL DEFAULT '' COMMENT '参数',
  `ip` varchar(15) NULL DEFAULT NULL COMMENT 'ip地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB;

DROP TABLE IF EXISTS `manage_role_rel`;
CREATE TABLE `manage_role_rel`  (
  `manage_id` int(10) UNSIGNED NOT NULL COMMENT '管理员ID 关联manage.id',
  `role_id` int(10) UNSIGNED NULL DEFAULT NULL COMMENT '角色ID 关联role.id'
) ENGINE = InnoDB COMMENT = '管理员和角色关系表';

-- ----------------------------
-- Records of manage_role_rel
-- ----------------------------
INSERT INTO `manage_role_rel` VALUES (14, 1);

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
  INDEX `index`(`parent_id`, `parent_menu_id`, `sort`) USING BTREE
) ENGINE = InnoDB COMMENT = '操作表';

INSERT INTO `operation` VALUES (2, 1, '管理后台', 'manage', 'm', 1, 1, 200);
INSERT INTO `operation` VALUES (238, 2, '会员管理', 'User', 'c', 2, 1, 100);

DROP TABLE IF EXISTS `manage_role_operation_rel`;
CREATE TABLE `manage_role_operation_rel`  (
  `manage_role_id` int(10) NOT NULL,
  `operation_id` int(10) NOT NULL
) ENGINE = InnoDB COMMENT = '角色操作权限关联表';

-- ----------------------------
-- Records of manage_role_operation_rel
-- ----------------------------
INSERT INTO `manage_role_operation_rel` VALUES (1, 238);
INSERT INTO `manage_role_operation_rel` VALUES (1, 239);
INSERT INTO `manage_role_operation_rel` VALUES (1, 242);

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
  `payment_time` timestamp NULL DEFAULT NULL COMMENT '支付时间',
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
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `delete_time` timestamp NULL DEFAULT NULL COMMENT '删除标志 有数据表示删除',
  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE = InnoDB COMMENT = '订单表';

DROP TABLE IF EXISTS `operation_log`;
CREATE TABLE `operation_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `manage_id` int(10) UNSIGNED NULL DEFAULT NULL COMMENT '管理员ID',
  `controller` varchar(50) NULL DEFAULT NULL COMMENT '操作的控制器名',
  `method` varchar(50) NULL DEFAULT NULL COMMENT '操作方法名',
  `desc` varchar(255) NULL DEFAULT NULL COMMENT '操作描述',
  `content` text NULL COMMENT '操作数据序列号存储',
  `ip` char(50) NULL DEFAULT NULL COMMENT '操作IP',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10107 COMMENT = '后台操作记录表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of operation_log
-- ----------------------------
INSERT INTO `operation_log` VALUES (10000, 13, 'wechat', 'doeditmenu', '公众号菜单-编辑保存：test', '{\"name\":\"test\",\"menu_id\":\"3\",\"pid\":\"3\",\"type\":\"view\",\"params\":{\"keyword\":\"\",\"url\":\"http:\\/\\/baidu.com\",\"appid\":\"\",\"program_url\":\"\",\"page\":\"\"},\"__Jshop_Token__\":\"148431a880352f95e586818f07895271560abadb\"}', '127.0.0.1', "2020/08/20 17:39:05");

DROP TABLE IF EXISTS `manage_role`;
CREATE TABLE `manage_role`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NULL DEFAULT NULL COMMENT '角色名称',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB COMMENT = '总后台角色表';

-- ----------------------------
-- Records of manage_role
-- ----------------------------
INSERT INTO `manage_role` VALUES (1, '超管',
"2020/08/20 17:39:05");

待加表：manage_role、message、权限表、后台操作记录表、`order`、order_items、支付方式表、products、setting、`user`、`user_grade`、`user_token`、`weixin_media_message`、`weixin_message`、
暂用不到：退货单表、商品浏览记录表、商品分类、商品评价表、商品会员价表、商品图片关联表、商品参数表、商品类型、队列表、login_log、