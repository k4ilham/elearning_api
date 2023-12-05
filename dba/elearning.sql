-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for myelnusav2
CREATE DATABASE IF NOT EXISTS `myelnusav2` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `myelnusav2`;

-- Dumping structure for table myelnusav2.course_attendance
CREATE TABLE IF NOT EXISTS `course_attendance` (
  `attendance_id` int NOT NULL AUTO_INCREMENT,
  `schedule_id` int DEFAULT NULL,
  `meeting` int DEFAULT NULL,
  `description` text,
  `photo` varchar(300) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `created_by` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `updated_by` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`attendance_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table myelnusav2.course_attendance: ~0 rows (approximately)
INSERT INTO `course_attendance` (`attendance_id`, `schedule_id`, `meeting`, `description`, `photo`, `start_time`, `end_time`, `created_date`, `updated_date`, `created_by`, `updated_by`) VALUES
	(1, 1, 1, 'Membahas RPS dan Silabus, Kontrak kuliah, Theoretical Computer Science dan Applied Computer Science, Algorithm and efficiency', NULL, '2023-12-04 12:02:28', '2023-12-04 12:02:30', '2023-12-04 12:02:45', '2023-12-04 12:02:46', 'DYL', 'DYL');

-- Dumping structure for table myelnusav2.course_attendance_student
CREATE TABLE IF NOT EXISTS `course_attendance_student` (
  `attendance_student_id` int NOT NULL AUTO_INCREMENT,
  `attendance_id` int DEFAULT NULL,
  `schedule_id` int DEFAULT NULL,
  `student_id` char(50) DEFAULT NULL,
  `attendance` int DEFAULT NULL,
  `comment` text,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `created_by` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `updated_by` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`attendance_student_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table myelnusav2.course_attendance_student: ~1 rows (approximately)
INSERT INTO `course_attendance_student` (`attendance_student_id`, `attendance_id`, `schedule_id`, `student_id`, `attendance`, `comment`, `created_date`, `updated_date`, `created_by`, `updated_by`) VALUES
	(2, 1, 1, '14230018', 1, 'good', '2023-12-04 12:16:15', '2023-12-04 12:16:16', '14230018', '14230018');

-- Dumping structure for table myelnusav2.course_detail
CREATE TABLE IF NOT EXISTS `course_detail` (
  `course_detail_id` int NOT NULL AUTO_INCREMENT,
  `schedule_id` int DEFAULT NULL,
  `course_id` char(10) DEFAULT NULL,
  `title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `description` text,
  `type` int DEFAULT NULL,
  `video_link` varchar(255) DEFAULT NULL,
  `file_link` varchar(255) DEFAULT NULL,
  `status_active` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `created_by` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `updated_by` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`course_detail_id`) USING BTREE,
  KEY `module_name` (`title`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table myelnusav2.course_detail: ~1 rows (approximately)
INSERT INTO `course_detail` (`course_detail_id`, `schedule_id`, `course_id`, `title`, `description`, `type`, `video_link`, `file_link`, `status_active`, `created_date`, `updated_date`, `created_by`, `updated_by`) VALUES
	(1, 1, 'M-028', 'Pertemuan 1', 'Belajar Online', 1, '', 'https://www.youtube.com/watch?v=g3YVMfmaPAY', 'Y', '2023-12-04 12:31:13', '2023-12-05 10:01:24', 'DYL', 'DYL');

-- Dumping structure for table myelnusav2.course_detail_discussion
CREATE TABLE IF NOT EXISTS `course_detail_discussion` (
  `course_detail_discussion_id` int NOT NULL AUTO_INCREMENT,
  `course_detail_id` int DEFAULT NULL,
  `ref_id` int DEFAULT NULL,
  `course_id` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `status_active` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `created_by` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `updated_by` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`course_detail_discussion_id`) USING BTREE,
  KEY `module_name` (`title`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table myelnusav2.course_detail_discussion: ~2 rows (approximately)
INSERT INTO `course_detail_discussion` (`course_detail_discussion_id`, `course_detail_id`, `ref_id`, `course_id`, `title`, `description`, `status_active`, `created_date`, `updated_date`, `created_by`, `updated_by`) VALUES
	(1, 1, 0, '1', 'tanya', 'tanya', 'Y', '2023-12-04 14:31:44', '2023-12-04 14:31:45', '14230018', '14230018'),
	(2, 1, 1, '1', 'jawab', 'jawab', 'Y', '2023-12-04 14:32:17', '2023-12-04 14:32:18', 'DYL', 'DYL');

-- Dumping structure for table myelnusav2.course_schedule
CREATE TABLE IF NOT EXISTS `course_schedule` (
  `schedule_id` int NOT NULL AUTO_INCREMENT,
  `class_id` char(10) DEFAULT NULL,
  `course_id` char(10) DEFAULT NULL,
  `teacher_id` char(10) DEFAULT NULL,
  `day` char(10) DEFAULT NULL,
  `start_date` char(10) DEFAULT NULL,
  `end_date` char(10) DEFAULT NULL,
  `status_active` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `created_by` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `updated_by` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`schedule_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table myelnusav2.course_schedule: ~4 rows (approximately)
INSERT INTO `course_schedule` (`schedule_id`, `class_id`, `course_id`, `teacher_id`, `day`, `start_date`, `end_date`, `status_active`, `created_date`, `updated_date`, `created_by`, `updated_by`) VALUES
	(2, '14.1B.01', 'M-051', 'HME', 'Jumat', '17:00', '19:30', 'Y', '2023-12-04 11:45:03', '2023-12-04 11:45:01', 'dev001', 'dev001'),
	(3, '14.1B.01', 'M-029', 'LRB', 'Jumat', '19:30', '21:10', 'Y', '2023-12-04 11:45:02', '2023-12-04 11:44:59', 'dev001', 'dev001'),
	(4, '14.1B.01', 'M-030', 'SOT', 'Sabtu', '10:30', '13:00', 'Y', '2023-12-04 11:44:56', '2023-12-04 11:44:57', 'dev001', 'dev001'),
	(6, '14.1B.01', 'M-028', 'DYL', 'Sabtu', '08:00', '10:30', 'N', '2023-12-05 10:49:01', '2023-12-05 10:49:21', 'dev001', 'dev001');

-- Dumping structure for table myelnusav2.course_task
CREATE TABLE IF NOT EXISTS `course_task` (
  `course_task_id` int NOT NULL AUTO_INCREMENT,
  `schedule_id` int DEFAULT NULL,
  `course_id` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `type` int DEFAULT NULL,
  `video_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `file_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `status_active` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `persentase` int DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `created_by` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `updated_by` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`course_task_id`) USING BTREE,
  KEY `module_name` (`title`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table myelnusav2.course_task: ~1 rows (approximately)
INSERT INTO `course_task` (`course_task_id`, `schedule_id`, `course_id`, `title`, `description`, `type`, `video_link`, `file_link`, `start_date`, `end_date`, `status_active`, `persentase`, `created_date`, `updated_date`, `created_by`, `updated_by`) VALUES
	(1, 1, 'M-028', 'Tugas Information Complexity', 'Buatlah resume paper tentang Information complexity and notion of randomness (sudah dibahas di minggu 9). Sertakan file paper yang direview. Isi meliputi: identitas paper, apa yang dikerjakan, apa state of the art-nya, komentar/saran/kritik', 1, NULL, 'https://drive.google.com/file/d/1jgglTr5oQeajnAtL65pIxLRxVu8KcjJ5/view?usp=sharing', '2023-12-04 12:40:37', '2023-12-04 12:40:37', 'Y', 50, '2023-12-04 12:39:18', '2023-12-04 12:39:19', 'DYL', 'DYL');

-- Dumping structure for table myelnusav2.course_task_student
CREATE TABLE IF NOT EXISTS `course_task_student` (
  `course_task_student_id` int NOT NULL AUTO_INCREMENT,
  `course_task_id` int DEFAULT NULL,
  `course_id` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `teacher_id` char(10) DEFAULT NULL,
  `student_id` char(10) DEFAULT NULL,
  `type` int DEFAULT NULL,
  `video_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `file_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `task_status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `score` int DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `created_by` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `updated_by` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`course_task_student_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table myelnusav2.course_task_student: ~1 rows (approximately)
INSERT INTO `course_task_student` (`course_task_student_id`, `course_task_id`, `course_id`, `teacher_id`, `student_id`, `type`, `video_link`, `file_link`, `task_status`, `score`, `created_date`, `updated_date`, `created_by`, `updated_by`) VALUES
	(1, 1, 'M-028', 'DYL', '14230018', 1, NULL, 'https://drive.google.com/file/d/1jgglTr5oQeajnAtL65pIxLRxVu8KcjJ5/view?usp=sharing', '0', NULL, '2023-12-04 12:51:05', '2023-12-04 12:51:06', '14230018', '14230018'),
	(3, 1, 'M-028', 'DYL', '14230018', 1, '', 'https://drive.google.com/file/d/1jgglTr5oQeajnAtL65pIxLRxVu8KcjJ5/view?usp=sharing', '1', 95, '2023-12-05 10:14:15', '2023-12-05 10:14:27', '14230018', '14230018');

-- Dumping structure for table myelnusav2.course_task_student_detail
CREATE TABLE IF NOT EXISTS `course_task_student_detail` (
  `course_task_student_detail_id` int NOT NULL AUTO_INCREMENT,
  `course_task_student_id` int DEFAULT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `created_by` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `updated_by` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`course_task_student_detail_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table myelnusav2.course_task_student_detail: ~1 rows (approximately)
INSERT INTO `course_task_student_detail` (`course_task_student_detail_id`, `course_task_student_id`, `comment`, `created_date`, `updated_date`, `created_by`, `updated_by`) VALUES
	(1, 1, 'bagus', '2023-12-04 12:54:47', '2023-12-04 12:54:48', 'DYL', 'DYL');

-- Dumping structure for table myelnusav2.master_class
CREATE TABLE IF NOT EXISTS `master_class` (
  `class_id` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `class_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `period` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `status_active` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `created_by` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `updated_by` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`class_id`) USING BTREE,
  KEY `module_name` (`class_name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table myelnusav2.master_class: ~2 rows (approximately)
INSERT INTO `master_class` (`class_id`, `class_name`, `period`, `status_active`, `created_date`, `updated_date`, `created_by`, `updated_by`) VALUES
	('14.1A.01', '14.1A.01', '2023-09', 'Y', '2023-12-05 11:31:22', '2023-12-05 12:03:23', 'dev001', 'dev001'),
	('14.1B.01', '14.1B.01', '2023-09', 'Y', '2023-12-04 11:00:45', '2023-12-04 11:00:46', 'dev001', 'dev001');

-- Dumping structure for table myelnusav2.master_course
CREATE TABLE IF NOT EXISTS `master_course` (
  `course_id` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `course_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `sks` int DEFAULT NULL,
  `status_active` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `created_by` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `updated_by` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`course_id`) USING BTREE,
  KEY `module_name` (`course_name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table myelnusav2.master_course: ~4 rows (approximately)
INSERT INTO `master_course` (`course_id`, `course_name`, `sks`, `status_active`, `created_date`, `updated_date`, `created_by`, `updated_by`) VALUES
	('M-028', 'ALGORITHMS AND COMPLEXITY', 3, 'N', '2023-12-05 09:54:08', '2023-12-05 09:54:15', 'dev001', 'dev001'),
	('M-029', 'TECHNOPRENEURSHIP', 2, 'Y', '2023-12-04 11:23:30', '2023-12-04 11:23:30', 'dev001', 'dev001'),
	('M-030', 'ADVANCED PROBABILITY AND STATISTICS', 3, 'Y', '2023-12-04 11:23:52', '2023-12-04 11:23:53', 'dev001', 'dev001'),
	('M-051', 'ADVANCED MACHINE LEARNING', 3, 'Y', '2023-12-04 11:22:54', '2023-12-04 11:22:54', 'dev001', 'dev001');

-- Dumping structure for table myelnusav2.master_menu
CREATE TABLE IF NOT EXISTS `master_menu` (
  `menu_id` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `menu_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `menu_note` varchar(100) DEFAULT NULL,
  `page_source` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `menu_order` int DEFAULT NULL,
  `status_active` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `section_id` char(10) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `created_by` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `updated_by` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`menu_id`) USING BTREE,
  KEY `module_name` (`menu_name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table myelnusav2.master_menu: ~3 rows (approximately)
INSERT INTO `master_menu` (`menu_id`, `menu_name`, `menu_note`, `page_source`, `menu_order`, `status_active`, `section_id`, `created_date`, `updated_date`, `created_by`, `updated_by`) VALUES
	('DAS', 'Dashboard', NULL, NULL, 1, 'Y', 'SETTING', '2023-12-04 10:14:33', '2023-12-04 10:14:34', 'dev001', 'dev001'),
	('JAD', 'Jadwal Kuliah', NULL, NULL, 3, 'Y', 'JADWAL', '2023-12-04 10:21:47', '2023-12-04 10:21:47', 'dev001', 'dev001'),
	('PRO', 'Profil', '', '', 2, 'N', 'SETTING', '2023-12-05 09:40:59', '2023-12-05 09:41:06', 'dev001', 'dev001');

-- Dumping structure for table myelnusav2.master_module
CREATE TABLE IF NOT EXISTS `master_module` (
  `module_id` char(10) NOT NULL,
  `module_name` varchar(50) DEFAULT NULL,
  `status_active` char(1) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `created_by` char(10) DEFAULT NULL,
  `updated_by` char(10) DEFAULT NULL,
  PRIMARY KEY (`module_id`),
  KEY `module_name` (`module_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table myelnusav2.master_module: ~3 rows (approximately)
INSERT INTO `master_module` (`module_id`, `module_name`, `status_active`, `created_date`, `updated_date`, `created_by`, `updated_by`) VALUES
	('ADM', 'Admin', 'Y', '2023-12-05 10:20:07', '2023-12-05 10:20:07', 'dev001', 'dev001'),
	('DEV', 'Developer', 'Y', '2023-12-04 10:02:23', '2023-12-04 10:02:25', 'dev001', 'dev001'),
	('DOS', 'Dosen', 'Y', '2023-12-04 10:02:22', '2023-12-04 10:02:25', 'dev001', 'dev001'),
	('MHS', 'Mahasiswa', 'Y', '2023-12-04 10:02:21', '2023-12-04 10:02:24', 'dev001', 'dev001');

-- Dumping structure for table myelnusav2.master_module_menu
CREATE TABLE IF NOT EXISTS `master_module_menu` (
  `module_menu_id` int NOT NULL AUTO_INCREMENT,
  `module_id` char(10) DEFAULT NULL,
  `menu_id` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `menu_order` int DEFAULT NULL,
  `status_active` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `created_by` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `updated_by` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`module_menu_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table myelnusav2.master_module_menu: ~3 rows (approximately)
INSERT INTO `master_module_menu` (`module_menu_id`, `module_id`, `menu_id`, `menu_order`, `status_active`, `created_date`, `updated_date`, `created_by`, `updated_by`) VALUES
	(2, 'DEV', 'JAD', 2, 'Y', '2023-12-04 10:41:09', '2023-12-04 10:41:08', 'dev001', 'dev001'),
	(4, 'DEV', 'PRO', 3, 'Y', '2023-12-05 09:43:28', '2023-12-05 09:43:28', 'dev001', 'dev001');

-- Dumping structure for table myelnusav2.master_section
CREATE TABLE IF NOT EXISTS `master_section` (
  `section_id` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `section_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `section_icon` varchar(50) DEFAULT NULL,
  `status_active` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `created_by` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `updated_by` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`section_id`) USING BTREE,
  KEY `module_name` (`section_name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table myelnusav2.master_section: ~3 rows (approximately)
INSERT INTO `master_section` (`section_id`, `section_name`, `section_icon`, `status_active`, `created_date`, `updated_date`, `created_by`, `updated_by`) VALUES
	('JADWAL', 'Jadwal', 'fas fa-code', 'Y', '2023-12-04 10:09:17', '2023-12-04 10:09:18', 'dev001', 'dev001'),
	('SETTING', 'Setting', 'fa icon icon_setting', 'Y', '2023-12-04 10:07:37', '2023-12-04 10:07:37', 'dev001', 'dev001');

-- Dumping structure for table myelnusav2.master_student
CREATE TABLE IF NOT EXISTS `master_student` (
  `student_id` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `status_active` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `class_id` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `created_by` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `updated_by` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`student_id`) USING BTREE,
  KEY `module_name` (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table myelnusav2.master_student: ~1 rows (approximately)
INSERT INTO `master_student` (`student_id`, `name`, `email`, `status_active`, `class_id`, `created_date`, `updated_date`, `created_by`, `updated_by`) VALUES
	('14230018', 'ILHAM MAULANA', '14230018@nusamandiri.ac.id', 'Y', '14.1B.01', '2023-12-04 11:02:02', '2023-12-04 11:02:03', 'dev001', 'dev001');

-- Dumping structure for table myelnusav2.master_teacher
CREATE TABLE IF NOT EXISTS `master_teacher` (
  `teacher_id` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `status_active` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `created_by` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `updated_by` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`teacher_id`) USING BTREE,
  KEY `module_name` (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table myelnusav2.master_teacher: ~4 rows (approximately)
INSERT INTO `master_teacher` (`teacher_id`, `name`, `email`, `status_active`, `created_date`, `updated_date`, `created_by`, `updated_by`) VALUES
	('DYL', 'Dr. Dewi Yanti Liliana, S.Kom, M.Kom', 'dyl@nusamandiri.ac.id', 'Y', '2023-12-04 11:14:41', '2023-12-04 11:14:41', 'dev001', 'dev001'),
	('HME', 'Hilman F. PARDEDE', 'hme@nusamandiri.ac.id', 'Y', '2023-12-04 11:41:38', '2023-12-04 11:41:41', 'dev001', 'dev001'),
	('LRB', 'Abdul Rachman', 'lrb@nusamandiri.ac.id', 'Y', '2023-12-04 11:41:39', '2023-12-04 11:41:41', 'dev001', 'dev001'),
	('SOT', 'Suyoto', 'sot@nusamandiri.ac.id', 'N', '2023-12-05 09:51:35', '2023-12-05 09:51:42', 'dev001', 'dev001');

-- Dumping structure for table myelnusav2.master_user
CREATE TABLE IF NOT EXISTS `master_user` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `user_guid` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `level_id` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `user_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `status_active` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `status_suspend` char(1) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `created_by` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `updated_by` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE,
  UNIQUE KEY `user_name` (`user_name`),
  KEY `module_name` (`user_name`) USING BTREE,
  KEY `user_guid` (`user_guid`),
  KEY `level_id` (`level_id`),
  KEY `status_active` (`status_active`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table myelnusav2.master_user: ~4 rows (approximately)
INSERT INTO `master_user` (`user_id`, `user_guid`, `level_id`, `user_name`, `password`, `status_active`, `status_suspend`, `last_login`, `created_date`, `updated_date`, `created_by`, `updated_by`) VALUES
	(1, '0E2C9CC355284C3DBA60', 'DEV', 'dev001', '$2y$10$JUdtcZ0SXkwwrDdVRg7/ie73LVr9T15wDBw5WZ/UQWTxaq56DeEAq', 'Y', 'N', NULL, '2023-12-04 10:32:23', '2023-12-04 10:32:24', 'dev001', 'dev001'),
	(2, '0E2C9CC355284C3DBA61', 'DOS', 'dos001', '$2y$10$JUdtcZ0SXkwwrDdVRg7/ie73LVr9T15wDBw5WZ/UQWTxaq56DeEAq', 'Y', 'N', NULL, '2023-12-04 10:32:23', '2023-12-04 10:32:24', 'dev001', 'dev001'),
	(3, '0E2C9CC355284C3DBA62', 'MHS', 'mhs001', '$2y$10$JUdtcZ0SXkwwrDdVRg7/ie73LVr9T15wDBw5WZ/UQWTxaq56DeEAq', 'Y', 'N', NULL, '2023-12-04 10:32:23', '2023-12-04 10:32:24', 'dev001', 'dev001'),
	(5, '0E2C9CC355284C3DBA60', 'ADM', 'adm001', '$2y$10$JUdtcZ0SXkwwrDdVRg7/ie73LVr9T15wDBw5WZ/UQWTxaq56DeEAq', 'Y', 'N', NULL, '2023-12-05 09:47:04', '2023-12-05 09:47:04', 'dev001', 'dev001');

-- Dumping structure for procedure myelnusav2.spCourseDetailAdd
DELIMITER //
CREATE PROCEDURE `spCourseDetailAdd`(
    IN p_schedule_id INT,
    IN p_course_id CHAR(10),
    IN p_title VARCHAR(200),
    IN p_description TEXT,
    IN p_type INT,
    IN p_video_link VARCHAR(255),
    IN p_file_link VARCHAR(255),
    IN p_status_active CHAR(1),
    IN p_created_by CHAR(10)
)
BEGIN
    DECLARE current_datetime DATETIME;
    
    SET current_datetime = NOW();

    INSERT INTO course_detail (
        schedule_id,
        course_id,
        title,
        description,
        type,
        video_link,
        file_link,
        status_active,
        created_date,
        updated_date,
        created_by,
        updated_by
    ) VALUES (
        p_schedule_id,
        p_course_id,
        p_title,
        p_description,
        p_type,
        p_video_link,
        p_file_link,
        p_status_active,
        current_datetime,
        current_datetime,
        p_created_by,
        p_created_by
    );

END//
DELIMITER ;

-- Dumping structure for procedure myelnusav2.spCourseDetailDelete
DELIMITER //
CREATE PROCEDURE `spCourseDetailDelete`(
    IN p_course_detail_id INT
)
BEGIN
    DELETE FROM course_detail WHERE course_detail_id = p_course_detail_id;

END//
DELIMITER ;

-- Dumping structure for procedure myelnusav2.spCourseDetailDetail
DELIMITER //
CREATE PROCEDURE `spCourseDetailDetail`(
    IN p_course_detail_id INT
)
BEGIN
    SELECT * FROM course_detail WHERE course_detail_id = p_course_detail_id;

END//
DELIMITER ;

-- Dumping structure for procedure myelnusav2.spCourseDetailDiscussionAdd
DELIMITER //
CREATE PROCEDURE `spCourseDetailDiscussionAdd`(
    IN p_course_detail_id INT,
    IN p_ref_id INT,
    IN p_course_id CHAR(10),
    IN p_title VARCHAR(200),
    IN p_description TEXT,
    IN p_status_active CHAR(1),
    IN p_created_by CHAR(10)
)
BEGIN
    DECLARE current_datetime DATETIME;
    
    SET current_datetime = NOW();

    INSERT INTO course_detail_discussion (
        course_detail_id,
        ref_id,
        course_id,
        title,
        description,
        status_active,
        created_date,
        updated_date,
        created_by,
        updated_by
    ) VALUES (
        p_course_detail_id,
        p_ref_id,
        p_course_id,
        p_title,
        p_description,
        p_status_active,
        current_datetime,
        current_datetime,
        p_created_by,
        p_created_by
    );

END//
DELIMITER ;

-- Dumping structure for procedure myelnusav2.spCourseDetailDiscussionDelete
DELIMITER //
CREATE PROCEDURE `spCourseDetailDiscussionDelete`(
    IN p_course_detail_discussion_id INT
)
BEGIN
    DELETE FROM course_detail_discussion WHERE course_detail_discussion_id = p_course_detail_discussion_id;

END//
DELIMITER ;

-- Dumping structure for procedure myelnusav2.spCourseDetailDiscussionDetail
DELIMITER //
CREATE PROCEDURE `spCourseDetailDiscussionDetail`(
    IN p_course_detail_discussion_id INT
)
BEGIN
    SELECT * FROM course_detail_discussion WHERE course_detail_discussion_id = p_course_detail_discussion_id;

END//
DELIMITER ;

-- Dumping structure for procedure myelnusav2.spCourseDetailDiscussionList
DELIMITER //
CREATE PROCEDURE `spCourseDetailDiscussionList`()
BEGIN
    SELECT * FROM course_detail_discussion;

END//
DELIMITER ;

-- Dumping structure for procedure myelnusav2.spCourseDetailDiscussionUpdate
DELIMITER //
CREATE PROCEDURE `spCourseDetailDiscussionUpdate`(
    IN p_course_detail_discussion_id INT,
    IN p_course_detail_id INT,
    IN p_ref_id INT,
    IN p_course_id CHAR(10),
    IN p_title VARCHAR(200),
    IN p_description TEXT,
    IN p_status_active CHAR(1),
    IN p_updated_by CHAR(10)
)
BEGIN
    DECLARE current_datetime DATETIME;
    
    SET current_datetime = NOW();

    UPDATE course_detail_discussion
    SET
        course_detail_id = p_course_detail_id,
        ref_id = p_ref_id,
        course_id = p_course_id,
        title = p_title,
        description = p_description,
        status_active = p_status_active,
        updated_date = current_datetime,
        updated_by = p_updated_by
    WHERE course_detail_discussion_id = p_course_detail_discussion_id;

END//
DELIMITER ;

-- Dumping structure for procedure myelnusav2.spCourseDetailList
DELIMITER //
CREATE PROCEDURE `spCourseDetailList`()
BEGIN
    SELECT * FROM course_detail;

END//
DELIMITER ;

-- Dumping structure for procedure myelnusav2.spCourseDetailUpdate
DELIMITER //
CREATE PROCEDURE `spCourseDetailUpdate`(
    IN p_course_detail_id INT,
    IN p_schedule_id INT,
    IN p_course_id CHAR(10),
    IN p_title VARCHAR(200),
    IN p_description TEXT,
    IN p_type INT,
    IN p_video_link VARCHAR(255),
    IN p_file_link VARCHAR(255),
    IN p_status_active CHAR(1),
    IN p_updated_by CHAR(10)
)
BEGIN
    DECLARE current_datetime DATETIME;
    
    SET current_datetime = NOW();

    UPDATE course_detail
    SET
        schedule_id = p_schedule_id,
        course_id = p_course_id,
        title = p_title,
        description = p_description,
        type = p_type,
        video_link = p_video_link,
        file_link = p_file_link,
        status_active = p_status_active,
        updated_date = current_datetime,
        updated_by = p_updated_by
    WHERE course_detail_id = p_course_detail_id;

END//
DELIMITER ;

-- Dumping structure for procedure myelnusav2.spCourseScheduleAdd
DELIMITER //
CREATE PROCEDURE `spCourseScheduleAdd`(
    IN p_class_id CHAR(10),
    IN p_course_id CHAR(10),
    IN p_teacher_id CHAR(10),
    IN p_day CHAR(10),
    IN p_start_date CHAR(10),
    IN p_end_date CHAR(10),
    IN p_status_active CHAR(1),
    IN p_created_by CHAR(10)
)
BEGIN
    DECLARE current_datetime DATETIME;
    
    SET current_datetime = NOW();

    INSERT INTO course_schedule (
        class_id,
        course_id,
        teacher_id,
        day,
        start_date,
        end_date,
        status_active,
        created_date,
        updated_date,
        created_by,
        updated_by
    ) VALUES (
        p_class_id,
        p_course_id,
        p_teacher_id,
        p_day,
        p_start_date,
        p_end_date,
        p_status_active,
        current_datetime,
        current_datetime,
        p_created_by,
        p_created_by
    );

END//
DELIMITER ;

-- Dumping structure for procedure myelnusav2.spCourseScheduleDelete
DELIMITER //
CREATE PROCEDURE `spCourseScheduleDelete`(
    IN p_schedule_id INT
)
BEGIN
    DELETE FROM course_schedule WHERE schedule_id = p_schedule_id;

END//
DELIMITER ;

-- Dumping structure for procedure myelnusav2.spCourseScheduleDetail
DELIMITER //
CREATE PROCEDURE `spCourseScheduleDetail`(
    IN p_schedule_id INT
)
BEGIN
    SELECT * FROM course_schedule WHERE schedule_id = p_schedule_id;

END//
DELIMITER ;

-- Dumping structure for procedure myelnusav2.spCourseScheduleList
DELIMITER //
CREATE PROCEDURE `spCourseScheduleList`()
BEGIN
    SELECT * FROM course_schedule;

END//
DELIMITER ;

-- Dumping structure for procedure myelnusav2.spCourseScheduleUpdate
DELIMITER //
CREATE PROCEDURE `spCourseScheduleUpdate`(
    IN p_schedule_id INT,
    IN p_class_id CHAR(10),
    IN p_course_id CHAR(10),
    IN p_teacher_id CHAR(10),
    IN p_day CHAR(10),
    IN p_start_date CHAR(10),
    IN p_end_date CHAR(10),
    IN p_status_active CHAR(1),
    IN p_updated_by CHAR(10)
)
BEGIN
    DECLARE current_datetime DATETIME;
    
    SET current_datetime = NOW();

    UPDATE course_schedule
    SET
        class_id = p_class_id,
        course_id = p_course_id,
        teacher_id = p_teacher_id,
        day = p_day,
        start_date = p_start_date,
        end_date = p_end_date,
        status_active = p_status_active,
        updated_date = current_datetime,
        updated_by = p_updated_by
    WHERE schedule_id = p_schedule_id;

END//
DELIMITER ;

-- Dumping structure for procedure myelnusav2.spCourseTaskAdd
DELIMITER //
CREATE PROCEDURE `spCourseTaskAdd`(
    IN p_schedule_id INT,
    IN p_course_id CHAR(10),
    IN p_title VARCHAR(200),
    IN p_description TEXT,
    IN p_type INT,
    IN p_video_link VARCHAR(255),
    IN p_file_link VARCHAR(255),
    IN p_start_date DATETIME,
    IN p_end_date DATETIME,
    IN p_status_active CHAR(1),
    IN p_persentase INT,
    IN p_created_by CHAR(10)
)
BEGIN
    DECLARE current_datetime DATETIME;
    
    SET current_datetime = NOW();

    INSERT INTO course_task (
        schedule_id,
        course_id,
        title,
        description,
        type,
        video_link,
        file_link,
        start_date,
        end_date,
        status_active,
        persentase,
        created_date,
        updated_date,
        created_by,
        updated_by
    ) VALUES (
        p_schedule_id,
        p_course_id,
        p_title,
        p_description,
        p_type,
        p_video_link,
        p_file_link,
        p_start_date,
        p_end_date,
        p_status_active,
        p_persentase,
        current_datetime,
        current_datetime,
        p_created_by,
        p_created_by
    );

END//
DELIMITER ;

-- Dumping structure for procedure myelnusav2.spCourseTaskDelete
DELIMITER //
CREATE PROCEDURE `spCourseTaskDelete`(
    IN p_course_task_id INT
)
BEGIN
    DELETE FROM course_task WHERE course_task_id = p_course_task_id;

END//
DELIMITER ;

-- Dumping structure for procedure myelnusav2.spCourseTaskDetail
DELIMITER //
CREATE PROCEDURE `spCourseTaskDetail`(
    IN p_course_task_id INT
)
BEGIN
    SELECT * FROM course_task WHERE course_task_id = p_course_task_id;

END//
DELIMITER ;

-- Dumping structure for procedure myelnusav2.spCourseTaskList
DELIMITER //
CREATE PROCEDURE `spCourseTaskList`()
BEGIN
    SELECT * FROM course_task;

END//
DELIMITER ;

-- Dumping structure for procedure myelnusav2.spCourseTaskStudentAdd
DELIMITER //
CREATE PROCEDURE `spCourseTaskStudentAdd`(
    IN p_course_task_id INT,
    IN p_course_id CHAR(10),
    IN p_teacher_id CHAR(10),
    IN p_student_id CHAR(10),
    IN p_type INT,
    IN p_video_link VARCHAR(255),
    IN p_file_link VARCHAR(255),
    IN p_task_status CHAR(1),
    IN p_score INT,
    IN p_created_by CHAR(10)
)
BEGIN
    DECLARE current_datetime DATETIME;
    
    SET current_datetime = NOW();

    INSERT INTO course_task_student (
        course_task_id,
        course_id,
        teacher_id,
        student_id,
        type,
        video_link,
        file_link,
        task_status,
        score,
        created_date,
        updated_date,
        created_by,
        updated_by
    ) VALUES (
        p_course_task_id,
        p_course_id,
        p_teacher_id,
        p_student_id,
        p_type,
        p_video_link,
        p_file_link,
        p_task_status,
        p_score,
        current_datetime,
        current_datetime,
        p_created_by,
        p_created_by
    );

END//
DELIMITER ;

-- Dumping structure for procedure myelnusav2.spCourseTaskStudentDelete
DELIMITER //
CREATE PROCEDURE `spCourseTaskStudentDelete`(
    IN p_course_task_student_id INT
)
BEGIN
    DELETE FROM course_task_student WHERE course_task_student_id = p_course_task_student_id;

END//
DELIMITER ;

-- Dumping structure for procedure myelnusav2.spCourseTaskStudentDetail
DELIMITER //
CREATE PROCEDURE `spCourseTaskStudentDetail`(
    IN p_course_task_student_id INT
)
BEGIN
    SELECT * FROM course_task_student WHERE course_task_student_id = p_course_task_student_id;

END//
DELIMITER ;

-- Dumping structure for procedure myelnusav2.spCourseTaskStudentDetailAdd
DELIMITER //
CREATE PROCEDURE `spCourseTaskStudentDetailAdd`(
    IN p_course_task_student_id INT,
    IN p_comment TEXT,
    IN p_created_by CHAR(10)
)
BEGIN
    DECLARE current_datetime DATETIME;
    
    SET current_datetime = NOW();

    INSERT INTO course_task_student_detail (
        course_task_student_id,
        comment,
        created_date,
        updated_date,
        created_by,
        updated_by
    ) VALUES (
        p_course_task_student_id,
        p_comment,
        current_datetime,
        current_datetime,
        p_created_by,
        p_created_by
    );

END//
DELIMITER ;

-- Dumping structure for procedure myelnusav2.spCourseTaskStudentDetailDelete
DELIMITER //
CREATE PROCEDURE `spCourseTaskStudentDetailDelete`(
    IN p_course_task_student_detail_id INT
)
BEGIN
    DELETE FROM course_task_student_detail WHERE course_task_student_detail_id = p_course_task_student_detail_id;

END//
DELIMITER ;

-- Dumping structure for procedure myelnusav2.spCourseTaskStudentDetailDetail
DELIMITER //
CREATE PROCEDURE `spCourseTaskStudentDetailDetail`(
    IN p_course_task_student_detail_id INT
)
BEGIN
    SELECT * FROM course_task_student_detail WHERE course_task_student_detail_id = p_course_task_student_detail_id;

END//
DELIMITER ;

-- Dumping structure for procedure myelnusav2.spCourseTaskStudentDetailList
DELIMITER //
CREATE PROCEDURE `spCourseTaskStudentDetailList`()
BEGIN
    SELECT * FROM course_task_student_detail;

END//
DELIMITER ;

-- Dumping structure for procedure myelnusav2.spCourseTaskStudentDetailUpdate
DELIMITER //
CREATE PROCEDURE `spCourseTaskStudentDetailUpdate`(
    IN p_course_task_student_detail_id INT,
    IN p_course_task_student_id INT,
    IN p_comment TEXT,
    IN p_updated_by CHAR(10)
)
BEGIN
    DECLARE current_datetime DATETIME;
    
    SET current_datetime = NOW();

    UPDATE course_task_student_detail
    SET
        course_task_student_id = p_course_task_student_id,
        comment = p_comment,
        updated_date = current_datetime,
        updated_by = p_updated_by
    WHERE course_task_student_detail_id = p_course_task_student_detail_id;

END//
DELIMITER ;

-- Dumping structure for procedure myelnusav2.spCourseTaskStudentList
DELIMITER //
CREATE PROCEDURE `spCourseTaskStudentList`()
BEGIN
    SELECT * FROM course_task_student;

END//
DELIMITER ;

-- Dumping structure for procedure myelnusav2.spCourseTaskStudentUpdate
DELIMITER //
CREATE PROCEDURE `spCourseTaskStudentUpdate`(
    IN p_course_task_student_id INT,
    IN p_course_task_id INT,
    IN p_course_id CHAR(10),
    IN p_teacher_id CHAR(10),
    IN p_student_id CHAR(10),
    IN p_type INT,
    IN p_video_link VARCHAR(255),
    IN p_file_link VARCHAR(255),
    IN p_task_status CHAR(1),
    IN p_score INT,
    IN p_updated_by CHAR(10)
)
BEGIN
    DECLARE current_datetime DATETIME;
    
    SET current_datetime = NOW();

    UPDATE course_task_student
    SET
        course_task_id = p_course_task_id,
        course_id = p_course_id,
        teacher_id = p_teacher_id,
        student_id = p_student_id,
        type = p_type,
        video_link = p_video_link,
        file_link = p_file_link,
        task_status = p_task_status,
        score = p_score,
        updated_date = current_datetime,
        updated_by = p_updated_by
    WHERE course_task_student_id = p_course_task_student_id;

END//
DELIMITER ;

-- Dumping structure for procedure myelnusav2.spCourseTaskUpdate
DELIMITER //
CREATE PROCEDURE `spCourseTaskUpdate`(
    IN p_course_task_id INT,
    IN p_schedule_id INT,
    IN p_course_id CHAR(10),
    IN p_title VARCHAR(200),
    IN p_description TEXT,
    IN p_type INT,
    IN p_video_link VARCHAR(255),
    IN p_file_link VARCHAR(255),
    IN p_start_date DATETIME,
    IN p_end_date DATETIME,
    IN p_status_active CHAR(1),
    IN p_persentase INT,
    IN p_updated_by CHAR(10)
)
BEGIN
    DECLARE current_datetime DATETIME;
    
    SET current_datetime = NOW();

    UPDATE course_task
    SET
        schedule_id = p_schedule_id,
        course_id = p_course_id,
        title = p_title,
        description = p_description,
        type = p_type,
        video_link = p_video_link,
        file_link = p_file_link,
        start_date = p_start_date,
        end_date = p_end_date,
        status_active = p_status_active,
        persentase = p_persentase,
        updated_date = current_datetime,
        updated_by = p_updated_by
    WHERE course_task_id = p_course_task_id;

END//
DELIMITER ;

-- Dumping structure for procedure myelnusav2.spMasterClassAdd
DELIMITER //
CREATE PROCEDURE `spMasterClassAdd`(
	IN `p_class_id` CHAR(10),
	IN `p_class_name` VARCHAR(50),
	IN `p_period` VARCHAR(50),
	IN `p_status_active` CHAR(1),
	IN `p_created_by` CHAR(10)
)
BEGIN
    DECLARE result_code INT;
    DECLARE error_message VARCHAR(1000);
    DECLARE current_datetime DATETIME;

    SET current_datetime = NOW();

    IF p_class_id = '' OR p_class_name = '' OR p_period = '' OR p_status_active = '' THEN
        SET result_code = 39999;
        SET error_message = 'Please Fill Field';
        SELECT result_code, error_message;
    ELSEIF EXISTS (SELECT class_id FROM master_class WHERE class_id = p_class_id) THEN
        SET result_code = 39999;
        SET error_message = 'class_id exists';
        SELECT result_code, error_message;
    ELSE
        BEGIN
            DECLARE exit handler FOR SQLEXCEPTION
            BEGIN
                ROLLBACK;
                SET result_code = 39999;
                SET error_message = 'Error inserting data';
                SELECT result_code, error_message;
            END;

            START TRANSACTION;
            
            INSERT INTO master_class (
                class_id,
                class_name,
                period,
                status_active,
                created_date,
                updated_date,
                created_by,
                updated_by
            ) VALUES (
                p_class_id,
                p_class_name,
                p_period,
                p_status_active,
                current_datetime,
                current_datetime,
                p_created_by,
                p_created_by
            );

            IF ROW_COUNT() > 0 THEN
                COMMIT;
                SET result_code = 1;
                SET error_message = '';
            ELSE
                ROLLBACK;
                SET result_code = 39999;
                SET error_message = 'Error inserting data';
            END IF;
            
            SELECT result_code, error_message;
        END;
    END IF;
END//
DELIMITER ;

-- Dumping structure for procedure myelnusav2.spMasterClassDelete
DELIMITER //
CREATE PROCEDURE `spMasterClassDelete`(
	IN `p_class_id` CHAR(10)
)
BEGIN
    DECLARE class_id_count INT;
    DECLARE result_code INT;
    DECLARE error_message VARCHAR(1000);
    
    SET result_code = 1;
    SET error_message = '';

    SELECT COUNT(*) INTO class_id_count FROM master_class WHERE class_id = p_class_id;
    IF class_id_count = 0 THEN
        SET result_code = 39999;
        SET error_message = 'class_id not found';
        SELECT result_code, error_message;
    ELSE
        SELECT COUNT(*) INTO class_id_count FROM master_student WHERE class_id = p_class_id;
        IF class_id_count > 0 THEN
            SET result_code = 39999;
            SET error_message = 'Cannot delete class_id, it is still being used by students';
            SELECT result_code, error_message;
        ELSE
            SELECT COUNT(*) INTO class_id_count FROM course_schedule WHERE class_id = p_class_id;
            IF class_id_count > 0 THEN
                SET result_code = 39999;
                SET error_message = 'Cannot delete class_id, it is still being used in the course schedule.';
                SELECT result_code, error_message;
            ELSE
                BEGIN
                    DECLARE exit handler FOR SQLEXCEPTION
                    BEGIN
                        ROLLBACK;
                        SET result_code = 39999;
                        SET error_message = 'Error deleting data';
                        SELECT result_code, error_message;
                    END;
                    
                    START TRANSACTION;
                    DELETE FROM master_class WHERE class_id = p_class_id;
                    COMMIT;
                    SELECT result_code, error_message;
                END;
            END IF;
        END IF;
    END IF;
END//
DELIMITER ;

-- Dumping structure for procedure myelnusav2.spMasterClassDetail
DELIMITER //
CREATE PROCEDURE `spMasterClassDetail`(
	IN `p_class_id` CHAR(10)
)
BEGIN
    DECLARE class_id_count INT;
    DECLARE result_code INT;
    DECLARE error_message VARCHAR(1000);

    SELECT COUNT(*) INTO class_id_count FROM master_class WHERE class_id = p_class_id;
    IF class_id_count = 0 THEN
        SET result_code = 39999;
        SET error_message = 'class_id not found';
        SELECT result_code, error_message;
    else
        SET result_code := 1;
        SET error_message := '';
        SELECT result_code, error_message;
        SELECT * FROM master_class WHERE class_id = p_class_id;

    END IF;
END//
DELIMITER ;

-- Dumping structure for procedure myelnusav2.spMasterClassList
DELIMITER //
CREATE PROCEDURE `spMasterClassList`(
    IN `p_class_id` VARCHAR(10),
    IN `p_class_name` NVARCHAR(50),
    IN `p_page` INT,
    IN `p_page_size` INT
)
BEGIN
    DECLARE result_code INT;
    DECLARE error_message VARCHAR(100);
    DECLARE total_rows INT;
    DECLARE offset INT;

    SET p_class_id = CASE WHEN p_class_id = '' THEN '%' else CONCAT('%', p_class_id, '%') END;
    SET p_class_name = CASE WHEN p_class_name = '' THEN '%' ELSE CONCAT('%', p_class_name, '%') END;

    CREATE TEMPORARY TABLE temp_class (
        class_id VARCHAR(10)
    );

    INSERT INTO temp_class (class_id)
    SELECT class_id
    FROM master_class
    WHERE 
    class_id LIKE p_class_id
    AND class_name LIKE p_class_name;

    SELECT COUNT(1) INTO total_rows
    FROM temp_class;

    SET result_code := 1;
    SET error_message := '';
    SELECT result_code, error_message;
    SELECT total_rows AS total_rows;

    SET offset := (p_page - 1) * p_page_size;

    SELECT *
    FROM master_class c
    WHERE c.class_id IN (SELECT class_id FROM temp_class)
    ORDER BY c.class_id
    LIMIT offset, p_page_size;

    DROP TEMPORARY TABLE IF EXISTS temp_class;
END//
DELIMITER ;

-- Dumping structure for procedure myelnusav2.spMasterClassUpdate
DELIMITER //
CREATE PROCEDURE `spMasterClassUpdate`(
	IN `p_class_id` CHAR(10),
	IN `p_class_name` VARCHAR(50),
	IN `p_period` VARCHAR(50),
	IN `p_status_active` CHAR(1),
	IN `p_updated_by` CHAR(10)
)
BEGIN
    DECLARE class_id_count INT;
    DECLARE result_code INT;
    DECLARE error_message VARCHAR(1000);
    
    SET result_code = 1;
    SET error_message = '';

    SELECT COUNT(*) INTO class_id_count FROM master_class WHERE class_id = p_class_id;
    IF class_id_count = 0 THEN
        SET result_code = 39999;
        SET error_message = 'class_id not found';
        SELECT result_code, error_message;
    ELSE
	    BEGIN
	        DECLARE exit handler FOR SQLEXCEPTION
	        BEGIN
	            ROLLBACK;
	            SET result_code = 39999;
	            SET error_message = 'Error update data';
	            SELECT result_code, error_message;
	        END;
	        
	        START TRANSACTION;
	        UPDATE master_class
	        SET
	            class_name = p_class_name,
	            period = p_period,
	            status_active = p_status_active,
	            updated_date = NOW(),
	            updated_by = p_updated_by
	        WHERE class_id = p_class_id;
	        COMMIT;
	        SELECT result_code, error_message;
	    END;
    END IF;
END//
DELIMITER ;

-- Dumping structure for procedure myelnusav2.spMasterCourseAdd
DELIMITER //
CREATE PROCEDURE `spMasterCourseAdd`(
    IN p_course_id CHAR(10),
    IN p_course_name VARCHAR(50),
    IN p_sks INT,
    IN p_status_active CHAR(1),
    IN p_created_by CHAR(10)
)
BEGIN
    DECLARE current_datetime DATETIME;
    
    SET current_datetime = NOW();

    INSERT INTO master_course (
        course_id,
        course_name,
        sks,
        status_active,
        created_date,
        updated_date,
        created_by,
        updated_by
    ) VALUES (
        p_course_id,
        p_course_name,
        p_sks,
        p_status_active,
        current_datetime,
        current_datetime,
        p_created_by,
        p_created_by
    );

END//
DELIMITER ;

-- Dumping structure for procedure myelnusav2.spMasterCourseDelete
DELIMITER //
CREATE PROCEDURE `spMasterCourseDelete`(
    IN p_course_id CHAR(10)
)
BEGIN
    DELETE FROM master_course WHERE course_id = p_course_id;

END//
DELIMITER ;

-- Dumping structure for procedure myelnusav2.spMasterCourseDetail
DELIMITER //
CREATE PROCEDURE `spMasterCourseDetail`(
    IN p_course_id CHAR(10)
)
BEGIN
    SELECT * FROM master_course WHERE course_id = p_course_id;

END//
DELIMITER ;

-- Dumping structure for procedure myelnusav2.spMasterCourseList
DELIMITER //
CREATE PROCEDURE `spMasterCourseList`()
BEGIN
    SELECT * FROM master_course;

END//
DELIMITER ;

-- Dumping structure for procedure myelnusav2.spMasterCourseUpdate
DELIMITER //
CREATE PROCEDURE `spMasterCourseUpdate`(
    IN p_course_id CHAR(10),
    IN p_course_name VARCHAR(50),
    IN p_sks INT,
    IN p_status_active CHAR(1),
    IN p_updated_by CHAR(10)
)
BEGIN
    DECLARE current_datetime DATETIME;
    
    SET current_datetime = NOW();

    UPDATE master_course
    SET
        course_name = p_course_name,
        sks = p_sks,
        status_active = p_status_active,
        updated_date = current_datetime,
        updated_by = p_updated_by
    WHERE course_id = p_course_id;

END//
DELIMITER ;

-- Dumping structure for procedure myelnusav2.spMasterMenuAdd
DELIMITER //
CREATE PROCEDURE `spMasterMenuAdd`(
    IN p_menu_id CHAR(10),
    IN p_menu_name VARCHAR(50),
    IN p_menu_note VARCHAR(100),
    IN p_page_source VARCHAR(100),
    IN p_menu_order INT,
    IN p_status_active CHAR(1),
    IN p_section_id CHAR(10),
    IN p_created_by CHAR(10)
)
BEGIN
    DECLARE current_datetime DATETIME;
    
    SET current_datetime = NOW();

    INSERT INTO master_menu (
        menu_id,
        menu_name,
        menu_note,
        page_source,
        menu_order,
        status_active,
        section_id,
        created_date,
        updated_date,
        created_by,
        updated_by
    ) VALUES (
        p_menu_id,
        p_menu_name,
        p_menu_note,
        p_page_source,
        p_menu_order,
        p_status_active,
        p_section_id,
        current_datetime,
        current_datetime,
        p_created_by,
        p_created_by
    );

END//
DELIMITER ;

-- Dumping structure for procedure myelnusav2.spMasterMenuDelete
DELIMITER //
CREATE PROCEDURE `spMasterMenuDelete`(
    IN p_menu_id CHAR(10)
)
BEGIN
    DELETE FROM master_menu WHERE menu_id = p_menu_id;

END//
DELIMITER ;

-- Dumping structure for procedure myelnusav2.spMasterMenuDetail
DELIMITER //
CREATE PROCEDURE `spMasterMenuDetail`(
    IN p_menu_id CHAR(10)
)
BEGIN
    SELECT * FROM master_menu WHERE menu_id = p_menu_id;

END//
DELIMITER ;

-- Dumping structure for procedure myelnusav2.spMasterMenuList
DELIMITER //
CREATE PROCEDURE `spMasterMenuList`()
BEGIN
    SELECT * FROM master_menu;

END//
DELIMITER ;

-- Dumping structure for procedure myelnusav2.spMasterMenuUpdate
DELIMITER //
CREATE PROCEDURE `spMasterMenuUpdate`(
    IN p_menu_id CHAR(10),
    IN p_menu_name VARCHAR(50),
    IN p_menu_note VARCHAR(100),
    IN p_page_source VARCHAR(100),
    IN p_menu_order INT,
    IN p_status_active CHAR(1),
    IN p_section_id CHAR(10),
    IN p_updated_by CHAR(10)
)
BEGIN
    DECLARE current_datetime DATETIME;
    
    SET current_datetime = NOW();

    UPDATE master_menu
    SET
        menu_name = p_menu_name,
        menu_note = p_menu_note,
        page_source = p_page_source,
        menu_order = p_menu_order,
        status_active = p_status_active,
        section_id = p_section_id,
        updated_date = current_datetime,
        updated_by = p_updated_by
    WHERE menu_id = p_menu_id;

END//
DELIMITER ;

-- Dumping structure for procedure myelnusav2.spMasterModuleAdd
DELIMITER //
CREATE PROCEDURE `spMasterModuleAdd`(
    IN p_module_id CHAR(10),
    IN p_module_name VARCHAR(50),
    IN p_status_active CHAR(1),
    IN p_created_by CHAR(10)
)
BEGIN
    DECLARE current_datetime DATETIME;
    
    SET current_datetime = NOW();

    INSERT INTO master_module (
        module_id,
        module_name,
        status_active,
        created_date,
        updated_date,
        created_by,
        updated_by
    ) VALUES (
        p_module_id,
        p_module_name,
        p_status_active,
        current_datetime,
        current_datetime,
        p_created_by,
        p_created_by
    );

END//
DELIMITER ;

-- Dumping structure for procedure myelnusav2.spMasterModuleDelete
DELIMITER //
CREATE PROCEDURE `spMasterModuleDelete`(
    IN p_module_id CHAR(10)
)
BEGIN
    DELETE FROM master_module WHERE module_id = p_module_id;

END//
DELIMITER ;

-- Dumping structure for procedure myelnusav2.spMasterModuleDetail
DELIMITER //
CREATE PROCEDURE `spMasterModuleDetail`(
    IN p_module_id CHAR(10)
)
BEGIN
    SELECT * FROM master_module WHERE module_id = p_module_id;

END//
DELIMITER ;

-- Dumping structure for procedure myelnusav2.spMasterModuleList
DELIMITER //
CREATE PROCEDURE `spMasterModuleList`()
BEGIN
    SELECT * FROM master_module;

END//
DELIMITER ;

-- Dumping structure for procedure myelnusav2.spMasterModuleMenuAdd
DELIMITER //
CREATE PROCEDURE `spMasterModuleMenuAdd`(
    IN p_module_id CHAR(10),
    IN p_menu_id CHAR(10),
    IN p_menu_order INT,
    IN p_status_active CHAR(1),
    IN p_created_by CHAR(10)
)
BEGIN
    DECLARE current_datetime DATETIME;
    
    SET current_datetime = NOW();

    INSERT INTO master_module_menu (
        module_id,
        menu_id,
        menu_order,
        status_active,
        created_date,
        updated_date,
        created_by,
        updated_by
    ) VALUES (
        p_module_id,
        p_menu_id,
        p_menu_order,
        p_status_active,
        current_datetime,
        current_datetime,
        p_created_by,
        p_created_by
    );

END//
DELIMITER ;

-- Dumping structure for procedure myelnusav2.spMasterModuleMenuDelete
DELIMITER //
CREATE PROCEDURE `spMasterModuleMenuDelete`(
    IN p_module_menu_id INT
)
BEGIN
    DELETE FROM master_module_menu WHERE module_menu_id = p_module_menu_id;

END//
DELIMITER ;

-- Dumping structure for procedure myelnusav2.spMasterModuleMenuDetail
DELIMITER //
CREATE PROCEDURE `spMasterModuleMenuDetail`(
    IN p_module_menu_id INT
)
BEGIN
    SELECT * FROM master_module_menu WHERE module_menu_id = p_module_menu_id;

END//
DELIMITER ;

-- Dumping structure for procedure myelnusav2.spMasterModuleMenuList
DELIMITER //
CREATE PROCEDURE `spMasterModuleMenuList`()
BEGIN
    SELECT * FROM master_module_menu;

END//
DELIMITER ;

-- Dumping structure for procedure myelnusav2.spMasterModuleMenuUpdate
DELIMITER //
CREATE PROCEDURE `spMasterModuleMenuUpdate`(
    IN p_module_menu_id INT,
    IN p_module_id CHAR(10),
    IN p_menu_id CHAR(10),
    IN p_menu_order INT,
    IN p_status_active CHAR(1),
    IN p_updated_by CHAR(10)
)
BEGIN
    DECLARE current_datetime DATETIME;
    
    SET current_datetime = NOW();

    UPDATE master_module_menu
    SET
        module_id = p_module_id,
        menu_id = p_menu_id,
        menu_order = p_menu_order,
        status_active = p_status_active,
        updated_date = current_datetime,
        updated_by = p_updated_by
    WHERE module_menu_id = p_module_menu_id;

END//
DELIMITER ;

-- Dumping structure for procedure myelnusav2.spMasterModuleUpdate
DELIMITER //
CREATE PROCEDURE `spMasterModuleUpdate`(
    IN p_module_id CHAR(10),
    IN p_module_name VARCHAR(50),
    IN p_status_active CHAR(1),
    IN p_updated_by CHAR(10)
)
BEGIN
    DECLARE current_datetime DATETIME;
    
    SET current_datetime = NOW();

    UPDATE master_module
    SET
        module_name = p_module_name,
        status_active = p_status_active,
        updated_date = current_datetime,
        updated_by = p_updated_by
    WHERE module_id = p_module_id;

END//
DELIMITER ;

-- Dumping structure for procedure myelnusav2.spMasterSectionAdd
DELIMITER //
CREATE PROCEDURE `spMasterSectionAdd`(
    IN p_section_id CHAR(10),
    IN p_section_name VARCHAR(50),
    IN p_section_icon VARCHAR(50),
    IN p_status_active CHAR(1),
    IN p_created_by CHAR(10)
)
BEGIN
    DECLARE current_datetime DATETIME;
    
    SET current_datetime = NOW();

    INSERT INTO master_section (
        section_id,
        section_name,
        section_icon,
        status_active,
        created_date,
        updated_date,
        created_by,
        updated_by
    ) VALUES (
        p_section_id,
        p_section_name,
        p_section_icon,
        p_status_active,
        current_datetime,
        current_datetime,
        p_created_by,
        p_created_by
    );

END//
DELIMITER ;

-- Dumping structure for procedure myelnusav2.spMasterSectionDelete
DELIMITER //
CREATE PROCEDURE `spMasterSectionDelete`(
    IN p_section_id CHAR(10)
)
BEGIN
    DELETE FROM master_section WHERE section_id = p_section_id;

END//
DELIMITER ;

-- Dumping structure for procedure myelnusav2.spMasterSectionDetail
DELIMITER //
CREATE PROCEDURE `spMasterSectionDetail`(
    IN p_section_id CHAR(10)
)
BEGIN
    SELECT * FROM master_section WHERE section_id = p_section_id;

END//
DELIMITER ;

-- Dumping structure for procedure myelnusav2.spMasterSectionList
DELIMITER //
CREATE PROCEDURE `spMasterSectionList`()
BEGIN
    SELECT * FROM master_section;

END//
DELIMITER ;

-- Dumping structure for procedure myelnusav2.spMasterSectionUpdate
DELIMITER //
CREATE PROCEDURE `spMasterSectionUpdate`(
    IN p_section_id CHAR(10),
    IN p_section_name VARCHAR(50),
    IN p_section_icon VARCHAR(50),
    IN p_status_active CHAR(1),
    IN p_updated_by CHAR(10)
)
BEGIN
    DECLARE current_datetime DATETIME;
    
    SET current_datetime = NOW();

    UPDATE master_section
    SET
        section_name = p_section_name,
        section_icon = p_section_icon,
        status_active = p_status_active,
        updated_date = current_datetime,
        updated_by = p_updated_by
    WHERE section_id = p_section_id;

END//
DELIMITER ;

-- Dumping structure for procedure myelnusav2.spMasterStudentAdd
DELIMITER //
CREATE PROCEDURE `spMasterStudentAdd`(
    IN p_student_id CHAR(10),
    IN p_name VARCHAR(50),
    IN p_email VARCHAR(50),
    IN p_status_active CHAR(1),
    IN p_class_id CHAR(10),
    IN p_created_by CHAR(10)
)
BEGIN
    DECLARE current_datetime DATETIME;
    
    SET current_datetime = NOW();

    INSERT INTO master_student (
        student_id,
        name,
        email,
        status_active,
        class_id,
        created_date,
        updated_date,
        created_by,
        updated_by
    ) VALUES (
        p_student_id,
        p_name,
        p_email,
        p_status_active,
        p_class_id,
        current_datetime,
        current_datetime,
        p_created_by,
        p_created_by
    );

END//
DELIMITER ;

-- Dumping structure for procedure myelnusav2.spMasterStudentDelete
DELIMITER //
CREATE PROCEDURE `spMasterStudentDelete`(
    IN p_student_id CHAR(10)
)
BEGIN
    DELETE FROM master_student WHERE student_id = p_student_id;

END//
DELIMITER ;

-- Dumping structure for procedure myelnusav2.spMasterStudentDetail
DELIMITER //
CREATE PROCEDURE `spMasterStudentDetail`(
    IN p_student_id CHAR(10)
)
BEGIN
    SELECT * FROM master_student WHERE student_id = p_student_id;

END//
DELIMITER ;

-- Dumping structure for procedure myelnusav2.spMasterStudentList
DELIMITER //
CREATE PROCEDURE `spMasterStudentList`()
BEGIN
    SELECT * FROM master_student;

END//
DELIMITER ;

-- Dumping structure for procedure myelnusav2.spMasterStudentUpdate
DELIMITER //
CREATE PROCEDURE `spMasterStudentUpdate`(
    IN p_student_id CHAR(10),
    IN p_name VARCHAR(50),
    IN p_email VARCHAR(50),
    IN p_status_active CHAR(1),
    IN p_class_id CHAR(10),
    IN p_updated_by CHAR(10)
)
BEGIN
    DECLARE current_datetime DATETIME;
    
    SET current_datetime = NOW();

    UPDATE master_student
    SET
        name = p_name,
        email = p_email,
        status_active = p_status_active,
        class_id = p_class_id,
        updated_date = current_datetime,
        updated_by = p_updated_by
    WHERE student_id = p_student_id;

END//
DELIMITER ;

-- Dumping structure for procedure myelnusav2.spMasterTeacherAdd
DELIMITER //
CREATE PROCEDURE `spMasterTeacherAdd`(
    IN p_teacher_id CHAR(10),
    IN p_name VARCHAR(50),
    IN p_email VARCHAR(50),
    IN p_status_active CHAR(1),
    IN p_created_by CHAR(10)
)
BEGIN
    DECLARE current_datetime DATETIME;
    
    SET current_datetime = NOW();

    INSERT INTO master_teacher (
        teacher_id,
        name,
        email,
        status_active,
        created_date,
        updated_date,
        created_by,
        updated_by
    ) VALUES (
        p_teacher_id,
        p_name,
        p_email,
        p_status_active,
        current_datetime,
        current_datetime,
        p_created_by,
        p_created_by
    );

END//
DELIMITER ;

-- Dumping structure for procedure myelnusav2.spMasterTeacherDelete
DELIMITER //
CREATE PROCEDURE `spMasterTeacherDelete`(
    IN p_teacher_id CHAR(10)
)
BEGIN
    DELETE FROM master_teacher WHERE teacher_id = p_teacher_id;

END//
DELIMITER ;

-- Dumping structure for procedure myelnusav2.spMasterTeacherDetail
DELIMITER //
CREATE PROCEDURE `spMasterTeacherDetail`(
    IN p_teacher_id CHAR(10)
)
BEGIN
    SELECT * FROM master_teacher WHERE teacher_id = p_teacher_id;

END//
DELIMITER ;

-- Dumping structure for procedure myelnusav2.spMasterTeacherList
DELIMITER //
CREATE PROCEDURE `spMasterTeacherList`()
BEGIN
    SELECT * FROM master_teacher;

END//
DELIMITER ;

-- Dumping structure for procedure myelnusav2.spMasterTeacherUpdate
DELIMITER //
CREATE PROCEDURE `spMasterTeacherUpdate`(
    IN p_teacher_id CHAR(10),
    IN p_name VARCHAR(50),
    IN p_email VARCHAR(50),
    IN p_status_active CHAR(1),
    IN p_updated_by CHAR(10)
)
BEGIN
    DECLARE current_datetime DATETIME;
    
    SET current_datetime = NOW();

    UPDATE master_teacher
    SET
        name = p_name,
        email = p_email,
        status_active = p_status_active,
        updated_date = current_datetime,
        updated_by = p_updated_by
    WHERE teacher_id = p_teacher_id;

END//
DELIMITER ;

-- Dumping structure for procedure myelnusav2.spMasterUserAdd
DELIMITER //
CREATE PROCEDURE `spMasterUserAdd`(
    IN p_user_guid CHAR(50),
    IN p_level_id CHAR(10),
    IN p_user_name VARCHAR(50),
    IN p_password VARCHAR(255),
    IN p_status_active CHAR(1),
    IN p_status_suspend CHAR(1),
    IN p_created_by CHAR(10)
)
BEGIN
    DECLARE current_datetime DATETIME;
    
    SET current_datetime = NOW();

    INSERT INTO master_user (
        user_guid,
        level_id,
        user_name,
        password,
        status_active,
        status_suspend,
        last_login,
        created_date,
        updated_date,
        created_by,
        updated_by
    ) VALUES (
        p_user_guid,
        p_level_id,
        p_user_name,
        p_password,
        p_status_active,
        p_status_suspend,
        NULL,
        current_datetime,
        current_datetime,
        p_created_by,
        p_created_by
    );

END//
DELIMITER ;

-- Dumping structure for procedure myelnusav2.spMasterUserDelete
DELIMITER //
CREATE PROCEDURE `spMasterUserDelete`(
    IN p_user_id INT
)
BEGIN
    DELETE FROM master_user WHERE user_id = p_user_id;

END//
DELIMITER ;

-- Dumping structure for procedure myelnusav2.spMasterUserDetail
DELIMITER //
CREATE PROCEDURE `spMasterUserDetail`(
    IN p_user_id INT
)
BEGIN
    SELECT * FROM master_user WHERE user_id = p_user_id;

END//
DELIMITER ;

-- Dumping structure for procedure myelnusav2.spMasterUserList
DELIMITER //
CREATE PROCEDURE `spMasterUserList`()
BEGIN
    SELECT * FROM master_user;

END//
DELIMITER ;

-- Dumping structure for procedure myelnusav2.spMasterUserUpdate
DELIMITER //
CREATE PROCEDURE `spMasterUserUpdate`(
    IN p_user_id INT,
    IN p_user_guid CHAR(50),
    IN p_level_id CHAR(10),
    IN p_user_name VARCHAR(50),
    IN p_password VARCHAR(255),
    IN p_status_active CHAR(1),
    IN p_status_suspend CHAR(1),
    IN p_updated_by CHAR(10)
)
BEGIN
    DECLARE current_datetime DATETIME;
    
    SET current_datetime = NOW();

    UPDATE master_user
    SET
        user_guid = p_user_guid,
        level_id = p_level_id,
        user_name = p_user_name,
        password = p_password,
        status_active = p_status_active,
        status_suspend = p_status_suspend,
        updated_date = current_datetime,
        updated_by = p_updated_by
    WHERE user_id = p_user_id;

END//
DELIMITER ;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
