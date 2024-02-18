with rdim_ev_charging_stations as (

    select
        *
    from {{ref('dim_ev_charging_stations')}}
)

select * from rdim_ev_charging_stations