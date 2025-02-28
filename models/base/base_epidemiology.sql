with base_epidemiology as (

    select
        _airbyte_epidemiology_hashid,
        date,
        location_key,
        new_confirmed,
        new_deceased,
        new_recovered,
        new_tested,
        cumulative_confirmed,
        cumulative_deceased,
        cumulative_recovered,
        cumulative_tested
    from {{ source('raw_covid19', 'epidemiology') }}

)

select * from base_epidemiology
