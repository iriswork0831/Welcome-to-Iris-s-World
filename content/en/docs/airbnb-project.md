---
title: "Airbnb Pricing & Occupancy Prediction"
linkTitle: "Airbnb Pricing"
slug: "airbnb-project"
date: 2025-10-20
weight: 1
description: >
  Built a data-driven model to help Montreal Airbnb hosts optimize pricing decisions by predicting occupancy rates based on listing features, host characteristics, and market dynamics.  
  Combined feature engineering, visualization, and machine learning techniques to uncover the most significant factors affecting occupancy and revenue.
categories: [Projects, Analytics, Machine Learning]
tags: [Airbnb, occupancy, pricing, regression, visualization, EDA, feature engineering]
---

{{% pageinfo %}}
This project was completed for **INSY 662 – Data Mining and Visualization for Analytics (Fall 2025)** at McGill University.  
Our goal was to apply the full analytics workflow — from data cleaning and feature engineering to predictive modeling and visualization — to a real-world Airbnb dataset.
{{% /pageinfo %}}

<div class="text-center mb-4">
  <a class="btn btn-lg btn-success me-3 mb-3" href="https://github.com/iriswork0831/Airbnb-Analytics" target="_blank">
    <i class="fab fa-github me-2"></i> View this project on GitHub
  </a>
</div>

## Project Overview

We analyzed Airbnb listings, reviews, and calendar data from **InsideAirbnb Montreal**, integrating pricing, host characteristics, and availability patterns to understand what drives occupancy.  
The objective was to model **occupancy rate** as a function of listing attributes and **price**, helping hosts adjust pricing strategies to maximize both booking probability and revenue.

## Interactive Data Visualization

<div class="text-center mb-4">
  <h4>Montreal Airbnb Market Analysis</h4>
  <iframe src="/montreal_airbnb_map.html" 
          width="100%" 
          height="500" 
          style="border: 1px solid #ddd; border-radius: 8px; margin: 20px 0;"
          title="Montreal Airbnb Interactive Map">
  </iframe>
  <p class="text-muted">
    <small><strong>Interactive Map:</strong> Explore Montreal's Airbnb landscape with real data visualization. 
    Click and interact with the map to discover pricing patterns and geographic insights.</small>
  </p>
</div>

## Methodology

- **Data sources:** InsideAirbnb datasets — `listings.csv`, `calendar.csv`, and `reviews.csv` for Montreal.  
- **EDA:** Explored price distributions, seasonality, and geographical occupancy trends using Python and Plotly.  
- **Feature engineering:** Encoded amenities, aggregated review statistics, and engineered distance-to-downtown and host-experience variables.  
- **Modeling:** Trained and compared regression models (Random Forest, Gradient Boosting, and Linear Regression) to predict revenue.  
- **Evaluation:** Analyzed feature importance and correlation between price, location, and occupancy to identify optimal pricing zones.

## Results -- Still In Development 

| Metric | Model | R² | RMSE | MAE |
|--------|--------|----|------|-----|
| Example  | Random Forest | — | — | — |
| Example  | Gradient Boosting | — | — | — |

**Outcome:**  
Our model revealed that **location**, **price**, **availability trends**, and **review quality** were the most influential factors driving occupancy. These insights enable actionable pricing recommendations for Airbnb hosts to enhance competitiveness in Montreal’s market.

More to be added

---

> “Smart pricing isn’t just about being cheaper — it’s about understanding what truly drives guest decisions.”  
> This project demonstrates how interpretable ML models and strong feature design can translate raw Airbnb data into meaningful business value.
