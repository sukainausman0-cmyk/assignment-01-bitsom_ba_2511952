// OP1: insertMany() — insert all 3 documents
db.products.insertMany([
  {
    "product_id": "E001",
    "category": "Electronics",
    "name": "Smartphone",
    "price": 25000,
    "specs": { "warranty_years": 2, "voltage": "220V" },
    "features": ["Dual SIM", "5G", "128GB Storage"]
  },
  {
    "product_id": "C001",
    "category": "Clothing",
    "name": "T-Shirt",
    "price": 799,
    "details": { "size": "M", "color": "Blue", "fabric": "Cotton" },
    "available_sizes": ["S", "M", "L", "XL"]
  },
  {
    "product_id": "G001",
    "category": "Groceries",
    "name": "Organic Milk",
    "price": 60,
    "expiry_date": "2024-12-15",
    "nutrition": { "calories": 120, "protein_g": 8, "fat_g": 5 },
    "packaging": ["500ml", "1L"]
  }
]);

// OP2: find() — Electronics with price > 20000
db.products.find({ category: "Electronics", price: { $gt: 20000 } });

// OP3: find() — Groceries expiring before 2025-01-01
db.products.find({ category: "Groceries", expiry_date: { $lt: "2025-01-01" } });

// OP4: updateOne() — add discount_percent
db.products.updateOne(
  { product_id: "E001" },
  { $set: { discount_percent: 10 } }
);

// OP5: createIndex() — index on category
db.products.createIndex({ category: 1 });
