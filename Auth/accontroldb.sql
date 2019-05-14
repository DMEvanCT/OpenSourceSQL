CREATE DATABASE IF NOT EXISTS accontrol;
USE accontrol;

CREATE TABLE IF NOT EXISTS tbl_microservices
(
  MicroserviceID   int          null,
  MicroserviceName varchar(50)  null,
  MicroserviceRole varchar(200) null
);

CREATE TABLES IF NOT EXISTS tbl_users
(
  UserID             int                                 null,
  UserName           varchar(100)                        null,
  Password           varchar(300)                        null,
  EmailAddress       varchar(100)                        null,
  Enabled            int                                 null,
  PasswordExpiration datetime                            null,
  apikey             varchar(100)                        null,
  CreationDate       timestamp default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP
);


CREATE TABLE IF NOT EXISTS tbl_authorization
(
  UserName       varchar(30) null,
  MicroServiceID int         null,
  Authorized     int         null
);
