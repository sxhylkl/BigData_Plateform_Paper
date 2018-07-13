/*
SQLyog Ultimate v10.42 
MySQL - 5.6.27-log : Database - high_school_db
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`high_school_db` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `high_school_db`;

/*Table structure for table `academy_major` */

DROP TABLE IF EXISTS `academy_major`;

CREATE TABLE `academy_major` (
  `academy` varchar(30) DEFAULT NULL,
  `major` varchar(50) DEFAULT NULL,
  `major_code` varchar(10) NOT NULL,
  `sub_major` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`major_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `academy_major` */

insert  into `academy_major`(`academy`,`major`,`major_code`,`sub_major`) values ('医学院','1001 基础医学','100101','人体解剖和组织胚胎学'),('医学院','1001 基础医学','100102','免疫学'),('医学院','1001 基础医学','100103','病原生物学'),('医学院','1001 基础医学','100104','病理学与病理生理学'),('医学院','1001 基础医学','100105','法医学'),('医学院','1001 基础医学','100106','放射医学'),('医学院','1001 基础医学','100107','航空、航天与航海医学'),('医学院','1002 临床医学','100201','内科学'),('医学院','1002 临床医学','100202','儿科学'),('医学院','1002 临床医学','100203','老年医学'),('医学院','1002 临床医学','100204','神经病学'),('医学院','1002 临床医学','100205','精神病与精神卫生学'),('医学院','1002 临床医学','100206','皮肤病与性病学'),('医学院','1002 临床医学','100207','影像医学与核医学'),('医学院','1002 临床医学','100208','临床检验诊断学'),('医学院','1002 临床医学','100209','护理学'),('医学院','1002 临床医学','100210','外科学'),('医学院','1002 临床医学','100211','妇产科学'),('医学院','1002 临床医学','100212','眼科学'),('医学院','1002 临床医学','100213','耳鼻咽喉科学'),('医学院','1002 临床医学','100214','肿瘤学'),('医学院','1002 临床医学','100215','康复医学与理疗学'),('医学院','1002 临床医学','100216','运动医学'),('医学院','1002 临床医学','100217','麻醉学'),('医学院','1002 临床医学','100218','急诊医学'),('医学院','1003 口腔医学','100301','口腔基础医学'),('医学院','1003 口腔医学','100302','口腔临床医学'),('医学院','1004 公共卫生与预防医学','100401','流行病与卫生统计学'),('医学院','1004 公共卫生与预防医学','100402','劳动卫生与环境卫生学'),('医学院','1004 公共卫生与预防医学','100403','营养与食品卫生学'),('医学院','1004 公共卫生与预防医学','100404','儿少卫生与妇幼保健学'),('医学院','1004 公共卫生与预防医学','100405','卫生毒理学'),('医学院','1004 公共卫生与预防医学','100406','军事预防医学'),('医学院','1005 中医学','100501','中医基础理论'),('医学院','1005 中医学','100502','中医临床基础'),('医学院','1005 中医学','100503','中医医史文献'),('医学院','1005 中医学','100504','方剂学'),('医学院','1005 中医学','100505','中医诊断学'),('医学院','1005 中医学','100506','中医内科学'),('医学院','1005 中医学','100507','中医外科学'),('医学院','1005 中医学','100508','中医骨伤科学'),('医学院','1005 中医学','100509','中医妇科学'),('医学院','1005 中医学','100510','中医儿科学'),('医学院','1005 中医学','100511','中医五官科学'),('医学院','1005 中医学','100512','针灸推拿学'),('医学院','1005 中医学','100513','民族医学（含：藏医学、蒙医学等）'),('医学院','1006 中西医结合','100601','中西医结合基础'),('医学院','1006 中西医结合','100602','中西医结合临床'),('医学院','1007 药学','100701','药物化学'),('医学院','1007 药学','100702','药剂学'),('医学院','1007 药学','100703','生药学'),('医学院','1007 药学','100704','药物分析学'),('医学院','1007 药学','100705','微生物与生化药学'),('医学院','1007 药学','100706','药理学'),('医学院','1008 中药学','100800',''),('哲学院','0101 哲学','10101','马克思主义哲学'),('哲学院','0101 哲学','10102','中国哲学'),('哲学院','0101 哲学','10103','外国哲学'),('哲学院','0101 哲学','10104','逻辑学'),('哲学院','0101 哲学','10105','伦理学'),('哲学院','0101 哲学','10106','美学'),('哲学院','0101 哲学','10107','宗教学'),('哲学院','0101 哲学','10108','科学技术哲学'),('军事学院','1101 军事思想及军事历史','110101','军事思想'),('军事学院','1101 军事思想及军事历史','110102','军事历史'),('军事学院','1102 战略学','110201','军事战略学'),('军事学院','1102 战略学','110202','战争动员学'),('军事学院','1103 战役学','110301','联合战役学'),('军事学院','1103 战役学','110302','军种战役学（含：第二炮兵战役学）'),('军事学院','1104 战术学','110401','合同战术学'),('军事学院','1104 战术学','110402','兵种战术学'),('军事学院','1105 军队指挥学','110501','作战指挥学'),('军事学院','1105 军队指挥学','110502','军事运筹学'),('军事学院','1105 军队指挥学','110503','军事通信学'),('军事学院','1105 军队指挥学','110504','军事情报学'),('军事学院','1105 军队指挥学','110505','密码学'),('军事学院','1105 军队指挥学','110506','军事教育训练学（含：军事体育学）'),('军事学院','1106军制学','110601','军事组织编制学'),('军事学院','1106军制学','110602','军队管理学'),('军事学院','1107 军队政治工作学','110700',''),('军事学院','1108 军事后勤学与军事装备学','110801','军事后勤学'),('军事学院','1108 军事后勤学与军事装备学','110802','后方专业勤务'),('军事学院','1108 军事后勤学与军事装备学','110803','军事装备学'),('管理学','1201 管理科学与工程','120100',''),('管理学','1202 工商管理','120201','会计学'),('管理学','1202 工商管理','120202','企业管理（含：财务管理、市场营销、人力资源管理）'),('管理学','1202 工商管理','120203','旅游管理'),('管理学','1202 工商管理','120204','技术经济及管理'),('管理学','1203 农林经济管理','120301','农业经济管理'),('管理学','1203 农林经济管理','120302','林业经济管理'),('管理学','1204 公共管理','120401','行政管理'),('管理学','1204 公共管理','120402','社会医学与卫生事业管理'),('管理学','1204 公共管理','120403','教育经济与管理'),('管理学','1204 公共管理','120404','社会保障'),('管理学','1204 公共管理','120405','土地资源管理'),('管理学','1205 图书馆、情报与档案管理','120501','图书馆学'),('管理学','1205 图书馆、情报与档案管理','120502','情报学'),('管理学','1205 图书馆、情报与档案管理','120503','档案学'),('经济学院','0201 理论经济学','20101','政治经济学'),('经济学院','0201 理论经济学','20102','经济思想史'),('经济学院','0201 理论经济学','20103','经济史'),('经济学院','0201 理论经济学','20104','西方经济学'),('经济学院','0201 理论经济学','20105','世界经济'),('经济学院','0201 理论经济学','20106','人口、资源与环境经济学'),('经济学院','0202 应用经济学','20201','国民经济学'),('经济学院','0202 应用经济学','20202','区域经济学'),('经济学院','0202 应用经济学','20203','财政学（含∶税收学）'),('经济学院','0202 应用经济学','20204','金融学（含∶保险学）'),('经济学院','0202 应用经济学','20205','产业经济学'),('经济学院','0202 应用经济学','20206','国际贸易学'),('经济学院','0202 应用经济学','20207','劳动经济学'),('经济学院','0202 应用经济学','20208','统计学'),('经济学院','0202 应用经济学','20209','数量经济学'),('经济学院','0202 应用经济学','20210','国防经济'),('法学院','0301 法学','30101','法学理论'),('法学院','0301 法学','30102','法律史'),('法学院','0301 法学','30103','宪法学与行政法学'),('法学院','0301 法学','30104','刑法学'),('法学院','0301 法学','30105','民商法学（含：劳动法学、社会保障法学）'),('法学院','0301 法学','30106','诉讼法学'),('法学院','0301 法学','30107','经济法学'),('法学院','0301 法学','30108','环境与资源保护法学'),('法学院','0301 法学','30109','国际法学（含：国际公法、国际私法、国际经济法'),('法学院','0301 法学','30110','军事法学'),('法学院','0302 政治学','30201','政治学理论'),('法学院','0302 政治学','30202','中外政治制度'),('法学院','0302 政治学','30203','科学社会主义与国际共产主义运动'),('法学院','0302 政治学','30204','中共党史（含：党的学说与党的建设）'),('法学院','0302 政治学','30206','国际政治'),('法学院','0302 政治学','30207','国际关系'),('法学院','0302 政治学','30208','外交学'),('法学院','0303 社会学','30301','社会学'),('法学院','0303 社会学','30302','人口学'),('法学院','0303 社会学','30303','人类学'),('法学院','0303 社会学','30304','民俗学（含：中国民间文学）'),('法学院','0304 民族学','30401','民族学'),('法学院','0304 民族学','30402','马克思主义民族理论与政策'),('法学院','0304 民族学','30403','中国少数民族经济'),('法学院','0304 民族学','30404','中国少数民族史'),('法学院','0304 民族学','30405','中国少数民族艺术'),('法学院','0305 马克思主义理论','30501','马克思主义基本原理'),('法学院','0305 马克思主义理论','30502','马克思主义发展史'),('法学院','0305 马克思主义理论','30503','马克思主义中国化研究'),('法学院','0305 马克思主义理论','30504','国外马克思主义研究'),('法学院','0305 马克思主义理论','30505','思想政治教育'),('教育学院','0401 教育学','40101','教育学原理'),('教育学院','0401 教育学','40102','课程与教学论'),('教育学院','0401 教育学','40103','教育史'),('教育学院','0401 教育学','40104','比较教育学'),('教育学院','0401 教育学','40105','学前教育学'),('教育学院','0401 教育学','40106','高等教育学'),('教育学院','0401 教育学','40107','成人教育学'),('教育学院','0401 教育学','40108','职业技术教育学'),('教育学院','0401 教育学','40109','特殊教育学'),('教育学院','0401 教育学','40110','教育技术学（可授教育学、理学学位）'),('教育学院','0402 心理学','40201','基础心理学'),('教育学院','0402 心理学','40202','发展与教育心理学'),('教育学院','0402 心理学','40203','应用心理学'),('教育学院','0403 体育学','40301','体育人文社会学'),('教育学院','0403 体育学','40302','运动人体科学'),('教育学院','0403 体育学','40303','体育教育训练学'),('教育学院','0403 体育学','40304','民族传统体育学'),('文学院','0501 中国语言文学','50101','文艺学'),('文学院','0501 中国语言文学','50102','语言学及应用语言学'),('文学院','0501 中国语言文学','50103','汉语言文字学'),('文学院','0501 中国语言文学','50104','中国古典文献学'),('文学院','0501 中国语言文学','50105','中国古代文学'),('文学院','0501 中国语言文学','50106','中国现当代文学'),('文学院','0501 中国语言文学','50107','中国少数民族语言文学（分语族）'),('文学院','0501 中国语言文学','50108','比较文学与世界文学'),('文学院','0502 外国语言文学','50201','英语语言文学'),('文学院','0502 外国语言文学','50202','俄语语言文学'),('文学院','0502 外国语言文学','50203','法语语言文学'),('文学院','0502 外国语言文学','50204','德语语言文学'),('文学院','0502 外国语言文学','50205','日语语言文学'),('文学院','0502 外国语言文学','50206','印度语言文学'),('文学院','0502 外国语言文学','50207','西班牙语语言文学'),('文学院','0502 外国语言文学','50208','阿拉伯语语言文学'),('文学院','0502 外国语言文学','50209','欧洲语言文学'),('文学院','0502 外国语言文学','50210','亚非语言文学'),('文学院','0502 外国语言文学','50211','外国语言学及应用语言学'),('文学院','0503 新闻传播学','50301','新闻学'),('文学院','0503 新闻传播学','50302','传播学'),('文学院','0504 艺术学','50401','艺术学'),('文学院','0504 艺术学','50402','音乐学'),('文学院','0504 艺术学','50403','美术学'),('文学院','0504 艺术学','50404','设计艺术学'),('文学院','0504 艺术学','50405','戏剧戏曲学'),('文学院','0504 艺术学','50406','电影学'),('文学院','0504 艺术学','50407','广播电视艺术学'),('文学院','0504 艺术学','50408','舞蹈学'),('历史学','0601 历史学','60101','史学理论及史学史'),('历史学','0601 历史学','60102','考古学及博物馆学'),('历史学','0601 历史学','60103','历史地理学'),('历史学','0601 历史学','60104','历史文献学（含∶敦煌学、古文字学）'),('历史学','0601 历史学','60105','专门史'),('历史学','0601 历史学','60106','中国古代史'),('历史学','0601 历史学','60107','中国近现代史'),('历史学','0601 历史学','60108','世界史'),('理学院','0701 数学','70101','基础数学'),('理学院','0701 数学','70102','计算数学'),('理学院','0701 数学','70103','概率论与数理统计'),('理学院','0701 数学','70104','应用数学'),('理学院','0701 数学','70105','运筹学与控制论'),('理学院','0702 物理学','70201','理论物理'),('理学院','0702 物理学','70202','粒子物理与原子核物理'),('理学院','0702 物理学','70203','原子与分子物理'),('理学院','0702 物理学','70204','等离子体物理'),('理学院','0702 物理学','70205','凝聚态物理'),('理学院','0702 物理学','70206','声学'),('理学院','0702 物理学','70207','光学'),('理学院','0702 物理学','70208','无线电物理'),('理学院','0703 化学','70301','无机化学'),('理学院','0703 化学','70302','分析化学'),('理学院','0703 化学','70303','有机化学'),('理学院','0703 化学','70304','物理化学（含：化学物理）'),('理学院','0703 化学','70305','高分子化学与物理'),('理学院','0704 天文学','70401','天体物理'),('理学院','0704 天文学','70402','天体测量与天体力学'),('理学院','0705 地理学','70501','自然地理学'),('理学院','0705 地理学','70502','人文地理学'),('理学院','0705 地理学','70503','地图学与地理信息系统'),('理学院','0706 大气科学','70601','气象学'),('理学院','0706 大气科学','70602','大气物理学与大气环境'),('理学院','0707 海洋科学','70701','物理海洋学'),('理学院','0707 海洋科学','70702','海洋化学'),('理学院','0707 海洋科学','70703','海洋生物学'),('理学院','0707 海洋科学','70704','海洋地质'),('理学院','0708 地球物理学','70801','固体地球物理学'),('理学院','0708 地球物理学','70802','空间物理学'),('理学院','0709 地质学','70901','矿物学、岩石学、矿床学'),('理学院','0709 地质学','70902','地球化学'),('理学院','0709 地质学','70903','古生物学与地层学（含：古人类学）'),('理学院','0709 地质学','70904','构造地质学'),('理学院','0709 地质学','70905','第四纪地质学'),('理学院','0710 生物学','71001','植物学'),('理学院','0710 生物学','71002','动物学'),('理学院','0710 生物学','71003','生理学'),('理学院','0710 生物学','71004','水生生物学'),('理学院','0710 生物学','71005','微生物学'),('理学院','0710 生物学','71006','神经生物学'),('理学院','0710 生物学','71007','遗传学'),('理学院','0710 生物学','71008','发育生物学'),('理学院','0710 生物学','71009','细胞生物学'),('理学院','0710 生物学','71010','生物化学与分子生物学'),('理学院','0710 生物学','71011','生物物理学'),('理学院','0710 生物学','71012','生态学'),('理学院','0711 系统科学','71101','系统理论'),('理学院','0711 系统科学','71102','系统分析与集成'),('理学院','0712 科学技术史','71200',''),('工学院','0801 力学（可授工学、理学学位）','80101','一般力学与力学基础'),('工学院','0801 力学（可授工学、理学学位）','80102','固体力学'),('工学院','0801 力学（可授工学、理学学位）','80103','流体力学'),('工学院','0801 力学（可授工学、理学学位）','80104','工程力学'),('工学院','0802 机械工程','80201','机械制造及其自动化'),('工学院','0802 机械工程','80202','机械电子工程'),('工学院','0802 机械工程','80203','机械设计及理论'),('工学院','0802 机械工程','80204','车辆工程'),('工学院','0803 光学工程','80300',''),('工学院','0804 仪器科学与技术','80401','精密仪器及机械'),('工学院','0804 仪器科学与技术','80402','测试计量技术及仪器'),('工学院','0805 材料科学与工程','80501','材料物理与化学'),('工学院','0805 材料科学与工程','80502','材料学'),('工学院','0805 材料科学与工程','80503','材料加工工程'),('工学院','0806 冶金工程','80601','冶金物理化学'),('工学院','0806 冶金工程','80602','钢铁冶金'),('工学院','0806 冶金工程','80603','有色金属冶金'),('工学院','0807 动力工程及工程热物理','80701','工程热物理'),('工学院','0807 动力工程及工程热物理','80702','热能工程'),('工学院','0807 动力工程及工程热物理','80703','动力机械及工程'),('工学院','0807 动力工程及工程热物理','80704','流体机械及工程'),('工学院','0807 动力工程及工程热物理','80705','制冷及低温工程'),('工学院','0807 动力工程及工程热物理','80706','化工过程机械'),('工学院','0808 电气工程','80801','电机与电器'),('工学院','0808 电气工程','80802','电力系统及其自动化'),('工学院','0808 电气工程','80803','高电压与绝缘技术'),('工学院','0808 电气工程','80804','电力电子与电力传动'),('工学院','0808 电气工程','80805','电工理论与新技术'),('工学院','0809 电子科学与技术','80901','物理电子学'),('工学院','0809 电子科学与技术','80902','电路与系统'),('工学院','0809 电子科学与技术','80903','微电子学与固体电子学'),('工学院','0809 电子科学与技术','80904','电磁场与微波技术'),('工学院','0810 信息与通信工程','81001','通信与信息系统'),('工学院','0810 信息与通信工程','81002','信号与信息处理'),('工学院','0811 控制科学与工程','81101','控制理论与控制工程'),('工学院','0811 控制科学与工程','81102','检测技术与自动化装置'),('工学院','0811 控制科学与工程','81103','系统工程'),('工学院','0811 控制科学与工程','81104','模式识别与智能系统'),('工学院','0811 控制科学与工程','81105','导航、制导与控制'),('工学院','0812  计算机科学与技术','81201','计算机系统结构'),('工学院','0812  计算机科学与技术','81202','计算机软件与理论'),('工学院','0812  计算机科学与技术','81203','计算机应用技术'),('工学院','0813 建筑学','81301','建筑历史与理论'),('工学院','0813 建筑学','81302','建筑设计及其理论'),('工学院','0813 建筑学','81303','城市规划与设计(含∶风景园林规划与设计)'),('工学院','0813 建筑学','81304','建筑技术科学'),('工学院','0814 土木工程','81401','岩土工程'),('工学院','815 土木工程','81402','结构工程'),('工学院','815 土木工程','81403','市政工程'),('工学院','815 土木工程','81404','供热、供燃气、通风及空调工程'),('工学院','815 土木工程','81405','防灾减灾工程及防护工程'),('工学院','815 土木工程','81406','桥梁与隧道工程'),('工学院','0815 水利工程','81501','水文学及水资源'),('工学院','0815 水利工程','81502','水力学及河流动力学'),('工学院','0815 水利工程','81503','水工结构工程'),('工学院','0815 水利工程','81504','水利水电工程'),('工学院','0815 水利工程','81505','港口、海岸及近海工程'),('工学院','0816 测绘科学与技术','81601','大地测量学与测量工程'),('工学院','0816 测绘科学与技术','81602','摄影测量与遥感'),('工学院','0816 测绘科学与技术','81603','地图制图学与地理信息工程'),('工学院','0817 化学工程与技术','81701','化学工程'),('工学院','0817 化学工程与技术','81702','化学工艺'),('工学院','0817 化学工程与技术','81703','生物化工'),('工学院','0817 化学工程与技术','81704','应用化学'),('工学院','0817 化学工程与技术','81705','工业催化'),('工学院','0818 地质资源与地质工程','81801','矿产普查与勘探'),('工学院','0818 地质资源与地质工程','81802','地球探测与信息技术'),('工学院','0818 地质资源与地质工程','81803','地质工程'),('工学院','0819 矿业工程','81901','采矿工程'),('工学院','0819 矿业工程','81902','矿物加工工程'),('工学院','0819 矿业工程','81903','安全技术及工程'),('工学院','0820  石油与天然气工程','82001','油气井工程'),('工学院','0820  石油与天然气工程','82002','油气田开发工程'),('工学院','0820  石油与天然气工程','82003','油气储运工程'),('工学院','0821 纺织科学与工程','82101','纺织工程'),('工学院','0821 纺织科学与工程','82102','纺织材料与纺织品设计'),('工学院','0821 纺织科学与工程','82103','纺织化学与染整工程'),('工学院','0821 纺织科学与工程','82104','服装设计与工程'),('工学院','0822 轻工技术与工程','82201','制浆造纸工程'),('工学院','0822 轻工技术与工程','82202','制糖工程'),('工学院','0822 轻工技术与工程','82203','发酵工程'),('工学院','0822 轻工技术与工程','82204','皮革化学与工程'),('工学院','0823 交通运输工程','82301','道路与铁道工程'),('工学院','0823 交通运输工程','82302','交通信息工程及控制'),('工学院','0823 交通运输工程','82303','交通运输规划与管理'),('工学院','0823 交通运输工程','82304','载运工具运用工程'),('工学院','0824 船舶与海洋工程','82401','船舶与海洋结构物设计制造'),('工学院','0824 船舶与海洋工程','82402','轮机工程'),('工学院','0824 船舶与海洋工程','82403','水声工程'),('工学院','0825 航空宇航科学与技术','82501','飞行器设计'),('工学院','0825 航空宇航科学与技术','82502','航空宇航推进理论与工程'),('工学院','0825 航空宇航科学与技术','82503','航空宇航制造工程'),('工学院','0825 航空宇航科学与技术','82504','人机与环境工程'),('工学院','0826 兵器科学与技术','82601','武器系统与运用工程'),('工学院','0826 兵器科学与技术','82602','兵器发射理论与技术'),('工学院','0826 兵器科学与技术','82603','火炮、自动武器与弹药工程'),('工学院','0826 兵器科学与技术','82604','军事化学与烟火技术'),('工学院','0827 核科学与技术','82701','核能科学与工程'),('工学院','0827 核科学与技术','82702','核燃料循环与材料'),('工学院','0827 核科学与技术','82703','核技术及应用'),('工学院','0827 核科学与技术','82704','辐射防护及环境保护'),('工学院','0828 农业工程','82801','农业机械化工程'),('工学院','0828 农业工程','82802','农业水土工程'),('工学院','0828 农业工程','82803','农业生物环境与能源工程'),('工学院','0828 农业工程','82804','农业电气化与自动化'),('工学院','0829 林业工程','82901','森林工程'),('工学院','0829 林业工程','82902','木材科学与技术'),('工学院','0829 林业工程','82903','林产化学加工工程'),('工学院','0830环境科学与工程','83001','环境科学'),('工学院','0830环境科学与工程','83002','环境工程'),('工学院','0831 生物医学工程','83100',''),('工学院','0832 食品科学与工程','83201','食品科学'),('工学院','0832 食品科学与工程','83202','粮食、油脂及植物蛋白工程'),('工学院','0832 食品科学与工程','83203','农产品加工及贮藏工程'),('工学院','0832 食品科学与工程','83204','水产品加工及贮藏工程'),('农学院','0901 作物学','90101','作物栽培学与耕作学'),('农学院','0901 作物学','90102','作物遗传育种'),('农学院','0902 园艺学','90201','果树学'),('农学院','0902 园艺学','90202','蔬菜学'),('农学院','0902 园艺学','90203','茶学'),('农学院','0903 农业资源利用','90301','土壤学'),('农学院','0903 农业资源利用','90302','植物营养学'),('农学院','0904 植物保护','90401','植物病理学'),('农学院','0904 植物保护','90402','农业昆虫与害虫防治'),('农学院','0904 植物保护','90403','农药学（可授农学、理学学位）'),('农学院','0905 畜牧学','90501','动物遗传育种与繁殖'),('农学院','0905 畜牧学','90502','动物营养与饲料科学'),('农学院','0905 畜牧学','90503','草业科学'),('农学院','0905 畜牧学','90504','特种经济动物饲养（含：蚕、蜂等）'),('农学院','0906 兽医学','90601','基础兽医学'),('农学院','0906 兽医学','90602','预防兽医学'),('农学院','0906 兽医学','90603','临床兽医学'),('农学院','0907 林学','90701','林木遗传育种'),('农学院','0907 林学','90702','森林培育'),('农学院','0907 林学','90703','森林保护学'),('农学院','0907 林学','90704','森林经理学'),('农学院','0907 林学','90705','野生动植物保护与利用'),('农学院','0907 林学','90706','园林植物与观赏园艺'),('农学院','0907 林学','90707','水土保持与荒漠化防治'),('农学院','0908 水产','90801','水产养殖'),('农学院','0908 水产','90802','捕捞学'),('农学院','0908 水产','90803','渔业资源');

/*Table structure for table `card_build_info` */

DROP TABLE IF EXISTS `card_build_info`;

CREATE TABLE `card_build_info` (
  `BuilID` char(8) NOT NULL COMMENT '建筑物ID',
  `AddrID` char(6) NOT NULL COMMENT '单位地址ID',
  `BuilName` varchar(20) DEFAULT NULL COMMENT '建筑物名称',
  PRIMARY KEY (`BuilID`),
  KEY `AddrID` (`AddrID`),
  CONSTRAINT `card_build_info_ibfk_1` FOREIGN KEY (`AddrID`) REFERENCES `card_org_addr` (`AddrID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `card_build_info` */

/*Table structure for table `card_card_info` */

DROP TABLE IF EXISTS `card_card_info`;

CREATE TABLE `card_card_info` (
  `card_id` char(20) NOT NULL COMMENT '卡号ID',
  `user_id` char(20) DEFAULT NULL COMMENT '用户编号',
  `made_time` datetime DEFAULT NULL COMMENT '制作时间',
  `effive_tiem` datetime DEFAULT NULL COMMENT '有效期',
  PRIMARY KEY (`card_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `card_card_info` */

/*Table structure for table `card_charging_info` */

DROP TABLE IF EXISTS `card_charging_info`;

CREATE TABLE `card_charging_info` (
  `charging_id` mediumtext NOT NULL COMMENT '充值流水号ID',
  `user_id` char(10) DEFAULT NULL COMMENT '用户编号',
  `volume` int(11) DEFAULT NULL COMMENT '充值金额',
  `charging_wallet` int(11) DEFAULT NULL COMMENT '充值钱包',
  `charging_type` tinyint(4) DEFAULT NULL COMMENT '充值方式',
  `charging_time` datetime DEFAULT NULL COMMENT '充值时间',
  `charge_place` varchar(16) DEFAULT NULL COMMENT '充值地点',
  `operator_code` char(6) DEFAULT NULL COMMENT '操作员编号',
  `flag` char(1) DEFAULT NULL COMMENT '有效标志',
  `remark` char(150) DEFAULT NULL COMMENT '备注'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `card_charging_info` */

/*Table structure for table `card_class_info` */

DROP TABLE IF EXISTS `card_class_info`;

CREATE TABLE `card_class_info` (
  `ClassID` char(12) NOT NULL COMMENT '班级 ID',
  `ClassDesc` varchar(100) DEFAULT NULL COMMENT '班级描述',
  `Grade` varchar(6) DEFAULT NULL COMMENT '年级',
  `FromDate` date DEFAULT NULL COMMENT '起始时间',
  `ToDate` date DEFAULT NULL COMMENT '终止时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `card_class_info` */

/*Table structure for table `card_consume_record` */

DROP TABLE IF EXISTS `card_consume_record`;

CREATE TABLE `card_consume_record` (
  `seq_id` int(11) NOT NULL COMMENT '流水号',
  `card_id` char(20) NOT NULL COMMENT '流水号',
  `out_account` char(20) NOT NULL COMMENT '付款账号',
  `in_account` char(20) NOT NULL COMMENT '收款账号',
  `in_account_name` char(60) DEFAULT NULL COMMENT '收款方户名',
  `consume_time` datetime NOT NULL COMMENT '交易时间',
  `volumes` int(11) NOT NULL COMMENT '交易额',
  `pos_ID` char(20) NOT NULL COMMENT 'POS机编号'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `card_consume_record` */

/*Table structure for table `card_dept_info` */

DROP TABLE IF EXISTS `card_dept_info`;

CREATE TABLE `card_dept_info` (
  `DeptID` char(8) NOT NULL COMMENT '部门ID',
  `DeptDesc` varchar(200) DEFAULT NULL COMMENT '部门描述',
  `DeptName` varchar(40) NOT NULL COMMENT '部门名称',
  `IsStudent` char(1) NOT NULL COMMENT '是否下属学生',
  `Isteacher` char(1) NOT NULL COMMENT '是否下属教工',
  `LevelID` char(1) NOT NULL COMMENT '级别 ID',
  `FromDate` date NOT NULL COMMENT '起始时间',
  `ToDate` date DEFAULT NULL COMMENT '终止时间',
  `DeptNumber` char(4) DEFAULT NULL COMMENT '部门人数'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `card_dept_info` */

/*Table structure for table `card_major_info` */

DROP TABLE IF EXISTS `card_major_info`;

CREATE TABLE `card_major_info` (
  `MajorID` char(8) NOT NULL COMMENT '专业ID',
  `MajorName` varchar(50) NOT NULL COMMENT '专业名称',
  `MajorDesc` varchar(200) DEFAULT NULL COMMENT '专业描述',
  `FromDate` date DEFAULT NULL COMMENT '起始时间',
  `ToDate` date DEFAULT NULL COMMENT '终止时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `card_major_info` */

/*Table structure for table `card_merchant_info_his` */

DROP TABLE IF EXISTS `card_merchant_info_his`;

CREATE TABLE `card_merchant_info_his` (
  `gen_time` date DEFAULT NULL COMMENT '生成时间',
  `gen_reaso` char(1) DEFAULT NULL COMMENT '入历史原因:1更新 2删除',
  `gen_opno` varchar(8) DEFAULT NULL COMMENT '录入操作员',
  `merchant_no` varchar(8) NOT NULL COMMENT '主商户编码',
  `merchant_name` varchar(60) DEFAULT NULL COMMENT '主商户名称',
  `merchant_type` varchar(2) DEFAULT NULL COMMENT '主商户类型',
  `trade_type` varchar(2) DEFAULT NULL COMMENT '行业类型',
  `indu_id` varchar(20) DEFAULT NULL COMMENT '业信息表',
  `corpman_idcard` varchar(20) DEFAULT NULL COMMENT '法人身份证号码',
  `corp_mavar` char(50) DEFAULT NULL COMMENT '法人代表',
  `create_time` date DEFAULT NULL COMMENT '注册日期',
  `bank_no` varchar(50) DEFAULT NULL COMMENT '开户银行',
  `bank_name` varchar(255) DEFAULT NULL COMMENT '银行账号',
  `account_name` varchar(50) DEFAULT NULL COMMENT '开户名',
  `account_no` varchar(30) DEFAULT NULL COMMENT '用户帐号',
  `state` char(1) DEFAULT NULL COMMENT '状态',
  `checkout_type` varchar(1) DEFAULT NULL COMMENT '结帐类型',
  `checkout_day` decimal(10,0) DEFAULT NULL COMMENT '结帐时间 单位：月',
  `oper_no` varchar(8) DEFAULT NULL COMMENT '操作员',
  `set_time` date DEFAULT NULL COMMENT '设置时间',
  `modify_time` date DEFAULT NULL COMMENT '修改时间',
  `modify_opno` varchar(8) DEFAULT NULL COMMENT '修改操作员',
  `memo` varchar(50) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`merchant_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `card_merchant_info_his` */

/*Table structure for table `card_org_addr` */

DROP TABLE IF EXISTS `card_org_addr`;

CREATE TABLE `card_org_addr` (
  `AddrID` char(6) NOT NULL COMMENT '单位地址ID',
  `Address` varchar(100) DEFAULT NULL COMMENT '单位地址',
  `OrgPhone` varchar(100) DEFAULT NULL COMMENT '单位电话',
  `Zipcode` char(6) DEFAULT NULL COMMENT '邮政编码',
  `OrgID` char(6) NOT NULL COMMENT '单位ID',
  PRIMARY KEY (`AddrID`),
  KEY `OrgID` (`OrgID`),
  CONSTRAINT `card_org_addr_ibfk_1` FOREIGN KEY (`OrgID`) REFERENCES `card_org_info` (`OrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `card_org_addr` */

/*Table structure for table `card_org_info` */

DROP TABLE IF EXISTS `card_org_info`;

CREATE TABLE `card_org_info` (
  `OrgID` char(6) NOT NULL COMMENT '单位ID',
  `OrgName` varchar(40) NOT NULL COMMENT '单位名称',
  `OrgSymbol` char(40) DEFAULT NULL COMMENT '单位标志',
  PRIMARY KEY (`OrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `card_org_info` */

/*Table structure for table `card_pos_info` */

DROP TABLE IF EXISTS `card_pos_info`;

CREATE TABLE `card_pos_info` (
  `pos_ID` char(20) NOT NULL COMMENT 'POS机编号',
  `address` char(60) DEFAULT NULL COMMENT '消费点',
  `flag` int(11) DEFAULT NULL COMMENT '有效期检查标识',
  `sec_num` int(11) DEFAULT NULL COMMENT '消费扇区号',
  `wallet_flag` int(11) DEFAULT NULL COMMENT '钱包标识',
  `consume_mode` int(11) DEFAULT NULL COMMENT '消费模式',
  `overdraft_volume` int(11) DEFAULT NULL COMMENT '透支金额',
  `limit_time` int(11) DEFAULT NULL COMMENT '日消费次数',
  `limit_sum_volume` int(11) DEFAULT NULL COMMENT '日消费总金额限制',
  `sec_comsume_vol` int(11) DEFAULT NULL COMMENT '次消费金额限制',
  `remark` char(150) DEFAULT NULL COMMENT '备注'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `card_pos_info` */

/*Table structure for table `card_r_dept_class` */

DROP TABLE IF EXISTS `card_r_dept_class`;

CREATE TABLE `card_r_dept_class` (
  `DeptID` char(8) NOT NULL COMMENT '部门ID',
  `ClassID` char(1) NOT NULL COMMENT '班级ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `card_r_dept_class` */

/*Table structure for table `card_r_dept_major` */

DROP TABLE IF EXISTS `card_r_dept_major`;

CREATE TABLE `card_r_dept_major` (
  `DeptID` char(8) NOT NULL COMMENT '部门ID',
  `MajorID` char(8) NOT NULL COMMENT '专业ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `card_r_dept_major` */

/*Table structure for table `card_suser_info` */

DROP TABLE IF EXISTS `card_suser_info`;

CREATE TABLE `card_suser_info` (
  `UserID` char(11) NOT NULL COMMENT '用户ID',
  `Name` varchar(30) NOT NULL COMMENT '姓名',
  `Sex` varchar(2) DEFAULT NULL COMMENT '性别',
  `Userchar` varchar(20) DEFAULT NULL COMMENT '学号',
  `Grade` varchar(6) DEFAULT NULL COMMENT '年级',
  `UserType` char(1) DEFAULT NULL COMMENT '类别',
  `DeptID` char(8) NOT NULL COMMENT '所属最低级部门 ID',
  `MajorID` char(8) NOT NULL COMMENT '专业 ID',
  `ClassID` char(12) NOT NULL COMMENT '班级 ID',
  `EnroDate` varchar(10) DEFAULT NULL COMMENT '入学时间',
  `Hometown` varchar(20) DEFAULT NULL COMMENT '籍贯',
  `Nation` varchar(10) DEFAULT NULL COMMENT '民族',
  `BirthDate` char(10) DEFAULT NULL COMMENT '出生年月',
  `IDcard` char(18) DEFAULT NULL COMMENT '身份证编号',
  `PolitState` varchar(12) DEFAULT NULL COMMENT '政治面貌',
  `FaimlyAddr` varchar(100) DEFAULT NULL COMMENT '家庭地址',
  `ZipCode` char(6) DEFAULT NULL COMMENT '家庭邮政编码',
  `ContWay` varchar(40) DEFAULT NULL COMMENT '联系方式',
  `PersPhoto` varchar(60) DEFAULT NULL COMMENT '个人照片',
  `BookBarCode` varchar(20) DEFAULT NULL COMMENT '图书条码',
  `Sign` char(1) DEFAULT NULL COMMENT '操作标志'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `card_suser_info` */

/*Table structure for table `card_tuser_info` */

DROP TABLE IF EXISTS `card_tuser_info`;

CREATE TABLE `card_tuser_info` (
  `UserID` char(11) NOT NULL COMMENT '用户ID',
  `Name` varchar(30) NOT NULL COMMENT '姓名',
  `Sex` char(2) DEFAULT NULL COMMENT '性别',
  `Userchar` varchar(20) DEFAULT NULL COMMENT '教工号',
  `Headship` varchar(20) DEFAULT NULL COMMENT '*职务',
  `Title` varchar(20) DEFAULT NULL COMMENT '职称',
  `EnroDate` varchar(10) DEFAULT NULL COMMENT '入校时间',
  `Hometown` varchar(20) DEFAULT NULL COMMENT '籍贯',
  `Nation` varchar(10) DEFAULT NULL COMMENT '民族',
  `BirthDate` char(10) DEFAULT NULL COMMENT '出生年月',
  `IDcard` char(18) DEFAULT NULL COMMENT '身份证编号',
  `PolitState` varchar(12) DEFAULT NULL COMMENT '政治面貌',
  `FaimlyAddr` varchar(100) DEFAULT NULL COMMENT '家庭地址',
  `DeptID` char(8) NOT NULL COMMENT '所属最低级部门ID',
  `BuilID` char(8) NOT NULL COMMENT '建筑物ID',
  `Roomchar` varchar(10) DEFAULT NULL COMMENT '房间号',
  `ContWay` varchar(40) DEFAULT NULL COMMENT '联系方式',
  `Email` varchar(20) DEFAULT NULL COMMENT '电子邮件',
  `PersPhoto` varchar(40) DEFAULT NULL COMMENT '个人照片',
  `BookBarCode` varchar(20) DEFAULT NULL COMMENT '图书条码',
  `Sign` char(1) DEFAULT NULL COMMENT '操作标志'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `card_tuser_info` */

/*Table structure for table `card_useclass` */

DROP TABLE IF EXISTS `card_useclass`;

CREATE TABLE `card_useclass` (
  `ClassID` char(12) NOT NULL COMMENT '班级ID',
  `ClassDesc` varchar(100) DEFAULT NULL COMMENT '班级描述',
  `IsUsed` char(1) NOT NULL COMMENT '是否使用'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `card_useclass` */

/*Table structure for table `personnel_annuityparams` */

DROP TABLE IF EXISTS `personnel_annuityparams`;

CREATE TABLE `personnel_annuityparams` (
  `apYear` int(4) NOT NULL COMMENT '使用年度',
  `apAveragesalary` float NOT NULL COMMENT '上一年度月平均工资',
  `apTotalmoney` float NOT NULL COMMENT '社会统筹基金',
  `apWorkratio` float NOT NULL COMMENT '个人缴费比例',
  `apWorkaccratio` float NOT NULL COMMENT '划入个人账户比例',
  `apComplateratio` float NOT NULL COMMENT '单位补缴滞纳金比例',
  `apState` int(2) NOT NULL COMMENT '使用状态',
  PRIMARY KEY (`apYear`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `personnel_annuityparams` */

/*Table structure for table `personnel_annuitypayaccount` */

DROP TABLE IF EXISTS `personnel_annuitypayaccount`;

CREATE TABLE `personnel_annuitypayaccount` (
  `comp_id` varchar(16) NOT NULL COMMENT '单位代号',
  `compacc_date` date NOT NULL COMMENT '缴费日期',
  `workacc_totalmoney` float NOT NULL COMMENT '个人缴费总金额',
  `compacc_totalmoney` float NOT NULL COMMENT '单位缴费总金额',
  `compacclatermoney` float NOT NULL COMMENT '单位补缴费用',
  `compacc_flag` int(2) NOT NULL COMMENT '缴费标志',
  PRIMARY KEY (`comp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `personnel_annuitypayaccount` */

/*Table structure for table `personnel_employee` */

DROP TABLE IF EXISTS `personnel_employee`;

CREATE TABLE `personnel_employee` (
  `EmployeelD` varchar(8) NOT NULL COMMENT '教职工编号',
  `UserName` varchar(20) NOT NULL COMMENT '姓名',
  `Sex` varchar(2) NOT NULL COMMENT '性别',
  `Branch` varchar(10) NOT NULL COMMENT '所属部门',
  `Birthday` date NOT NULL COMMENT '出生日期',
  `NativePlace` varchar(20) NOT NULL COMMENT '籍贯',
  `Marriage` varchar(4) NOT NULL COMMENT '婚姻状况',
  `IdentitylD` varchar(18) NOT NULL COMMENT '身份证号',
  `Politics` varchar(10) NOT NULL COMMENT '政治面貌',
  `Folk` varchar(10) NOT NULL COMMENT '民族',
  `Education` varchar(10) DEFAULT NULL COMMENT '学历',
  `Department` varchar(40) DEFAULT NULL COMMENT '专业',
  `GraduatePate` date DEFAULT NULL COMMENT '毕业时间',
  `University` varchar(40) DEFAULT NULL COMMENT '毕业院校',
  `AccumnlatelD` varchar(20) NOT NULL COMMENT '公积金账号',
  `AdministrationLevel` varchar(20) NOT NULL COMMENT '行政级别',
  `Duty` varchar(40) NOT NULL COMMENT '职务',
  `Position` varchar(20) NOT NULL COMMENT '职称',
  `ForeignLanguage` varchar(20) DEFAULT NULL COMMENT '外语语种',
  `FLLevel` varchar(20) DEFAULT NULL COMMENT '外语等级',
  `ComputerLevel` varchar(20) DEFAULT NULL COMMENT '计算机等级',
  `Phone` varchar(10) DEFAULT NULL COMMENT '家庭电话',
  `MobilePhone` varchar(15) DEFAULT NULL COMMENT '手机号码',
  `Address` varchar(50) DEFAULT NULL COMMENT '家庭住址',
  `Incumbency` varchar(20) NOT NULL COMMENT '在职情况',
  `RESUME` varchar(400) DEFAULT NULL COMMENT '个人简历',
  PRIMARY KEY (`EmployeelD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `personnel_employee` */

/*Table structure for table `personnel_gongzb` */

DROP TABLE IF EXISTS `personnel_gongzb`;

CREATE TABLE `personnel_gongzb` (
  `gz_id` int(11) NOT NULL COMMENT '工资编号',
  `gz_login` char(50) NOT NULL COMMENT '教职工登录名',
  `gz_name` char(50) NOT NULL COMMENT '教职工姓名',
  `gz_time` datetime DEFAULT NULL COMMENT '工资发放时间',
  `gz_jiben` float NOT NULL COMMENT '基本工资',
  `gz_jintie` float DEFAULT NULL COMMENT '津贴',
  `gz_gangwei` float DEFAULT NULL COMMENT '岗位工资',
  `gz_keshifei` float DEFAULT NULL COMMENT '课时工资',
  `gz_buzhu` float DEFAULT NULL COMMENT '补贴',
  `gz_kouk` float DEFAULT NULL COMMENT '扣款',
  `gz_all` float NOT NULL COMMENT '工资总和',
  PRIMARY KEY (`gz_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `personnel_gongzb` */

/*Table structure for table `personnel_jcmanage` */

DROP TABLE IF EXISTS `personnel_jcmanage`;

CREATE TABLE `personnel_jcmanage` (
  `RewardNO` int(11) NOT NULL COMMENT '记录编号',
  `EmployeelD` varchar(8) NOT NULL COMMENT '教职工编号',
  `Position` varchar(20) NOT NULL COMMENT '职称',
  `RewardPunish` varchar(10) NOT NULL COMMENT '奖惩',
  `Rewardcontent` varchar(50) NOT NULL COMMENT '奖惩内容',
  `Reason` varchar(100) NOT NULL COMMENT '原因',
  `Branch` varchar(40) NOT NULL COMMENT '批准部门',
  `HandleName` varchar(20) NOT NULL COMMENT '批准人',
  `StartDate` date NOT NULL COMMENT '开始时间',
  `CancelDate` date DEFAULT NULL COMMENT '撤销时间',
  `CancelReason` varchar(150) NOT NULL COMMENT '撤销原因',
  `Remark` varchar(100) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`RewardNO`),
  KEY `EmployeelD` (`EmployeelD`),
  CONSTRAINT `personnel_jcmanage_ibfk_1` FOREIGN KEY (`EmployeelD`) REFERENCES `personnel_employee` (`EmployeelD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `personnel_jcmanage` */

/*Table structure for table `personnel_recruit` */

DROP TABLE IF EXISTS `personnel_recruit`;

CREATE TABLE `personnel_recruit` (
  `recruitID` int(11) NOT NULL COMMENT '报名编号',
  `recmitName` varchar(8) NOT NULL COMMENT '姓名',
  `recruitSex` varchar(2) NOT NULL COMMENT '性别',
  `recruitPate` date NOT NULL COMMENT '出生年月',
  `recruitRegion` varchar(10) NOT NULL COMMENT '民族',
  `recruitMm` varchar(10) NOT NULL COMMENT '政治面貌',
  `recruitGra` varchar(40) NOT NULL COMMENT '毕业院校',
  `recruitXl` varchar(10) NOT NULL COMMENT '学历',
  `recruitSci` varchar(10) DEFAULT NULL COMMENT '专业',
  `recruitXw` varchar(10) NOT NULL COMMENT '学位',
  `recruitPth` varchar(10) NOT NULL COMMENT '普通话',
  `recruitHy` varchar(4) NOT NULL COMMENT '婚姻状况',
  `recruitJh` date NOT NULL COMMENT '结婚时间',
  `recraitKids` int(11) NOT NULL COMMENT '子女个数',
  `recruitJg` varchar(40) NOT NULL COMMENT '籍贯',
  `recruitHj` varchar(40) NOT NULL COMMENT '户籍地址',
  `recruitSick` varchar(40) NOT NULL COMMENT '过往病史',
  `recruitTell` int(11) NOT NULL COMMENT '电话',
  `TecruttiEmmL` varchar(40) NOT NULL COMMENT '邮箱',
  `recruitEdu` varchar(200) NOT NULL COMMENT '教育情况',
  `recruitExp` varchar(200) NOT NULL COMMENT '工作经历',
  `recruitTa` varchar(200) NOT NULL COMMENT '技能及培训',
  PRIMARY KEY (`recruitID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `personnel_recruit` */

/*Table structure for table `personnel_recruittest` */

DROP TABLE IF EXISTS `personnel_recruittest`;

CREATE TABLE `personnel_recruittest` (
  `recruitID` int(11) NOT NULL COMMENT '报名编号',
  `recmitTestName` varchar(10) NOT NULL COMMENT '姓名',
  `recmitPost` varchar(10) NOT NULL COMMENT '应聘职位',
  `writtenExatn` int(3) NOT NULL COMMENT '笔试成绩',
  `interviewEjcam` int(3) NOT NULL COMMENT '面试成绩',
  `physicalExam` varchar(4) NOT NULL COMMENT '身体检查',
  `totalExam` int(3) NOT NULL COMMENT '总成绩',
  PRIMARY KEY (`recruitID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `personnel_recruittest` */

/*Table structure for table `personnel_retiraccount` */

DROP TABLE IF EXISTS `personnel_retiraccount`;

CREATE TABLE `personnel_retiraccount` (
  `retirjd` varchar(25) NOT NULL COMMENT '退休职工身份证号',
  `retiracc_date` date NOT NULL COMMENT '发放日期',
  `compjd` varchar(25) NOT NULL COMMENT '所在单位代号',
  `retiracc_money` float NOT NULL COMMENT '本月发放养老总金额',
  `retiracc_flag` int(2) NOT NULL COMMENT '发放标志',
  PRIMARY KEY (`retirjd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `personnel_retiraccount` */

/*Table structure for table `personnel_translate` */

DROP TABLE IF EXISTS `personnel_translate`;

CREATE TABLE `personnel_translate` (
  `TranslateNO` int(11) NOT NULL COMMENT '记录编号',
  `EmployeelD` varchar(8) NOT NULL COMMENT '教职工编号',
  `TranslateDate` date NOT NULL COMMENT '调动时间',
  `PriorBranch` varchar(40) NOT NULL COMMENT '前部门',
  `NextBranch` varchar(40) NOT NULL COMMENT '现部门',
  `PriorDuty` varchar(40) NOT NULL COMMENT '前职务',
  `NextDuty` varchar(50) NOT NULL COMMENT '现职务',
  `HandleName` varchar(20) NOT NULL COMMENT '经办人',
  `Remark` varchar(100) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`TranslateNO`),
  KEY `EmployeelD` (`EmployeelD`),
  CONSTRAINT `personnel_translate_ibfk_1` FOREIGN KEY (`EmployeelD`) REFERENCES `personnel_employee` (`EmployeelD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `personnel_translate` */

/*Table structure for table `personnel_users` */

DROP TABLE IF EXISTS `personnel_users`;

CREATE TABLE `personnel_users` (
  `UserName` varchar(25) NOT NULL COMMENT '用户名',
  `PASSWORD` varchar(25) NOT NULL COMMENT '密码',
  `Root` int(11) NOT NULL COMMENT '权限',
  PRIMARY KEY (`UserName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `personnel_users` */

/*Table structure for table `personnel_workaccount` */

DROP TABLE IF EXISTS `personnel_workaccount`;

CREATE TABLE `personnel_workaccount` (
  `workjd` varchar(25) NOT NULL COMMENT '在职职工身份证号',
  `workacc_date` date NOT NULL COMMENT '缴费日期',
  `compjd` varchar(25) NOT NULL COMMENT '所在单位代号',
  `work_salary` float NOT NULL COMMENT '本月工资',
  `workacc_salaiy` float NOT NULL COMMENT '本月缴费工资基数',
  `workac_money` float NOT NULL COMMENT '职工缴费',
  `compacc_money` float NOT NULL COMMENT '单位缴费',
  `workacc_flag` int(2) NOT NULL COMMENT '缴费标志',
  PRIMARY KEY (`workjd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `personnel_workaccount` */

/*Table structure for table `stu_academic_record` */

DROP TABLE IF EXISTS `stu_academic_record`;

CREATE TABLE `stu_academic_record` (
  `studentID` varchar(20) NOT NULL COMMENT '学号',
  `name` char(60) NOT NULL COMMENT '姓名',
  `grade` varchar(4) DEFAULT NULL COMMENT '年级',
  `school_term` varchar(4) DEFAULT NULL COMMENT '学期',
  `course_name` varchar(100) DEFAULT NULL COMMENT '课程名称',
  `course_category` varchar(100) DEFAULT NULL COMMENT '课程性质：必修-选修-专业课',
  `course_credits` tinyint(4) DEFAULT NULL COMMENT '课程学分',
  `course_score` float DEFAULT NULL COMMENT '课程成绩',
  `passed` varchar(4) DEFAULT NULL COMMENT '课程及格',
  `makeup_score` float DEFAULT NULL COMMENT '补考成绩',
  `redone_score` float DEFAULT NULL COMMENT '重修成绩',
  `status` tinyint(4) DEFAULT NULL COMMENT '选课状态',
  PRIMARY KEY (`studentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `stu_academic_record` */

/*Table structure for table `stu_behaviour_list` */

DROP TABLE IF EXISTS `stu_behaviour_list`;

CREATE TABLE `stu_behaviour_list` (
  `studentID` varchar(20) NOT NULL COMMENT '学号',
  `name` char(60) NOT NULL COMMENT '姓名',
  `grade` varchar(4) DEFAULT NULL COMMENT '年级',
  `school_term` varchar(4) DEFAULT NULL COMMENT '学期',
  `behavour_scores` float DEFAULT NULL COMMENT '操行成绩',
  `avg_score` float DEFAULT NULL COMMENT '平均成绩',
  `all_scores` float DEFAULT NULL COMMENT '总成绩',
  `class_ranking` varchar(10) DEFAULT NULL COMMENT '班级排名',
  `major_ranking` varchar(10) DEFAULT NULL COMMENT '专业排名',
  `department_ranking` varchar(10) DEFAULT NULL COMMENT '学院排名',
  `descipline` varchar(2) DEFAULT NULL COMMENT '违纪',
  PRIMARY KEY (`studentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `stu_behaviour_list` */

/*Table structure for table `stu_behaviour_record` */

DROP TABLE IF EXISTS `stu_behaviour_record`;

CREATE TABLE `stu_behaviour_record` (
  `studentID` varchar(20) NOT NULL COMMENT '学号',
  `name` char(60) NOT NULL COMMENT '姓名',
  `grade` varchar(4) DEFAULT NULL COMMENT '年级',
  `school_term` varchar(4) DEFAULT NULL COMMENT '学期',
  `score_status` varchar(4) DEFAULT NULL COMMENT '分数情况',
  `behaviour_type` varchar(20) DEFAULT NULL COMMENT '操行类别',
  `behaviour_rule` varchar(100) DEFAULT NULL COMMENT '操行准则',
  `behaviour_level` varchar(4) DEFAULT NULL COMMENT '操行级别',
  `record_date` date DEFAULT NULL COMMENT '日期',
  `numbers` tinyint(4) DEFAULT NULL COMMENT '编号',
  `scores` float DEFAULT NULL COMMENT '操行分数',
  `record_operator` varchar(40) DEFAULT NULL COMMENT '登记用户',
  `recod_time` date DEFAULT NULL COMMENT '等级时间',
  PRIMARY KEY (`studentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `stu_behaviour_record` */

/*Table structure for table `stu_evaluation_list` */

DROP TABLE IF EXISTS `stu_evaluation_list`;

CREATE TABLE `stu_evaluation_list` (
  `studentID` varchar(20) NOT NULL COMMENT '学号',
  `name` char(60) NOT NULL COMMENT '姓名',
  `grade` varchar(4) DEFAULT NULL COMMENT '年级',
  `school_term` varchar(4) DEFAULT NULL COMMENT '学期',
  `behavour_score` float DEFAULT NULL COMMENT '操行成绩',
  `avg_score` float DEFAULT NULL COMMENT '平均成绩',
  `morality_score` float DEFAULT NULL COMMENT '德育成绩',
  `shill_score` float DEFAULT NULL COMMENT '技能成绩',
  `all_scores` float DEFAULT NULL COMMENT '总成绩',
  `class_ranking` varchar(10) DEFAULT NULL COMMENT '班级排名',
  `major_ranking` varchar(10) DEFAULT NULL COMMENT '专业排名',
  `department_ranking` varchar(10) DEFAULT NULL COMMENT '学院排名',
  PRIMARY KEY (`studentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `stu_evaluation_list` */

/*Table structure for table `stu_outstanding_cadres` */

DROP TABLE IF EXISTS `stu_outstanding_cadres`;

CREATE TABLE `stu_outstanding_cadres` (
  `studentID` varchar(20) NOT NULL COMMENT '学号',
  `name` char(60) NOT NULL COMMENT '姓名',
  `grade` varchar(4) DEFAULT NULL COMMENT '年级',
  `school_term` varchar(4) DEFAULT NULL COMMENT '学期',
  `ranking` varchar(10) DEFAULT NULL COMMENT '奖学金等级',
  `amount` tinyint(4) DEFAULT NULL COMMENT '奖学金金额',
  `contact_way` varchar(60) DEFAULT NULL COMMENT '联系方式',
  `triplea` varchar(2) DEFAULT NULL COMMENT '三好学生标识',
  PRIMARY KEY (`studentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `stu_outstanding_cadres` */

/*Table structure for table `stu_score_sort` */

DROP TABLE IF EXISTS `stu_score_sort`;

CREATE TABLE `stu_score_sort` (
  `studentID` varchar(20) NOT NULL COMMENT '学号',
  `name` char(60) NOT NULL COMMENT '姓名',
  `grade` varchar(4) DEFAULT NULL COMMENT '年级',
  `school_term` varchar(4) DEFAULT NULL COMMENT '学期',
  `all_scores` float DEFAULT NULL COMMENT '学生成绩',
  `avg_score` float DEFAULT NULL COMMENT '平均成绩',
  `passless_count` tinyint(4) DEFAULT NULL COMMENT '不及格科数',
  `class_ranking` varchar(10) DEFAULT NULL COMMENT '班级排名',
  `major_ranking` varchar(10) DEFAULT NULL COMMENT '专业排名',
  PRIMARY KEY (`studentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `stu_score_sort` */

/*Table structure for table `stu_student` */

DROP TABLE IF EXISTS `stu_student`;

CREATE TABLE `stu_student` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '学生流水号',
  `officeID` varchar(20) NOT NULL COMMENT '通知书编号',
  `admissionCard` varchar(20) NOT NULL COMMENT '准考证',
  `studentID` varchar(20) NOT NULL COMMENT '学号',
  `pssWord` varchar(20) NOT NULL COMMENT '学生密码',
  `name` char(60) NOT NULL COMMENT '姓名',
  `sex` char(2) NOT NULL COMMENT '性别；男/女',
  `birthday` date NOT NULL COMMENT '出生年月',
  `educationMode` varchar(20) DEFAULT NULL COMMENT '培养方式-全日制/',
  `level` varchar(20) DEFAULT NULL COMMENT '层次',
  `educationSystem` varchar(20) DEFAULT NULL COMMENT '学制',
  `EnrollmentYear` date DEFAULT NULL COMMENT '入学年份',
  `familyDescription` text COMMENT '家庭情况',
  `erollmentMode` varchar(20) DEFAULT NULL COMMENT '入学方式-报送？统招？',
  `residenceSource` varchar(20) DEFAULT NULL COMMENT '户口来源',
  `residenceAddress` varchar(20) DEFAULT NULL COMMENT '户口所在地',
  `picture` varchar(200) DEFAULT NULL COMMENT '学生照片url',
  `homePage` varchar(200) DEFAULT NULL COMMENT '学生个人主页',
  `email` varchar(200) DEFAULT NULL COMMENT '电子邮件',
  `telphone` varchar(80) DEFAULT NULL COMMENT '联系电话',
  `nationality` varchar(20) DEFAULT NULL COMMENT '国籍',
  `strengths` varchar(60) DEFAULT NULL COMMENT '特长',
  `grade` varchar(4) DEFAULT NULL COMMENT '年级',
  `class` varchar(20) DEFAULT NULL COMMENT '班级',
  `bloodType` varchar(8) DEFAULT NULL COMMENT '血型',
  `homeAddress` varchar(100) NOT NULL COMMENT '家庭住址',
  `department` varchar(100) NOT NULL COMMENT '学院',
  `major` varchar(100) NOT NULL COMMENT '专业',
  `NativePlace` varchar(20) NOT NULL COMMENT '籍贯',
  `fromProvence` varchar(20) DEFAULT NULL COMMENT '省份',
  `stuStatus` varchar(2) DEFAULT NULL COMMENT '学生状态',
  `schoolStatus` varchar(2) DEFAULT NULL COMMENT '在校状态',
  `xuejiStatus` varchar(2) DEFAULT NULL COMMENT '学籍状态',
  `graduationStatus` varchar(2) DEFAULT NULL COMMENT '毕业情况',
  `Marriage` varchar(4) NOT NULL COMMENT '婚姻状况',
  `IdentitylD` varchar(18) NOT NULL COMMENT '身份证号',
  `Politics` varchar(10) NOT NULL COMMENT '政治面貌',
  `Folk` varchar(10) NOT NULL COMMENT '民族',
  `source` varchar(60) NOT NULL COMMENT '考生来源',
  `scores` smallint(6) NOT NULL COMMENT '入学分数',
  `postalAddress` varchar(100) DEFAULT NULL COMMENT '通讯地址',
  `postcode` char(10) DEFAULT NULL COMMENT '邮政编码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `stu_student` */

/*Table structure for table `stu_student_change` */

DROP TABLE IF EXISTS `stu_student_change`;

CREATE TABLE `stu_student_change` (
  `studentID` varchar(20) NOT NULL COMMENT '学号',
  `name` char(60) NOT NULL COMMENT '姓名',
  `sex` char(2) NOT NULL COMMENT '性别；男/女',
  `birthday` date NOT NULL COMMENT '出生年月',
  `educationMode` varchar(20) DEFAULT NULL COMMENT '培养方式-全日制/',
  `educationSystem` varchar(20) DEFAULT NULL COMMENT '学制',
  `EnrollmentYear` date DEFAULT NULL COMMENT '入学年份',
  `olddepartment` varchar(100) DEFAULT NULL COMMENT '原学院',
  `oldmajor` varchar(100) NOT NULL COMMENT '原专业',
  `oldgrade` varchar(4) DEFAULT NULL COMMENT '原年级',
  `oldclass` varchar(20) DEFAULT NULL COMMENT '原班级',
  `oldlevel` varchar(20) DEFAULT NULL COMMENT '原层次',
  `newdepartment` varchar(100) NOT NULL COMMENT '现学院',
  `newmajor` varchar(100) NOT NULL COMMENT '现专业',
  `newgrade` varchar(4) DEFAULT NULL COMMENT '现年级',
  `newclass` varchar(20) DEFAULT NULL COMMENT '现班级',
  `newlevel` varchar(20) DEFAULT NULL COMMENT '现层次',
  `changeReason` varchar(100) DEFAULT NULL COMMENT '变动说明',
  PRIMARY KEY (`studentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `stu_student_change` */

/*Table structure for table `stu_teacher_staff` */

DROP TABLE IF EXISTS `stu_teacher_staff`;

CREATE TABLE `stu_teacher_staff` (
  `staff_id` varchar(20) NOT NULL COMMENT '工作证号',
  `name` char(60) NOT NULL COMMENT '姓名',
  `IdentitylD` varchar(18) NOT NULL COMMENT '身份证号',
  `birthday` date NOT NULL COMMENT '出生年月',
  `sex` char(2) NOT NULL COMMENT '性别；男/女',
  `academiQulification` char(60) DEFAULT NULL COMMENT '学历',
  `workdepartment` varchar(100) DEFAULT NULL COMMENT '工作学院',
  `workplace` varchar(100) DEFAULT NULL COMMENT '工作地点',
  `seniority` tinyint(4) DEFAULT NULL COMMENT '工作年限',
  `courses` varchar(100) DEFAULT NULL COMMENT '教授课程',
  `salary` tinyint(4) DEFAULT NULL COMMENT '基本工资',
  `schoolStatus` varchar(2) DEFAULT NULL COMMENT '在校状态',
  `homeAddress` varchar(100) NOT NULL COMMENT '家庭住址',
  `title` char(60) NOT NULL COMMENT '职称',
  `department` varchar(100) DEFAULT NULL COMMENT '毕业学院',
  `major` varchar(100) DEFAULT NULL COMMENT '毕业专业',
  `currentAddress` varchar(100) NOT NULL COMMENT '现住址',
  `residenceAddress` varchar(20) DEFAULT NULL COMMENT '户口所在地',
  `email` varchar(200) DEFAULT NULL COMMENT '电子邮件',
  `telphone` varchar(80) DEFAULT NULL COMMENT '联系电话',
  `nationality` varchar(20) DEFAULT NULL COMMENT '国籍',
  `Folk` varchar(10) NOT NULL COMMENT '民族',
  `Politics` varchar(10) NOT NULL COMMENT '政治面貌',
  `NativePlace` varchar(20) NOT NULL COMMENT '籍贯',
  `fromProvence` varchar(20) DEFAULT NULL COMMENT '省份',
  `Marriage` varchar(4) NOT NULL COMMENT '婚姻状况',
  `bloodType` varchar(8) DEFAULT NULL COMMENT '血型',
  `strengths` varchar(60) DEFAULT NULL COMMENT '特长',
  `graduationStatus` varchar(2) DEFAULT NULL COMMENT '毕业情况',
  PRIMARY KEY (`staff_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `stu_teacher_staff` */

/*Table structure for table `stu_work_record` */

DROP TABLE IF EXISTS `stu_work_record`;

CREATE TABLE `stu_work_record` (
  `studentID` varchar(20) NOT NULL COMMENT '学号',
  `name` char(60) NOT NULL COMMENT '姓名',
  `graducationQX` varchar(4) DEFAULT NULL COMMENT '毕业去向',
  `academiQulification` varchar(4) DEFAULT NULL COMMENT '当前学历',
  `current_work_experience` varchar(10) DEFAULT NULL COMMENT '当前工作经历',
  `work_experience` tinyint(4) DEFAULT NULL COMMENT '工作经历',
  `salary_level` varchar(2) DEFAULT NULL COMMENT '薪资水平',
  `company` varchar(100) DEFAULT NULL COMMENT '工作单位',
  `title` varchar(2) DEFAULT NULL COMMENT '当前职称',
  PRIMARY KEY (`studentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `stu_work_record` */

/*Table structure for table `sushe_dorm_buildinginfo` */

DROP TABLE IF EXISTS `sushe_dorm_buildinginfo`;

CREATE TABLE `sushe_dorm_buildinginfo` (
  `dormBuildId` int(11) NOT NULL COMMENT '宿舍楼编号',
  `dormBuildName` varchar(20) DEFAULT NULL COMMENT '宿舍楼名称',
  `dormBuildDetail` varchar(50) DEFAULT NULL COMMENT '宿舍楼详细介绍',
  `dormType ` tinyint(4) DEFAULT NULL COMMENT '类别：普通公寓，标准公寓',
  `Phone ` varchar(15) DEFAULT NULL COMMENT '联系电话',
  `Kezhu ` int(4) DEFAULT NULL COMMENT '可住人数',
  `Ruzhu ` int(4) DEFAULT NULL COMMENT '入住人数',
  `Expense` float DEFAULT NULL COMMENT '住宿费标准',
  `Extra ` varchar(50) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dormBuildId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sushe_dorm_buildinginfo` */

/*Table structure for table `sushe_dorm_info` */

DROP TABLE IF EXISTS `sushe_dorm_info`;

CREATE TABLE `sushe_dorm_info` (
  `dormID` int(11) NOT NULL COMMENT '宿舍编号',
  `dormBuildId` int(11) DEFAULT NULL COMMENT '宿舍楼编号',
  `dormName` varchar(20) DEFAULT NULL COMMENT '宿舍名称',
  `dormType` varchar(20) DEFAULT NULL COMMENT '宿舍类型',
  `dormNumber` int(11) DEFAULT NULL COMMENT '宿舍编号',
  `dormTel` int(11) DEFAULT NULL COMMENT '宿舍负责人联系电话',
  PRIMARY KEY (`dormID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sushe_dorm_info` */

/*Table structure for table `sushe_electric` */

DROP TABLE IF EXISTS `sushe_electric`;

CREATE TABLE `sushe_electric` (
  `dormBuildId` int(11) NOT NULL COMMENT '宿舍楼编号',
  `Xiandu ` float DEFAULT NULL COMMENT '现在度数',
  `Xianri ` varchar(50) DEFAULT NULL COMMENT '现在日期',
  `Shangdu ` float DEFAULT NULL COMMENT '上次度数',
  `Shangri ` varchar(20) DEFAULT NULL COMMENT '上次日期',
  `Dushuo ` float DEFAULT NULL COMMENT '耗费度数',
  `Expense ` float DEFAULT NULL COMMENT '花费',
  `Extra ` varchar(50) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dormBuildId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sushe_electric` */

/*Table structure for table `sushe_fangke_info` */

DROP TABLE IF EXISTS `sushe_fangke_info`;

CREATE TABLE `sushe_fangke_info` (
  `fangkeID` varchar(20) NOT NULL COMMENT '访客单号',
  `fangkeNUM` int(11) DEFAULT NULL COMMENT '访客人数',
  `fk1ID` varchar(18) DEFAULT NULL COMMENT '访客1身份证号',
  `fk1Name` varchar(18) DEFAULT NULL COMMENT '访客1身份证号',
  `fk2ID` varchar(18) DEFAULT NULL COMMENT '访客2身份证号',
  `fk2Name` varchar(18) DEFAULT NULL COMMENT '访客2身份证号',
  `fk3ID` varchar(18) DEFAULT NULL COMMENT '访客3身份证号',
  `fk3Name` varchar(18) DEFAULT NULL COMMENT '访客3身份证号'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sushe_fangke_info` */

/*Table structure for table `sushe_housethings` */

DROP TABLE IF EXISTS `sushe_housethings`;

CREATE TABLE `sushe_housethings` (
  `dormBuildId` int(11) NOT NULL COMMENT '宿舍楼编号',
  `Wstandard ` float DEFAULT NULL COMMENT '水费标准',
  `eStandard ` float DEFAULT NULL COMMENT '电费标准',
  `Hstandard ` float DEFAULT NULL COMMENT '房间人数标准',
  `Wprice ` float DEFAULT NULL COMMENT '水费价格',
  `Eprice ` float DEFAULT NULL COMMENT '电费价格',
  `extra ` varchar(50) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dormBuildId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sushe_housethings` */

/*Table structure for table `sushe_kaiqin_info` */

DROP TABLE IF EXISTS `sushe_kaiqin_info`;

CREATE TABLE `sushe_kaiqin_info` (
  `recordId` int(11) NOT NULL COMMENT '考勤记录编号',
  `studentNumber` varchar(20) DEFAULT NULL COMMENT '学生学号',
  `studentName` varchar(20) DEFAULT NULL COMMENT '学生姓名',
  `dormBuildId` int(11) DEFAULT NULL COMMENT '宿舍楼编号',
  `dormName` varchar(20) DEFAULT NULL COMMENT '宿舍楼名称',
  `date` date DEFAULT NULL COMMENT '考勤日期',
  `detail` varchar(50) DEFAULT NULL COMMENT '考勤详细',
  PRIMARY KEY (`recordId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sushe_kaiqin_info` */

/*Table structure for table `sushe_menjin_info` */

DROP TABLE IF EXISTS `sushe_menjin_info`;

CREATE TABLE `sushe_menjin_info` (
  `card_Id` varchar(20) NOT NULL COMMENT '门禁一卡通卡号',
  `stuNum` varchar(20) DEFAULT NULL COMMENT '学生学号',
  `in_Out` char(2) DEFAULT NULL COMMENT '0-出/N-入',
  `eventTime` datetime DEFAULT NULL COMMENT '出入时间',
  `type` varchar(20) DEFAULT NULL COMMENT '出入方式：单车/小车/步行等',
  `fangkeID` varchar(20) DEFAULT NULL COMMENT '访客单号'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sushe_menjin_info` */

/*Table structure for table `sushe_repair` */

DROP TABLE IF EXISTS `sushe_repair`;

CREATE TABLE `sushe_repair` (
  `dormBuildId` int(11) NOT NULL COMMENT '宿舍楼编号',
  `stuID` varchar(10) DEFAULT NULL COMMENT '报修人学号',
  `Things ` varchar(20) DEFAULT NULL COMMENT '物品',
  `band` varchar(20) DEFAULT NULL COMMENT '物品品牌',
  `Calldate ` varchar(20) DEFAULT NULL COMMENT '报修情况',
  `Cause ` varchar(50) DEFAULT NULL COMMENT '原因',
  `Extra ` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dormBuildId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sushe_repair` */

/*Table structure for table `sushe_repaired` */

DROP TABLE IF EXISTS `sushe_repaired`;

CREATE TABLE `sushe_repaired` (
  `dormBuildId` int(11) NOT NULL COMMENT '宿舍楼编号',
  `Repairthings ` varchar(50) DEFAULT NULL COMMENT '维修物品',
  `Repairdate ` varchar(50) DEFAULT NULL COMMENT '维修日期',
  `Expense ` varchar(50) DEFAULT NULL COMMENT '花费',
  `Peichang ` varchar(50) DEFAULT NULL COMMENT '赔偿',
  `zeren ` varchar(50) DEFAULT NULL COMMENT '责任',
  `extra ` varchar(50) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dormBuildId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sushe_repaired` */

/*Table structure for table `sushe_student_info` */

DROP TABLE IF EXISTS `sushe_student_info`;

CREATE TABLE `sushe_student_info` (
  `studentId` int(11) NOT NULL COMMENT '学生编号',
  `stuNum` varchar(20) DEFAULT NULL COMMENT '学生学号',
  `password` varchar(20) DEFAULT NULL COMMENT '登录密码',
  `name` varchar(10) DEFAULT NULL COMMENT '姓名',
  `dormBuildId` int(11) DEFAULT NULL COMMENT '宿舍楼编号',
  `dormName` varchar(10) DEFAULT NULL COMMENT '宿舍名称',
  `sex` varchar(10) DEFAULT NULL COMMENT '性别',
  `tel` varchar(20) DEFAULT NULL COMMENT '联系电话',
  `homeadress ` varchar(20) DEFAULT NULL COMMENT '家庭住址',
  `nianzhi ` int(11) DEFAULT NULL COMMENT '年制',
  `academe` varchar(20) DEFAULT NULL COMMENT '学院',
  `Department` varchar(20) DEFAULT NULL COMMENT '系别',
  `Profession` varchar(20) DEFAULT NULL COMMENT '专业',
  `Classes ` varchar(20) DEFAULT NULL COMMENT '班级',
  `extra ` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`studentId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sushe_student_info` */

/*Table structure for table `teacherman_course` */

DROP TABLE IF EXISTS `teacherman_course`;

CREATE TABLE `teacherman_course` (
  `courseID` int(11) NOT NULL COMMENT '课程号',
  `courseName` varchar(20) NOT NULL COMMENT '部门名称',
  `scores` int(11) NOT NULL COMMENT '学分',
  `times` int(11) NOT NULL COMMENT '学时',
  `teacher_code` char(30) NOT NULL COMMENT '教师编号',
  PRIMARY KEY (`courseID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `teacherman_course` */

/*Table structure for table `teacherman_department` */

DROP TABLE IF EXISTS `teacherman_department`;

CREATE TABLE `teacherman_department` (
  `departID` int(11) NOT NULL COMMENT '部门号',
  `departName` varchar(20) NOT NULL COMMENT '部门名称',
  `departAddress` varchar(50) DEFAULT NULL COMMENT '部门地址',
  PRIMARY KEY (`departID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `teacherman_department` */

/*Table structure for table `teacherman_schedule` */

DROP TABLE IF EXISTS `teacherman_schedule`;

CREATE TABLE `teacherman_schedule` (
  `id` int(11) NOT NULL COMMENT '课程安排号',
  `courseID` int(11) NOT NULL COMMENT '课程号',
  `time` datetime NOT NULL COMMENT '上课时间',
  `address` varchar(50) NOT NULL COMMENT '上课地点',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `teacherman_schedule` */

/*Table structure for table `teacherman_teacher` */

DROP TABLE IF EXISTS `teacherman_teacher`;

CREATE TABLE `teacherman_teacher` (
  `teacher_code` char(30) NOT NULL COMMENT '教师编号',
  `name` char(60) NOT NULL COMMENT '教师姓名',
  `sex` char(1) NOT NULL COMMENT 'F-female ;M-male',
  `birthday` datetime NOT NULL COMMENT '出生年月',
  `tel` varchar(50) NOT NULL,
  `college` varchar(30) DEFAULT NULL COMMENT '毕业院校',
  `departID` int(11) NOT NULL COMMENT '部门号',
  `start_time` datetime NOT NULL COMMENT '执教开始时间',
  `duty` int(11) NOT NULL COMMENT '职称号'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `teacherman_teacher` */

/*Table structure for table `teacherman_user` */

DROP TABLE IF EXISTS `teacherman_user`;

CREATE TABLE `teacherman_user` (
  `user_id` int(11) NOT NULL COMMENT 'ID',
  `login_name` char(50) NOT NULL,
  `passWord` char(60) NOT NULL COMMENT '用户密码',
  `level` tinyint(4) NOT NULL COMMENT '用户等级',
  `sex` char(1) NOT NULL COMMENT 'F-female ;M-male',
  `loginCount` int(11) NOT NULL COMMENT '登录次数',
  `age` tinyint(4) NOT NULL COMMENT '用户年龄',
  `unit` char(100) DEFAULT NULL COMMENT '用户所属单位',
  `major` char(100) DEFAULT NULL COMMENT '授课专业',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `teacherman_user` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
