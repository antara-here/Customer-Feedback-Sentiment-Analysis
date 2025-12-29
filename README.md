📌 Customer Feedback & Sentiment Analysis (Oracle SQL)
🔎 Project Overview

This project analyzes customer feedback data to understand product performance, ratings, and overall sentiment.

The goal of the project was:

collect and organize customer feedback

analyze product ratings

detect positive / negative trends

present insights clearly using tables and Excel visualizations

All SQL queries used in this project are stored separately in the file:

queries.sql

📂 Data Used

The project mainly works with a Customer Feedback table containing:

Product

Rating (1–5)

Feedback Text / Comments

Customer details

Date of feedback

⭐ Ratings Analysis (Without PIVOT)

Since Oracle in my setup did not support PIVOT, I generated rating summaries using basic SQL logic and grouping.

The final output looks like this:

Product	1_Star	2_Star	3_Star	4_Star	5_Star
Headphones	0	1	0	0	1
Laptop	0	0	1	1	1

This table helps identify:

✔ which products receive high ratings
✔ which products need improvement
✔ distribution of ratings across all products

😊 Simple Sentiment Analysis

A basic sentiment score was calculated from the text feedback.

Logic used:

Positive → words like excellent, good, comfortable

Negative → words like poor, bad, average

Neutral → comments that do not match either

Sentiment interpretation:

Score > 0 → Product mostly positive

Score = 0 → Neutral feedback

Score < 0 → Product has more negative feedback

This gives a quick understanding of customer emotions toward each product.

💡 Key Insights from the Project
✔ Product with the highest average rating

Identified the top-rated product based on numerical ratings.

✔ Product receiving most negative comments

Checked which product had the highest number of negative words in feedback.

✔ Overall customer satisfaction trend

Observed whether customer responses were improving, declining, or stable.

📤 Export & Visualization

After analyzing the results:

Outputs were exported to CSV

Combined into one Excel file

Charts were created to show:

Ratings comparison

Sentiment distribution

This made the project easier to present and understand.

🎯 What I Learned

✔ analyzing feedback data using SQL
✔ replacing PIVOT with GROUP-BASED logic
✔ creating simple sentiment rules
✔ organizing outputs and documentation for GitHub
