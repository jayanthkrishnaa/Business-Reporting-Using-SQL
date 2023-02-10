select *,get_fiscal_quater(date) as Quarter from fact_sales_monthly 
where get_fiscal_quater(date) = 'Q3';