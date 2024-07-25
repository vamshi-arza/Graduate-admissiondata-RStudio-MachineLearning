# Grduation Admission Data Analysis

## Table of Contents

- [Project Overview](#project-overview)
- [Data Sources](#data-sources)
- [Tools](#tools)
- [Data Cleaning](#data-cleaning)
- [Exploratory Data Analysis](#exploratory-data-analysis)
- [Modeling](#modeling)
- [Results](#results)
- [Conclusion](#conclusion)
- [Recommendations](#recommendations)

### Project Overview

This project predicts graduate admission chances using various machine learning algorithms, including Linear Regression, Decision Trees, Random Forest, Gradient Boosting, and Neural Networks. The dataset from Kaggle includes GRE scores, TOEFL scores, University Rating, SOP, LOR, CGPA, Research Experience, and Chance of Admit. After preprocessing, models were tuned with cross-validation, with Random Forest showing the best performance. The analysis highlights the significance of CGPA and GRE scores, emphasizing the importance of academic performance and related factors in graduate admissions.

### Data Sources

The dataset used in this project can be found on Kaggle: https://www.kaggle.com/datasets/mohansacharya/graduate-admissions. The dataset consists a total of 500 rows and 9 columns.

### Tools

- R - Programming language used for data analysis and modeling.
- R Studio - The integrated development environment (IDE) used for coding in R.
- Caret - The R package used for tuning and evaluating machine learning models.
- Keras and TensorFlow - Libraries used for building and training the neural network model.

### Data Cleaning  

In this phase we performed the following tasks:
1. Missing Values: The dataset was initially checked for missing values, and no missing data was found.
2. Column Removal: The Serial.No column was removed as it was an identifier and not useful for modeling.
3. Categorical Data Conversion: The Research variable, which is binary (0 or 1), was converted to factor data to ensure proper handling in the analysis.
4. Data Normalization: Numerical variables were scaled and normalized to improve model performance, particularly for the neural network.

### Exploratory Data Analysis

Some of the key Insights found during EDA are:
- Variables such as CGPA and GRE Score showed strong correlations with the variable 'Chance.of.Admit'.
- The target variable, Chance.of.Admit, is relatively evenly distributed, with higher frequencies in certain ranges.
- The Research variable was identified as a categorical feature and converted to factor data.
- Initial analysis suggested that variables like GRE Score and CGPA are significant predictors of admission chances.

### Modeling

Various regression and machine learning models were employed to predict the chance of admission, including:

1. Linear Regression: Evaluated with Lasso, Ridge, and Elastic Net techniques. Linear regression showed that CGPA is a significant predictor of admission chances.
2. Random Forest: Achieved the lowest RMSE of 0.0624 with 10-fold cross-validation and tuned parameters.
3. Gradient Boosting: Provided a competitive RMSE of 0.0651.
4. Support Vector Machine (SVM): Both linear and radial kernels were used, with the radial kernel performing slightly better (RMSE of 0.0629).
5. Neural Network: A deep learning model with two hidden layers, tuned for hyperparameters, achieved an RMSE of 0.0659.

The Random Forest model emerged as the most effective, with the lowest RMSE.

### Evaluation Metrics

The performance of the models was evaluated using the Root Mean Squared Error (RMSE), which measures the average magnitude of the prediction errors. Lower RMSE values indicate better model performance.

### Results

The analysis and comparison of various regression models revealed the following insights:

- Model Performance: Among the tested models, the Random Forest algorithm performed the best with the lowest RMSE of 0.0624, indicating the highest accuracy in predicting 
  the chance of admission. Other models, including Ridge Regression and SVM with Radial Kernel, also performed well but did not surpass Random Forest.
- Model Comparisons: Traditional methods like Linear Regression and Lasso yielded similar results, while more complex models such as Neural Networks showed slightly higher 
  RMSE values, indicating they were less effective in this particular case.
- Significant Predictors: The analysis confirmed that variables such as CGPA and GRE Score have a substantial impact on the 'Chance of Admit', while University Rating and 
  Research Experience also contribute but to a lesser extent.
- Neural Network Insights: The neural network model, while powerful, required extensive tuning of hyperparameters and resulted in an RMSE that was higher compared to Random 
  Forest.

Overall, the findings suggest that while various models provide comparable performance, Random Forest is the most reliable for this dataset, and CGPA remains a crucial 
factor in predicting graduate admissions.

### Conclusion

This project aimed to understand how various factors influence graduate school admissions by applying several regression models to predict the "Chance of Admit." The Random Forest model proved to be the most accurate, highlighting the importance of CGPA and GRE scores in admissions decisions. The analysis confirms that academic performance and relevant experiences are crucial for admissions, while university ranking was less significant. This project underscores the value of detailed academic and personal information in predicting admissions success.

### Recommendations

For future work, the following areas could be explored to enhance the model and insights:

- Feature Engineering: Introduce additional features such as extracurricular activities, work experience, and detailed academic background to improve prediction accuracy.
- Expanded Dataset: Incorporate more recent and diverse datasets from multiple sources to ensure the model remains relevant and accurate across different applicant pools.
- Cross-discipline Analysis: Explore the impact of various factors on admission chances across different academic disciplines and universities to identify any unique trends or requirements.
