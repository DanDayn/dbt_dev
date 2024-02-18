with staging_ev_charging_stations as (

    select 
        objectid as charging_station_id
        , address
        , globalid
        , name
        , type
        , operator
        , owner
        , cast(latitude as decimal(11,6)) as location_latitude
        , cast(longitude as decimal(11,6)) as location_longitude
        , date(to_date(datefirstoperational, 'DD/MM/YYYY'), 'YYYY-MM-DD') as start_operation_date
    from {{ source('raw', 'ev_roaming_charging_stations_raw') }}

)

select * from staging_ev_charging_stations