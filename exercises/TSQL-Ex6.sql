--Name: Aaron Colclough
--File: TSQL-EX6.sql
--Date: Sep 10 2018

use TSQLV4;

--1

drop table if exists dbo.presidents;

create table dbo.presidents (
	lastname varchar(25),
	firstname varchar(25),
	middlename varchar(25),
	datebirth date,
	datedeath date,
	statebirth varchar(25),
	statehome varchar(25),
	party varchar(50),
	tookoffice date,
	leftoffice date,
	assasinationatt char(5),
	assasinationsuc char(5),
	religion varchar(25)
	);

--2

bulk insert dbo.presidents from 'D:\ISTA\ISTA420\Exercises\USPresidents.csv'
	with
	  (
		datafiletype	= 'char',
		fieldterminator	= ',',
		rowterminator	= '\n'
	  );

--3 Not needed.
--4


alter table dbo.presidents add pid int unique not null identity (1, 1);
alter table dbo.presidents add constraint PK_presidents primary key (pid);

--5

update dbo.presidents
	set leftoffice = '2017-01-20', assasinationatt = 'FALSE', assasinationsuc = 'FALSE'
output
	inserted.lastname,
	inserted.leftoffice as newleft,
	deleted.leftoffice as oldleft,
	inserted.assasinationatt as newatt,
	deleted.assasinationatt as oldatt,
	inserted.assasinationsuc as newsuc,
	deleted.assasinationsuc as oldsuc
where lastname = 'Obama';

--6

insert into dbo.presidents
	output
		inserted.lastname,
		inserted.firstname,
		inserted.middlename,
		inserted.datebirth,
		inserted.datedeath,
		inserted.statebirth,
		inserted.statehome,
		inserted.party,
		inserted.tookoffice,
		inserted.leftoffice,
		inserted.assasinationatt,
		inserted.assasinationsuc,
		inserted.religion
	values('Trump', 'Donald', 'John', '1946-06-14', NULL, 'New York', 'New York', 'Republican',
	 '2017-01-20', null, null, null, 'Presbyterian');

--7

select statehome, party, count(*) as countparty
from dbo.presidents
	group by statehome, party
	order by statehome;

/*select statehome,
	count(case when party = 'independent' then party end) as independent,
	count(case when party = 'federalist' then party end) as federalist,
	count(case when party = 'democratic-republican' then party end) as DR,
	count(case when party = 'democratic-republican/national republican' then party end) as DRNR,
	count(case when party = 'democratic' then party end) as democratic,
	count(case when party = 'whig' then party end) as whig,
	count(case when party = 'republican/national union' then party end) as RNU,
	count(case when party = 'democratic/national union' then party end) as DNU,
	count(case when party = 'republican' then party end) as republican
from dbo.presidents
	group by statehome;*/

--8

select lastname, firstname, datediff(DD, tookoffice, leftoffice) as officetime
from dbo.presidents
order by officetime desc;

--9

select lastname, firstname, middlename, (datediff(YY, datebirth, tookoffice) - 1) as officeage
from dbo.presidents
order by officeage desc;

--10

select party, religion, count(*) as countreligion
from dbo.presidents
	group by religion, party
	order by countreligion desc;

/*select religion,
	count(case when party = 'independent' then party end) as independent,
	count(case when party = 'federalist' then party end) as federalist,
	count(case when party = 'democratic-republican' then party end) as DR,
	count(case when party = 'democratic-republican/national republican' then party end) as DRNR,
	count(case when party = 'democratic' then party end) as democratic,
	count(case when party = 'whig' then party end) as whig,
	count(case when party = 'republican/national union' then party end) as RNU,
	count(case when party = 'democratic/national union' then party end) as DNU,
	count(case when party = 'republican' then party end) as republican
from dbo.presidents
	group by religion;*/



select * from dbo.presidents;

drop table if exists dbo.presidents;
