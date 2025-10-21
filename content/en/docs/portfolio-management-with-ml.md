---
title: "Portfolio Management with ML"
linkTitle: "Portfolio Management"
slug: "portfolio-management-with-ml"
date: 2025-09-20
weight: 2
description: >
  Developed a data-driven global equity trading strategy that integrates 140+ firm characteristics with FinBERT-based sentiment features from corporate filings.  
  Combined LightGBM, CatBoost, and MLP models in an expanding-window framework (2005–2025) to predict next-month returns and construct a balanced long-short portfolio that outperformed the S&P 500 out-of-sample.
categories: [Projects, Finance, Machine Learning]
tags: [asset management, portfolio, LightGBM, CatBoost, MLP, FinBERT, LLM, OOS R2, Sharpe]
---

{{% pageinfo %}}
This project was built for the **McGill–FIAM Asset Management Hackathon 2025**, focusing on AI-driven bottom-up portfolio construction.  
We combined quantitative and textual data to design a global long-short strategy with measurable alpha.
{{% /pageinfo %}}

<div class="text-center mb-4">
  <a class="btn btn-lg btn-success me-3 mb-3" href="https://github.com/iriswork0831/-Panda" target="_blank">
    <i class="fab fa-github me-2"></i> View this project on GitHub
  </a>
</div>

## Project Overview

We designed a machine-learning-based investment strategy that predicts next-month stock returns using **147 firm characteristics** and **FinBERT-encoded text signals** from MD&A and Risk Factor sections of 10-K/10-Q filings.  
The model generates monthly forecasts from 2015 – 2025 and translates them into a **100-to-250-stock long-short portfolio**, rebalanced monthly and benchmarked against the S&P 500.

## Methodology

- **Models used:** LightGBM, CatBoost, and a simple MLP neural network.  
- **Text features:** FinBERT embeddings capturing sentiment and uncertainty from management discussions.  
- **Training:** Expanding-window approach (train 2005–2014 → test 2015–2025), strictly out-of-sample.  
- **Blending:** Equal-weighted ensemble of model predictions, country/industry-neutralized.  
- **Portfolio construction:** Long top-ranked 100–125 stocks, short bottom 100–125, dollar-neutral, equal-weighted, monthly rebalancing.

## Results

| Metric (OOS 2015-05 → 2025-05) | Portfolio | S&P 500 |
|---------------------------------|-----------|---------|
| CAGR (geom)                     | 1.56 ×    | 1.12 ×  |
| Annual Return (mean × 12)       | 49.6 %    | 12.8 %  |
| Annual Volatility               | 22.2 %    | 17.9 %  |
| Sharpe Ratio                    | **2.24**  | 0.71    |
| Information Ratio               | **1.31**  | —       |
| Max Drawdown                    | −23.5 %   | −34 %   |
| Positive Months                 | 80 %      | 62 %    |

**Outcome:**  
The ensemble consistently outperformed the S&P 500 in the out-of-sample period, showing positive **OOS R²**, significant **monthly alpha ≈ 4.1 bps**, and strong risk-adjusted returns after estimated transaction costs.  
Adding the **FinBERT text factor** improved both stability and predictive power, especially in volatile regimes.

---

> “Better data + smarter models = better portfolios.”  
> This project demonstrates how combining structured and textual financial data with modern ML architectures can yield persistent alpha in global equity markets.
