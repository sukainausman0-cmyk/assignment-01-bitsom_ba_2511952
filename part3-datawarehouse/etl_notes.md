## ETL Decisions

### Decision 1 — Date Standardization
**Problem:** The raw data contained inconsistent date formats such as `29/08/2023`, `2023-02-05`, and `12-12-2023`. This inconsistency made it difficult to sort or group transactions by time.  
**Resolution:** All dates were converted into a single standardized format `YYYY-MM-DD`. This ensured consistency across the warehouse and allowed analytical queries to group data by month and year without errors.

### Decision 2 — Category Casing
**Problem:** Product categories were written with inconsistent casing, for example `electronics`, `Electronics`, and `Groceries`. This inconsistency would cause duplicate categories in reports.  
**Resolution:** Categories were standardized to a clean format: `Electronics`, `Clothing`, and `Grocery`. This ensured accurate grouping and aggregation of sales by category.

### Decision 3 — Missing Store City
**Problem:** Some rows in the raw data had missing values for `store_city`. Without this information, the store dimension would be incomplete and queries by city would fail.  
**Resolution:** Missing city values were filled in based on the store name (e.g., `Chennai Anna` → `Chennai`, `Delhi South` → `Delhi`). This ensured that every store record had a valid city for analysis.

