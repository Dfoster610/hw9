--use College 

/*create database College 
Go8*/

create table Students1(
ID int identity (1,1) Primary Key Clustered
,"FName" varchar (25) 
,"LName" varchar (25)
,"SSN" varchar 
,"Address" varchar
,"City" varchar (30)
,"State" varchar (2)
,"Phone#" bigint 
,Scores1 int foreign key references Scores1(ID)
);

create table Classes1 (
ID int identity (1,1) Primary Key Clustered
,"Title" varchar (30)
,"Number" varchar
,"Department" varchar (30)
,Classes1 int foreign key references Students1(ID)
);

create table Scores1 (
ID int identity (1,1) Primary Key Clustered
,"Homework" varchar
,"Exam" varchar
,"Description" varchar(50)
,"Date Assigned" datetime
,"Due Date" datetime
,"Date Submitted" datetime
,"Points Earned" int
,"Points Possible" int
,Students1 int foreign key references Students1(ID)
);

--drop table Students1;
--drop table Classes1;
--drop table Scores1;

insert into Students1 (FName, LName, City)
 values ('Mike', 'Sharpe', 'Berlin')
		,('Valerie', 'Hartman', 'Los Angelas')
		,('Bryce','Colewether', 'Columbus'); 

insert into Classes1(Title, Number, Department)
values ('Robotics', '212','Science & Technology')
		,('Algebra', '305', 'Math')
		,('SQL Fundamentals', '425', 'Information Technology')
		,('Writing Proposals', '108', 'English');

insert into Scores1 (Homework, Exam, "Description", "Date Assigned"
		, "Due Date", "Date Submitted", "Points Earned", "Points Possible")
values	('98%', '84%', '', '', '', '', '400', '525' )
		,('76%', '94%', '', '', '', '', '400', '525' )
		,('80%', '67%', '', '', '', '', '400', '525' );


