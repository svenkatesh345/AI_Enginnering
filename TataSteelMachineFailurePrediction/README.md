# Tata Steel Machine Failure Prediction

## Project Overview
This capstone project focuses on predicting machine failure using machine learning based on industrial operating parameters. The objective is to identify whether a machine is likely to fail by analyzing features such as air temperature, process temperature, rotational speed, torque, tool wear, and machine type.

Machine failure prediction is an important predictive maintenance problem because unexpected breakdowns can increase operational cost, reduce productivity, and interrupt manufacturing processes. This project aims to support proactive maintenance by identifying high-risk machine conditions in advance.

## Problem Statement
The goal of this project is to build a binary classification model that predicts `Machine failure` using machine operating data. Since failure events are less frequent than normal machine conditions, the problem is treated as an imbalanced classification problem.

## Dataset
The dataset contains machine-related operational and failure information. It includes:
- Air temperature
- Process temperature
- Rotational speed
- Torque
- Tool wear
- Machine type
- Failure indicators

Target variable:
- `Machine failure`

Since the dataset is imbalanced, special care was taken during model training and evaluation.

## Project Workflow
The notebook follows these main steps:

1. Data loading and understanding
2. Exploratory data analysis
3. Data preprocessing
4. Feature selection
5. Handling class imbalance
6. Model training
7. Threshold tuning
8. Model evaluation
9. Error analysis
10. Final prediction on test data

## Techniques Used
- Python
- Pandas
- NumPy
- Matplotlib
- Seaborn
- Scikit-learn
- XGBoost
- SMOTE

## Feature Engineering
Additional features were created to improve model performance, including:
- Torque-speed ratio
- Wear-torque interaction
- Wear-speed ratio
- Torque per wear

These engineered features were designed to capture hidden relationships between machine load, rotation, and wear.

## Model Building
Different classification models were explored during the project, including Random Forest and XGBoost. Since the dataset is imbalanced, model performance was not judged only on accuracy. More importance was given to recall and F2 score, because missing a true failure is more costly than predicting a false alarm.

## Evaluation Metrics
The following metrics were used to evaluate model performance:
- Accuracy
- Precision
- Recall
- F1 Score
- F2 Score
- Confusion Matrix

Recall and F2 score were especially important in this project because the main objective is to detect actual failure cases as effectively as possible.

## Results
The final model was able to identify machine failure patterns using both original and engineered features. Threshold tuning was applied to improve recall for the minority class and make the model more practical for predictive maintenance use cases.

## Repository Structure
```bash
├── tata_steel_failure_detection_capstone.ipynb
├── train.csv
├── test.csv
├── README.md
```

## How to Run
1. Clone this repository
2. Open the notebook in Google Colab or Jupyter Notebook
3. Upload or connect the dataset files
4. Run the cells step by step

## Business Impact
This project demonstrates how machine learning can be applied to predictive maintenance in an industrial environment. A reliable failure prediction system can help reduce downtime, optimize maintenance schedules, and improve production efficiency.

## Future Improvements
- Perform advanced hyperparameter tuning
- Try additional ensemble models
- Improve threshold optimization further
- Build a deployment-ready prediction dashboard
- Use explainability tools such as SHAP for model interpretation

## Author
Capstone project developed as part of a data science / machine learning program.
