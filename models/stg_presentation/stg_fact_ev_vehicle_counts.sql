with stg_fact_ev_vehicle_counts as (
    select 
        sha2(motive_power || vehicle_company || vehicle_model, 256) as dim_ev_vehicle_key
        , registration_year
        , registration_month
        , cast(registration_year || '-' || registration_month || '-' || '1' as date) as registration_date
        , count(*) as count_of_evs
    from {{ref('staging_ev_vehicle')}}
    group by
        sha2(motive_power || vehicle_company || vehicle_model, 256)
        , registration_year
        , registration_month
        , cast(registration_year || '-' || registration_month || '-' || '1' as date)

)

select * from stg_fact_ev_vehicle_counts