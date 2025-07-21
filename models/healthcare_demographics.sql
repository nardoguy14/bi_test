-- Generate a date for each record spread across the last 90 days
select
    age,
    gender,
    current_date - ((row_number() over (order by age, gender)) % 90)::integer as record_date
from {{ source('nardosdb', 'healthcare_dataset') }}