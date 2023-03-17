DROP DATABASE IF EXISTS django4h80u;

CREATE DATABASE django4h80u default character set utf8mb4 collate utf8mb4_general_ci;

USE django4h80u;

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`yonghuming` varchar(200) NOT NULL UNIQUE   COMMENT '用户名',
	`mima` varchar(200) NOT NULL   COMMENT '密码',
	`xingming` varchar(200) NOT NULL   COMMENT '姓名',
	`xingbie` varchar(200)    COMMENT '性别',
	`touxiang` varchar(200)    COMMENT '头像',
	`shouji` varchar(200)    COMMENT '手机',
	`youxiang` varchar(200)    COMMENT '邮箱',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户';

INSERT INTO yonghu(id,yonghuming,mima,xingming,xingbie,touxiang,shouji,youxiang) VALUES(11,'用户1','123456','姓名1','男','http://localhost:8080/django4h80u/upload/yonghu_touxiang1.jpg','13823888881','773890001@qq.com');
INSERT INTO yonghu(id,yonghuming,mima,xingming,xingbie,touxiang,shouji,youxiang) VALUES(12,'用户2','123456','姓名2','男','http://localhost:8080/django4h80u/upload/yonghu_touxiang2.jpg','13823888882','773890002@qq.com');
INSERT INTO yonghu(id,yonghuming,mima,xingming,xingbie,touxiang,shouji,youxiang) VALUES(13,'用户3','123456','姓名3','男','http://localhost:8080/django4h80u/upload/yonghu_touxiang3.jpg','13823888883','773890003@qq.com');
INSERT INTO yonghu(id,yonghuming,mima,xingming,xingbie,touxiang,shouji,youxiang) VALUES(14,'用户4','123456','姓名4','男','http://localhost:8080/django4h80u/upload/yonghu_touxiang4.jpg','13823888884','773890004@qq.com');
INSERT INTO yonghu(id,yonghuming,mima,xingming,xingbie,touxiang,shouji,youxiang) VALUES(15,'用户5','123456','姓名5','男','http://localhost:8080/django4h80u/upload/yonghu_touxiang5.jpg','13823888885','773890005@qq.com');
INSERT INTO yonghu(id,yonghuming,mima,xingming,xingbie,touxiang,shouji,youxiang) VALUES(16,'用户6','123456','姓名6','男','http://localhost:8080/django4h80u/upload/yonghu_touxiang6.jpg','13823888886','773890006@qq.com');

DROP TABLE IF EXISTS `shebeifenlei`;

CREATE TABLE `shebeifenlei` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`fenlei` varchar(200) NOT NULL UNIQUE   COMMENT '分类',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='设备分类';

INSERT INTO shebeifenlei(id,fenlei) VALUES(21,'分类1');
INSERT INTO shebeifenlei(id,fenlei) VALUES(22,'分类2');
INSERT INTO shebeifenlei(id,fenlei) VALUES(23,'分类3');
INSERT INTO shebeifenlei(id,fenlei) VALUES(24,'分类4');
INSERT INTO shebeifenlei(id,fenlei) VALUES(25,'分类5');
INSERT INTO shebeifenlei(id,fenlei) VALUES(26,'分类6');

DROP TABLE IF EXISTS `zichanxinxi`;

CREATE TABLE `zichanxinxi` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`shebeibianhao` varchar(200) NOT NULL UNIQUE   COMMENT '设备编号',
	`shebeimingcheng` varchar(200)    COMMENT '设备名称',
	`fenlei` varchar(200) NOT NULL   COMMENT '分类',
	`tupian` varchar(200)    COMMENT '图片',
	`shuliang` int    COMMENT '数量',
	`shengchanshang` varchar(200)    COMMENT '生产商',
	`zhejiulv` varchar(200)    COMMENT '折旧率',
	`caigouriqi` date    COMMENT '采购日期',
	`suoshubumen` varchar(200)    COMMENT '所属部门',
	`dangqianweizhi` varchar(200)    COMMENT '当前位置',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='资产信息';

INSERT INTO zichanxinxi(id,shebeibianhao,shebeimingcheng,fenlei,tupian,shuliang,shengchanshang,zhejiulv,caigouriqi,suoshubumen,dangqianweizhi) VALUES(31,'设备编号1','设备名称1','分类1','http://localhost:8080/django4h80u/upload/zichanxinxi_tupian1.jpg',1,'生产商1','折旧率1',CURRENT_TIMESTAMP,'所属部门1','当前位置1');
INSERT INTO zichanxinxi(id,shebeibianhao,shebeimingcheng,fenlei,tupian,shuliang,shengchanshang,zhejiulv,caigouriqi,suoshubumen,dangqianweizhi) VALUES(32,'设备编号2','设备名称2','分类2','http://localhost:8080/django4h80u/upload/zichanxinxi_tupian2.jpg',2,'生产商2','折旧率2',CURRENT_TIMESTAMP,'所属部门2','当前位置2');
INSERT INTO zichanxinxi(id,shebeibianhao,shebeimingcheng,fenlei,tupian,shuliang,shengchanshang,zhejiulv,caigouriqi,suoshubumen,dangqianweizhi) VALUES(33,'设备编号3','设备名称3','分类3','http://localhost:8080/django4h80u/upload/zichanxinxi_tupian3.jpg',3,'生产商3','折旧率3',CURRENT_TIMESTAMP,'所属部门3','当前位置3');
INSERT INTO zichanxinxi(id,shebeibianhao,shebeimingcheng,fenlei,tupian,shuliang,shengchanshang,zhejiulv,caigouriqi,suoshubumen,dangqianweizhi) VALUES(34,'设备编号4','设备名称4','分类4','http://localhost:8080/django4h80u/upload/zichanxinxi_tupian4.jpg',4,'生产商4','折旧率4',CURRENT_TIMESTAMP,'所属部门4','当前位置4');
INSERT INTO zichanxinxi(id,shebeibianhao,shebeimingcheng,fenlei,tupian,shuliang,shengchanshang,zhejiulv,caigouriqi,suoshubumen,dangqianweizhi) VALUES(35,'设备编号5','设备名称5','分类5','http://localhost:8080/django4h80u/upload/zichanxinxi_tupian5.jpg',5,'生产商5','折旧率5',CURRENT_TIMESTAMP,'所属部门5','当前位置5');
INSERT INTO zichanxinxi(id,shebeibianhao,shebeimingcheng,fenlei,tupian,shuliang,shengchanshang,zhejiulv,caigouriqi,suoshubumen,dangqianweizhi) VALUES(36,'设备编号6','设备名称6','分类6','http://localhost:8080/django4h80u/upload/zichanxinxi_tupian6.jpg',6,'生产商6','折旧率6',CURRENT_TIMESTAMP,'所属部门6','当前位置6');

DROP TABLE IF EXISTS `shebeijieyong`;

CREATE TABLE `shebeijieyong` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`shebeibianhao` varchar(200)    COMMENT '设备编号',
	`shebeimingcheng` varchar(200)    COMMENT '设备名称',
	`tupian` varchar(200)    COMMENT '图片',
	`shengchanshang` varchar(200)    COMMENT '生产商',
	`shuliang` int NOT NULL   COMMENT '数量',
	`jieyongtianshu` int NOT NULL   COMMENT '借用天数',
	`jieyongriqi` date    COMMENT '借用日期',
	`jieyongbeizhu` varchar(200)    COMMENT '借用备注',
	`yonghuming` varchar(200)    COMMENT '用户名',
	`xingming` varchar(200)    COMMENT '姓名',
	`shouji` varchar(200)    COMMENT '手机',
	`sfsh` varchar(200)   default '否' COMMENT '是否审核',
	`shhf` longtext    COMMENT '审核回复',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='设备借用';

INSERT INTO shebeijieyong(id,shebeibianhao,shebeimingcheng,tupian,shengchanshang,shuliang,jieyongtianshu,jieyongriqi,jieyongbeizhu,yonghuming,xingming,shouji,sfsh,shhf) VALUES(41,'设备编号1','设备名称1','http://localhost:8080/django4h80u/upload/shebeijieyong_tupian1.jpg','生产商1',1,1,CURRENT_TIMESTAMP,'借用备注1','用户名1','姓名1','13823888881','是','');
INSERT INTO shebeijieyong(id,shebeibianhao,shebeimingcheng,tupian,shengchanshang,shuliang,jieyongtianshu,jieyongriqi,jieyongbeizhu,yonghuming,xingming,shouji,sfsh,shhf) VALUES(42,'设备编号2','设备名称2','http://localhost:8080/django4h80u/upload/shebeijieyong_tupian2.jpg','生产商2',2,2,CURRENT_TIMESTAMP,'借用备注2','用户名2','姓名2','13823888882','是','');
INSERT INTO shebeijieyong(id,shebeibianhao,shebeimingcheng,tupian,shengchanshang,shuliang,jieyongtianshu,jieyongriqi,jieyongbeizhu,yonghuming,xingming,shouji,sfsh,shhf) VALUES(43,'设备编号3','设备名称3','http://localhost:8080/django4h80u/upload/shebeijieyong_tupian3.jpg','生产商3',3,3,CURRENT_TIMESTAMP,'借用备注3','用户名3','姓名3','13823888883','是','');
INSERT INTO shebeijieyong(id,shebeibianhao,shebeimingcheng,tupian,shengchanshang,shuliang,jieyongtianshu,jieyongriqi,jieyongbeizhu,yonghuming,xingming,shouji,sfsh,shhf) VALUES(44,'设备编号4','设备名称4','http://localhost:8080/django4h80u/upload/shebeijieyong_tupian4.jpg','生产商4',4,4,CURRENT_TIMESTAMP,'借用备注4','用户名4','姓名4','13823888884','是','');
INSERT INTO shebeijieyong(id,shebeibianhao,shebeimingcheng,tupian,shengchanshang,shuliang,jieyongtianshu,jieyongriqi,jieyongbeizhu,yonghuming,xingming,shouji,sfsh,shhf) VALUES(45,'设备编号5','设备名称5','http://localhost:8080/django4h80u/upload/shebeijieyong_tupian5.jpg','生产商5',5,5,CURRENT_TIMESTAMP,'借用备注5','用户名5','姓名5','13823888885','是','');
INSERT INTO shebeijieyong(id,shebeibianhao,shebeimingcheng,tupian,shengchanshang,shuliang,jieyongtianshu,jieyongriqi,jieyongbeizhu,yonghuming,xingming,shouji,sfsh,shhf) VALUES(46,'设备编号6','设备名称6','http://localhost:8080/django4h80u/upload/shebeijieyong_tupian6.jpg','生产商6',6,6,CURRENT_TIMESTAMP,'借用备注6','用户名6','姓名6','13823888886','是','');

DROP TABLE IF EXISTS `weixiushenbao`;

CREATE TABLE `weixiushenbao` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`shebeibianhao` varchar(200)    COMMENT '设备编号',
	`shebeimingcheng` varchar(200)    COMMENT '设备名称',
	`tupian` varchar(200)    COMMENT '图片',
	`baoxiuwenti` longtext    COMMENT '报修问题',
	`baoxiushuliang` int    COMMENT '报修数量',
	`baoxiuriqi` date    COMMENT '报修日期',
	`baoxiubeizhu` varchar(200)    COMMENT '报修备注',
	`yonghuming` varchar(200)    COMMENT '用户名',
	`xingming` varchar(200)    COMMENT '姓名',
	`shouji` varchar(200)    COMMENT '手机',
	`sfsh` varchar(200)   default '否' COMMENT '是否审核',
	`shhf` longtext    COMMENT '审核回复',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='维修申报';

INSERT INTO weixiushenbao(id,shebeibianhao,shebeimingcheng,tupian,baoxiuwenti,baoxiushuliang,baoxiuriqi,baoxiubeizhu,yonghuming,xingming,shouji,sfsh,shhf) VALUES(51,'设备编号1','设备名称1','http://localhost:8080/django4h80u/upload/weixiushenbao_tupian1.jpg','报修问题1',1,CURRENT_TIMESTAMP,'报修备注1','用户名1','姓名1','13823888881','是','');
INSERT INTO weixiushenbao(id,shebeibianhao,shebeimingcheng,tupian,baoxiuwenti,baoxiushuliang,baoxiuriqi,baoxiubeizhu,yonghuming,xingming,shouji,sfsh,shhf) VALUES(52,'设备编号2','设备名称2','http://localhost:8080/django4h80u/upload/weixiushenbao_tupian2.jpg','报修问题2',2,CURRENT_TIMESTAMP,'报修备注2','用户名2','姓名2','13823888882','是','');
INSERT INTO weixiushenbao(id,shebeibianhao,shebeimingcheng,tupian,baoxiuwenti,baoxiushuliang,baoxiuriqi,baoxiubeizhu,yonghuming,xingming,shouji,sfsh,shhf) VALUES(53,'设备编号3','设备名称3','http://localhost:8080/django4h80u/upload/weixiushenbao_tupian3.jpg','报修问题3',3,CURRENT_TIMESTAMP,'报修备注3','用户名3','姓名3','13823888883','是','');
INSERT INTO weixiushenbao(id,shebeibianhao,shebeimingcheng,tupian,baoxiuwenti,baoxiushuliang,baoxiuriqi,baoxiubeizhu,yonghuming,xingming,shouji,sfsh,shhf) VALUES(54,'设备编号4','设备名称4','http://localhost:8080/django4h80u/upload/weixiushenbao_tupian4.jpg','报修问题4',4,CURRENT_TIMESTAMP,'报修备注4','用户名4','姓名4','13823888884','是','');
INSERT INTO weixiushenbao(id,shebeibianhao,shebeimingcheng,tupian,baoxiuwenti,baoxiushuliang,baoxiuriqi,baoxiubeizhu,yonghuming,xingming,shouji,sfsh,shhf) VALUES(55,'设备编号5','设备名称5','http://localhost:8080/django4h80u/upload/weixiushenbao_tupian5.jpg','报修问题5',5,CURRENT_TIMESTAMP,'报修备注5','用户名5','姓名5','13823888885','是','');
INSERT INTO weixiushenbao(id,shebeibianhao,shebeimingcheng,tupian,baoxiuwenti,baoxiushuliang,baoxiuriqi,baoxiubeizhu,yonghuming,xingming,shouji,sfsh,shhf) VALUES(56,'设备编号6','设备名称6','http://localhost:8080/django4h80u/upload/weixiushenbao_tupian6.jpg','报修问题6',6,CURRENT_TIMESTAMP,'报修备注6','用户名6','姓名6','13823888886','是','');

DROP TABLE IF EXISTS `shebeiguihai`;

CREATE TABLE `shebeiguihai` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`shebeibianhao` varchar(200)    COMMENT '设备编号',
	`shebeimingcheng` varchar(200)    COMMENT '设备名称',
	`tupian` varchar(200)    COMMENT '图片',
	`shengchanshang` varchar(200)    COMMENT '生产商',
	`shuliang` int NOT NULL   COMMENT '数量',
	`guihairiqi` date    COMMENT '归还日期',
	`guihaibeizhu` varchar(200)    COMMENT '归还备注',
	`yonghuming` varchar(200)    COMMENT '用户名',
	`xingming` varchar(200)    COMMENT '姓名',
	`shouji` varchar(200)    COMMENT '手机',
	`sfsh` varchar(200)   default '否' COMMENT '是否审核',
	`shhf` longtext    COMMENT '审核回复',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='设备归还';

INSERT INTO shebeiguihai(id,shebeibianhao,shebeimingcheng,tupian,shengchanshang,shuliang,guihairiqi,guihaibeizhu,yonghuming,xingming,shouji,sfsh,shhf) VALUES(61,'设备编号1','设备名称1','http://localhost:8080/django4h80u/upload/shebeiguihai_tupian1.jpg','生产商1',1,CURRENT_TIMESTAMP,'归还备注1','用户名1','姓名1','13823888881','是','');
INSERT INTO shebeiguihai(id,shebeibianhao,shebeimingcheng,tupian,shengchanshang,shuliang,guihairiqi,guihaibeizhu,yonghuming,xingming,shouji,sfsh,shhf) VALUES(62,'设备编号2','设备名称2','http://localhost:8080/django4h80u/upload/shebeiguihai_tupian2.jpg','生产商2',2,CURRENT_TIMESTAMP,'归还备注2','用户名2','姓名2','13823888882','是','');
INSERT INTO shebeiguihai(id,shebeibianhao,shebeimingcheng,tupian,shengchanshang,shuliang,guihairiqi,guihaibeizhu,yonghuming,xingming,shouji,sfsh,shhf) VALUES(63,'设备编号3','设备名称3','http://localhost:8080/django4h80u/upload/shebeiguihai_tupian3.jpg','生产商3',3,CURRENT_TIMESTAMP,'归还备注3','用户名3','姓名3','13823888883','是','');
INSERT INTO shebeiguihai(id,shebeibianhao,shebeimingcheng,tupian,shengchanshang,shuliang,guihairiqi,guihaibeizhu,yonghuming,xingming,shouji,sfsh,shhf) VALUES(64,'设备编号4','设备名称4','http://localhost:8080/django4h80u/upload/shebeiguihai_tupian4.jpg','生产商4',4,CURRENT_TIMESTAMP,'归还备注4','用户名4','姓名4','13823888884','是','');
INSERT INTO shebeiguihai(id,shebeibianhao,shebeimingcheng,tupian,shengchanshang,shuliang,guihairiqi,guihaibeizhu,yonghuming,xingming,shouji,sfsh,shhf) VALUES(65,'设备编号5','设备名称5','http://localhost:8080/django4h80u/upload/shebeiguihai_tupian5.jpg','生产商5',5,CURRENT_TIMESTAMP,'归还备注5','用户名5','姓名5','13823888885','是','');
INSERT INTO shebeiguihai(id,shebeibianhao,shebeimingcheng,tupian,shengchanshang,shuliang,guihairiqi,guihaibeizhu,yonghuming,xingming,shouji,sfsh,shhf) VALUES(66,'设备编号6','设备名称6','http://localhost:8080/django4h80u/upload/shebeiguihai_tupian6.jpg','生产商6',6,CURRENT_TIMESTAMP,'归还备注6','用户名6','姓名6','13823888886','是','');

DROP TABLE IF EXISTS `shebeirenling`;

CREATE TABLE `shebeirenling` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`shebeibianhao` varchar(200) NOT NULL UNIQUE   COMMENT '设备编号',
	`shebeimingcheng` varchar(200)    COMMENT '设备名称',
	`fenlei` varchar(200) NOT NULL   COMMENT '分类',
	`zhejiulv` varchar(200)    COMMENT '折旧率',
	`tupian` varchar(200)    COMMENT '图片',
	`shuliang` int    COMMENT '数量',
	`shengchanshang` varchar(200)    COMMENT '生产商',
	`caigouriqi` varchar(200)    COMMENT '采购日期',
	`suoshubumen` varchar(200)    COMMENT '所属部门',
	`dangqianweizhi` varchar(200)    COMMENT '当前位置',
	`yonghuming` varchar(200)    COMMENT '用户名',
	`xingming` varchar(200)    COMMENT '姓名',
	`shouji` varchar(200)    COMMENT '手机',
	`sfsh` varchar(200)   default '否' COMMENT '是否审核',
	`shhf` longtext    COMMENT '审核回复',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='设备认领';

INSERT INTO shebeirenling(id,shebeibianhao,shebeimingcheng,fenlei,zhejiulv,tupian,shuliang,shengchanshang,caigouriqi,suoshubumen,dangqianweizhi,yonghuming,xingming,shouji,sfsh,shhf) VALUES(71,'设备编号1','设备名称1','分类1','折旧率1','http://localhost:8080/django4h80u/upload/shebeirenling_tupian1.jpg',1,'生产商1','采购日期1','所属部门1','当前位置1','用户名1','姓名1','13823888881','是','');
INSERT INTO shebeirenling(id,shebeibianhao,shebeimingcheng,fenlei,zhejiulv,tupian,shuliang,shengchanshang,caigouriqi,suoshubumen,dangqianweizhi,yonghuming,xingming,shouji,sfsh,shhf) VALUES(72,'设备编号2','设备名称2','分类2','折旧率2','http://localhost:8080/django4h80u/upload/shebeirenling_tupian2.jpg',2,'生产商2','采购日期2','所属部门2','当前位置2','用户名2','姓名2','13823888882','是','');
INSERT INTO shebeirenling(id,shebeibianhao,shebeimingcheng,fenlei,zhejiulv,tupian,shuliang,shengchanshang,caigouriqi,suoshubumen,dangqianweizhi,yonghuming,xingming,shouji,sfsh,shhf) VALUES(73,'设备编号3','设备名称3','分类3','折旧率3','http://localhost:8080/django4h80u/upload/shebeirenling_tupian3.jpg',3,'生产商3','采购日期3','所属部门3','当前位置3','用户名3','姓名3','13823888883','是','');
INSERT INTO shebeirenling(id,shebeibianhao,shebeimingcheng,fenlei,zhejiulv,tupian,shuliang,shengchanshang,caigouriqi,suoshubumen,dangqianweizhi,yonghuming,xingming,shouji,sfsh,shhf) VALUES(74,'设备编号4','设备名称4','分类4','折旧率4','http://localhost:8080/django4h80u/upload/shebeirenling_tupian4.jpg',4,'生产商4','采购日期4','所属部门4','当前位置4','用户名4','姓名4','13823888884','是','');
INSERT INTO shebeirenling(id,shebeibianhao,shebeimingcheng,fenlei,zhejiulv,tupian,shuliang,shengchanshang,caigouriqi,suoshubumen,dangqianweizhi,yonghuming,xingming,shouji,sfsh,shhf) VALUES(75,'设备编号5','设备名称5','分类5','折旧率5','http://localhost:8080/django4h80u/upload/shebeirenling_tupian5.jpg',5,'生产商5','采购日期5','所属部门5','当前位置5','用户名5','姓名5','13823888885','是','');
INSERT INTO shebeirenling(id,shebeibianhao,shebeimingcheng,fenlei,zhejiulv,tupian,shuliang,shengchanshang,caigouriqi,suoshubumen,dangqianweizhi,yonghuming,xingming,shouji,sfsh,shhf) VALUES(76,'设备编号6','设备名称6','分类6','折旧率6','http://localhost:8080/django4h80u/upload/shebeirenling_tupian6.jpg',6,'生产商6','采购日期6','所属部门6','当前位置6','用户名6','姓名6','13823888886','是','');


DROP TABLE IF EXISTS `config`;

CREATE TABLE `config`(
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`name` varchar(100) NOT NULL COMMENT '配置参数名称',
	`value` varchar(100) COMMENT '配置参数值',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='配置文件';

insert into config(id,name,value) values(1,'picture1','http://localhost:8080/django4h80u/upload/picture1.jpg');
insert into config(id,name,value) values(2,'picture2','http://localhost:8080/django4h80u/upload/picture2.jpg');
insert into config(id,name,value) values(3,'picture3','http://localhost:8080/django4h80u/upload/picture3.jpg');
insert into config(id,name) values(6,'homepage');


DROP TABLE IF EXISTS `users`;

CREATE TABLE `users`(
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`username` varchar(100) NOT NULL COMMENT '用户名',
	`password` varchar(100) NOT NULL COMMENT '密码',
	`role` varchar(100) default '管理员' COMMENT '角色',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '新增时间',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

insert into users(id,username, password) values(1,'abo','abo');


