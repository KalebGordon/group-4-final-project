select * from total_emissions;

alter table total_emissions add emissions_key serial primary key;

create table emissions_summary(
index varchar,
year_2000 int,
year_2001 int,
year_2002 int,
year_2003 int,
year_2004 int,
year_2005 int,
year_2006 int,
year_2007 int,
year_2008 int,
year_2009 int,
year_2010 int,
year_2011 int,
year_2012 int,
year_2013 int,	
year_2014 int,
year_2015 int,
year_2016 int,
year_2017 int,
year_2018 int,
year_2019 int,
year_2020 int
)

select * from emissions_summary;
