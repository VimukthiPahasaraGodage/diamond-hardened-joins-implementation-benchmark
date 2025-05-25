DROP TABLE IF EXISTS Reviewers, Reviews, Subcategories, Countries, Regions, Manufacturers, Suppliers, Categories, Products;

CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    name VARCHAR(100),
    category_id INT,
    supplier_id INT,
    manufacturer_id INT
);

CREATE TABLE Categories (
    category_id INT PRIMARY KEY,
    name VARCHAR(100)
);

CREATE TABLE Subcategories (
    subcategory_id INT PRIMARY KEY,
    category_id INT,
    name VARCHAR(100)
);

CREATE TABLE Suppliers (
    supplier_id INT PRIMARY KEY,
    region_id INT,
    name VARCHAR(100)
);

CREATE TABLE Manufacturers (
    manufacturer_id INT PRIMARY KEY,
    region_id INT,
    name VARCHAR(100)
);

CREATE TABLE Regions (
    region_id INT PRIMARY KEY,
    country_id INT,
    name VARCHAR(100)
);

CREATE TABLE Countries (
    country_id INT PRIMARY KEY,
    name VARCHAR(100)
);

CREATE TABLE Reviews (
    review_id INT PRIMARY KEY,
    product_id INT,
    rating INT,
    reviewer_id INT
);

CREATE TABLE Reviewers (
    reviewer_id INT PRIMARY KEY,
    name VARCHAR(100),
    region_id INT
);