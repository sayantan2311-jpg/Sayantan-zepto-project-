 Zepto Product Analytics Dashboard

An end-to-end Data Analysis & Visualization project** built on Zepto's product catalogue — exploring inventory health, pricing strategy, discount bands, stock risk, and revenue intelligence using **Power BI** and an interactive **HTML dashboard**.

 Project Overview

This project analyzes Zepto's quick-commerce product data to uncover patterns in stock availability, discount behavior, weight-price relationships, and category-level revenue performance. The findings are visualized through a 5-page Power BI report, with Page 5 serving as the executive summary dashboard.

A standalone **HTML version** of the dashboard is also included — fully interactive, GitHub Pages-ready, and zero-dependency (no Power BI license needed to view).

 Key Business Questions Answered

- Which product categories have the highest out-of-stock risk?
- How do discount bands correlate with stock availability across categories?
- What is the relationship between product weight class, price band, and budget revenue?
- Which categories drive the most revenue vs. product count?
- How does discount percentage vary by price band and stock risk level?

 Dashboard Pages

| Page | Title | Focus |
|------|-------|-------|
| 1 | Data Overview | Raw catalogue summary & schema |
| 2 | Category Deep-Dive | Per-category metrics breakdown |
| 3 | Pricing Analysis | Price bands, MRP distribution |
| 4 | Discount Intelligence | Discount % patterns & savings |
| **5** | **Executive Dashboard** | **KPIs · Charts · Risk Matrix** |

 Dashboard Visuals (Page 5)

| Visual | Type | Insight |
|--------|------|---------|
| Total Products | KPI Card | Catalogue size |
| Total MRP Value | KPI Card | Gross catalogue value |
| Total Savings | KPI Card | Customer savings generated |
| Out of Stock | KPI Card | Items currently unavailable |
| Stock Availability | Donut Chart | In-stock vs. OOS split |
| Category Stock by Discount Band | 100% Stacked Bar | Availability across discount tiers |
| Revenue & Discount by Weight | Column + Line Combo | Budget revenue vs. avg discount % |
| Stock Risk vs. Discount | Bubble / Scatter | Price band risk exposure |
| Revenue + Product Count | Bar + Line Combo | Category-level dual-axis view |
| Category Filters | Slicers | Filter by Category & Value Score |

 Repository Structure
 

zepto-analytics/
│
├── Sayantan_zepto_power_bi_project.pbix   
├── zepto_dashboard.html                  
├── README.md                              
└── assets/                                
    └── dashboard_preview.png
    


 Tools & Technologies

| Tool | Purpose |
|------|---------|
| **Power BI Desktop** | Report authoring, DAX measures, data modelling |
| **DAX** | Custom KPIs — Total MRP, Savings, Out-of-Stock Formatted |
| **HTML / CSS / JS** | Standalone dashboard for GitHub Pages |
| **Chart.js** | Interactive charts in the HTML version |
| **Python** | `.pbix` file extraction & layout parsing |

 Key DAX Measures Used


## 📈 Sample Insights

- **Frozen & Snacks** categories carry the highest out-of-stock risk, with availability below 70%
- **Staples** show the strongest stock health at ~97% availability
- Products in the **Premium price band** carry the highest discount % — a potential margin risk signal
- **Beverages & Dairy** together account for over 35% of total budget revenue despite mid-range product counts

 👤 Author

**Sayantan**
Data Analyst | Power BI · Python · SQL
