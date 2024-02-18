with fact_ev_charging_stations_distances as (

    select
        anchor_station_id
        , destination_station_id
        , distance_kms
    from {{ref('stg_fact_ev_charging_stations_distances')}}
)

select * from fact_ev_charging_stations_distances