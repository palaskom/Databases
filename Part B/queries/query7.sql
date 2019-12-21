# All Greek chess players in descending order of the rating and number of those who have the 'IM' title

drop table if exists t1;
create temporary table t1 as select country, title, first_name, last_name, rating, club_name, club_location
from players_with_clubs
where country = 'GRE'
order by rating desc;

drop table if exists t2;
create temporary table t2 as select * from t1;
# we duplicate table t1 because temporary tables cannot be opened again in other query
# https://bugs.mysql.com/bug.php?id=10327

select * from t1;
select count(*) as count_of_IM_greek_players from t2 where title = 'IM'
