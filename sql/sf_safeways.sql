drop table if exists sf_safeways;

create table sf_safeways as
    select *
    from weekly_patterns
    where true
        and location_name = 'Safeway'
        and city = 'San Francisco'
        and region = 'CA'
;
