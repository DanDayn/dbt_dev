with stg_dim_ev_vehicle as (
    select 
        sha2(motive_power || vehicle_company || vehicle_model, 256) as dim_ev_vehicle_key
        , motive_power
        , vehicle_company
        , vehicle_model
        , count(*) as count_of_evs
    from {{ref('staging_ev_vehicle')}}
    group by
        motive_power
        , vehicle_company
        , vehicle_model
)

select * from stg_dim_ev_vehicle