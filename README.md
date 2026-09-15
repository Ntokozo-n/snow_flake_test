# 🚀 Snowflake End-to-End Data Engineering & Analytics Pipeline

## 📌 Project Overview
This project demonstrates a complete end-to-end Data Engineering and Analytics pipeline built on **Snowflake**. It highlights core database administration, schema design, raw data transformation, and SQL analytical querying to solve real-world business requirements.

The pipeline ingests raw transactional data, cleans dirty formatting using regular expressions, loads structured records into strongly-typed tables, and runs multi-table JOINs and aggregations to generate actionable business reports.

---

## 🛠️ Tech Stack & Key Concepts
* **Data Warehouse:** Snowflake
* **Language:** SQL (DDL, DML, Data Cleaning, Advanced Joins, Aggregations)
* **Data Engineering Techniques:** Schema Optimization, Data Type Casting, Regular Expression Parsing (`REGEXP_REPLACE`), Data Staging & Ingestion
* **Reporting & Delivery:** CSV / Excel Report Generation

---

## 📁 Repository Structure
```text
├── data/
│   ├── customers.csv
│   ├── orders.csv
│   └── products.csv
├── sql/
│   ├── 01_create_tables.sql
│   ├── 02_load_and_transform_data.sql
│   └── 03_business_requirements_queries.sql
├── reports/
│   └── Query_4_Results.csv
└── README.md
