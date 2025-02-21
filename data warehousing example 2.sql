--for dimdate table
CREATE TABLE dimDate
(
	date_key integer NOT NULL PRIMARY KEY,
	date date NOT NULL,
	year smallint NOT NULL,
	quarter smallint NOT NULL,
	month smallint NOT NULL,
	day smallint NOT NULL,
	week smallint NOT NULL,
	is_weekend boolean
);



-- to know diff datatypes in the table
select column_name,data_type from information_schema.columns where table_name='dimdate';


--for customer table
CREATE TABLE dimCustomer
(
	customer_key SERIAL PRIMARY KEY,
	customer_id smallint NOT NULL,
	fisrt_name varchar(45) NOT NULL,
	last_name varchar(50) NOT NULL,
	email varchar(50),
	address varchar(45) NOT NULL,
	address2 varchar(50),
	district varchar(20)NOT NULL,
	city varchar(50) NOT NULL,
	country varchar(50) NOT NULL,
	postal_code varchar(10),
	create_date timestamp NOT NULL,
	start_date date NOT NULL,
	end_date date NOT NULL
);

select column_name,data_type from information_schema.columns where table_name='dimcustomer';


INSERT INTO dimdate
(date_key,date,year,quarter,month,day,week,is_weekend)
SELECT 
	   date(payment_date) as date;
	   EXTRACT(year from payment_date) as year,
	   EXTRACT(quarter from payment_date),
	   EXTRACT(month from payment_date),
	   EXTRACT(day from payment_date),
	   EXTRACT(week from payment_date)
FROM payment;
