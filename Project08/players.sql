-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost
-- 生成日時: 2024 年 12 月 18 日 14:58
-- サーバのバージョン： 10.4.28-MariaDB
-- PHP のバージョン: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `game_db`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `players`
--

CREATE TABLE `players` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `job` varchar(50) NOT NULL,
  `hp` int(11) NOT NULL,
  `mp` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- テーブルのデータのダンプ `players`
--

INSERT INTO `players` (`id`, `name`, `job`, `hp`, `mp`, `created_at`) VALUES
(1, 'サムライ銀地', '戦士', 50, 50, '2024-12-17 15:19:29'),
(2, 'マタタビ', '魔法使い', 10, 3, '2024-12-17 15:19:29'),
(3, 'エラー出るよ', 'G\'sクリエーター', 1000, 50, '2024-12-17 15:19:29'),
(4, '倉島', 'G\'sイノベーター', 10000, 5000, '2024-12-17 15:19:29'),
(5, 'さるときじさん', '魔法使い', 100, 50, '2024-12-17 15:19:29'),
(6, 'いぬ', 'G\'sイノベーター', 100, 50, '2024-12-17 15:19:29'),
(7, 'とり', '戦士', 100, 50, '2024-12-17 15:19:29'),
(8, '鳩さん', 'G\'sBUGバスター', 110, 503, '2024-12-17 15:20:22'),
(9, 'MacBook Pro', '戦士', 100, 50, '2024-12-18 10:50:07'),
(10, 'MacBook Pro', '戦士', 100, 50, '2024-12-18 10:51:20'),
(11, 'MacBook Pro', '戦士', 100, 50, '2024-12-18 10:51:37'),
(12, 'MacBook Pro', '戦士', 100, 50, '2024-12-18 11:40:14'),
(13, 'MacBook air', '魔法使い', 100, 50, '2024-12-18 11:40:41'),
(14, 'mac mini', '魔法使い', 100, 50, '2024-12-18 13:09:26'),
(15, 'mac mini', '魔法使い', 100, 50, '2024-12-18 13:10:45'),
(16, 'みみずく', '戦士', 100, 50, '2024-12-18 13:17:06'),
(17, 'みみずく', '戦士', 100, 50, '2024-12-18 13:18:34'),
(18, 'すずき', '戦士', 100, 50, '2024-12-18 13:24:36'),
(19, 'すずき', '戦士', 100, 50, '2024-12-18 13:25:50'),
(20, 'すずき', '戦士', 100, 50, '2024-12-18 13:44:16'),
(21, 'すずき', '戦士', 100, 50, '2024-12-18 13:44:26'),
(22, 'すずき', '戦士', 100, 50, '2024-12-18 13:46:20');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `players`
--
ALTER TABLE `players`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
