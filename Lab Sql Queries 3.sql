use sakila;
select count(distinct last_name) as num_distinct_last_names from actor;
select count(language_id) as num_languages from film;
select count(*) as num_pg13_movies from film where rating = "PG-13";
select title, length from film where release_year = 2006 order by length desc limit 10;
select datediff(now(), min(last_update)) as days_operating from rental;
select rental_id, rental_date, month(rental_date) as rental_month, dayname(rental_date) as rental_weekday from rental limit 20;
select rental_id, rental_date,
case when dayofweek(rental_date) in (1,7) then "weekend" else "workday" end as day_type from rental limit 20;
select count(*) as num_rentals_last_month from rental where rental_date <= date_sub(now(), interval 1 month);
