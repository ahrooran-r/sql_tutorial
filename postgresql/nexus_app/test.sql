select *
from nexus.articles a
         join nexus.articles_categories ac on a.id = ac.article_id
         join nexus.categories c on ac.category_id = c.id
where c.name=?
order by a.last_updated_on desc fetch first ? rows only;