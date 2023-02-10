select s.date,s.product_code,p.product,p.variant,
s.sold_quantity,g.gross_price,s.sold_quantity*g.gross_price as total_gross_price
from fact_sales_monthly s
join dim_product p
on s.product_code = p.product_code
join fact_gross_price g on
s.product_code = g.product_code and g.fiscal_year = get_fiscal_year(s.date)
where get_fiscal_year(date) = 2021 and customer_code = 90002002
order by date;