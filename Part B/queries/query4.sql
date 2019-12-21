# Percentage of won games of specific chess player within a defined period of time

set @player = 1;
set @start_date = '2001-1-1';
set @end_date = '2019-1-1';

drop table if exists t1;
create temporary table t1 as select fk_white_player,fk_black_player,result from GAME where (fk_white_player=@player or fk_black_player=@player)
and game.date between @start_date and @end_date;
drop table if exists t2;
create temporary table t2 as select * from t1;   
# we duplicate table t1 because temporary tables cannot be opened again in other query
# https://bugs.mysql.com/bug.php?id=10327

select (select count(*) from t1 where (fk_white_player=@player and result='1-0') or (fk_black_player=@player and result='0-1'))
 / (select count(*) from t2)*100 as win_percentage;

