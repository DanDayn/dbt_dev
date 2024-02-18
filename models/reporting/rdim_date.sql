--This is not good practice, but because I don't have a basis for a dim_date, and manually inserted a table directly, doing a reporting layer means I can easily update additional attributes
with rdim_date as (

    select 
        *
        , month_name_abv || '-' || year as short_month_year
    from dbt_dandayn_presentation.dim_date

)

select * from rdim_date