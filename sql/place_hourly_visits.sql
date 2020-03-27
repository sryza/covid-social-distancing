drop table if exists place_hourly_visits;

create table place_hourly_visits as
    select
        *,
        row_number() over (partition by safegraph_place_id) as hour_of_week
    from (
        select
            safegraph_place_id,
            date_range_start::timestamp,
            unnest(
                string_to_array(
                    trim(trailing ']' from
                        trim(leading '[' from visits_by_each_hour)
                    ),
                    ','
                )
            )::int as visits
        from weekly_patterns
    ) b
;
