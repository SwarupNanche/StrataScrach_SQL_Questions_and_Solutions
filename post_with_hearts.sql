-- ID 10087
-- Find all posts which were reacted to with a heart

select a.* from facebook_posts a
inner join facebook_reactions b
on a.post_id=b.post_id
where b.reaction='heart'
