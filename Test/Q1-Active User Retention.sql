select 7 as month , count(distinct(user_id)) as monthly_active_users
from user_actions u where event_date>='2022-07-01' and event_date<'2022-08-01' and 
exists(select 1 from user_actions p 
where p.user_id=u.user_id and p.event_date>='2022-06-01' and p.event_date<'2022-07-01' )
