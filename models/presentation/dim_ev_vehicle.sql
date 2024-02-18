with dim_ev_vehicle as (
    
    select 
        dim_ev_vehicle_key
        , motive_power
        , vehicle_company
        , vehicle_model
    from {{ref("stg_dim_ev_vehicle")}}

)

select * from dim_ev_vehicle