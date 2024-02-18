with staging_motor_vehicle as (
    select 
        objectid as vehicle_id
        , motive_power as motive_power
        , cast(first_nz_registration_year as int) as registration_year
        , make as vehicle_company
        , model as vehicle_model
    from {{ source('raw', 'motor_vehicle_register_raw') }}
    where lower(motive_power) like 'electric%'
        or lower(motive_power) like '%plugin%'
)

select * from staging_motor_vehicle