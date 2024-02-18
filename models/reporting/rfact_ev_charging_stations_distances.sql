with rfact_ev_charging_stations_distances as (

    select 
        anchor_station_id
        , destination_station_id
        , cast(distance_kms as decimal(16,2)) --Example of how rfact would be useful for analysts
    from {{ref('fact_ev_charging_stations_distances')}}
)

select * from rfact_ev_charging_stations_distances