--Database(Veri tabani) Olusturma
Create database zehra;
create database eva;

--DDL-DATA DEFINITION LANG.
--CREATE- TABLO OLUSTURMA

CREATE TABLE ogrenciler 
(
	ogrenco_no char(7),
	isim varchar(20),
	soyisim varchar(25),
	not_ort real,     --ondalikli sayilar kullanilir(Double gibi)
	kayit_tarih date
);


--VAROLAN TABLODAN YENI BIR TABLO OLUSTURMA
CREATE TABLE ogrenci_notlari
AS --benzer tablodaki basliklarla ve data tipleriyle yeni bir tablo olusturmak 
   --icin normal tablo olustururken ki parantezler yerine AS kullanip Select komutuyla almak istedigimiz verileri aliriz.
SELECT isim,soyisim,not_ort FROM ogrenciler;


--DML- DATA MANIPULATION LANGUAGE
--INSERT (Database'e veri ekleme)
INSERT INTO ogrenciler VALUES ('1234567','Bahar','Eva',85.5,now());
INSERT INTO ogrenciler VALUES ('1234567','Bahar','Eva',85.5,'2020-12-11');

--BIR TABLOYA PARCALI VERI EKLEMEK ISTERSEK

INSERT INTO ogrenciler (isim,soyisim) VALUES ('Zehra','Uysal');

--DQL -DATA QUERY LANG.

select * FROM ogrenciler;








