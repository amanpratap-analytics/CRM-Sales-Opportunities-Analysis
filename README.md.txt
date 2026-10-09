CRM Sales & Opportunities Analysis

📊 Project Overview

This project analyzes CRM sales and opportunity data to uncover actionable insights into sales performance, customer accounts, product performance, sector contribution, sales-agent effectiveness, and the active sales pipeline.

The project follows an end-to-end Data Analytics workflow, transforming raw CRM data into business insights and interactive Power BI dashboards.

Workflow:

Excel → Python → PostgreSQL/SQL → Power BI → Business Insights → Recommendations

🎯 Objective

The main objective of this project is to help business stakeholders:

* Monitor overall sales performance
* Measure opportunity conversion and Win Rate
* Identify high-performing sales agents
* Analyze product and sector performance
* Identify valuable customer accounts
* Monitor the active sales pipeline
* Understand sales-cycle performance
* Make data-driven sales decisions

## 📈 Key Business Results

| Metric                        |  Result |
| ----------------------------- | ------: |
| Total Opportunities           |   8,800 |
| Won Opportunities             |   4,240 |
| Lost Opportunities            |   2,470 |
| Win Rate                      |  63.15% |
| Total Won Sales               | $10.01M |
| Active Pipeline Opportunities |   2,089 |

🔍 Key Findings

* Darcel Schlecht generated the highest Won Sales at approximately $1.15M.
* Hayden Neloms achieved the highest Win Rate at 70.39%.
* GTX Pro was the top-performing product with approximately $3.5M in Won Sales.
* Retail was the leading sector with approximately $1.87M in Won Sales.
* Zotware was the strongest identified customer account with approximately $138K in Won Sales.
* Won opportunities took an average of 51.78 days to close, compared with 41.48 days for Lost opportunities.
* The active pipeline contains 2,089 Engaging and Prospecting opportunities, representing potential future business.

🗂️ Dataset

The project uses three primary CRM datasets:

| Dataset              | Description                                                                          |
| -------------------- | ------------------------------------------------------------------------------------ |
| `sales_pipeline.csv` | Sales opportunities, agents, products, accounts, deal stages, dates, and deal values |
| `accounts.csv`       | Customer account information, sectors, revenue, employees, and locations             |
| `products.csv`       | Product names, product series, and sales prices                                      |

Data Quality

Before analysis, the datasets were checked for common data-quality issues.

* No missing/null values were identified.
* No duplicate records were identified.
* Deal-stage values were validated.
* Important date and numeric fields were reviewed.
* Relationships between sales opportunities, customer accounts, and products were established for analysis.

The validated datasets were then used for SQL analysis, Python EDA, and Power BI dashboard development.

🛠️ Tools & Technologies

Data Analysis

* Python
* Pandas
* Matplotlib
* Seaborn
* Jupyter Notebook

Database & SQL

* PostgreSQL
* SQL
* pgAdmin

Business Intelligence

* Microsoft Power BI
* DAX
* Power BI Drill-Through
* Power BI Slicers
* Cross-Filtering

Documentation

* Microsoft Excel
* Microsoft Word
* GitHub

🔄 Project Workflow

Raw CRM Data
     ↓
Excel Data Validation
     ↓
Python EDA
     ↓
PostgreSQL Database
     ↓
SQL Business Analysis
     ↓
Power BI Dashboard
     ↓
Business Insights
     ↓
Business Recommendations
     ↓
GitHub Portfolio

📊 Power BI Dashboard

The CRM analysis was converted into an interactive Power BI dashboard designed for business and stakeholder analysis.

Dashboard Pages

* Executive Overview — Overall sales KPIs, sales trends, deal-stage distribution, product performance, and sales-agent performance.
* Sales Analysis — Sales-agent performance, Win Rate, active pipeline, product filtering, deal-stage filtering, and sector performance.
* Customer & Product Analysis — Customer performance, product performance, sector-product analysis, and account-level metrics.
* Account Details — Drill-through analysis for individual customer accounts.
* Sales Agent Details — Drill-through analysis for individual sales agents.
* Product Details — Drill-through analysis for individual products.

Interactive Features

* KPI measures using DAX
* Product and sector slicers
* Deal-stage filtering
* Cross-filtering between visuals
* Account drill-through
* Sales-agent drill-through
* Product drill-through
* Dynamic titles based on selections
* Interactive account, agent, and product analysis

The dashboard enables stakeholders to move from high-level business performance to detailed analysis of individual customers, sales agents, and products.


💡Business Recommendations

Based on the analysis, the following actions are recommended:

1. Prioritize high-performing products
   Focus on products such as GTX Pro, GTX Plus Pro, and MG Advanced while identifying opportunities for cross-selling and upselling.

2. Learn from high-performing sales agents
   Study high-revenue agents for deal-generation strategies and high-Win-Rate agents for effective conversion and closing practices.

3. Focus on high-performing sectors
   Retail, Technology, and Medical sectors should receive greater attention because of their strong contribution to Won Sales.

4. Strengthen high-value customer relationships
   Maintain and expand relationships with high-performing accounts through retention, upselling, and cross-selling.

5. Improve active pipeline management
   Prioritize the 2,089 active opportunities based on account potential, product, sector, opportunity stage, and historical conversion patterns.

6. Optimize the sales cycle
   Investigate the additional time associated with successful Won deals to identify activities that improve conversion while reducing unnecessary delays.





