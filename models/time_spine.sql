{{
    config(
        materialized = 'table',
    )
}}

with days as (
    {{ 
        dbt.date_spine(
            'day',
            "DATE('2020-01-01')",
            "DATE('2030-12-31')"
        )
    }}
)

select
    cast(date_day as date) as date_day
from days