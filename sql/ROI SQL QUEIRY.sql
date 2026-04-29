CREATE DATABASE nascar_sponsorship_db;
USE nascar_sponsorship_db;

SELECT TOP 10 *
FROM sponsorship_metrics;

SELECT TOP 5 Driver, ROI
FROM sponsorship_metrics
ORDER BY ROI DESC; 

SELECT 
    Risk_Return_Segment,
    COUNT(*) AS total_drivers,
    AVG(ROI) AS avg_roi
FROM sponsorship_metrics
GROUP BY Risk_Return_Segment;

SELECT 
    Sponsor_Target_Category,
    AVG(ROI) AS avg_roi,
    COUNT(*) AS total_drivers
FROM sponsorship_metrics
GROUP BY Sponsor_Target_Category;
