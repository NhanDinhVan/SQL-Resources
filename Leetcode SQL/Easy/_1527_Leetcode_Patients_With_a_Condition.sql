-- Write your PostgreSQL query statement below
select *
from Patients
where exists (
    select 1 from unnest(string_to_array(conditions, ' ')) as c
    where c like 'DIAB1%'
)