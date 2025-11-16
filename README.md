# 🎮 Steam Game Popularity Analysis

**Author:** Allen Arriaga  
**Date:** November 2025  
**Tools Used:** Python, MySQL, Pandas, Data Visualization, Random Forest Modeling  

---

## 📘 Overview

This project investigates the factors that influence **game popularity on Steam**.  
Using data analysis and machine learning, I examined how **discounts**, **player activity**, **reviews**, and **developer presence** contribute to game ownership and overall player engagement.

The analysis shows that **community-driven engagement metrics**—especially positive reviews and active player counts—play a far larger role in predicting game success than temporary price reductions.

---

## 📊 Dataset

The dataset contains **339 cleaned Steam game records**, with additional preprocessing and outlier filtering reducing the modeling dataset to **270 games**. Key variables include:

- **price:** Current game price  
- **initialprice:** Original game price  
- **discount:** Discount percentage  
- **ccu:** Concurrent users  
- **owners:** Estimated number of game owners  
- **positive / negative:** Review counts  
- **average_forever / median_forever:** Long-term playtime metrics  
- **developer / publisher:** Game creators  

Data was initially processed in **MySQL**, followed by **Python-based cleaning, filtering, and visualization**.

---

## 🔍 Methods

- **Exploratory Data Analysis (EDA):**  
  Trends in discounts, ownership, review counts, and developer frequency.

- **Predictive Modeling:**  
  - Random Forest Regression to predict **owners** and **positive reviews**  
  - Feature importance analysis  
  - Scenario testing (e.g., ownership changes across discount levels)

- **Outlier Handling:**  
  IQR-based filtering to improve model performance and distribution consistency.

---

## 📈 Key Findings

- **Positive reviews** were the strongest predictor of game ownership.  
- **Negative reviews** and **CCU** also had notable influence.  
- **Discount rate** and **price** showed **minimal predictive power** compared to engagement-based features.  
- Moderate discounts correlated with higher player activity, but **steeper discounts did not always increase ownership**.  
- The Random Forest model predicting positive reviews achieved an **R² score of 0.86**.

---

## 🧠 Conclusion

Steam game popularity is driven more by **player engagement, community reputation, and active user bases** than by discount size.  
Developers aiming for long-term success should prioritize **game quality, sustained engagement, and review generation**, rather than relying heavily on aggressive price cuts.

For the complete visualizations, tables, and model outputs, refer to the full report:

📄 **[View Full Analysis (PDF)](./steam.analysis.pdf)**

