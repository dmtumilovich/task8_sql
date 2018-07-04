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
('password', '16F78A7D6317F102BBD95FC9A4F3FF2E3249287690B8BDAD6B7810F82B34ACE3', 'pass@gmail.com', 'Harry', 'Potter', 'MP111121', '2');


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
('Toyota', 'Land Cruiser 150 Prado', 'premium', '2016', '5', 'silver', '4.0', '1', '140');

insert into rent_a_car.order_list (id_user, id_car, date_start, date_end, total_price)
values
('7', '10', '2018-06-19', '2018-06-24', '700'),
('1', '1', '2018-06-21', '2018-06-23', '140'),
('6', '1', '2018-06-24', '2018-06-25', '70'),
('3', '5', '2018-06-25', '2018-06-27', '80'),
('2', '10', '2018-06-26', '2018-06-29', '420'),
('4', '9', '2018-06-27', '2018-06-28', '120'),
('5', '4', '2018-06-28', '2018-06-30', '60'),
('1', '2', '2018-06-28', '2018-06-29', '150');


-- insert into rent_a_car.car_review (id_car, id_user, review, time)
-- values
-- ('10', '7', 'Слишком дорого', '2018-06-24 23:31:43'),
-- ('1', '6', 'Хорошая машинка', '2018-06-26 15:38:21'),
-- ('1', '1', 'Соглашусь с предыдущим оратором. Тоже как-то её брал. Хорошая машина.', '2018-06-26 17:24:35'),
-- ('3', '8', 'Хочу взять. Может кто подскажет, в каком она состоянии?', '2018-06-27 11:12:34'),
-- ('4', '5', 'Взял прокатиться на два дня. Эконом класса мне хватит', '2018-06-28 13:51:17'),
-- ('3', '9', 'Тоже думаю взять эту машинку. Но пока в отзывах как-то глухо...', '2018-06-29 07:53:21'),
-- ('9', '4', 'КлассЕка', '2018-06-29 15:24:36');

insert into rent_a_car.car_review (id_car, id_user, review, time)
values
('10', '7', 'Too expensive', '2018-06-24 23:31:43'),
('1', '6', 'Good car', '2018-06-26 15:38:21'),
('1', '1', 'I agree with the previous speaker. She also took it somehow. Good car.', '2018-06-26 17:24:35'),
('3', '8', 'I want to take it. Can someone tell me in what state it is?', '2018-06-27 11:12:34'),
('4', '5', 'Took a ride for two days. Economy class is enough for me', '2018-06-28 13:51:17'),
('3', '9', 'I also think of taking this typewriter. But while in the reviews somehow deaf ...', '2018-06-29 07:53:21'),
('9', '4', 'Classic..', '2018-06-29 15:24:36');





