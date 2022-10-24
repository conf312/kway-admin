-- --------------------------------------------------------
-- 호스트:                          database-venh.c8otvqjc90b5.ap-northeast-2.rds.amazonaws.com
-- 서버 버전:                        10.5.13-MariaDB-log - managed by https://aws.amazon.com/rds/
-- 서버 OS:                        Linux
-- HeidiSQL 버전:                  11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- beta_admin 데이터베이스 구조 내보내기
CREATE DATABASE IF NOT EXISTS `beta_admin` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `beta_admin`;

-- 테이블 beta_admin.attach_file 구조 내보내기
CREATE TABLE IF NOT EXISTS `attach_file` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'PK',
  `target_id` bigint(20) NOT NULL COMMENT '대상 PK',
  `target_table` varchar(50) NOT NULL COMMENT '대상 테이블',
  `real_file_name` varchar(100) NOT NULL COMMENT '실제 파일이름',
  `save_file_name` varchar(100) NOT NULL COMMENT '저장 파일이름',
  `file_ext` varchar(10) NOT NULL COMMENT '파일 확장자',
  `file_size` int(11) NOT NULL COMMENT '파일 사이즈',
  `file_path` varchar(100) NOT NULL COMMENT '파일 경로',
  `web_path` varchar(100) NOT NULL COMMENT '웹 경로',
  `use_yn` char(1) NOT NULL COMMENT '사용여부',
  `register_time` datetime NOT NULL COMMENT '등록일시',
  `modify_time` datetime DEFAULT NULL COMMENT '변경일시',
  PRIMARY KEY (`id`),
  KEY `target_id` (`target_id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COMMENT='첨부파일';

-- 테이블 beta_admin.faq 구조 내보내기
CREATE TABLE IF NOT EXISTS `faq` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'PK',
  `type` varchar(10) NOT NULL COMMENT '구분',
  `title` varchar(100) NOT NULL COMMENT '제목',
  `contents` text NOT NULL COMMENT '내용',
  `use_yn` char(1) DEFAULT NULL COMMENT '사용여부',
  `register_id` bigint(20) NOT NULL COMMENT '등록자 PK',
  `register_time` datetime NOT NULL COMMENT '등록일시',
  `modify_id` bigint(20) DEFAULT NULL COMMENT '변경자 PK',
  `modify_time` datetime DEFAULT NULL COMMENT '변경일시',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='공지사항';

-- 테이블 데이터 beta_admin.faq:~2 rows (대략적) 내보내기
/*!40000 ALTER TABLE `faq` DISABLE KEYS */;
INSERT IGNORE INTO `faq` (`id`, `type`, `title`, `contents`, `use_yn`, `register_id`, `register_time`, `modify_id`, `modify_time`) VALUES
	(13, 'ACCOUNT', '개인정보 약관', '국가 인터넷 진흥원에 의거하여 작성된 내용입니다.', 'Y', 53, '2022-10-07 16:40:57', 53, '2022-10-14 13:35:08'),
	(14, 'NORMAL', '고객문의', '고객문의 사이트 안내 주소는 아래와 같습니다.', 'Y', 53, '2022-10-07 17:43:25', 53, '2022-10-15 17:00:50');
/*!40000 ALTER TABLE `faq` ENABLE KEYS */;

-- 테이블 beta_admin.inquiry 구조 내보내기
CREATE TABLE IF NOT EXISTS `inquiry` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'PK',
  `type` varchar(20) NOT NULL COMMENT '구분',
  `email` varchar(150) NOT NULL COMMENT '이메일',
  `title` varchar(100) NOT NULL COMMENT '제목',
  `contents` text NOT NULL COMMENT '내용',
  `device_type` varchar(20) NOT NULL COMMENT '디바이스 구분',
  `register_id` bigint(20) DEFAULT NULL COMMENT '등록자 PK',
  `answer` text DEFAULT NULL COMMENT '답변',
  `answer_time` datetime DEFAULT NULL COMMENT '답변일시',
  `answer_id` bigint(20) DEFAULT NULL COMMENT '답변자 PK',
  `answer_status` varchar(20) NOT NULL DEFAULT 'N' COMMENT '답변 상태',
  `register_time` datetime NOT NULL COMMENT '등록일시',
  `modify_time` datetime DEFAULT NULL COMMENT '변경일시',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='고객문의';

-- 테이블 데이터 beta_admin.inquiry:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `inquiry` DISABLE KEYS */;
INSERT IGNORE INTO `inquiry` (`id`, `type`, `email`, `title`, `contents`, `device_type`, `register_id`, `answer`, `answer_time`, `answer_id`, `answer_status`, `register_time`, `modify_time`) VALUES
	(1, 'NORMAL', 'gpfm312@gmail.com', '견적요청드립니다.', '10인 기준 규모로 진행했을때 대략적인 비용 산정 부탁드립니다.', 'IOS', 22, '답변등록\r\n\r\n추가 문의 안내', '2022-10-15 18:32:02', 53, 'Y', '2022-10-08 11:56:46', NULL);
/*!40000 ALTER TABLE `inquiry` ENABLE KEYS */;

-- 테이블 beta_admin.member 구조 내보내기
CREATE TABLE IF NOT EXISTS `member` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'PK',
  `name` varchar(50) NOT NULL COMMENT '이름',
  `email` varchar(150) NOT NULL COMMENT '이메일',
  `password` varchar(100) NOT NULL COMMENT '비밀번호',
  `phone_number` varchar(12) NOT NULL COMMENT '휴대전화번호',
  `role` varchar(25) NOT NULL DEFAULT 'Basic' COMMENT '권한',
  `status_message` varchar(100) DEFAULT NULL COMMENT '상태 메시지',
  `is_account_non_locked` char(1) NOT NULL DEFAULT 'N' COMMENT '계정이 잠겨있지 않다면 (Y)',
  `is_credentials_non_expired` char(1) NOT NULL DEFAULT 'Y' COMMENT '비밀번호가 만료되지 않았다면 (Y)',
  `is_enabled` char(1) NOT NULL DEFAULT 'Y' COMMENT '계정 활성화 상태 (Y)',
  `login_fail_count` int(11) NOT NULL DEFAULT 0 COMMENT '로그인 실패 횟수',
  `last_login_time` datetime DEFAULT NULL COMMENT '최종 로그인 시간',
  `ip` varchar(50) DEFAULT NULL COMMENT '접속 아이피',
  `register_time` datetime NOT NULL COMMENT '등록일시(가입일)',
  `modify_id` bigint(20) DEFAULT NULL COMMENT '변경자 PK',
  `modify_time` datetime DEFAULT NULL COMMENT '변경일시',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COMMENT='관리자';

-- 테이블 데이터 beta_admin.member:~5 rows (대략적) 내보내기
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT IGNORE INTO `member` (`id`, `name`, `email`, `password`, `phone_number`, `role`, `status_message`, `is_account_non_locked`, `is_credentials_non_expired`, `is_enabled`, `login_fail_count`, `last_login_time`, `ip`, `register_time`, `modify_id`, `modify_time`) VALUES
	(53, '최고 관리자', 'conf312@naver.com', '$2a$10$g5uwn0NE5la7IWd3z8SJCO3sFdGgh2Li11ppoKgH3VqD8PF/EFdNm', '01012345678', 'Administrator', '최고 관리자입니다.\n문의는 쪽지로 전달바랍니다.', 'Y', 'Y', 'Y', 0, '2022-10-15 19:11:00', '0:0:0:0:0:0:0:1', '2022-10-06 00:41:41', 53, '2022-10-14 14:08:46');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;

-- 테이블 beta_admin.message 구조 내보내기
CREATE TABLE IF NOT EXISTS `message` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'PK',
  `to_member_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '메시지를 받는 관리자 PK',
  `contents` text NOT NULL COMMENT '내용',
  `read_yn` char(1) NOT NULL DEFAULT 'N' COMMENT '읽음 여부',
  `use_yn` char(1) NOT NULL DEFAULT 'Y' COMMENT '사용 여부',
  `register_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '등록자 PK',
  `register_time` datetime NOT NULL COMMENT '등록일시',
  `modify_time` datetime DEFAULT NULL COMMENT '변경일시',
  PRIMARY KEY (`id`),
  KEY `to_member_id` (`to_member_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COMMENT='메시지';

-- 테이블 beta_admin.notice 구조 내보내기
CREATE TABLE IF NOT EXISTS `notice` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'PK',
  `type` varchar(10) NOT NULL COMMENT '구분',
  `top_yn` char(1) DEFAULT NULL COMMENT '상단여부',
  `title` varchar(100) NOT NULL COMMENT '제목',
  `contents` text NOT NULL COMMENT '내용',
  `use_yn` char(1) DEFAULT NULL COMMENT '사용여부',
  `read_cnt` bigint(20) NOT NULL DEFAULT 0 COMMENT '조회수',
  `register_id` bigint(20) NOT NULL COMMENT '등록자 PK',
  `register_time` datetime NOT NULL COMMENT '등록일시',
  `modify_id` bigint(20) DEFAULT NULL COMMENT '변경자 PK',
  `modify_time` datetime DEFAULT NULL COMMENT '변경일시',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COMMENT='공지사항';

-- 테이블 데이터 beta_admin.notice:~2 rows (대략적) 내보내기
/*!40000 ALTER TABLE `notice` DISABLE KEYS */;
INSERT IGNORE INTO `notice` (`id`, `type`, `top_yn`, `title`, `contents`, `use_yn`, `read_cnt`, `register_id`, `register_time`, `modify_id`, `modify_time`) VALUES
	(20, 'SERVICE', 'Y', '고객문의', '해당 사이트에 문의나 요청이 필요하시면 고객문의 서비스를 이용해주세요.', 'Y', 0, 53, '2022-10-15 15:18:26', 53, '2022-10-15 15:18:31'),
	(21, 'CHECK', NULL, '금일(22.10.15) 점검 예정', '금일 04~05시(약 1시간) 점검 예정이오니 서비스 이용에 차질이 없도록 양해 부탁드립니다.', 'Y', 0, 53, '2022-10-15 15:20:47', 53, '2022-10-15 16:54:04');
/*!40000 ALTER TABLE `notice` ENABLE KEYS */;

-- 테이블 beta_admin.time_board 구조 내보내기
CREATE TABLE IF NOT EXISTS `time_board` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'PK',
  `title` varchar(100) NOT NULL COMMENT '제목',
  `contents` text NOT NULL COMMENT '내용',
  `start_date` varchar(10) NOT NULL DEFAULT '' COMMENT '시작일자',
  `end_date` varchar(10) NOT NULL DEFAULT '' COMMENT '종료일자',
  `always_yn` char(1) DEFAULT NULL COMMENT '항시 노출여부',
  `use_yn` char(1) DEFAULT NULL COMMENT '사용여부',
  `register_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '등록자 PK',
  `register_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '등록일시',
  `modify_id` bigint(20) DEFAULT NULL COMMENT '변경자 PK',
  `modify_time` datetime DEFAULT '0000-00-00 00:00:00' COMMENT '변경일시',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='타임보드';

-- 테이블 데이터 beta_admin.time_board:~1 rows (대략적) 내보내기
/*!40000 ALTER TABLE `time_board` DISABLE KEYS */;
INSERT IGNORE INTO `time_board` (`id`, `title`, `contents`, `start_date`, `end_date`, `always_yn`, `use_yn`, `register_id`, `register_time`, `modify_id`, `modify_time`) VALUES
	(1, '10월 타임보드', '10월내에 노출되는 타임보드입니다.\r\n연장 시 기간을 늘리거나 항시 노출여부를 확인해주세요.', '2022-10-15', '2022-10-31', 'Y', 'Y', 53, '2022-10-15 14:56:22', 53, '2022-10-15 16:02:49');
/*!40000 ALTER TABLE `time_board` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
