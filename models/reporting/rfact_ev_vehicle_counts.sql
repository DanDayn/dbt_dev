with rfact_ev_vehicle_counts as (
    
    select
        *
    from {{ref('fact_ev_vehicle_counts')}}
)

select * from rfact_ev_vehicle_counts