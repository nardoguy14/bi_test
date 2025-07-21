select
    age,
    gender,
    current_date as record_date
from {{ source('nardosdb', 'healthcare_dataset') }}