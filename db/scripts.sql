-- Description: Category table with category Id and name
Create Table Category (
CategoryId int identity(1,1) not null primary key,
CategoryName varchar(max) not null
)

-- Description: Product table with product Id, name, category, and description. Category is a foreign key to the Category table.

Create Table Product (
ProductId int identity(1,1) not null primary key,
ProductName varchar(max) not null,
CategoryId int foreign key references Category(CategoryId),
ProductDescription varchar(max),
ProductBasePrice decimal(10,2) not null,
ProductAvailableQuantity int not null
)

-- Description: 'Orders' table contains information about orders placed by customers, quantity (how many, number) of products ordered, the date of the order placed (order creation date), expected delivery date and actual delivery date of the Order in the location and the status (either of 'processing' or 'shipped' or 'completed') of the order.
Create Table Orders (
OrderId int identity (1,1) not null primary key,
ProductId int foreign key references Product(ProductId),
OrderCreationDate DateTime not null,
ProductOrderedQuantity int not null,
OrderStatus varchar(max) not null,
OrderDeliveryLocation varchar(max) not null,
OrderDeliveryExpectedDate DateTime not null,
OrderDeliveryActualDate DateTime
)
