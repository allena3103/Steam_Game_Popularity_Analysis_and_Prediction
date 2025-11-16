🎮 Steam Game Popularity Analysis  
Author: Allen Arriaga  
Date: November 2025  
Tools Used: Python, MySQL, Pandas, Data Visualization, Random Forest Modeling

📘 Overview  
This project investigates the factors that influence game popularity on Steam.  
Using data analysis and machine learning, I examined how discounts, player engagement, reviews, and developer presence contribute to game ownership and overall visibility on the platform.

The analysis reveals that community engagement—especially positive reviews and active player counts—plays a far larger role in game success than temporary pricing strategies like discounts.

📊 Dataset  
The dataset includes **339 cleaned observations** of Steam games, with variables such as:

- **price**: Current game price  
- **initialprice**: Original game price  
- **discount**: Discount percentage  
- **ccu**: Concurrent users  
- **owners**: Estimated number of game owners  
- **positive / negative**: Review counts  
- **average_forever / median_forever**: Total long-term playtime  
- **developer / publisher**: Game creators

Data preprocessing was performed in **MySQL**, with additional IQR-based outlier filtering done in Python, resulting in a final modeling dataset of **270 games**.

🔍 Methods  
**Exploratory Data Analysis (EDA):**  
- Discount trends vs. player activity  
- Developer frequency and ownership totals  
- Ownership and review distribution patterns  

**Predictive Modeling:**  
- Random Forest Regression to predict:
  - Number of owners  
  - Number of positive reviews  
- Feature importance analysis to identify which factors drive popularity  
- Scenario testing (e.g., how predicted ownership changes as discount increases)

📈 Key Findings  
- **Positive reviews** were the strongest predictor of game ownership.  
- **Negative reviews** and **CCU** also significantly influenced popularity.  
- Price and discount rate had **minimal predictive power** compared to engagement metrics.  
- Moderate discounts correlated with higher player activity, but steep discounts did not always increase ownership.  
- A Random Forest model achieved an **R² score of 0.86** when predicting positive reviews.

🧠 Conclusion  
Game popularity on Steam is driven primarily by **player engagement and community reputation**, not discount size.  
Developers seeking long-term popularity should prioritize gameplay quality, review generation, and active communities rather than relying heavily on deep discounts.

For full tables, visualizations, scenario analyses, and model outputs, see the complete report below:

📄 View Full Analysis (PDF)

