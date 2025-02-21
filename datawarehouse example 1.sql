select count(*) from customer;

select count(*) from store;

select min(payment_date) min_paymet,
max(payment_date) max_payment from payment;

select * from payment;

select p.payment_id,p.rental_id,p.amount from payment as p;

select p.payment_id,p.rental_id,p.amount,r.rental_id,r.inventory_id,i.film_id,f.title from payment as p
join rental r ON p.rental_id=r.rental_id
join inventory i ON r.inventory_id=i.inventory_id
join film f on i.film_id=f.film_id

select f.title,sum(p.amount) as revenue from payment as p
join rental r ON p.rental_id=r.rental_id
join inventory i ON r.inventory_id=i.inventory_id
join film f on i.film_id=f.film_id
group by f.title
order by sum(p.amount) ASC

--find the top city that providing the revenue based on 
--film source / need to join the city tables the query which is bought and get the highest amount or evenue which is generated from the city
--which city is giving the highest revenue.


