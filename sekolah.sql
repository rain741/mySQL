-- menampilkan seluruh database yang ada--
show databases;

--membuat database yang bernama sekolah--
use sekolah;
--membuat tabel kelas--
create table kelas(
--membuat row pada tabel kelas--
id int primary key auto_increment,
nama varchar(25));

-- masuk ke dalam tabel kelas--
insert into kelas

--membuat data yang pada tabel kelas--
(nama) values ("kelas x"),("kelas xi"),("kelas xii");


--menampilkan seluruh data pada tabel kelas--
select * from kelas;

--membuat tabel siswa--
create table siswa(
id int primary key auto_increment,

--membuat row pada tabel siswa--
nama varchar(25), nis varchar(25),kelas_id int,
foreign key (kelas_id) references kelas (id));

--masuk ke tabel siswa--
insert into siswa

--membuat data yang pada tabel siswa--
(nama, nis, kelas_id) values ("Auzan","SV001",1),
("Dolton","SV002",2), ("Lutfi","sv003",3);

--menampilkan seluruh data pada tabel siswa--
select * from siswa;


--membuat tabel mentor--
create table mentor(

--membuat row pada tabel mentor--
id int primary key auto_increment,
nama varchar(25));

--masuk ke tabel mentor--
insert into mentor

--membuat data yang pada tabel mentor--
(nama) values ("Inayat"),("Dellila"),("Ardi");

--menampilkan seluruh data pada tabel mentor--
select * from mentor;


--membuat data yang pada tabel jadwal--
create table jadwal(

--membuat row pada tabel jadwal--
id int primary key auto_increment,
nama varchar(25));

--masuk ke tabel jadwal--
insert into jadwal

--membuat data pada table jadwal
(nama) values ("Senin - 15:00 WITA"),("Selasa - 15:00 WITA"),("Rabu - 15:00 WITA");

--menmapilkan seluruh data pada table jadwal
select * from jadwal;

--membuat data pada table extrakurikuler--
create table extrakurikuler (
--membuat row pada table extrakurikuler
id int primary key auto_increment,
nama varchar (25),
mentor_id int,
jadwal_id int,
foreign key (mentor_id) references mentor (id),
foreign key (jadwal_id) references jadwal (id)
);

--masuk ke table extrakurikuler
insert into extrakurikuler (

--membuat data pada table extrakurikuler--
nama,mentor_id,jadwal_id) values ("PHP", 2,1),
("PHO", 3,2),("PHK",1,3);

--menampilkan seluruh data pada table extrakurikuler--
select * from extrakurikuler;

--membuat table ambil_extrakurikuler--
create table ambil_extrakurikuler (
--membuat row pada table ambil_extrakurikuler--
id int primary key auto_increment,
siswa_id int,
extrakurikuler_id int,
foreign key (siswa_id) references siswa (id),
foreign key (extrakurikuler_id) references extrakurikuler (id)
);

--masuk ke dalam table ambil_extrakurikuler--
insert into ambil_extrakurikuler (

--membuat data pada table ambil_extrakurikuler--
siswa_id,extrakurikuler_id) values (1,1),
(2,2),(3,3);

--menampilkan seluruh data pada table ambil_extrakurikuler--
select * from ambil_extrakurikuler;

--menampilkan data pilihan--
select ambil_extrakurikuler.id, siswa.nama as Siswa, extrakurikuler.nama as Extrakurikuler
from ambil_extrakurikuler
join siswa on ambil_extrakurikuler.siswa_id = siswa.id
join extrakurikuler on ambil_extrakurikuler.extrakurikuler_id = extrakurikuler.id;










