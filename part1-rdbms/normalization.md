## Anomaly Analysis

### Insert Anomaly
Sales reps cannot be added independently without an order.  
Example: Anita Desai (SR02) only appears in rows like `ORD1027` and `ORD1002`.  
If she had no orders, we couldn’t insert her record.

### Update Anomaly
Updating office addresses requires changes in multiple rows.  
Example: Deepak Joshi (SR01) has `"Mumbai HQ, Nariman Point, Mumbai - 400021"` in many rows (`ORD1114`, `ORD1153`, `ORD1091`).  
If the office address changes, all rows must be updated, risking inconsistency.

### Delete Anomaly
Deleting the last order of a customer removes their details entirely.  
Example: If `ORD1025` (Kavya Rao’s laptop order) is deleted, her customer info (ID, email, city) is lost.


## Normalization Justification
While I understand my manager’s concern that keeping everything in one table might seem simpler, I respectfully believe normalization is necessary for accuracy and efficiency. In our dataset, the flat orders_flat table repeats customer details, product information, and sales rep data in every row. For example, if customer Rohan Mehta places multiple orders, his name, email, and city are stored again and again. If his email changes, I would have to update it in several places, which increases the chance of mistakes. That kind of duplication makes the data harder to trust.

By normalizing into separate tables — Customers, Products, SalesReps, and Orders — I only store each piece of information once. If Rohan’s email changes, I update it in one row, and all related orders remain correct. The same applies to product prices: a change in the Products table automatically reflects in every order, ensuring consistency. To me, this is not over‑engineering but a practical safeguard against errors.

I also find normalized tables easier to query. Instead of working with a large, cluttered table, I can join only the data I need, which makes queries faster and more reliable as the dataset grows. In short, while a single table may look simple at first, normalization provides long‑term stability, accuracy, and scalability. That is why I politely but firmly defend normalization as the better approach.