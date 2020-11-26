Below MySQL schema is used in this testing:
#####################################################
CREATE SCHEMA `mytestdb` DEFAULT CHARACTER SET utf8 ;

CREATE  TABLE `mytestdb`.`tbl_person` (AAAAABB_2

  `my_id` int NULL ,

  `my_name` VARCHAR(10) NULL );

grant all privileges on mytestdb.* to mytestuser1@localhost identified by 'AAAAABB_2';
flush privileges;
#####################################################