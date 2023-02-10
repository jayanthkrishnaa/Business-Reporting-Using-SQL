select c.customer,s.date,round(sum(g.gross_price*s.sold_quantity),2) as total_gross_price from fact_sales_monthly s 
join fact_gross_price g on s.product_code = g.product_code and 
	get_fiscal_year(s.date) = g.fiscal_year
join dim_customer c
on s.customer_code = c.customer_code
where s.customer_code in (90002002,70004069)
group by date, customer
order by date