-- Write your PostgreSQL query statement below
select sell_date, count(*) as num_sold, string_agg(product, ',' order by product) as products
from (
    select distinct * from Activities
) as a
group by sell_date
order by sell_date 