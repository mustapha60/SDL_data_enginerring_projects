select jpf.job_title_short,jpf.job_title,cd.company_id,cd.link
from 
job_postings_fact as jpf
left join 
company_dim as cd on 
jpf.company_id= cd.company_id;
select count(*) from job_postings_fact;
select * from skills_job_dim limit 10;
select* from skills_dim limit 10;
select sjd.job_id,sd.skills
from skills_job_dim as sjd
join skills_dim as sd on 
sjd.skill_id = sd.skill_id; 
select * from job_postings_fact limit 10;
select * from company_dim limit 10;
explain select cd.name as company_name,
count(jpf.job_id) as posting_count
from job_postings_fact as jpf
left join company_dim as cd on jpf.company_id =cd.company_id
where jpf.job_country = 'united states' 
group by cd.name 
having count(jpf.job_id) > 3000; 
order by posting_count limit 10;
explain 
SELECT 
    c.name as company_name,
    COUNT(j.company_id) AS total_postings
FROM job_postings_fact as j
JOIN company_dim as c
    ON c.company_id = j.company_id
WHERE j.job_location = 'United States'
GROUP BY c.name
HAVING COUNT(j.job_id) > 3000
ORDER BY total_postings DESC;
