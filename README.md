# Stroke Risk Factors & Clinical Database Showcase
**An End-to-End Database (PostgreSql , Sql views, Power BI Dashboard)**

## Clinical Overview 
In clinical practice, early detection of stroke risk factors is critical to prevent irreversible complications 

**The Solution**
That project designs a **Clinical Database Pipeline Framework** that utilizes a **PostgreSql** to analyse, clean and segment **+5,000 patients records**(sourced from kaggle) .standardized clinical classifications were engineered directly database-side using optimized **Sql Views** and then connected to an interactive **Power BI Dashboard** to visualize multi-dimensional patient risk factors.

## Teck Stack & decisions :
**Database Engine:** PostgreSql(`pgAdmin`)
**Database Strategy:** Server-side View Optimization, Clinical Classifications, Data Quality Auditing
**BI Visualization:** Power BI Desktop (Interactive Clinical Dashboard)

### Key SQl Pipeline Engineering:
### 1. Data Quality & Profiling Audit
Before performing clinical analysis, we audited the cohort for missing biometric values (like `BMI`) across genders to avoid clinical assessment bias.

### 2. Clinical Risk Stratification (Age-Group Analysis)
Age is a primary non-modifiable risk factor for cardiovascular events. we engineered a Sql logic to categorize patients into standardized clinical age brackets and calculated the exact Stroke Rate % for each category.
### 3. Database View Optimization
Rather than pushing raw, unindexed data into the BI Tool, we created database-side SQL Views (e.g., separating demographic views, physiological views, and disease status). This offloads heavy computation from the reporting layer (Power BI) to the database engine, boosting dashboard performance.

## Clinical Power BI Dashboard

The engineered database views are connected directly to Power BI to deliver a comprehensive clinical screening interface. The dashboard consists of three key analytical zones:

### 1. Executive Clinical KPIs (Key Performance Indicators)
*   **Total Cases Size:** 5.109K patients screened in the registry.
*   **Total Stroke Cases:** 249 confirmed clinical stroke cases.
*   **Average Stroke Rate:** 7.24% across the entire analyzed population.

### 2. Multi-Dimensional Clinical Analysis (Interactive Visualizations)
*   **Stroke Rate by Age Group (Trend Line):** A clear progression showing that stroke risk starts low in the Young (<45) cohort, rises steadily in Middle-Aged (45-65), and spikes drastically among Seniors (>65) at over 15%.
*   **Stroke Rate by BP and Heart Status (Clustered Column):** Directly evaluates the compounding effect of cardiovascular comorbidities. Patients with established Hypertension (`bp_status`) combined with Heart Disease show the highest clinical risk, reaching over 20%.
*   **Stroke Rate by Smoking & Residence Type (Bar Chart):** Compares lifestyle factors against environmental factors. Patients who "formerly smoked" living in rural areas show the highest risk in this subset, followed by active smokers.
*   **Stroke Rate by Residence & Work Type (Column Chart):** Cross-analyzes social determinants of health (employment types like Private, Self-employed, Govt_job, and Rural vs. Urban split) to evaluate socio-demographic risk patterns.

### 3. Clinician Filter & Triage Panel
*   **Demographic Filtering:** Dynamic slicers for `work_type` and `age_group` allowing clinicians to instantly isolate specific patient cohorts during clinical audits.

 <img width="1313" height="734" alt="Screenshot 2026-07-16 193328" src="https://github.com/user-attachments/assets/fa240cdf-77f1-4b94-acae-d601e5f5617a" />
