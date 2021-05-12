use railway;
insert into user(user_name, password, user_type_number) values
('llm','llmnb','0'),
('zyp','zypnb','0'),
('wgt','wgtnb','0'),
('jjq','jjqnb','1'),
('szw','szwnb','1'),
('yzh','yzhnb','1');
-- 1-6 users logged

insert into staff(user_name, password, department_type_number) values
('llb','llmnb','0'),
('zlb','zypnb','0'),
('wlb','wgtnb','0'),
('jlb','jjqnb','1'),
('slb','szwnb','1'),
('ylb','yzhnb','1');
-- 1-6 users logged

insert into site(site_name, site_capacity_level, opening_time, closing_time) values
('Beijing', 1, '00:00:00', '23:59:59'),
('Shanghai', 1, '00:00:00', '23:59:59'),
('Guangzhou', 2, '00:00:00', '23:59:59'),
('Nanjing', 2, '00:00:00', '23:59:59'),
('Chengdu', 3, '00:00:00', '23:59:59'),
('Wuhan', 4, '00:00:00', '23:59:59');
-- 1-6 sites logged

insert into line(line_name ,arrival_station, departure_station ,line_distance) values
('Beijing-Chengdu','Beijing', 'Chengdu', 4469),
('Beijing-Guangzhou','Beijing', 'Guangzhou', 648),
('Beijing-Nanjing','Beijing', 'Nanjing', 904),
('Beijing-Shanghai','Beijing', 'Shanghai', 1426),
('Beijing-Wuhan','Beijing', 'Wuhan', 2387),
('Chengdu-Beijing','Chengdu', 'Beijing', 4168),
('Chengdu-Guangzhou','Chengdu', 'Guangzhou', 3901),
('Chengdu-Nanjing','Chengdu', 'Nanjing', 4030),
('Chengdu-Shanghai','Chengdu', 'Shanghai', 4859),
('Chengdu-Wuhan','Chengdu', 'Wuhan', 2545),
('Guangzhou-Beijing','Guangzhou', 'Beijing', 1577),
('Guangzhou-Chengdu','Guangzhou', 'Chengdu', 1495),
('Guangzhou-Nanjing','Guangzhou', 'Nanjing', 4640),
('Guangzhou-Shanghai','Guangzhou', 'Shanghai', 1036),
('Guangzhou-Wuhan','Guangzhou', 'Wuhan', 2408),
('Nanjing-Beijing','Nanjing', 'Beijing', 2990),
('Nanjing-Chengdu','Nanjing', 'Chengdu', 1878),
('Nanjing-Guangzhou','Nanjing', 'Guangzhou', 2836),
('Nanjing-Shanghai','Nanjing', 'Shanghai', 2143),
('Nanjing-Wuhan','Nanjing', 'Wuhan', 4876),
('Shanghai-Beijing','Shanghai', 'Beijing', 1043),
('Shanghai-Chengdu','Shanghai', 'Chengdu', 2880),
('Shanghai-Guangzhou','Shanghai', 'Guangzhou', 3601),
('Shanghai-Nanjing','Shanghai', 'Nanjing', 1593),
('Shanghai-Wuhan','Shanghai', 'Wuhan', 3195),
('Wuhan-Beijing','Wuhan', 'Beijing', 1495),
('Wuhan-Chengdu','Wuhan', 'Chengdu', 4851),
('Wuhan-Guangzhou','Wuhan', 'Guangzhou', 3738),
('Wuhan-Nanjing','Wuhan', 'Nanjing', 1903),
('Wuhan-Shanghai','Wuhan', 'Shanghai', 3590);
-- 1-30 lines logged

insert into vehicles(first_class_seats, second_class_seats) values
(100, 200),
(150, 250),
(200, 300),
(1000, 2000);
-- 4 types of vehicles logged

insert into train(type_number) values
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(2),
(2),
(2),
(2),
(2),
(2),
(2),
(2),
(2),
(2),
(3),
(3),
(3),
(3),
(3),
(3),
(3),
(3),
(3),
(3),
(4),
(4),
(4),
(4),
(4),
(4),
(4),
(4),
(4),
(4);
-- 1-40 trains logged

insert into train_number(train_number_ID, train_ID , line_ID , departure_time, arrival_time) values
('G6601', 1, 18, '07:46:16', '14:51:48'),
('G9809', 2, 25, '05:09:06', '08:38:14'),
('D3354', 3, 7, '04:11:00', '21:49:14'),
('G5281', 4, 15, '02:03:41', '05:57:17'),
('D2744', 5, 26, '03:08:50', '13:51:56'),
('D6628', 6, 15, '14:25:32', '15:34:49'),
('D3988', 7, 20, '03:17:34', '15:10:26'),
('D6070', 8, 7, '18:02:42', '22:39:47'),
('G4015', 9, 9, '18:28:48', '21:23:23'),
('D5058', 10, 9, '13:18:59', '22:29:43'),
('G2547', 11, 4, '13:59:33', '15:17:09'),
('D2700', 12, 6, '12:09:56', '14:05:57'),
('G6861', 13, 12, '05:39:49', '05:53:48'),
('G8727', 14, 1, '00:10:03', '03:27:10'),
('D1452', 15, 5, '15:43:57', '18:08:31'),
('G2631', 16, 5, '01:10:50', '21:30:06'),
('G3987', 17, 29, '02:26:12', '10:45:01'),
('D8792', 18, 12, '03:49:44', '19:08:33'),
('D3666', 19, 19, '03:42:40', '06:18:02'),
('D4530', 20, 14, '03:50:29', '20:56:56'),
('G3257', 21, 18, '02:01:35', '15:11:08'),
('D3276', 22, 14, '17:43:27', '22:10:41'),
('D5004', 23, 16, '03:04:18', '18:07:02'),
('G1837', 24, 30, '00:04:46', '11:02:50'),
('D5256', 25, 17, '01:22:28', '14:25:08'),
('D6910', 26, 28, '01:03:28', '08:49:59'),
('D3304', 27, 26, '07:49:13', '18:37:23'),
('G6621', 28, 4, '14:01:46', '23:56:06'),
('G8721', 29, 2, '21:07:39', '21:22:02'),
('D2588', 30, 12, '05:24:16', '08:20:32'),
('D1626', 31, 18, '18:22:48', '23:53:44'),
('G6121', 32, 10, '11:11:27', '17:17:03'),
('D5028', 33, 23, '07:13:53', '14:38:20'),
('G3269', 34, 1, '10:35:45', '18:54:55'),
('G4865', 35, 15, '18:26:37', '20:22:10'),
('D1304', 36, 25, '00:40:33', '08:40:09'),
('G1183', 37, 18, '07:08:09', '23:15:08'),
('D6036', 38, 7, '01:11:12', '07:25:56'),
('D2874', 39, 23, '07:18:05', '14:39:08'),
('G697', 40, 26, '08:53:02', '17:05:19');
-- 40 logged

insert into fare_information(train_number_id, seat_type, money) values
('G6601', 1, 9843),
('G9809', 1, 2059),
('D3354', 1, 4572),
('G5281', 1, 3891),
('D2744', 1, 2167),
('D6628', 1, 3234),
('D3988', 1, 6934),
('D6070', 1, 4546),
('G4015', 1, 6067),
('D5058', 1, 1351),
('G2547', 1, 6618),
('D2700', 1, 9423),
('G6861', 1, 7713),
('G8727', 1, 3936),
('D1452', 1, 5465),
('G2631', 1, 2171),
('G3987', 1, 7543),
('D8792', 1, 7394),
('D3666', 1, 2941),
('D4530', 1, 3070),
('G3257', 1, 6075),
('D3276', 1, 4984),
('D5004', 1, 3510),
('G1837', 1, 3022),
('D5256', 1, 5026),
('D6910', 1, 7610),
('D3304', 1, 3722),
('G6621', 1, 4596),
('G8721', 1, 2367),
('D2588', 1, 8890),
('D1626', 1, 9385),
('G6121', 1, 2673),
('D5028', 1, 886),
('G3269', 1, 4466),
('G4865', 1, 8640),
('D1304', 1, 3544),
('G1183', 1, 3914),
('D6036', 1, 7533),
('D2874', 1, 4553),
('G697' , 1, 8066),
('G6601', 2, 5330),
('G9809', 2, 3527),
('D3354', 2, 5707),
('G5281', 2, 532),
('D2744', 2, 1703),
('D6628', 2, 4869),
('D3988', 2, 4857),
('D6070', 2, 9578),
('G4015', 2, 4934),
('D5058', 2, 5416),
('G2547', 2, 1029),
('D2700', 2, 6346),
('G6861', 2, 4573),
('G8727', 2, 9003),
('D1452', 2, 2974),
('G2631', 2, 2794),
('G3987', 2, 3263),
('D8792', 2, 4405),
('D3666', 2, 6961),
('D4530', 2, 4745),
('G3257', 2, 4327),
('D3276', 2, 5886),
('D5004', 2, 5863),
('G1837', 2, 9838),
('D5256', 2, 8528),
('D6910', 2, 8864),
('D3304', 2, 7585),
('G6621', 2, 4519),
('G8721', 2, 1287),
('D2588', 2, 2377),
('D1626', 2, 2542),
('G6121', 2, 8328),
('D5028', 2, 3648),
('G3269', 2, 4740),
('G4865', 2, 3738),
('D1304', 2, 9039),
('G1183', 2, 457),
('D6036', 2, 2833),
('D2874', 2, 5134),
('G697' , 2, 629);
-- 60 types of price logged

insert into tickets_sold(fare_ID, user_ID , seat) values
(35, 3, 2110),
(40, 2, 6485),
(5, 1, 3174),
(49, 4, 2972),
(51, 1, 1669),
(46, 1, 8532),
(21, 4, 6726),
(30, 2, 6546),
(2, 5, 181),
(18, 2, 4695),
(19, 4, 5594),
(41, 4, 1744),
(7, 5, 3242),
(24, 4, 3905),
(30, 5, 5837),
(6, 6, 8008),
(7, 3, 9122),
(17, 4, 1008),
(35, 4, 8148),
(28, 1, 7791),
(60, 5, 7784),
(5, 3, 418),
(52, 1, 9429),
(26, 6, 3255),
(15, 6, 3063),
(60, 6, 1012),
(27, 5, 5249),
(28, 3, 3572),
(56, 2, 6565),
(12, 2, 7064),
(49, 1, 2795),
(41, 3, 8174),
(11, 5, 7354),
(46, 2, 8929),
(45, 3, 7716),
(16, 5, 9097),
(51, 4, 3149),
(9, 2, 6990),
(17, 1, 8452),
(35, 6, 3309),
(34, 6, 1390),
(20, 3, 6126),
(40, 6, 6034),
(53, 4, 112),
(48, 1, 8658),
(23, 5, 2199),
(33, 6, 9685),
(12, 1, 3247),
(18, 6, 5948),
(28, 2, 7151),
(20, 4, 2153),
(33, 6, 9695),
(18, 6, 3148),
(16, 6, 5089),
(53, 3, 9025),
(13, 3, 9806),
(21, 3, 2145),
(17, 6, 5434),
(45, 6, 6265),
(2, 5, 2203),
(1, 2, 7367),
(12, 3, 9782),
(22, 5, 9981),
(1, 3, 6489),
(12, 5, 1347),
(58, 1, 3992),
(42, 1, 5930),
(30, 5, 9550),
(23, 5, 4365),
(33, 6, 8736),
(28, 2, 4556),
(25, 5, 8225),
(18, 4, 7261),
(40, 5, 63),
(5, 5, 3513),
(11, 2, 4469),
(56, 6, 6058),
(37, 1, 9215),
(31, 2, 7493),
(18, 2, 4766),
(8, 2, 763),
(27, 2, 5120),
(1, 6, 9694),
(18, 1, 5041),
(48, 6, 4724),
(47, 2, 6498),
(6, 2, 7348),
(45, 5, 8661),
(49, 3, 5972),
(3, 2, 3902),
(6, 5, 9865),
(18, 2, 5574),
(26, 2, 8801),
(3, 2, 9543),
(38, 4, 3124),
(34, 3, 6813),
(44, 5, 2844),
(47, 3, 9317),
(55, 4, 1213),
(23, 4, 3033);
-- 100 purchase history 