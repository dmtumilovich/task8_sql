-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema rent_a_car
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema rent_a_car
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `rent_a_car` ;
USE `rent_a_car` ;

-- -----------------------------------------------------
-- Table `rent_a_car`.`user_role`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `rent_a_car`.`user_role` (
  `id_role` TINYINT(2) NOT NULL AUTO_INCREMENT,
  `role` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_role`))
ENGINE = InnoDB
COMMENT = '2 роли пользователя: 1 - администратор, 2 - обычный пользователь';


-- -----------------------------------------------------
-- Table `rent_a_car`.`user_list`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `rent_a_car`.`user_list` (
  `id_user` INT NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(12) NOT NULL COMMENT 'Имя пользователя',
  `password` VARCHAR(100) NOT NULL COMMENT 'Пароль',
  `email` VARCHAR(45) NOT NULL COMMENT 'Адрес эл. почты',
  `name` VARCHAR(45) NULL COMMENT 'Имя',
  `surname` VARCHAR(45) NULL COMMENT 'Фамилия',
  `passport` VARCHAR(45) NULL COMMENT 'Номер пасспорта',
  `id_role` TINYINT(2) NULL,
  PRIMARY KEY (`id_user`),
  UNIQUE INDEX `username_UNIQUE` (`username` ASC),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC),
  UNIQUE INDEX `passport_UNIQUE` (`passport` ASC),
  INDEX `id_role_idx` (`id_role` ASC),
  CONSTRAINT `id_role`
    FOREIGN KEY (`id_role`)
    REFERENCES `rent_a_car`.`user_role` (`id_role`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
COMMENT = 'Содержит информацию о пользователе';


-- -----------------------------------------------------
-- Table `rent_a_car`.`car_list`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `rent_a_car`.`car_list` (
  `id_car` INT NOT NULL AUTO_INCREMENT,
  `brand` VARCHAR(45) NOT NULL COMMENT 'Марка автомобиля',
  `model` VARCHAR(45) NOT NULL COMMENT 'Модель',
  `class` VARCHAR(45) NOT NULL COMMENT 'Категория(Эконом, Стандарт, Премиум)',
  `year_of_issue` INT NULL COMMENT 'Год выпуска',
  `number_of_seats` INT NULL COMMENT 'Количество мест',
  `color` VARCHAR(45) NULL COMMENT 'Цвет автомобиля',
  `engine_volume` INT NULL COMMENT 'Объем двигателя',
  `is_available` TINYINT(1) NOT NULL COMMENT 'Доступен ли автомобиль для проката',
  `price` REAL NOT NULL COMMENT 'Стоимость проката',
  PRIMARY KEY (`id_car`))
ENGINE = InnoDB
COMMENT = 'Таблица содержит информацию об автомобился, находящихся в парке автосервиса';


-- -----------------------------------------------------
-- Table `rent_a_car`.`order_list`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `rent_a_car`.`order_list` (
  `id_order` INT NOT NULL AUTO_INCREMENT,
  `id_user` INT NOT NULL,
  `id_car` INT NOT NULL,
  `date_start` DATE NOT NULL COMMENT 'Дата начала аренды',
  `date_end` DATE NOT NULL COMMENT 'Дата окончания аренды',
  `total_price` REAL NULL COMMENT 'Сумма оплаты с учетом скидки пользователя и акций(возможно)',
  PRIMARY KEY (`id_order`),
  INDEX `id_user_idx` (`id_user` ASC),
  INDEX `id_car_idx` (`id_car` ASC),
  CONSTRAINT `id_user`
    FOREIGN KEY (`id_user`)
    REFERENCES `rent_a_car`.`user_list` (`id_user`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `id_car`
    FOREIGN KEY (`id_car`)
    REFERENCES `rent_a_car`.`car_list` (`id_car`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
COMMENT = 'Список заказов, содержащий также дату начала и окончания аренды';


-- -----------------------------------------------------
-- Table `rent_a_car`.`accident_list`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `rent_a_car`.`accident_list` (
  `id_accident` INT NOT NULL AUTO_INCREMENT,
  `id_order` INT NOT NULL,
  `date` DATE NOT NULL COMMENT 'Дата ДТП',
  `damages` VARCHAR(50) NULL COMMENT 'Нанесенные повреждения',
  `repair_cost` DOUBLE NOT NULL COMMENT 'Стоимость ремонта',
  PRIMARY KEY (`id_accident`),
  INDEX `id_order_idx` (`id_order` ASC),
  CONSTRAINT `id_order`
    FOREIGN KEY (`id_order`)
    REFERENCES `rent_a_car`.`order_list` (`id_order`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
COMMENT = 'Список ДТП, содержащий номер контракта, дату ДТП, нанесенный урон и стоимость ремонта';


-- -----------------------------------------------------
-- Table `rent_a_car`.`car_review`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `rent_a_car`.`car_review` (
  `id_review` INT NOT NULL AUTO_INCREMENT,
  `id_car` INT NOT NULL,
  `id_user` INT NOT NULL,
  `review` LONGTEXT NOT NULL COMMENT 'Текст отзыва',
  `time` DATETIME NOT NULL,
  PRIMARY KEY (`id_review`),
  INDEX `id_car_idx` (`id_car` ASC),
  INDEX `id_user_idx` (`id_user` ASC),
  CONSTRAINT `car_id`
    FOREIGN KEY (`id_car`)
    REFERENCES `rent_a_car`.`car_list` (`id_car`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `user_id`
    FOREIGN KEY (`id_user`)
    REFERENCES `rent_a_car`.`user_list` (`id_user`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
COMMENT = 'Отзывы пользователей о машине';


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
