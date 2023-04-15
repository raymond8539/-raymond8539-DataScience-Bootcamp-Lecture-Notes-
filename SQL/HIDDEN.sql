create database if not exists relations;
use relations;
create table relations
(
names varchar(40)not null,
gender enum('M','F'),
relation varchar(15) not null,
location varchar(15)not null,
phone_no varchar(25) ,
occupation varchar(40));
select * from relations;
insert into relations(names, gender,relation,location,phone_no,occupation)
values('EGEDEGBE ROBINSON', 'M','FATHER', 'UGHELLI', 07038273785, 'RETIRED'),
('EGEDEGBE GRACE', 'F', 'MOTHER', 'UGHELLI', 09138882720, 'HOUSE_WIFE'),
('EGEDEGBE GODFREY', 'M', 'BROTHER', 'ABUJA', 08088215521, 'ENGINEER'),
('EGEDEGBE OGHENEKPAROBO', 'F', 'SISTER', 'PORT-HARCOURT', 08030605144, 'BUSINESS_WOMAN'),
('EGEDEGBE AKPOVUNA', 'M', 'BROTHER', 'PORT-HARCOURT', 08038539861, 'FURNITURE_ARTIST'),
('EGEDEGBE EJIRO', 'F', 'SISTER','PORT-HARCOURT', 08130586037, 'FASHION_DESIGNER'),
('EGEDEGBE LUCKY', 'M', 'BROTHER', 'PORT-HARCOURT', 08135648162, 'PHONE_TECHNICIAN');
alter table relations
add column birth_date date
after occupation;