SELECT 
    sd.skills,
    ROUND(AVG(jf.salary_year_avg), 0) AS avg_salary
FROM job_postings_fact jf
JOIN skills_job_dim sjd
    ON jf.job_id = sjd.job_id
JOIN skills_dim sd
    ON sjd.skill_id = sd.skill_id
WHERE jf.salary_year_avg IS NOT NULL
GROUP BY sd.skills
ORDER BY avg_salary DESC
LIMIT 10;


┌──────────────┬────────────┐
│    skills    │ avg_salary │
│   varchar    │   double   │
├──────────────┼────────────┤
│ fedora       │   182350.0 │
│ mongo        │   173411.0 │
│ debian       │   164891.0 │
│ node         │   161556.0 │
│ haskell      │   159943.0 │
│ rust         │   159664.0 │
│ apl          │   155714.0 │
│ golang       │   155483.0 │
│ hugging face │   154555.0 │
│ solidity     │   154308.0 │
└──────────────┴────────────┘
