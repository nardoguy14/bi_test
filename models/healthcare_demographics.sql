select
    age,
    gender
from {{ source('nardosdb', 'healthcare_dataset') }}