SELECT COUNT(*)
FROM Products p
JOIN Categories c ON p.category_id = c.category_id
JOIN Suppliers s ON p.supplier_id = s.supplier_id;

SELECT COUNT(*)
FROM Products p
JOIN Suppliers s ON p.supplier_id = s.supplier_id
JOIN Regions r ON s.region_id = r.region_id
JOIN Countries c ON r.country_id = c.country_id;

SELECT COUNT(*)
FROM Products p
JOIN Suppliers s ON p.supplier_id = s.supplier_id
JOIN Manufacturers m ON p.manufacturer_id = m.manufacturer_id
JOIN Regions r1 ON s.region_id = r1.region_id
JOIN Regions r2 ON m.region_id = r2.region_id;

SELECT COUNT(*)
FROM Products p
JOIN Suppliers s ON p.supplier_id = s.supplier_id
JOIN Manufacturers m ON p.manufacturer_id = m.manufacturer_id
JOIN Regions r1 ON s.region_id = r1.region_id
JOIN Regions r2 ON m.region_id = r2.region_id
JOIN Countries c1 ON r1.country_id = c1.country_id;

SELECT COUNT(*)
FROM Products p
JOIN Suppliers s ON p.supplier_id = s.supplier_id
JOIN Manufacturers m ON p.manufacturer_id = m.manufacturer_id
JOIN Regions r1 ON s.region_id = r1.region_id
JOIN Regions r2 ON m.region_id = r2.region_id
JOIN Countries c1 ON r1.country_id = c1.country_id
JOIN Countries c2 ON r2.country_id = c2.country_id;

SELECT COUNT(*)
FROM Reviews r
JOIN Products p ON r.product_id = p.product_id
JOIN Reviewers rv ON r.reviewer_id = rv.reviewer_id
JOIN Regions rg ON rv.region_id = rg.region_id
JOIN Countries c ON rg.country_id = c.country_id
JOIN Suppliers s ON p.supplier_id = s.supplier_id
JOIN Regions sr ON s.region_id = sr.region_id;

SELECT COUNT(*)
FROM Products p
JOIN Suppliers s ON p.supplier_id = s.supplier_id
JOIN Manufacturers m ON p.manufacturer_id = m.manufacturer_id
JOIN Regions r1 ON s.region_id = r1.region_id
JOIN Regions r2 ON m.region_id = r2.region_id
JOIN Countries c1 ON r1.country_id = c1.country_id
JOIN Countries c2 ON r2.country_id = c2.country_id
JOIN Subcategories sc ON p.category_id = sc.category_id;

SELECT COUNT(*)
FROM Reviews r
JOIN Products p ON r.product_id = p.product_id
JOIN Reviewers rv ON r.reviewer_id = rv.reviewer_id
JOIN Regions rg ON rv.region_id = rg.region_id
JOIN Countries c ON rg.country_id = c.country_id
JOIN Suppliers s ON p.supplier_id = s.supplier_id
JOIN Regions sr ON s.region_id = sr.region_id
JOIN Subcategories sc ON p.category_id = sc.category_id;

SELECT COUNT(*)
FROM Products p
JOIN Categories c ON p.category_id = c.category_id
JOIN Manufacturers m ON p.manufacturer_id = m.manufacturer_id
JOIN Reviews r ON r.product_id = p.product_id
JOIN Reviewers rv ON r.reviewer_id = rv.reviewer_id
JOIN Regions rg ON rv.region_id = rg.region_id;

SELECT COUNT(*)
FROM Products p
JOIN Suppliers s ON p.supplier_id = s.supplier_id
JOIN Manufacturers m ON p.manufacturer_id = m.manufacturer_id
JOIN Regions r1 ON s.region_id = r1.region_id
JOIN Regions r2 ON m.region_id = r2.region_id
JOIN Countries c1 ON r1.country_id = c1.country_id
JOIN Countries c2 ON r2.country_id = c2.country_id
WHERE NOT c1.name = c2.name;
