--MEMBUAT DATABASE
CREATE DATABASE db_latihan001;

-- MEMBUAT TABEL BARU
CREATE TABLE tbl_users (
    id int NOT NULL PRIMARY KEY GENERATED ALWAYS AS IDENTITY, 
    username VARCHAR (255) NOT NULL,
    email VARCHAR (255) NOT NULL,
    password VARCHAR (255) NOT NULL,
    addres TEXT) NOT NULL;

-- MEMBUAT TABEL NORMALISASI ADDRES
 CREATE table addres_users
 (
    id_addres int NOT NULL PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    adress TEXT,
    id_users int not NULL
 );

 --MENAMPILKAN DATA TABEL
SELECT * from tbl_users;

--MENAMPILKAN DATA TABEL GABUNGAN
SELECT username, email, addres FROM tbl_users JOIN addres_users ON addres_users.id_users = tbl_users.id;


--MEMASUKAN DATA TABEL
INSERT INTO tbl_users (username, email, password, addres) 
VALUES ('nurwinda','nurwinda@gmail.com','nurwinda123','jakarta');
INSERT INTO tbl_users (username, email, password, addres) 
VALUES ('raditya','raditya@gmail.com','raditya123','tangerang');
INSERT INTO tbl_users (username, email, password, addres) 
VALUES ('nabila','nabila@gmail.com','nabila123','tegal');
INSERT INTO addres_users (adress, id_users)
VALUES ('jlan swadaya, banten', '2');


--MENGUBAH DATA TABLE
UPDATE tbl_users set email = 'nurwindasari@gmail.com' WHERE id = 1;


--MENGHAPUS DATA TABLE
delete from tbl_users WHERE addres = 'tegal';