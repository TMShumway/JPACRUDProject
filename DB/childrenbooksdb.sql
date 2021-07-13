-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema childrenbooksdb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `childrenbooksdb` ;

-- -----------------------------------------------------
-- Schema childrenbooksdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `childrenbooksdb` DEFAULT CHARACTER SET utf8 ;
USE `childrenbooksdb` ;

-- -----------------------------------------------------
-- Table `book`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `book` ;

CREATE TABLE IF NOT EXISTS `book` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(255) NULL,
  `author` VARCHAR(255) NOT NULL DEFAULT 'UNKOWN AUTHOR',
  `page_count` INT NULL,
  `ISBN` VARCHAR(45) NULL,
  `difficulty_level` INT NULL,
  `description` VARCHAR(1000) NULL,
  `store_link` VARCHAR(255) NULL,
  `cover_link` VARCHAR(255) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS cbuser@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'cbuser'@'localhost' IDENTIFIED BY 's4a92n';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'cbuser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `book`
-- -----------------------------------------------------
START TRANSACTION;
USE `childrenbooksdb`;
INSERT INTO `book` (`id`, `title`, `author`, `page_count`, `ISBN`, `difficulty_level`, `description`, `store_link`, `cover_link`) VALUES (1, 'The Berenstain Bears: Too Much Noise!', 'Mike Berenstain', 32, '9780063024434', 1, 'There is too much noise in the Berenstain Bears\' tree house! “Blah! Blah!” goes the TV, “Boom! Boom!” goes the music, and “Beep! Beep!” goes the video game player. Will Mama and Papa Bear ever get a moment to sit and enjoy some peace and quiet?', 'https://www.icanread.com/9780063024434/the-berenstain-bears-too-much-noise/', 'https://i.harperapps.com/covers/9780063024434/x298.jpg');
INSERT INTO `book` (`id`, `title`, `author`, `page_count`, `ISBN`, `difficulty_level`, `description`, `store_link`, `cover_link`) VALUES (2, 'Pete the Cat: Super Pete', 'James Dean', 32, '9780063032156', 1, 'From New York Times bestselling creators Kimberly and James Dean, Pete the Cat becomes...Super Pete! We all need a superhero Pete in our life.', 'https://www.icanread.com/9780063032156/pete-the-cat-super-pete/', 'https://i.harperapps.com/covers/9780063032156/x298.jpg');
INSERT INTO `book` (`id`, `title`, `author`, `page_count`, `ISBN`, `difficulty_level`, `description`, `store_link`, `cover_link`) VALUES (3, 'Fancy Nancy: Bubbles, Bubbles, and More Bubbles!', 'Jane O\'Connor', 32, '9780063028388', 1, 'Fancy Nancy and her class are going to see The Big Bubble Show!', 'https://www.icanread.com/9780063028388/fancy-nancy-bubbles-bubbles-and-more-bubbles/', 'https://i.harperapps.com/covers/9780063028388/x298.jpg');
INSERT INTO `book` (`id`, `title`, `author`, `page_count`, `ISBN`, `difficulty_level`, `description`, `store_link`, `cover_link`) VALUES (4, '\nMy Little Pony: Ponies Unite\nMy Little Pony: Ponies Unite', 'Hasbro', 32, '9780063037465', 2, 'This all-new early reader is based on the My Little Pony movie—available to stream on Netflix September 24, 2021!', 'https://www.icanread.com/9780063037465/my-little-pony-ponies-unite/', 'https://i.harperapps.com/covers/9780063037465/x298.jpg');
INSERT INTO `book` (`id`, `title`, `author`, `page_count`, `ISBN`, `difficulty_level`, `description`, `store_link`, `cover_link`) VALUES (5, 'Splat the Cat and the Obstacle Course', 'Rob Scotton', 32, '9780062697165', 2, 'Splat underestimates his little sister Flo’s ability to ace Plank’s obstacle course in this hilarious I Can Read story from the New York Times bestselling author Rob Scotton.', 'https://www.icanread.com/9780062697165/splat-the-cat-and-the-obstacle-course/', 'https://i.harperapps.com/covers/9780062697165/x298.jpg');
INSERT INTO `book` (`id`, `title`, `author`, `page_count`, `ISBN`, `difficulty_level`, `description`, `store_link`, `cover_link`) VALUES (6, 'Hello, Ninja. Hello, Stage Fright!', 'N. D. Wilson', 32, '9780063056213', 2, 'Now a Netflix Series! Join imaginative ninjas Wes and Georgie as they take the stage in this Level One I Can Read book with text by N. D. Wilson and charming art by Forrest Dickison.', 'https://www.icanread.com/9780063056213/hello-ninja-hello-stage-fright/', 'https://i.harperapps.com/covers/9780063056213/x298.jpg');
INSERT INTO `book` (`id`, `title`, `author`, `page_count`, `ISBN`, `difficulty_level`, `description`, `store_link`, `cover_link`) VALUES (7, 'Libby Loves Science: Mix and Measure', 'Kimberly Derting, Shelli R. Johannes', 40, '9780062946119', 3, 'Libby loves science! In this STEM-themed Level 3 I Can Read! title, Libby and her friend Rosa learn about mixing and measuring to bake a delicious treat for a puppy party. A great choice for aspiring scientists, emerging readers, and fans of Andrea Beaty’s Ada Twist, Scientist. Includes activities, a glossary, and a cupcake recipe.', 'https://www.icanread.com/9780062946119/libby-loves-science-mix-and-measure/', 'https://i.harperapps.com/covers/9780062946119/x298.jpg');
INSERT INTO `book` (`id`, `title`, `author`, `page_count`, `ISBN`, `difficulty_level`, `description`, `store_link`, `cover_link`) VALUES (8, 'Wonder Woman 1984: Destined for Greatness', 'Alexandra West', 32, '9780062963369', 3, 'Wonder Woman 1984 is set to hit theaters in fall 2020, from Warner Bros. Pictures, and will see the return of Gal Gadot as Wonder Woman and Chris Pine as Steve Trevor, with Kristen Wiig joining the cast as friend turned foe Barbara Minerva, aka The Cheetah!', 'https://www.icanread.com/9780062963369/wonder-woman-1984-destined-for-greatness/', 'https://i.harperapps.com/covers/9780062963369/x298.jpg');
INSERT INTO `book` (`id`, `title`, `author`, `page_count`, `ISBN`, `difficulty_level`, `description`, `store_link`, `cover_link`) VALUES (9, 'Minnie and Moo and the Haunted Sweater', 'Denys Cazet', 48, '9780060730161', 3, 'It\'s the farmer\'s birthday, and Minnie is giving him her last cream puff!', 'https://www.icanread.com/9780060730161/minnie-and-moo-and-the-haunted-sweater/', 'https://i.harperapps.com/covers/9780060730161/x298.jpg');
INSERT INTO `book` (`id`, `title`, `author`, `page_count`, `ISBN`, `difficulty_level`, `description`, `store_link`, `cover_link`) VALUES (10, 'Prairie School', 'Avi', 48, '9780060513184', 4, 'It\'s the 1880s, Noah works hard on the family farm and roams free on the Colorado prairie. One day his Aunt Dora arrives to give him some schooling. Noah doesn\'t think he needs it. What use is reading on the prairie? But what Noah discovers will change his life forever.', 'https://www.icanread.com/9780060513184/prairie-school/', 'https://i.harperapps.com/covers/9780060513184/x298.jpg');
INSERT INTO `book` (`id`, `title`, `author`, `page_count`, `ISBN`, `difficulty_level`, `description`, `store_link`, `cover_link`) VALUES (11, 'Dinosaur Hunter', 'Elaine Marie Alphin', 48, '9780064442565', 4, 'In 1880s Wyoming, Ned Chapman dreams of finding a dinosaur skeleton. When he discovers some old bones on his father\'s ranch, Ned is thrust into the world of bone hunters -- men so competitive that they will do anything to bring back the best fossils!', 'https://www.icanread.com/9780064442565/dinosaur-hunter/', 'https://i.harperapps.com/covers/9780064442565/x298.jpg');
INSERT INTO `book` (`id`, `title`, `author`, `page_count`, `ISBN`, `difficulty_level`, `description`, `store_link`, `cover_link`) VALUES (12, 'First Flight', 'George Shea', 48, '9780064442152', 4, 'When Tom Tate hears that Wilbur and Orville Wright are building a flying machine, he can\'t wait to try it. Tom\'s dad thinks it\'s dangerous. Some people think the Wrights are crazy. Can Tom help the brothers get their dream off the ground?', 'https://www.icanread.com/9780064442152/first-flight/', 'https://i.harperapps.com/covers/9780064442152/x298.jpg');

COMMIT;
