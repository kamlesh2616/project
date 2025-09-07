create database kamlesh;
use kamlesh;
show tables;
create table zomato(customer_id int , customer_name varchar(100) , food_name varchar(100) , price int );
show tables;
select * from zomato;
insert into zomato(customer_id,customer_name,food_name,price)values(101,"kamlesh bisht","choumin",120);
select * from zomato; 
insert into zomato(customer_id,customer_name,food_name,price)values(102,"mukesh pandit","samose",80),
(103,"harshita bisht","momo",180),
(104,"deepika atwal","pizza",95),
(105,"shivam","chhole",50);
select * from zomato;
select customer_id from zomato;
select customer_name from zomato;
select food_name from zomato;
select sales from zomato;

-- relational operator- =,>,<,>=,<=,!=
-- where
select food_name from zomato where sales >100;
select * from zomato;
select * from zomato where sales >100;
select customer_id,food_name,sales from zomato where sales > 100;
select customer_id,food_name,sales from zomato where sales < 100;
select customer_id,food_name,sales from zomato where sales >= 100;
select customer_id,food_name,sales from zomato where sales <= 100;
select customer_id,food_name,price from zomato where price = 180 ;
select customer_id,food_name,price from zomato where price != 180;
use kamlesh;

-- membership operator-  in,not in
select * from zomato;
select * from zomato where customer_name in("kamlesh bisht");
select food_name from zomato where customer_name in("kamlesh bisht");
select sales from zomato where customer_name in ("kamlesh bisht");
select * from zomato where customer_name not in("kamlesh bisht");

-- logical operator-  and,or,not
select * from zomato;
select * from zomato where price > 70 and customer_id > 103;
select * from zomato where price < 30 or customer_id > 103;
select * from zomato where not price > 70 and customer_id > 103;
select customer_name from zomato where price > 70 and customer_id > 103;

-- like operator- %,_
select * from zomato where customer_name like "%t";
select * from zomato where customer_name like "d%";
select * from zomato where customer_name like "%k%";
select * from zomato where customer_name like "k____";
select * from zomato where customer_name like "k______";
select * from zomato where customer_name like "k____________";

-- to copy the structure of a table
create table swigiy like zomato;
select * from swigiy;
select * from zomato;
show tables;
insert into swigiy select * from zomato;
select * from swigiy;

-- deleter the table
drop table swigiy;
show tables;


-- alter comand
-- add column
alter table zomato add column quantity int; 
select * from zomato;
-- modify column
alter table zomato modify column quantity int after food_name;
select * from zomato;
-- modify column first
alter table zomato add column order_id int first;
select * from zomato;
alter table zomato add column unit int; 
select * from zomato;
-- drop column- column droo,table drop,database drop
alter table zomato drop column unit;
select * from zomato;
-- multiple drop column
alter table zomato drop column order_id , drop column quantity;
select * from zomato;
-- rename column
alter table zomato rename column price to sales ;
select * from zomato;

-- rename table name
rename table zomato to swigiy;
select * from swigiy;
rename table swigiy to zomato;
select * from zomato;

use kamlesh;

-- text function- upper,lower,mid,left,right,lenght,concat,replace,repeat,trim,locate,concat_ws
create table swigiy(cus_first_name varchar(100) , cus_last_name varchar(100));
select * from swigiy;
insert into swigiy(cus_first_name,cus_last_name)values("kamlesh","bisht"),("mukesh","pandit"),("harshita","bisht"),("deepika","atwal"),("meenakshi","mehra");
select * from swigiy;
select *, upper(cus_first_name),upper(cus_last_name) from swigiy;
select * from swigiy;
select *, upper(cus_first_name)as first_name_upper from swigiy;
select *, lower(cus_first_name) from swigiy;
select *, lower(cus_first_name)as first_name_lower from swigiy;
select *, left(cus_first_name,3) from swigiy;
select *, left(cus_first_name,3)as first_name_left from swigiy;
select *, right(cus_first_name,3) from swigiy;
select *, right(cus_first_name,3)as first_name_right from swigiy;
select *, mid(cus_first_name,3,4) from swigiy;
select *, mid(cus_first_name,3,4)as first_name_mid from swigiy;
select *, length(cus_first_name) from swigiy;
select *, length(cus_first_name)as first_name_lenght from swigiy;
select *, concat(cus_first_name," ",cus_last_name) from swigiy;
select *, concat(cus_first_name," ",cus_last_name)as fullname from swigiy;
select *, concat_ws(" ",cus_first_name,cus_last_name) from swigiy;
select *, concat_ws(" ",cus_first_name,cus_last_name)as fullname from swigiy;
select *, replace(cus_first_name,"meenakshi","manisha") from swigiy;
select *, replace(cus_first_name,"meenakshi","manisha")as cus_name_replace from swigiy;
select *, trim(cus_first_name) from swigiy;
select *, trim(cus_first_name)as space_trim from swigiy;
select *, locate("m",cus_first_name) from swigiy;
select *, locate("m",cus_first_name)as name_locate from swigiy;

-- update
use kamlesh;
select * from zomato;
set sql_safe_updates=0;
update zomato set sales = 125 where customer_name = "kamlesh bisht";
select * from zomato;
update zomato set customer_name = "shivam joshi" where customer_id = 105;
select * from zomato;

alter table zomato add column city varchar(100) after customer_name;
select * from zomato;
update zomato set city = "grater noida" where customer_id = 101 ;
select * from zomato;
update zomato set city = "delhi" where customer_id = 105 ;
select * from zomato;

-- delete - only for row data delete,all table data delete 
delete from zomato where customer_id = 105;
select * from zomato;

select * from swigiy;
create table flipcart like zomato;
select * from flipcart;
insert into flipcart select * from zomato;
select * from flipcart;
delete from flipcart;
select * from flipcart;
insert into flipcart select * from zomato;
select * from flipcart;

-- truncate- only for all data delete from table
truncate table flipcart;
select * from flipcart;

select * from swigiy;
alter table swigiy add column fullname varchar(100);
-- create new column fullname and concate to first name and last name
select * from swigiy;
-- permanent value update 
update swigiy set fullname = concat(cus_first_name," ",cus_last_name);
select * from swigiy;

use kamlesh;
select * from swigiy;

-- date function- "yy-mm-dd"
create table amazion (emp_name varchar(100),date_of_joining date);
select * from amazion;
insert into amazion(emp_name,date_of_joining)values("kamlesh","2024-4-21"),("mukesh","2025-3-23"),("manisha","2024-5-7"),("deepika","2024-4-1"),("harshita","2025-1-3");
select * from amazion;
select *, extract(day from date_of_joining)as day_date,extract(month from date_of_joining)as month_date,extract(year from date_of_joining)as year_date from amazion;
select *, week(date_of_joining)as week_num from amazion;
select *, weekday(date_of_joining)as week_day from amazion;
select *, yearweek(date_of_joining)as year_week from amazion;
select *, dayname(date_of_joining)as day_name from amazion;
select *, date_add(date_of_joining , interval 30 day)as date_day from amazion;
select *, date_add(date_of_joining , interval 3 month)as date_month from amazion;
select *, date_add(date_of_joining , interval 1 year)as date_year from amazion;
select *, date_sub(date_of_joining , interval 30 day)as date_day from amazion;
select current_date();
alter table amazion add column today date;
select * from amazion;
select sysdate();
set sql_safe_updates=0;
update amazion set today=current_date();
select * from amazion;
select *, datediff(today,date_of_joining)as date_diff from amazion;
select *, datediff(today,date_of_joining)/365 as date_diff from amazion;
select *, date_format(date_of_joining, "%d-%m-%y")as new_date from amazion;
select *, date_format(date_of_joining, "%D-%M-%Y")as new_date from amazion;
select *, date_format(date_of_joining, "%d-%b-%y")as new_date from amazion;
select *, date_format(date_of_joining, "%D-%m-%y")as new_date from amazion;
select *, date_format(date_of_joining, "%d-%M-%y")as new_date from amazion;
select *, date_format(date_of_joining, "%d-%b-%y,%W")as new_date from amazion;

-- time function
use kamlesh;
show tables;
create table ola (customer_name varchar(100),booking_time time);
select * from ola;
insert into ola (customer_name,booking_time)values("kamlesh","9:30"),("mukesh","8:00"),("deepika","3:30"),("manisha","6:45"),("harshita","5:30");
select * from ola;
select *, extract(hour from booking_time)as hour_time , extract(minute from booking_time)as minute_time , extract(second from booking_time)as second_time from ola;
select *, extract(hour from booking_time)as hour_time from ola;
select *, extract(minute from booking_time)as minute_time from ola;
select *, extract(second from booking_time)as second_time from ola;
select *, addtime(booking_time,"1:00")as add_time from ola;
select *, addtime(booking_time,"0:15")as add_minute from ola;
select *, subtime(booking_time,"0:15")as sub_minute from ola;
select curtime();
select sysdate();
alter table ola add column cur_time time;
select * from ola;
set sql_safe_updates=0;
update ola set cur_time=curtime();
select * from ola;
update ola set booking_time=subtime(booking_time,"0:15");
select * from ola;
alter table ola add column hour_time time;
select * from ola;
update ola set hour_time=hour(booking_time);
select * from ola;
select *, time_format(booking_time ,"%h:%i:%s") from ola;
select *, time_format(booking_time ,"%h:%i:%s%p") from ola;
select *, time_format(booking_time ,"%H:%i:%s%p") from ola;
select *, time_format(cur_time,"%r")from ola;

-- aggregate function-sum,count,max,min,avg
use kamlesh;
show tables;
select * from myorders;
select round(sum(sales),2) from myorders;
select count(customer_name) from myorders;
select max(profit) from myorders;
select min(profit) from myorders;
select max(sales) from myorders;
select min(sales) from myorders;
select * from myorders;
select round(avg(sales),2) from myorders;
-- distinct-use to unqiue values for one column
select segment from myorders;
select distinct segment from myorders;

-- sorting- text-asc(a-z),desc(z-a), number-asc(1-100),desc(100-1)
select sales from myorders order by sales asc;
select sales from myorders order by sales desc;
select profit from myorders order by profit desc;
select profit from myorders order by profit asc;
select customer_name from myorders order by customer_name asc;
select customer_name from myorders order by customer_name desc;

-- rank,dense_rank,row_number
select * from myorders order by sales desc;
-- rank
select *, rank() over (order by sales desc)as ranking from myorders;
-- dense_rank
select *, dense_rank() over (order by sales desc)as dranking from myorders;
-- row_number
select *, row_number() over (order by sales desc)as row_num from myorders;

-- cases
-- syntax
-- select *,
-- case
-- when [condition]then result
-- when [condition]then result
-- else result
-- end
use kamlesh; 
show tables;

select *,
case
when sales > 200 then "goodsales"
else "avgsales"
end
as sales from myorders;

select *,
case 
when profit > 1000 then "good" 
when profit > 500 then "avg" 
else "min"
end
as profit from myorders;

select *,
case
when quantity > 10 then "good"
when quantity > 5 then "avg" 
else "min" 
end
as quantity from myorders;

-- constraints- not null,default, check, auto
create table uber (customer_id int not null , customer_name varchar(100),customer_city varchar(100) default "delhi", customer_age int check(customer_age > 15));
select * from uber;
insert into uber(customer_id,customer_name,customer_age) values (101,"kamlesh","18");
select * from uber;
insert into uber(customer_id,customer_name,customer_age) values (101,"kamlesh","16");
select * from uber;

-- keys- unique,primary,foreign 
use kamlesh;
show tables;
create table meesho (cus_id int primary key auto_increment, cus_name varchar(100), phone_no char(10) unique);
select * from meesho;
insert into meesho(cus_name,phone_no)values("kamlesh",4563728485),("mukesh",3434655668),("nirmla",6789543245),("harshita",5674652387),("deepika",5678754234);
select * from meesho;
create table meesho1(customer_id int, product_name varchar(100), pro_price int,
 foreign key (customer_id) references meesho(cus_id) on update cascade on delete cascade);
select * from meesho1;
insert into meesho1 value (1,"jeans",2999),(2,"shirt",799),(3,"watch",4999),(4,"shoes",1999),(5,"beg",1500);
select * from meesho1;
set sql_safe_updates=0;
update meesho set cus_id=7 where cus_id=2;
select * from meesho;
select * from meesho1;
delete from meesho where cus_id=7;
select * from meesho;
select * from meesho1;

-- group by
select * from myorders;
select count(region)as count_row from myorders;
-- find the region wise sales
select distinct(region) from myorders;
select * from myorders;
select region , round(sum(sales),2) as sales from myorders group by region ;
-- find the top one segment wise sales
select segment , round(sum(sales),2) from myorders group by segment ;
select segment , round(sum(sales),2)as sales from myorders group by segment order by sales desc limit 1;
-- find the Sub_Category wise sales
select Sub_Category , round(sum(sales),2) as sales from myorders group by Sub_Category order by sales desc;
select Sub_Category , round(sum(profit),2) as profit from myorders group by Sub_Category order by profit desc;
-- find the top 5 state wise sales and profit
select state , round(sum(sales),2) as sales , round(sum(profit),2)as profit from myorders group by state order by profit desc limit 5;
-- find top 5 sales customer
select Customer_Name , round(sum(sales),2) as sales from myorders group by Customer_Name order by sales desc limit 5;
select Customer_Name , round(avg(sales),2) as sales from myorders group by Customer_Name order by sales desc limit 5;
select Customer_Name , max(sales) as sales from myorders group by Customer_Name order by sales desc;

-- joins- inner join , left join , right join , cross join
use ecom;
select * from customers;
select * from geolocation;
select * from order_items;
select * from orders;
select * from payments;
select * from products;
select * from sellers;
select distinct order_status from orders;
-- select table_1st.column_name , table_snd.column_name from table_1st join table_2nd on table_1st.similer_column=table_2d.similer_column;
select orders.order_status , round(sum(payments.payment_value),2)as payment_value from orders join payments on orders.order_id=payments.order_id group by order_status;
 select distinct payment_type from payments;
 select payments.payment_type , round(sum(order_items.price),2) from payments join order_items on payments.order_id = order_items.order_id group by payment_type;

use kamlesh;

create table t1(id int primary key auto_increment,name varchar(100),tid int);
select * from t1;
insert into t1 (name,tid)values("kamlesh",1),("mukesh",2),("harshita",3),("deepika",4),("manisha",7);
select * from t1;

create table t2(tid int,t_name varchar(100));
select * from t2;
insert into t2 values (1,"deepa"),(2,"rahul"),(3,"aman"),(4,"suresh"),(5,"jagdish");
select * from t2;

select * from t1;
select * from t2;
-- inner join / join
select t1.id,t1.name,t2.tid,t2.t_name from t1 inner join t2 on t1.tid=t2.tid;
select t1.id,t1.name,t2.tid,t2.t_name from t1 join t2 on t1.tid=t2.tid;

-- left join / left outer join
select * from t1 left join t2 on t1.tid = t2.tid;
select t1.id,t1.name,t1.tid,t2.t_name from t1 left join t2 on t1.tid = t2.tid;
select t1.id,t1.name,t1.tid,t2.t_name from t1 left outer join t2 on t1.tid = t2.tid;

-- right join / right outer join
select * from t1 right join t2 on t1.tid=t2.tid;
select t1.id,t1.name,t2.tid,t2.t_name from t1 right join t2 on t1.tid=t2.tid;
select t1.id,t1.name,t2.tid,t2.t_name from t1 right outer join t2 on t1.tid=t2.tid;

-- cross join
select * from t1 cross join t2;


-- set operator- union , all union ,intersect , minus
use kamlesh;
create table d1(id int , name varchar(100));
insert into d1 values(1,"kamlesh"),(1,"kamlesh"),(2,"mukesh"),(3,"harshita"),(4,"deepika"),(5,"manisha");
select * from d1;
create table d2(id int, name varchar(100));
insert into d2 values(6,"manish"),(7,"deepak"),(8,"sumit"),(9,"karan"),(10,"suresh");
insert into d2 values(3,"harshita");
select * from d2;
-- union
select * from d1 union select * from d2;
-- union all
select * from d1 union all select * from d2;
-- intersect
select * from d1 intersect select * from d2;