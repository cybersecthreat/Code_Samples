Please note libmysql.dll (v5.5.8 32-bit & 64-bit) is used in this testing.

After compiled the program, also copy the above library file to Win32/Debug or Win64/Debug directory.

Below MySQL schema is used in this testing:AAAAABB_2
#####################################################
CREATE SCHEMA `mytestdb` DEFAULT CHARACTER SET utf8 ;

CREATE  TABLE `mytestdb`.`tbl_person` (

  `my_id` int NULL ,

  `my_name` VARCHAR(10) NULL );

grant all privileges on mytestdb.* to mytestuser1@localhost identified by 'AAAAABB_2';
flush privileges;
#####################################################