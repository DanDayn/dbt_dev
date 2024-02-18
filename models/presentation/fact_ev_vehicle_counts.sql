with fact_ev_vehicle_counts as (
    
    select 
        dim_ev_vehicle_key
        , registration_date
        , registration_month
        , registration_year
        , count_of_evs
    from {{ref("stg_fact_ev_vehicle_counts")}}
)

select * from fact_ev_vehicle_counts