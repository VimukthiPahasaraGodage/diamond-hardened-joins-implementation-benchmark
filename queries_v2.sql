SELECT COUNT(*)
FROM Products p
JOIN Suppliers s ON p.supplier_id = s.supplier_id
JOIN Manufacturers m ON p.manufacturer_id = m.manufacturer_id
WHERE s.region_id = m.region_id;

SELECT COUNT(*)
FROM Products p
JOIN Suppliers s ON p.supplier_id = s.supplier_id
JOIN Manufacturers m ON p.manufacturer_id = m.manufacturer_id
JOIN Regions r1 ON s.region_id = r1.region_id
JOIN Regions r2 ON m.region_id = r2.region_id
WHERE r1.region_id = r2.region_id;

SELECT COUNT(*)
FROM Products p
JOIN Suppliers s ON p.supplier_id = s.supplier_id
JOIN Manufacturers m ON p.manufacturer_id = m.manufacturer_id
JOIN Regions r1 ON s.region_id = r1.region_id
JOIN Regions r2 ON m.region_id = r2.region_id
JOIN Countries c1 ON r1.country_id = c1.country_id
JOIN Countries c2 ON r2.country_id = c2.country_id
WHERE c1.country_id = c2.country_id;

SELECT COUNT(*)
FROM Products p
JOIN Reviews rv ON p.product_id = rv.product_id
JOIN Reviewers r ON rv.reviewer_id = r.reviewer_id
JOIN Suppliers s ON p.supplier_id = s.supplier_id
JOIN Manufacturers m ON p.manufacturer_id = m.manufacturer_id
WHERE s.region_id = m.region_id AND s.region_id = r.region_id;

SELECT COUNT(*)
FROM Products p
JOIN Reviews rv ON p.product_id = rv.product_id
JOIN Reviewers r ON rv.reviewer_id = r.reviewer_id
JOIN Suppliers s ON p.supplier_id = s.supplier_id
JOIN Manufacturers m ON p.manufacturer_id = m.manufacturer_id
JOIN Regions r1 ON s.region_id = r1.region_id
JOIN Regions r2 ON m.region_id = r2.region_id
JOIN Regions r3 ON r.region_id = r3.region_id
WHERE r1.region_id = r2.region_id AND r2.region_id = r3.region_id;

SELECT COUNT(*)
FROM Products p
JOIN Reviews rv ON p.product_id = rv.product_id
JOIN Reviewers r ON rv.reviewer_id = r.reviewer_id
JOIN Suppliers s ON p.supplier_id = s.supplier_id
JOIN Manufacturers m ON p.manufacturer_id = m.manufacturer_id
JOIN Regions rs ON s.region_id = rs.region_id
JOIN Regions rm ON m.region_id = rm.region_id
JOIN Regions rr ON r.region_id = rr.region_id
JOIN Countries cs ON rs.country_id = cs.country_id
JOIN Countries cm ON rm.country_id = cm.country_id
JOIN Countries cr ON rr.country_id = cr.country_id
WHERE cs.country_id = cm.country_id AND cm.country_id = cr.country_id;

SELECT COUNT(*)
FROM Products p
JOIN Subcategories sc ON p.category_id = sc.subcategory_id
JOIN Categories c ON sc.category_id = c.category_id
JOIN Suppliers s ON p.supplier_id = s.supplier_id
JOIN Manufacturers m ON p.manufacturer_id = m.manufacturer_id
JOIN Regions r1 ON s.region_id = r1.region_id
JOIN Regions r2 ON m.region_id = r2.region_id
WHERE r1.region_id = r2.region_id;

SELECT COUNT(*)
FROM Products p
JOIN Subcategories sc ON p.category_id = sc.subcategory_id
JOIN Categories c ON sc.category_id = c.category_id
JOIN Reviews rv ON p.product_id = rv.product_id
JOIN Reviewers r ON rv.reviewer_id = r.reviewer_id
JOIN Suppliers s ON p.supplier_id = s.supplier_id
JOIN Manufacturers m ON p.manufacturer_id = m.manufacturer_id
JOIN Regions r1 ON s.region_id = r1.region_id
JOIN Regions r2 ON m.region_id = r2.region_id
JOIN Regions r3 ON r.region_id = r3.region_id
WHERE r1.region_id = r2.region_id AND r2.region_id = r3.region_id;

SELECT COUNT(*)
FROM Products p
JOIN Subcategories sc ON p.category_id = sc.subcategory_id
JOIN Categories c ON sc.category_id = c.category_id
JOIN Reviews rv ON p.product_id = rv.product_id
JOIN Reviewers r ON rv.reviewer_id = r.reviewer_id
JOIN Suppliers s ON p.supplier_id = s.supplier_id
JOIN Manufacturers m ON p.manufacturer_id = m.manufacturer_id
JOIN Regions rs ON s.region_id = rs.region_id
JOIN Regions rm ON m.region_id = rm.region_id
JOIN Regions rr ON r.region_id = rr.region_id
JOIN Countries cs ON rs.country_id = cs.country_id
JOIN Countries cm ON rm.country_id = cm.country_id
JOIN Countries cr ON rr.country_id = cr.country_id
WHERE cs.country_id = cm.country_id AND cm.country_id = cr.country_id;

SELECT COUNT(*)
FROM Products p
JOIN Reviews rv ON p.product_id = rv.product_id
JOIN Reviewers r ON rv.reviewer_id = r.reviewer_id
JOIN Subcategories sc ON p.category_id = sc.subcategory_id
JOIN Categories c ON sc.category_id = c.category_id
JOIN Suppliers s ON p.supplier_id = s.supplier_id
JOIN Manufacturers m ON p.manufacturer_id = m.manufacturer_id
JOIN Regions rs ON s.region_id = rs.region_id
JOIN Regions rm ON m.region_id = rm.region_id
JOIN Regions rr ON r.region_id = rr.region_id
JOIN Countries cs ON rs.country_id = cs.country_id
JOIN Countries cm ON rm.country_id = cm.country_id
JOIN Countries cr ON rr.country_id = cr.country_id
WHERE cs.country_id = cm.country_id AND cm.country_id = cr.country_id;
