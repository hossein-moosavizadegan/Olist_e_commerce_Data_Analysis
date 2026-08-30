# 🛒 Olist E-Commerce Data Analysis

## 📌 Project Overview

This project analyzes the Brazilian Olist e-commerce dataset to understand sales performance, customer behavior, product categories, payment methods, delivery performance, and customer review patterns.

The project follows an end-to-end data analytics workflow, starting with data cleaning and exploratory data analysis in Python, followed by SQL-based analysis and an interactive Power BI dashboard.

The main goal is to transform raw e-commerce data into meaningful insights that can support better understanding of sales and customer behavior.

---

## 🎯 Objectives

The main objectives of this project are to:

- Analyze overall sales and revenue performance.
- Identify top-performing product categories.
- Analyze monthly revenue trends.
- Understand customer purchasing behavior.
- Compare one-time and repeat customers.
- Analyze different payment methods.
- Evaluate delivery performance.
- Investigate the relationship between delivery time and customer reviews.
- Analyze sales across Brazilian states.
- Build an interactive Power BI dashboard to present key findings.

---

## 📊 Dataset

**Dataset:** Brazilian E-Commerce Public Dataset by Olist

The dataset contains information related to orders placed through the Olist marketplace, including:

- Customers
- Orders
- Order Items
- Products
- Payments
- Reviews
- Sellers
- Geolocation

The dataset contains multiple related tables, making it suitable for practicing relational data analysis and SQL JOIN operations.

---

## 🛠️ Tools & Technologies

- **Python**
  - Pandas
  - NumPy
  - Matplotlib
  - Seaborn

- **SQL**
  - PostgreSQL
  - JOINs
  - GROUP BY
  - CASE WHEN
  - CTEs
  - Subqueries
  - Window Functions
  - RANK()

- **Power BI**
  - Data Visualization
  - KPI Cards
  - Interactive Charts
  - Slicers
  - Dashboard Design

- **GitHub**
  - Project Documentation

---

## 🧹 Data Cleaning

Data cleaning and preparation were performed using Python.

The process included:

- Checking dataset dimensions and structure
- Checking missing values
- Detecting duplicate records
- Reviewing data types
- Converting date columns to appropriate datetime formats
- Handling missing date values
- Removing exact duplicate records where appropriate
- Reviewing categorical and numerical variables
- Preparing datasets for further analysis

Special attention was given to the geolocation dataset, where exact duplicate records were identified and removed.

---

## Python Analysis

Exploratory Data Analysis was performed using Pandas, NumPy, Matplotlib, and Seaborn.

The analysis included:

### Sales Analysis
- Total Revenue
- Total Orders
- Total Customers
- Average Order Value
- Monthly Revenue Trend

### Product Analysis
- Top Product Categories by Revenue
- Top Product Categories by Number of Orders

### Customer Analysis
- Customer Spending Distribution
- One-time vs. Repeat Customers

### Delivery Analysis
- Average Delivery Time
- Delivery Time Distribution
- Late Delivery Rate

### Review Analysis
- Review Score Distribution
- Delivery Time vs. Review Score


---

## 🗄️ SQL Analysis

SQL was used to analyze the relational structure of the Olist dataset and extract business-related metrics.

The analysis included:

- Total Revenue
- Total Orders
- Average Order Value
- Monthly Revenue
- Monthly Orders
- Top Product Categories by Revenue
- Top Product Categories by Orders
- Top Customers by Spending
- Repeat Customer Analysis
- Average Delivery Time
- Late Delivery Rate
- Average Review Score
- Review Score vs. Delivery Time
- Product Category Ranking using Window Functions

Several tables were joined to combine customer, order, product, payment, and review information.

---

## 📈 Power BI Dashboard

An interactive Power BI dashboard was developed to provide a concise overview of e-commerce performance.

### Dashboard 1 — E-Commerce Overview

The first page focuses on sales performance and includes:

- Total Revenue
- Total Orders
- Total Customers
- Average Order Value
- Monthly Revenue Trend
- Revenue by Product Category
- Top Product Categories
<img width="953" height="700" alt="image" src="https://github.com/user-attachments/assets/efa7df45-a4b7-4fb6-8067-7d6ff830c581" />


### Dashboard 2 — Customer & Operations

The second page focuses on customer behavior and operational performance:

- One-time vs. Repeat Customers
- Revenue by Payment Method
- Delivery Time Distribution
- Average Review Score
<img width="955" height="694" alt="image" src="https://github.com/user-attachments/assets/4ef02d9d-05c8-4ac1-ae42-dca397861131" />


Interactive slicers allow users to explore the data by different dimensions.

---

## 📁 Project Structure

```text
Olist-E-Commerce-Analysis/
│
├── data/
│   ├── olist_dataset_part1.rar
│   ├── olist_dataset_part2.rar
│
├── python/
│   └── olist_e_commerce.ipynb
│
├── sql/
│   └── olist_e_commerce.sql
│
├── powerbi/
│   └── Can't Upload Because of the Large Volume (90 MB)
│
├── images/
│   └── olist_e_commerce_dasboard.pdf
│
└── README.md
```
---

## 🚀 Future Improvements

Potential improvements for future versions of this project include:

- Customer Lifetime Value (CLV) analysis
- More advanced customer segmentation
- RFM analysis
- Seller performance analysis
- Deeper analysis of delivery delays
- Predictive analysis for customer behavior
- Sales forecasting
- Customer satisfaction prediction using machine learning

---

## 📚 Key Skills Demonstrated

This project demonstrates practical skills in:

- Data Cleaning
- Exploratory Data Analysis
- Data Visualization
- SQL
- Relational Data Analysis
- SQL JOINs
- Aggregations
- Window Functions
- Customer Analysis
- E-Commerce Analytics
- KPI Development
- Power BI Dashboard Development
- Data Storytelling

---


## 👤 Author

**Hossein Moosavizadegan**
* GitHub: https://github.com/hossein-moosavizadegan

Aspiring Data Analyst with an interest in data analysis, visualization, SQL, Python.
