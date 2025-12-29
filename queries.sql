#create table
CREATE TABLE CustomerFeedback (
    CustomerID NUMBER PRIMARY KEY,
    Product VARCHAR2(50),
    Rating NUMBER(1),
    FeedbackText VARCHAR2(500)
);
#Insert Data
insert into CustomerFeedback values(101,'Laptop',5,'Excellent performance');
insert into CustomerFeedback values(102,'Laptop',4,'Good but battery weak');
insert into CustomerFeedback values(103,'Headphones',2,'Sound Quality poor');
insert into CustomerFeedback values(104,'Laptop',3,'Average product');
insert into CustomerFeedback values(105,'Headphones',5,'Very comfortable ');

select * from CustomerFeedback;

3.Analysis Queries
A.Average Rating per Produscts
SELECT Product, ROUND(AVG(Rating),2) AS AvgRating
FROM CustomerFeedback
GROUP BY Product;

B)
SELECT 
    Product,
    COUNT(CASE WHEN Rating = 1 THEN 1 END) AS "1_Star",
    COUNT(CASE WHEN Rating = 2 THEN 1 END) AS "2_Star",
    COUNT(CASE WHEN Rating = 3 THEN 1 END) AS "3_Star",
    COUNT(CASE WHEN Rating = 4 THEN 1 END) AS "4_Star",
    COUNT(CASE WHEN Rating = 5 THEN 1 END) AS "5_Star"
FROM CustomerFeedback
GROUP BY Product
ORDER BY Product;

C.Sentiment Analysis

SELECT Product,
       SUM(CASE 
             WHEN LOWER(FeedbackText) LIKE '%excellent%' OR LOWER(FeedbackText) LIKE '%good%' OR LOWER(FeedbackText) LIKE '%comfortable%' THEN 1
             WHEN LOWER(FeedbackText) LIKE '%poor%' OR LOWER(FeedbackText) LIKE '%bad%' OR LOWER(FeedbackText) LIKE '%average%' THEN -1
             ELSE 0
           END) AS SentimentScore
FROM CustomerFeedback
GROUP BY Product;

#D. Top Insights / Queries
1.Product with highest average rating
select product,round(avg(rating),2) as AvgRating
from CustomerFeedback
group by product
order by AvgRating desc;

2.Most negative feedback product

SELECT Product, SUM(CASE 
                       WHEN LOWER(FeedbackText) LIKE '%poor%' OR LOWER(FeedbackText) LIKE '%bad%' THEN 1
                       ELSE 0
                    END) AS NegativeFeedbackCount
FROM CustomerFeedback
GROUP BY Product
ORDER BY NegativeFeedbackCount DESC;

