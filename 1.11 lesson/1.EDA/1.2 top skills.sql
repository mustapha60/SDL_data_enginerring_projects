select sd.skills, 
median(jpf.salary_year_avg) as median_salary,
count(jpf.*) as demand_count
from job_postings_fact as jpf
inner join skills_job_dim as sjd on jpf.job_id=sjd.job_id
inner join skills_dim as sd on sjd.skill_id=sd.skill_id
group by sd.skills
order by median_salary DESC
limit 25;