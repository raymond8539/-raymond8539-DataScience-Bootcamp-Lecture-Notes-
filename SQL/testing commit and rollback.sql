create database players;
CREATE TABLE Players(
   ID INT,
   First_Name VARCHAR(255),
   Last_Name VARCHAR(255),
   Date_Of_Birth date,
   Place_Of_Birth VARCHAR(255),
   Country VARCHAR(255),
   PRIMARY KEY (ID)
);
insert into Players values(1, 'Shikhar', 'Dhawan', DATE('1981-12-05'), 'Delhi', 'India');
insert into Players values(2, 'Jonathan', 'Trott', DATE('1981-04-22'), 'CapeTown', 'SouthAfrica'); 
insert into Players values(3, 'Kumara', 'Sangakkara', DATE('1977-10-27'), 'Matale', 'Srilanka');
set autocommit = 0;
commit;
insert into Players values(4, 'Virat', 'Kohli', DATE('1988-11-05'), 'Delhi', 'India');
insert into Players values(5, 'Rohit', 'Sharma', DATE('1987-04-30'), 'Nagpur', 'India');
insert into Players values(6, 'Ravindra', 'Jadeja', DATE('1988-12-06'), 'Nagpur', 'India');
insert into Players values(7, 'James', 'Anderson', DATE('1982-06-30'), 'Burnley', 'England');
SELECT * FROM Players;
rollback;