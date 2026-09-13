![project one overview](https://copilot.microsoft.com/th/id/BCO.7209ed09-ba60-4469-b68e-7849c069bc2d.png)

# exploratory data analysis project with SQL/ job market analysis
This project is an end‑to‑end data engineering and analytics workflow built using real job posting data. The goal is to extract meaningful insights from thousands of job listings by designing a structured SQL‑based analysis pipeline that mirrors how data engineers work with real‑world datasets.

The project demonstrates how raw, unstructured job posting data can be cleaned, modeled, queried, and transformed into actionable information for workforce analytics, hiring trends, and labour‑market intelligence.
## executive summary
- **Project scope:** This project delivers an end‑to‑end SQL‑driven analysis pipeline built on real job posting data, designed to uncover labour‑market trends and skill demand across industries.

- **data model:** A clear relational model was developed, separating core entities such as jobs, companies, locations, and skills, enabling flexible joins and scalable analysis.
- **Analytics:**  A series of SQL queries were executed to identify hiring patterns, top job titles, high‑demand skills, salary distributions, and geographic hotspots for recruitment activity.
- **outcomes:** The project outcomes include a set of validated datasets, reusable SQL scripts, and actionable insights that highlight workforce trends and employer behaviour.

if only you have one minutes review this:

[top demaded skills query] (1.11 lesson/1.EDA/1.2 top skills.sql)
## Problem and Context 
Recruiters, job seekers, and workforce planners struggle to answer key questions such as:

- Which roles are most in demand?

- What skills are employers consistently requesting?

- Which companies are hiring the most?

- How do salaries vary across locations and job titles?

The project analyse a data warehouse using a star schema design. The warehouse structure of:
![data warehouse](https://copilot.microsoft.com/th/id/BCO.82a326eb-0d0b-49e4-bf8a-df05d04e6fda.png) 

1. Fact Table – job_postings_fact
This is the core of the warehouse, containing one record per job posting.

2. Dimension Tables
company_dim – Stores company metadata like name, source (e.g., LinkedIn, Google), and standardization fields.

skills_job_dim – Acts as a bridge table linking jobs to their required skills (many‑to‑many relationship).

skills_dim – Contains unique skill names and categories for classification and aggregation.

3. Relationships
Each job posting links to one company (company_id → company_dim).

Each job can have multiple skills through the bridge (skills_job_dim).

Skills are standardized in skills_dim for consistent querying.

4. Analytical Purpose
This schema supports queries such as:

Top hiring companies by job count

Most in‑demand skills across industries

Salary trends by role and location.

## Tech stack

| Layer | Tools & Technologies | Purpose |
| --- | --- | --- |
| **Data Storage & Query Engine** | 🦆 **DuckDB / MotherDuck** | Lightweight analytical database for local and cloud SQL processing. |
| **Data Processing & Transformation** | **SQL** | ETL automation, data cleaning, and integration with SQL queries. |
| **Data Modeling** | 🧩 **SQL** | Schema design, normalization, and analytical query development. |
| **Version Control** | 💻 **Git & GitHub** | Code management, documentation, and project collaboration. |
| **Environment & Automation** | 🖥️ **Bash / Command Line** | Workflow automation and environment setup. |
| **Cloud Integration** | ☁️ **MotherDuck** | Scalable data storage and cloud analytics. |
## analysis overview
1.[**Top demanded skills**](./1.%20Top_demanded_skills)
This shows top ten high demanaded skills for data engineers.

1.2 [**Highest paying skills**](./highest%20paying%20skills/1.4%20highest_paying_skills.sql) : This shows the top ten highest paying skills
# Key Insight 

- **Python and SQL** dominate the job market, each appearing in more than 750k job postings — confirming they are the foundational skills for data roles.

- **Cloud skills** are highly valuable, with AWS (302k) and Azure (280k) showing strong employer demand as companies continue migrating to cloud platforms.

- **Business intelligence tools** remain essential, with Excel (245k), Tableau (241k), and Power BI (205k) all ranking in the top 10 — highlighting the importance of data visualization and reporting.
