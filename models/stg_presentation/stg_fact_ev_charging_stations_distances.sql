with stg_fact_ev_charging_stations_distances as (

    select 
        anchor_station.charging_station_id anchor_station_id
        , destination_station.charging_station_id destination_station_id
        , haversine(anchor_station.location_latitude, anchor_station.location_longitude, destination_station.location_latitude, destination_station.location_longitude) distance_kms
    from {{ref('staging_ev_charging_stations')}} anchor_station
    cross join {{ref('staging_ev_charging_stations')}} destination_station 
    where anchor_station.charging_station_id <> destination_station.charging_station_id

)

select * from stg_fact_ev_charging_stations_distances