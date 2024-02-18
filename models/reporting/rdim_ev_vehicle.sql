with rdim_ev_vehicle as (

    select
        *
    from {{ref('dim_ev_vehicle')}}
)

select * from rdim_ev_vehicle