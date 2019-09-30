/*
SQLyog Community
MySQL - 5.5.30 : Database - test
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
USE `test`;

/*Table structure for table `미국맥주` */

DROP TABLE IF EXISTS `미국맥주`;

CREATE TABLE `미국맥주` (
  `평가등급` CHAR(4) DEFAULT NULL,
  `상품명` VARCHAR(255) DEFAULT NULL,
  `생산국` VARCHAR(10) DEFAULT NULL,
  `판매지` CHAR(2) DEFAULT NULL,
  `판매가` FLOAT DEFAULT NULL,
  `생산가` FLOAT DEFAULT NULL,
  `칼로리` MEDIUMINT(9) DEFAULT NULL,
  `염분` MEDIUMINT(9) DEFAULT NULL,
  `알콜` FLOAT DEFAULT NULL,
  `가격등급` CHAR(3) DEFAULT NULL,
  `종류` CHAR(3) DEFAULT NULL
) ENGINE=INNODB DEFAULT CHARSET=euckr;

/*Data for the table `미국맥주` */

INSERT  INTO `미국맥주`(`평가등급`,`상품명`,`생산국`,`판매지`,`판매가`,`생산가`,`칼로리`,`염분`,`알콜`,`가격등급`,`종류`) VALUES 
('매우우수','Miller High Life','미국','전국',2.49,0.42,149,17,4.7,'특제','보통'),
('매우우수','Budweiser','미국','전국',2.59,0.43,144,15,4.7,'특제','보통'),
('매우우수','Schlitz','미국','전국',2.59,0.43,151,19,4.9,'특제','보통'),
('매우우수','Lowenbrau','미국','전국',2.89,0.48,157,15,4.9,'초특제','보통'),
('매우우수','Michelob','미국','전국',2.99,0.5,162,10,5,'초특제','보통'),
('매우우수','Labatts','캐나다','지역',3.15,0.53,147,17,5,'미표기','보통'),
('매우우수','Molson','캐나다','지역',3.35,0.56,154,17,5.1,'미표기','보통'),
('매우우수','Henry Weinhard','미국','지역',3.65,0.61,149,7,4.7,'초특제','보통'),
('매우우수','Kronenbourg','프랑스','지역',4.39,0.73,170,7,5.2,'미표기','보통'),
('매우우수','Heineken','네델란드','전국',4.59,0.77,152,11,5,'미표기','보통'),
('매우우수','Anchor Steam','미국','지역',7.19,1.2,154,17,4.7,'초특제','보통'),
('우수','Old Milwaukee','미국','지역',1.69,0.28,145,23,4.6,'대중품','보통'),
('우수','Schmidts','미국','지역',1.79,0.3,147,7,4.7,'대중품','보통'),
('우수','Pabst Blue Ribbon','미국','전국',2.29,0.38,152,8,4.9,'특제','보통'),
('우수','Augsberger','미국','지역',2.39,0.4,175,24,5.5,'초특제','보통'),
('우수','Strohs Bohemian Style','미국','지역',2.49,0.42,149,27,4.7,'특제','보통'),
('우수','Miller Light','미국','전국',2.55,0.43,99,10,4.3,'미표기','라이트'),
('우수','Budweiser Light','미국','전국',2.63,0.44,113,8,3.7,'미표기','라이트'),
('우수','Coors','미국','지역',2.65,0.44,140,18,4.6,'특제','보통'),
('우수','Olympia','미국','지역',2.65,0.44,153,27,4.6,'특제','보통'),
('우수','Coors Light','미국','지역',2.73,0.46,102,15,4.1,'미표기','라이트'),
('우수','Michelob Light','미국','전국',2.99,0.5,135,11,4.2,'미표기','라이트'),
('우수','Dos Equis','멕시코','지역',4.22,0.7,145,14,4.5,'미표기','보통'),
('우수','Becks','독일','지역',4.55,0.76,150,19,4.7,'미표기','보통'),
('우수','Kirin','일본','지역',4.75,0.79,149,6,5,'미표기','보통'),
('보통','Scotch Buy (Safeway)','미국','지역',1.59,0.27,145,18,4.5,'미표기','보통'),
('보통','Blatz','미국','지역',1.79,0.3,144,13,4.6,'대중품','보통'),
('보통','Rolling Rock','미국','지역',2.15,0.36,144,8,4.7,'특제','보통'),
('보통','Pabst Extra Light','미국','전국',2.29,0.38,68,15,2.3,'미표기','라이트'),
('보통','Hamms','미국','지역',2.59,0.43,136,19,4.4,'특제','보통'),
('보통','Heilemans Old Style','미국','지역',2.59,0.43,144,24,4.9,'특제','보통'),
('보통','Tuborg','미국','지역',2.59,0.43,155,13,5,'특제','보통'),
('보통','Olympia Gold Light','미국','지역',2.75,0.46,72,6,2.9,'미표기','라이트'),
('보통','Schlitz Light','미국','전국',2.79,0.47,97,7,4.2,'미표기','라이트'),
('보통','St Pauli Girl','독일','지역',4.59,0.77,144,21,4.7,'미표기','보통');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;


# WHERE 

SELECT * 
FROM `미국맥주`
WHERE `상품명` LIKE 'Budweiser%';


SELECT * 
FROM `미국맥주`
WHERE `상품명` LIKE '%Light';

SELECT * 
FROM `미국맥주`
WHERE `상품명` LIKE '%old%';




SELECT *
FROM `미국맥주`
ORDER BY `알콜` ASC, `칼로리` DESC;


# LIMIT 기능을 이용하여 처음부터 몇개, 탐색적으로 볼때 굉장히 유용함.
SELECT `id`, `접수번호`, `처리시간`
FROM `as_test`
LIMIT 20, 20;


# Rand = 값을 랜덤하게 뽑아온다. 순차적으로 뽑아오는게 아닌
CREATE TABLE `as_test_sample`
SELECT * FROM `as_test`
WHERE `접수방법` = '전화'
ORDER BY RAND() ASC
LIMIT 0, 100;

















