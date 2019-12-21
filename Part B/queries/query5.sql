# Total wins of white, black and draws in specific tournament for specific opening code (set of moves)

set @tournament = 88;
set @code = 'D24';

# ----------------------------------------------------------------------------------------------------------------------------------------#

# 1st Approach 
# This approach would be better in terms of user resources but was not selected because of the error in the current MySQL version 
# that temporary tables can only be opened once

# drop table if exists t1;
# create temporary table t1 as select * from game join opening on fk_opening=openingid where fk_tournament=@tournament and code=@code;
# select (select count(*) as white_win_count from t1 where result='1-0'),(select count(*) as black_win_count from t1 where result='0-1'),
#	(select count(*) as draw_count where result='1/2-1/2');

# ----------------------------------------------------------------------------------------------------------------------------------------#

# 2nd Approach
select count(*) as white_win_count from game join opening on fk_opening=openingid where fk_tournament=@tournament and result='1-0' and code=@code;

select count(*) as black_win_count from game join opening on fk_opening=openingid where fk_tournament=@tournament and result='0-1' and code=@code;

select count(*) as draw_count from game join opening on fk_opening=openingid where fk_tournament=@tournament and result='1/2-1/2' and code=@code;
