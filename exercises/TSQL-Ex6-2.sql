use TSQLV4;

drop table if exists dbo.banks;

create table dbo.banks(	
	bankname varchar(100),
	city varchar(50),
	state varchar(5),
	cert varchar(10),
	institution varchar(100),
	closingdate date,
	updateddate date
);

bulk insert dbo.banks from 'D:\ISTA\ISTA420\Exercises\banklist.csv'
	with
	  (
		datafiletype	= 'char',
		fieldterminator	= ',',
		rowterminator	= '\n',
		firstrow		= 2
	  );

alter table dbo.banks add bankid int unique not null identity (1, 1);
alter table dbo.banks add constraint PK_banks primary key (bankid);

--1 what state contained the most bank closings by year
select state, count(closingdate) as totalclosings
from dbo.banks
	group by state
	order by totalclosings desc;

--2 what institutions have the most failed banks
select institution, count(closingdate) as failures
from dbo.banks
	group by institution
	order by failures desc;

--3 what is the percentage change in total failed banks from 2015 to 2016
with yearfails as
(
select year(closingdate) as year, count(closingdate) as failures  
from dbo.banks
	where year(closingdate) = 2015 or year(closingdate) = 2016
	group by year(closingdate)
)


select year, ((cast(failures as float) / (lag(failures) over(order by year))) * 100) - 100 as perc
from yearfails;

--4 what day saw the greatest number of closures and where were they
select closingdate, count(closingdate) as failures, state
from dbo.banks
	group by closingdate, state
	order by failures desc, closingdate desc;

drop table if exists dbo.banks;

select * from dbo.banks;