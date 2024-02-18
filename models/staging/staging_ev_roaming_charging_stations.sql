with staging_ev_roaming_charging_stations as (

    select 
        objectid as charging_station_id
        , cast(latitude as decimal(11,6)) as location_latitude
        , cast(longitude as decimal(11,6)) as location_longitude
        , cast(datefirstoperational as date) as start_operation_date
    from {{ source('raw', 'ev_roaming_charging_stations_raw') }}

)

select * from staging_ev_roaming_charging_stations