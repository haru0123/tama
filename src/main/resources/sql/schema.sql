-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2024-11-05 14:34:46
-- サーバのバージョン： 10.4.32-MariaDB
-- PHP のバージョン: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `tama`
--
DROP DATABASE `tama`;
CREATE DATABASE IF NOT EXISTS `tama` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `tama`;

--
-- ユーザーtamaを作成し、全権限付与。
-- パスワードは、ia33_tamaoki
--
GRANT ALL PRIVILEGES ON *.* TO `tama`@`localhost` IDENTIFIED BY PASSWORD '*5514C4B987E7F0002D44F90D8BFD4F8ACC666A2B' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON `tama`.* TO `tama`@`localhost`;

-- --------------------------------------------------------

--
-- テーブルの構造 `users`
--
-- 作成日時： 2024-11-05 13:05:41
--

CREATE TABLE `users` (
  `USER_ID` int(11) NOT NULL COMMENT 'ユーザーID',
  `EMAIL_ADDRESS` varchar(30) NOT NULL COMMENT 'メールアドレス',
  `PASSWORD` varchar(30) NOT NULL COMMENT 'パスワード',
  `INSERT_TIME` timestamp NOT NULL DEFAULT current_timestamp() COMMENT '登録日時',
  `UPDATE_TIME` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '更新日時',
  `DELETE_TIME` timestamp NULL DEFAULT NULL COMMENT '削除日時'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='ユーザー';

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`USER_ID`),
  ADD UNIQUE KEY `unique_email_address` (`EMAIL_ADDRESS`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `USER_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ユーザーID';
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
