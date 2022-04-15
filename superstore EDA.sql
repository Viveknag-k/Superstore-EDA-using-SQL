show databases;
use project;
show tables;
describe sample_superstore;
select * from sample_superstore;
-- number of records in this dataset
select count(*) from sample_superstore; 
-- maximum of profit by Segment
select max(profit),Segment  from sample_superstore group by Segment ;

select * from sample_superstore limit 10;

select  Category , Segment, Sub_Category from sample_superstore group by  Category;
-- PROFIT GREATER THAN 100
select Customer_name ,Customer_ID,Profit from sample_superstore  where Profit > 100;
select distinct Customer_name , Customer_ID,Region from sample_superstore order by Region ;
-- creating a view of customerswhose profit greater than 100
create view profit_100 as select Customer_name ,Customer_ID,Profit from sample_superstore  where Profit > 100;

select profit_100;


