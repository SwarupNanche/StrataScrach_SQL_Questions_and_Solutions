-- ID 2081
-- Recommendation System ID 2081
-- You are given the list of Facebook friends and the list of Facebook pages that users follow. 
-- Your task is to create a new recommendation system for Facebook. For each Facebook user, find pages that this user doesn't follow but at least one of their friends does. 
-- Output the user ID and the ID of the page that should be recommended to this user.


select distinct c.user_id,c.page_id from 
(select a.user_id,a.friend_id,b.page_id
from users_friends a
inner join users_pages b
on a.friend_id=b.user_id
order by a.user_id,a.friend_id) c 
except 
(select distinct user_id,page_id from users_pages)
