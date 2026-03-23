## Architecture Recommendation
For a fast‑growing food delivery startup that collects GPS logs, customer text reviews, payment transactions, and restaurant menu images, I would recommend a Data Lakehouse architecture.

First, a lakehouse combines the flexibility of a data lake with the structured querying power of a warehouse. This is critical because the startup’s data is highly diverse: semi‑structured logs, unstructured text and images, and structured transactions. A pure warehouse would struggle with unstructured formats, while a pure lake would lack the performance needed for analytics.

Second, a lakehouse supports advanced machine learning and AI workloads. Text reviews and images can be stored in their raw form, while embeddings or features can be generated for recommendation systems. At the same time, financial transactions and GPS data can be queried efficiently for reporting and fraud detection.

Third, scalability and cost efficiency are essential for a startup. A lakehouse allows cheap storage of raw data in a data lake layer, while enabling fast SQL queries through the warehouse layer. This balance ensures the company can grow without incurring prohibitive costs.

In summary, a data lakehouse provides unified storage, supports diverse data types, enables both BI and AI, and scales cost‑effectively — making it the most suitable architecture for this scenario.