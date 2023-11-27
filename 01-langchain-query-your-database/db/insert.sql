Insert into Category (CategoryName)
values
('Kitchen'),
('Sports'),
('Gardening'),
('Cosmetics')

Insert into Product(ProductName,CategoryId,ProductDescription,ProductBasePrice, ProductAvailableQuantity)
values
('Pressure Cooker', 1, 'Cook rice, daal, khichdi', 1125.00, 10),
('Flower pot', 3, '', 120.00, 227),
('Bat', 2, 'Cricket', 250.00, 55),
('Bat', 2, 'Baseball', 567.00, 1),
('Lipstick', 4, '', 350.00, 33),
('Basketball', 2, '', 400.00, 27),
('Olive oil', 1, '', 150.00, 12),
('Ladle', 1, '', 111.00, 65),
('Seed', 3, '', 50.00, 125),
('Fertilizer', 3, '', 100.00, 22),
('Shower gel', 4, '', 210.00, 45),
('Yoga mat', 2, 'Yoga, exercise', 900.00, 5),
('Football', 2, 'Soccer', 225.00, 75)

-- Insert into Inventory(ProductId, ProductAvailableQuantity, InventoryModifiedDate)
-- values
-- (1, 10, GETDATE()),
-- (2, 10, GETDATE()),
-- (3, 1, GETDATE()),
-- (4, 24, GETDATE()),
-- (5, 55, GETDATE()),
-- (6, 75, GETDATE()),
-- (7, 15, GETDATE()),
-- (8, 32, GETDATE()),
-- (9, 121, GETDATE()),
-- (10, 45, GETDATE()),
-- (11, 89, GETDATE()),
-- (12, 177, GETDATE()),
-- (13, 57, GETDATE())


Insert into Orders (ProductId, OrderCreationDate, ProductOrderedQuantity, OrderStatus, OrderDeliveryLocation, OrderDeliveryExpectedDate, OrderDeliveryActualDate)
values
(1, GETDATE(), 5, 'Shipped', 'NJ', GETDATE()+5, null),
(12, GETDATE()-10, 1, 'Completed', 'CA', GETDATE()-3, GETDATE()),
(13, GETDATE()-30, 2, 'Completed', 'CA', GETDATE()-27, GETDATE()-28),
(13, GETDATE()-35, 1, 'Completed', 'OH', GETDATE()-27, GETDATE()-30),
(7, GETDATE()-60, 2, 'Completed', 'NM', GETDATE()-56, GETDATE()-56),
(10, GETDATE()-58, 2, 'Completed', 'NY', GETDATE()-54, GETDATE()-54),
(4, GETDATE()-45, 2, 'Completed', 'FL', GETDATE()-43, GETDATE()-42),
(9, GETDATE()-20, 20, 'Completed', 'NY', GETDATE()-18, GETDATE()-18), -- timely delivered order 
(9, GETDATE()-3, 5, 'Shipped', 'NY', GETDATE()+1, null),
(8, GETDATE()-3, 5, 'Processing', 'MA', GETDATE()+2, null),
(12, GETDATE()-15, 5, 'Processing', 'KY', GETDATE()-10, null), -- most delayed order
(11, GETDATE()-24, 5, 'Completed', 'KY', GETDATE()-20, GETDATE()-21), -- early delivery order
(11, GETDATE()-22, 5, 'Completed', 'CA', GETDATE()-20, GETDATE()-17), -- late delivery order 
(6, GETDATE()-2, 5, 'Shipped', 'FL', GETDATE()+1, null),
(5, GETDATE()-38, 5, 'Cancelled', 'NM', GETDATE()-35, null),-- order cancelled
(4, GETDATE()-25, 2, 'Completed', 'OH', GETDATE()-23, GETDATE()-22), -- delayed by 1 day
(13, GETDATE()-2, 2, 'Processing', 'AL', GETDATE()+3, null),
(11, GETDATE()-5, 2, 'Processing', 'FL', GETDATE()+1, null), -- delayed in shipping 
(10, GETDATE()-9, 2, 'Shipped', 'FL', GETDATE()-3, GETDATE()-1)


