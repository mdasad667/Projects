## Student Performance Analysis:

## Project Overview
This project analyzes student performance data to identify key factors affecting academic outcomes. It covers data cleaning, exploratory data analysis (EDA), feature engineering, SQL analysis.

## Data Cleaning
- Handled missing values:
  - Categorical columns → filled using mode
  - Numerical columns → filled using mean/median
- Ensured dataset consistency and removed data issues



## Exploratory Data Analysis (EDA)
Performed analysis using:
- Bar plots
- Count plots
- Heatmaps

## Key areas explored:
- Gender vs performance  
- Parent education impact  
- Study hours vs scores  
- Test preparation impact  


## Feature Engineering
Created new features:
- `TotalScore = Math + Reading + Writing`
- `AverageScore = TotalScore / 3`

These helped in better analysis and model building.

##  Visualizations
Generated multiple visualizations to understand patterns:
- Parent education vs average score  
- Study hours vs performance  
- Performance distribution  
- Correlation heatmap  

## SQL Analysis
Used SQL to perform advanced data analysis:
- Aggregations (`GROUP BY`)
- Subqueries
- Joins
- CTEs (Common Table Expressions)
- Window functions (`RANK`, `ROW_NUMBER`)

## Key Insights
-  Parent education positively impacts student performance  
-  Higher study hours lead to better scores  
-  Test preparation improves results  
-  Reading & writing scores are strongly correlated with math  
-  Gender has minimal impact  



## Conclusion
Student performance is influenced by multiple factors including academic habits and socio-economic background. Data analysis helps in identifying these patterns for better decision-making.

---

## 🛠️ Tools & Technologies Used
- Python (Pandas, NumPy)
- Data Visualization (Matplotlib, Seaborn)
- SQL
