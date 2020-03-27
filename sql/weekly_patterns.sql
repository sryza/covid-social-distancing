drop table if exists weekly_patterns;

create table weekly_patterns (
    safegraph_place_id varchar,
    location_name varchar,
    street_address varchar,
    city varchar,
    region varchar,
    postal_code varchar,
    brands varchar,
    naics_code varchar,
    date_range_start varchar,
    date_range_end varchar,
    raw_visit_counts varchar,
    raw_visitor_counts varchar,
    visits_by_day varchar,
    visits_by_each_hour varchar,
    visitor_home_cbgs varchar,
    visitor_country_of_origin varchar,
    distance_from_home varchar,
    median_dwell varchar,
    bucketed_dwell_times varchar,
    related_same_day_brand varchar,
    related_same_week_brand varchar,
    device_type varchar,
    iso_country_code varchar
);

copy weekly_patterns
    from '/Users/sandy.ryza/covid/v1/main-file/2020-03-15-weekly-patterns.csv'
    delimiter ','
    csv
        quote '"'
        escape '"'
        header
;
