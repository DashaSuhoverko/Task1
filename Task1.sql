CREATE DATABASE Products
COLLATE Cyrillic_General_CI_AS

CREATE TABLE Products				
(                                      
	Id int IDENTITY NOT NULL 
		PRIMARY KEY,				  
	Name varchar(50) NOT NULL
	
)

CREATE TABLE Categories
( 
	Id int IDENTITY NOT NULL
		PRIMARY KEY,
	Name varchar(50) NOT NULL,

)


CREATE TABLE ProductsCategories
(
	 ProductID int NOT NULL
		FOREIGN KEY REFERENCES Products(Id),
	 CategoryID int NOT NULL
		FOREIGN KEY REFERENCES Categories(Id),
	 PRIMARY KEY(ProductID, CategoryID)
)


----------------------------------------------------------------------------
Select p.Name as ProductName, 
	      c.Name as CategoryName
     from Products p
left join ProductsCategories pc on pc.ProductID = p.Id
left join Categories c on pc.CategoryID = c.Id
 order by p.Name, c.Name


