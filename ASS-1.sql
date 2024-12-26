select*from BRANDS;
select*from PRODUCTS 
select*from ITEM_TABLE

---------creating 2 database name brands and products ----------------
create database BRANDS;
create database PRODUCTS;
------------creating the ITEM TABLE in brand databse-----------
create table ITEM_TABLE(
item_ID INT primary key ,
item_description varchar(50),
vendor_nos int,
vendor_name nvarchar(50),
bottel_size int,
bottel_price int
);
alter table ITEM_TABLE
alter column bottel_price float;
select*from ITEM_TABLE
-------------creating producttable in products database-----------
create table PRODUCT_TABLE (
product_id int primary key,
country nvarchar(50),
product_name nvarchar(50),
manufacturingprice int,
sale_price int,
gross_sales int,
sales int,
COGS INT,
profit INT,
Date_of_sale date,
month_number int,
year_of_sale int 
);

ALTER TABLE PRODUCT_TABLE
ADD month_name varchar(50);

ALTER TABLE PRODUCT_TABLE
ADD unit_sold float; 

select*from PRODUCT_TABLE
---------------inserting data into  item tabel-----------

select*from ITEM_TABLE

insert into ITEM_TABLE(item_ID,item_description,vendor_nos ,vendor_name,bottel_size ,bottel_price)
values
(1,'travis hasse apple pie ',305,'Mhw ltd',750,9.77),
(2,'daristi xtabentun',391,'anchor distilling(preis imports)',750,14.12),
(3,'hiram walker peach brandy',370,'pernod ricard usa/austin nichols',1000,6.5),
(4,'oakcross whisky',305,'mhw ltd',750,25.33),
(5,'uv red(cherry)vodka',380,'phillips beverage company',200,1.97),
(6,'heaven hill old style white_label',259,'heaven hill distilleries inc',750,6.37),
(7,'hyde herbal liqueur',194,'fire tail brands lic',750,5.06),
(8,'dupont calvados fine reserve',403 ,'robert kacher selections',750,23.61);

------------------insert data into product data table----------------------------------------------------
 
insert into PRODUCT_TABLE(product_id,country,product_name,manufacturingprice,sale_price,gross_sales,sales,COGS,profit,Date_of_sale,month_number,year_of_sale,month_name,unit_sold)
values 
(1,'canada','carretera',3,20,32370,32370,16185,16185,'1/1/2014',1,2014,'january',1618.5),
(2,'germany','carretera',3,20,26420,26420,13210,13210,'1/1/2014',1,2015,'january',1321),
(3,'france','carretera',3,15,32670,32670,21780,10890,'6/1/2014',6,2016,'june',2178),
(4,'germany','carretera',3,15,13320,13320,8880,4440,'6/1/2014',6,2017,'june',888),
(5,'mexico','carretera',3,15,37050,37050,24700,12350,'6/1/2014',6,2018,'june',2470),
(6,'germany','carretera',3,350,529550,529550,393380,136170,'12/1/2014',12,2019,'december',1513),
(7,'germany','montana',5,15,13815,13815,9210,4605,'3/1/2014',3,2020,'march',921),
(8,'canada','montana',5,12,30216,30216,7554,22662,'6/1/2014',6,2021,'june',2518);
---------------Delete those product having the Units Sold 1618.5 , 888
and 2470.---------

delete from PRODUCT_TABLE
where unit_sold=16185;
delete from PRODUCT_TABLE
where unit_sold=888;
delete from PRODUCT_TABLE
where unit_sold=2470;
select*from PRODUCT_TABLE
---------------Select all records from the bottle_info table.-------------
select bottel_size,bottel_price from ITEM_TABLE

----------- Select the item_description and bottle_price for all items in the bottle_info table.-------------------
select item_id,item_description,bottel_price 
from ITEM_TABLE

select*from ITEM_TABLE
----------Find the item_description and bottle_price of items where bottle_price is greater than 20.
select item_id,item_description,bottel_price 
from ITEM_TABLE
where bottel_price >20;
-------------Select Unique Country from the product_sales table-------
select distinct country
from PRODUCT_TABLE;

select*from PRODUCT_TABLE
-------------How Many Countries are there which contain the sales price between 10 to 20
select country,sale_price 
from PRODUCT_TABLE
where sale_price BETWEEN '10' AND '20';

-----------------------------------------------INTERMEDIATE QUESTIONS ----------------------------------
1. Find the Total Sale Price and Gross Sales
2. In which year we have got the highest sales
3. Which Product having the sales of $ 37,050.00
4. Which Countries lies between profit of $ 4,605 to $ 22 , 662.00
5. Which Product Id having the sales of $ 24 , 700.00

select*from PRODUCT_TABLE

select sum(sale_price) as sale_price,sum(gross_sales) as gross_sales
from PRODUCT_TABLE

select max(profit) as higest_sales
from PRODUCT_TABLE
where year_of_sale between '2014' AND '2021';

select product_id,country
from PRODUCT_TABLE
where sales = '37050';-----------------no output 

select country 
from PRODUCT_TABLE
where profit between '4605' and '22662'; 

select product_id
from PRODUCT_TABLE
where sales ='32370';

6. Find the total Units Sold for each Country.
7. Find the average sales for each country
8. Retrieve all products sold in 2014
9. Find the maximum Profit in the product_sales table.
10. Retrieve the records from product_sales where Profit is
greater than the average Profit of all records.

--------------6------------------
select country,sum(unit_sold) as total_unit_sold
from PRODUCT_TABLE
group by country;
select*from product_table
---------------mexico output isnot displyed------------
-------------7-------------------
select country,avg(sales) as sales
from PRODUCT_TABLE
group by country;
-------------8---------------
select product_id
from  PRODUCT_TABLE
where year_of_sale = '2014';
---------------9--------------
select max(profit) as MAX_PROFIT
from PRODUCT_TABLE;
--------------10--------------
select*from  PRODUCT_TABLE
where profit>(select avg(profit)from PRODUCT_TABLE);

11. Find the item_description having the bottle size of 750
12. Find the vendor Name having the vendor_nos 305 , 380 ,391
13. What is total Bottle_price
14. Make Primary Key to Item_id
15. Which item id having the bottle_price of $ 5.06

select*from ITEM_TABLE

------------11--------------
select item_description
from ITEM_TABLE
where bottel_size='750';
----------12----------------
select vendor_name
from ITEM_TABLE
where vendor_nos in (305,380,391);
-----------13------
select sum(bottel_price) as TOTAL_BOTTEL_PRICE 
from ITEM_TABLE;
---------14------------
----------15-----------
select item_ID
from ITEM_TABLE
where bottel_price = '5.06';

----------------------------advance question ----------------------
 1. Apply INNER , FULL OUTER , LEFT JOIN types on both the table
2. Find the item_description and Product having the gross sales of
13,320.00
3. Split the Item_description Column into Columns Item_desc1 and
Item_desc2
4. Find the top 3 most expensive items in the bottle_info table.
5. Find the total Gross Sales and Profit for each Product in each
Country.

select*from item_table
select*from product_table
-----------4--------------
select item_ID,bottel_price
from item_tabel
order by bottel_price DESC
LIMIT 3;----------NOT RUNNED
----------5--------------

select sum(gross_sales) as total_gross_sale,sum(profit) as total_profit,country,product_name 
from product_table
group by country,product_name
order by country,product_name ;
6. Find the vendor_name and item_description of items with a
bottle_size of 750 and bottle_price less than 10.
7. Find the Product with the highest Profit in 2019.
8. Retrieve the Product_Id and Country of all records where the
Profit is at least twice the COGS.
9. Find the Country that had the highest total Gross Sales in 2018
10. Calculate the total Sales for each Month Name across all
years.
11. List the item_description and vendor_name for items
whose vendor_nos exists more than once in the bottle_info
table.
12. Find the average Manufacturing Price for Product in each
Country and only include those Country and Product
combinations where the average is above 3
---------6---------
select*from item_table
select*from product_table

select item_description,vendor_name
from item_table
where bottel_size='750' 
AND bottel_price <'10';-----------
------7---------
  
select top 1 product_name,profit
from product_table
where year_of_sale ='2019'
order by profit desc;
---------8-----------------
select product_id,country 
from product_table
where profit>=2*COGS;------------
-----------10-------------

select sum(sales) as total_sales,month_name,year_of_sale
from product_table
group by month_name,year_of_sale
order by month_name,year_of_sale;
-------------9------------------
Find the Country that had the highest total Gross Sales in 2018
select country,sum(gross_sales) from product_table
group by country;
-----------12---------------------
select*from  PRODUCT_TABLE
12. Find the average Manufacturing Price for Product in each
Country and only include those Country and Product
combinations where the average is above 3

select product_id,country,avg(manufacturingprice) as AVG_MANF_PRICE
from PRODUCT_TABLE
group by  product_id,country
having avg(manufacturingprice)>3;
  Super-Advance Questions:-
------------------------------------------------------------------------------------------------------------------------------------------
-----------------SUPER ADVANCE QUESTIONS ---------------------
1. Find the item_description and bottle_price of items that have
the same vendor_name as items with Item_Id 1.
select*from ITEM_TABLE

SELECT item_description,bottel_price
from ITEM_TABLE
where vendor_name=(select vendor_name from ITEM_TABLE where item_ID);----------------no output

2. Create a stored procedure to retrieve all records from the
bottle_info table where bottle_price is greater than a given
value
create procedure get_bottel_price (in min_price decimal(10,2))
begin 
select*from ITEM_TABLE
where bottel_price>min_price ;
END;--------------errror -

3. Create a stored procedure to insert a new record into the
product_sales table.

4. Create a trigger to automatically update the Gross_Sales field in
the product_sales table whenever Units_Sold or Sale_Price is
updated.
5. Write a query to find all item_description in the bottle_info
table that contain the word "Whisky" regardless of case.
select*from ITEM_TABLE
select item_description
from  ITEM_TABLE
where item_description='whisky';---------------no output 
6. Write a query to find the Country and Product where the Profit
is greater than the average Profit of all products.
select*from PRODUCT_TABLE
select country,product_name,profit 
from PRODUCT_TABLE
where profit>(select avg(profit) from PRODUCT_TABLE);

7. Write a query to join the bottle_info and product_sales tables on
a common field (e.g., vendor_nos) and select relevant fields
from both tables.
select*from item_table
select PR.product_id,PR.product_name,IT.item_ID,IT.item_description
from PRODUCT_TABLE
inner join ITEM_TABLE on PR.product_id=IT.item_ID;---------errors---------

8. Write a query to combine item_description and vendor_name
into a single string for each record in the bottle_info table,
separated by a hyphen.

  select*from ITEM_TABLE

  select item_description+'-'+vendor_name as combined_string
  from ITEM_TABLE

9. Write a query to display the bottle_price rounded to one
decimal place for each record in the bottle_info table.

select bottel_price, 
round(bottel_price,1) as round_bottelprice
from ITEM_TABLE ;

10. Write a query to calculate the number of days between the
current date and the Date field for each record in the
product_sales table.
 select*from PRODUCT_TABLE 
 select date_of_sale ,
 datediff() ------------no syntax----------

