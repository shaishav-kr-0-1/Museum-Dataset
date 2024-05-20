#1) Fetch all the paintings which are not displayed on any museums? 
select * from work
where museum_id is null;

#2) Are there museuems without any paintings?
Select m.name,count(w.name) from museum m
join work w
on m.museum_id = w.museum_id
group by 1;

#No of painting made by artist
select full_name , count(w.name) as "No. of paintings" from artist a
join work w 
on a.artist_id = w.artist_id
group by 1;

#3) How many paintings have an asking price of more than their regular price? 
select w.name from work w 
join product_size p
on w.work_id = p.work_id
where sale_price > regular_price;


#4) Identify the paintings whose asking price is less than 50% of its regular price
select w.name , sale_price ,regular_price from work w 
join product_size p
on w.work_id = p.work_id
where regular_price < (sale_price/2);



#5) Which canva size costs the most?
select size_id from canvas_size;