
use master;
go

drop database if exists konjickiklub;
go

create database konjickiklub;
go
use konjickiklub;


create table treneri(
sifra int not null primary key identity (1,1),
ime varchar(50) not null,
prezime varchar (50) not null,
oib char(11),
email varchar(100) not null
);

create table korisnici(
sifra int not null primary key identity(1,1),
ime varchar(50) not null,
prezime varchar (50) not null,
brojmobitela int not null,
iskustvo bit,
godinarođenja char(4),
);

create table usluge(
sifra int not null primary key identity (1,1),
naziv varchar(50) not null,
brojsati int,
cijena decimal(5,2),
potrebnoiskustvo bit
);

create table posjete (
sifra int not null primary key identity (1,1),
datumposjete datetime,
trener int not null,
usluge int not null
);

create table grupa(
posjeta int not null,
korisnik int  not null );

alter table posjete add foreign key (trener) references treneri (sifra);
alter table posjete add foreign key (usluge) references usluge (sifra);

alter table grupa add foreign key (posjeta) references posjete (sifra);
alter table grupa add foreign key (korisnik) references korisnici (sifra);

insert into treneri(ime,prezime, oib, email) values 
('Tena', ' Major', '22448348364', 'tenamajor@gmail.com');

select * from treneri;

insert into korisnici(ime, prezime, brojmobitela, iskustvo, godinarođenja) values
('Loana' ,'Zeman', '0998856395', 1, '1998'),
('Andrea', 'Županić', '0918941379', 1,'1998'),
('Mateja', 'Prevolšek', '0918941379', 0, '1995'),
('Matea', 'Prugovečki', '0955207157', 0, '1994'),
('Monika', 'Sudarić', '0915773965', 1, '2002'),
('Dragan', 'Stanisavljević', '0958521346', 1, '2000'),
('Ivan', 'Lukić', '0985614892', 1, '2007'),
('Tina', 'Biondić', '0952314782',1,'1995'),
('Antea', 'Krsek', '0957846321', 1, '1996'),
('Mato', 'Major', '0915791664', 0, '1997');

select * from korisnici;


insert into usluge(naziv, brojsati, cijena, potrebnoiskustvo) values
('Početnik',1, 7.0, 0),
('Kratka staza',2, 10.0, 1),
('Duga staza', 4, 10.0, 1),
('Trening', 1, 10.0 ,1);

select * from usluge;

insert into posjete (datumposjete, trener, usluge) values
('2023-12-03 17:00:00', 1 , 2 ),
('2023-12-03 17:00:00', 1 , 2),
('2023-12-02 17:00:00', 1 , 1),
('2023-12-02 17:00:00', 1 ,1),
('2023-12-10 17:00:00', 1 ,3),
('2023-12-10 17:00:00', 1 , 3),
('2023-12-03 19:00:00', 1 , 1),
('2023-12-03 19:00:00', 1 , 1),
('2023-12-03 17:00:00', 1, 2),
('2023-12-02 17:00:00', 1 ,1);

select * from posjete;

insert into grupa(posjeta, korisnik)values
(1,1), (1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(1,8),(1,9),(1,10);

select * from grupa;








