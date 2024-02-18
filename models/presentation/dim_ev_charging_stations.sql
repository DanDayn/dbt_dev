with dim_ev_charging_stations as (

    select 
        charging_station_id
        , start_operation_date
        , location_latitude
        , location_longitude
        , operator
        , owner
        , address
        , globalid
        , name
        , type
    from {{ref('stg_dim_ev_charging_stations')}}
)

select * from dim_ev_charging_stations