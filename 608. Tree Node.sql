#   https://leetcode.com/problems/tree-node/description/?envType=study-plan&id=sql-i

select id,'Root' as type
from Tree 
where p_id is null
union
select id,'Leaf' as type
from Tree
where id not in(select p_id from Tree where p_id is not null) and p_id is not null
union
select distinct(id),'Inner' as type
from Tree
where id not in(
    with t as(
        select id,'Root' as type
        from Tree 
        where p_id is null
        union
        select id,'Leaf' as type
        from Tree
        where id not in(select p_id from Tree where p_id is not null) and p_id is not null
    )
    select t.id
    from t
)