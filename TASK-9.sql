-----find_profit_percentage

select * from sales

select * from customer

CREATE OR REPLACE FUNCTION find_profit_percentage(customer_id varchar)
RETURNS double precision AS $$
DECLARE
             sum_profit double precision;
             sum_sales double precision;
             profit_percentage double precision;
BEGIN
       SELECT SUM(profit) as Sum_profit, SUM(sales) as sum_sales
       INTO Sum_profit, Sum_sales
       FROM sales
       WHERE sales.customer_id = find_profit_percentage.customer_id;

IF Sum_Sales IS NOT NULL AND Sum_sales <> 0 THEN
   profit_percentage := (Sum_profit / Sum_sales) * 100;
ELSE 
    profit_percentage := 0; --- HAndle division by zero or Null case
END IF;
    RETURN profit_percentage;
END;
  $$ LANGUAGE plpgsql;

select sum(profit) as sum_profit,sum(sales) as sum_sales , sum(profit)/sum(sales) as profit_percentage
from sales
where customer_id = 'GH-14485'
	

select find_profit_percentage('GH-14485')

select * from sales

select * from customer

CREATE OR REPLACE FUNCTION ratio_profit_percentage(product_id varchar)
RETURNS double precision AS $$
DECLARE
             sum_profit double precision;
             sum_sales double precision;
             profit_percentage double precision;
BEGIN
       SELECT SUM(profit) as Sum_profit, SUM(sales) as sum_sales
       INTO Sum_profit, Sum_sales
       FROM sales
       WHERE sales.product_id = ratio_profit_percentage.product_id;

IF Sum_Sales IS NOT NULL AND Sum_sales <> 0 THEN
   profit_percentage := (Sum_profit / Sum_sales) * 100;
ELSE 
    profit_percentage := 0; --- HAndle division by zero or Null case
END IF;
    RETURN profit_percentage;
END;
  $$ LANGUAGE plpgsql;

select sum(profit) as sum_profit,sum(sales) as sum_sales , sum(profit)/sum(sales) as profit_percentage
from sales
where product_id = 'OFF-LA-10000240'

select ratio_profit_percentage('OFF-LA-10000240')
	



	
