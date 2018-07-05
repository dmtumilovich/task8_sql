insert into rent_a_car.user_role (role) values ('admin'), ('user');

insert into rent_a_car.user_list (username, password, email, name, surname, passport, id_role)
values
('admin', '8C6976E5B5410415BDE908BD4DEE15DFB167A9C873FC4BB8A81F6F2AB448A918', 'admin@gmail.com', 'John', 'Smith', 'MP111111', '1'),
('petrov', 'CF13FE2CFF28343E661D1ADA6A36A7BC04A734FFA5647C8EA767C632032E930A', 'petrov@gmail.com', 'Ivan', 'Petrov', 'MP111112', '2'),
('smirnov', 'D7E29EDD6AF6BD8829B7AD05B508907D766C70442C088CC0FE06A0A2CD524B10', 'smirnov@gmail.com', 'Petr', 'Smirnov', 'MP111113', '2'),
('sidorov', '6E6CCD85D4EC1491A30438EB7194B4FC819E05C2A71EC47B282171D36650CE2E', 'sidorov@gmail.com', 'Andrey', 'Sidorov', 'MP111114', '2'),
('ivanov', '5C00D8A50CE2679C308F5AF180B01430282CD6C9DF6AFD0E7CCC90A2B3955488', 'ivanov@gmail.com', 'Artyom', 'Ivanov', 'MP111115', '2'),
('cat96', '34059D825355B2E3B3AA680ED15CB50A362BA6CD6396C2561BCFEEC8BBF0EF5C', 'cat@gmail.com', 'I', 'Am', 'MP111116', '2'),
('user_999', 'DB1EDBCFB80FD965FE6D8A3AAB2A59739255671A0B45DC263D99B9ACE81E9E79', 'user@gmail.com', 'Arsene', 'Wenger', 'MP111117', '2'),
('kuplu_garage', 'C0E0D1886C3B53F4D1BECBEB43D60F63F7285522A30B7B8329FEED008A0C00B1', 'garage@gmail.com', 'Pablo', 'Antonio', 'MP111118', '2'),
('username', '5E884898DA28047151D0E56F8DC6292773603D0D6AABBDD62A11EF721D1542D8', 'uname@gmail.com', 'Dmitry', 'Baga', 'MP111119', '2'),
('password', '16F78A7D6317F102BBD95FC9A4F3FF2E3249287690B8BDAD6B7810F82B34ACE3', 'pass@gmail.com', 'Harry', 'Potter', 'MP111121', '2'),
('glen', '90F0528C6435CC197997A13BF5B8E5F8BA0B8DB20F9A55CFBC9172D959FDF616', 'glen@gmail.com', 'Dmitry', 'One', 'MP111131', '2'),
('futabi', '7E996E701A02591661070BEF65D189DBB0977369A16D0FC5832F3423D0C59EC9', 'futabi@gmail.com', 'Hleb', 'Bereshev', 'MP111141', '2'),
('enas', '60409199A6CCA7570ADCF7E1CDB12AF1A48FD023B1F1873A374784B70547972E', 'enas@gmail.com', 'Andrey', 'Krav', 'MP111151', '2'),
('wenely', '1BE71C32A44FC1E7F572D86D9147335A1C00FEB4453FD559480F63E8916694D3', 'wenely@gmail.com', 'Anna', 'Like', 'MP111161', '2'),
('fuso', 'BC10D65BB968AC884BF1982BF19FF7E1F5EC394FFC431335C3B90C161639934D', 'fuso@gmail.com', 'Vasiliy', 'Pupkin', 'MP111171', '2');


insert into rent_a_car.car_list (brand, model, class, year_of_issue, number_of_seats, color, engine_volume, is_available, price)
values
('BMW', '520i', 'premium', '2007', '5', 'black', '2.0', '1', '70'),
('BMW', 'X5', 'premium', '2005', '5', 'silver', '3.5', '0', '75'),
('BMW', 'X5M', 'premium', '2010', '5', 'black', '4.0', '1', '110'),
('Chevrolet', 'Cobalt', 'economy', '2015', '5', 'red', '1.5', '0', '30'),
('Hyundai', 'Solaris', 'economy', '2016', '5', 'orange', '1.4', '0', '40'),
('Volkswagen', 'Tiguan', 'standart', '2009', '5', 'red', '2.0', '1', '60'),
('Peugeot', '308', 'economy', '2010', '5', 'gray', '1.6', '1', '35'),
('Citroen', 'C4', 'economy', '2008', '5', 'red', '1.6', '0', '25'),
('Mercedes', 'W221 Long', 'premium', '2007', '5', 'black', '3.5', '0', '120'),
('Toyota', 'Land Cruiser 150 Prado', 'premium', '2016', '5', 'silver', '4.0', '1', '140'),
('Honda', 'Accord', 'standart', '2012', '5', 'white', '2.5', '1', '60'),
('Nissan', 'Teana', 'standart', '2012', '5', 'silver', '2.5', '1', '50'),
('Volkswagen', 'Polo', 'standart', '2011', '5', 'gray', '1.4', '0', '45'),
('BMW', '520i', 'premium', '2009', '5', 'blue', '2.0', '0', '85'),
('Peugeot', '207', 'economy', '2011', '5', 'blue', '1.4', '1', '30'),
('Skoda', 'Fabia', 'economy', '2010', '5', 'white', '1.4', '1', '28'),
('Renault', 'Logan', 'economy', '2016', '5', 'sliver', '1.6', '0', '35'),
('Toyota', 'Yaris', 'economy', '2008', '5', 'gray', '1.2', '0', '30'),
('Mercedes', 'CLS500 AMG', 'premium', '2013', '5', 'silver', '4.2', '1', '145');

-- На момент 28-го числа
insert into rent_a_car.order_list (id_user, id_car, date_start, date_end, total_price)
values
('14', '15', '2018-06-17', '2018-06-23', '120'),
('7', '10', '2018-06-19', '2018-06-24', '700'),
('8', '6', '2018-06-20', '2018-06-22', '120'),
('1', '1', '2018-06-21', '2018-06-23', '140'),
('13', '2', '2018-06-21', '2018-06-22', '150'),
('10', '17', '2018-06-22', '2018-07-01', '315'),
('14', '16', '2018-06-23', '2018-06-24', '28'),
('9', '7', '2018-06-23', '2018-06-25', '70'),
('8', '11', '2018-06-24', '2018-06-27', '180'),
('6', '1', '2018-06-24', '2018-06-25', '70'),
('12', '3', '2018-06-24', '2018-06-26', '220'),
('3', '5', '2018-06-25', '2018-06-27', '80'),
('15', '8', '2018-06-25', '2018-06-30', '125'),
('2', '10', '2018-06-26', '2018-06-29', '420'),
('11', '7', '2018-06-26', '2018-06-27', '35'),
('13', '14', '2018-06-26', '2018-06-29', '255'),
('4', '9', '2018-06-27', '2018-06-28', '120'),
('6', '18', '2018-06-27', '2018-06-29', '60'),
('5', '4', '2018-06-28', '2018-06-30', '60'),
('1', '2', '2018-06-28', '2018-06-29', '150');

insert into rent_a_car.car_review (id_car, id_user, review, time)
values
('10', '7', 'Too expensive', '2018-06-24 23:31:43'),
('1', '6', 'Good car', '2018-06-26 15:38:21'),
('1', '1', 'I agree with the previous speaker. She also took it somehow. Good car.', '2018-06-26 17:24:35'),
('3', '8', 'I want to take it. Can someone tell me in what state it is?', '2018-06-27 11:12:34'),
('4', '5', 'Took a ride for two days. Economy class is enough for me', '2018-06-28 13:51:17'),
('3', '9', 'I also think of taking this typewriter. But while in the reviews somehow deaf ...', '2018-06-29 07:53:21'),
('9', '4', 'Classic..', '2018-06-29 15:24:36');





