use hr_analytics;
select * from `sql hr analytics`;
##Average Attrition rate for all Departments
SELECT 
    department,
    AVG(Attrition_y) * 100 AS attrition_rate
FROM `sql hr analytics`
    
GROUP BY 
    department;

##Average Hourly rate of Male Research Scientist
SELECT 
    AVG(HourlyRate) AS average_hourly_rate
FROM 
   `sql hr analytics`
WHERE 
    JobRole = 'Research Scientist' AND 
    gender = 'Male';

##Attrition rate Vs Monthly income stats
SELECT 
    (SELECT AVG(Attrition_y) * 100 
     FROM `sql hr analytics`) AS attrition_rate,
    attrition,
    AVG(MonthlyIncome) AS average_income,
    MIN(MonthlyIncome) AS minimum_income,
    MAX(MonthlyIncome) AS maximum_income,
    STDDEV(MonthlyIncome) AS stddev_income
FROM 
    `sql hr analytics`
GROUP BY 
    attrition;

##Average working years for each Department
select Department,avg(TotalWorkingYears) as avgW from`sql hr analytics`
group by Department;

##Job Role Vs Work life balance
SELECT 
    JobRole,
    AVG(work_life_balance) AS average_work_life_balance,
    MIN(work_life_balance) AS minimum_work_life_balance,
    MAX(work_life_balance) AS maximum_work_life_balance,
    STDDEV(work_life_balance) AS stddev_work_life_balance
FROM 
    `sql hr analytics`
GROUP BY 
    JobRole;
    
##Attrition rate Vs Year since last promotion relation

    SELECT 
  YearsSinceLastPromotion,
    AVG(Attrition_y) * 100 AS attrition_rate
FROM 
    `sql hr analytics`
GROUP BY 
    YearsSinceLastPromotion
ORDER BY 
     YearsSinceLastPromotion;
