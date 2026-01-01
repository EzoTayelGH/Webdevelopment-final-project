IF NOT EXISTS (SELECT 1 FROM Categories WHERE CategoryName = 'T-Shirts')
BEGIN
    INSERT INTO Categories (CategoryName, Description, IconClass, DisplayOrder) VALUES
    ('T-Shirts', 'Comfortable and stylish everyday wear', 'fa-solid fa-shirt', 1),
    ('Jackets', 'Premium outerwear for all seasons', 'fa-solid fa-vest', 2),
    ('Pants', 'From casual to formal, we''ve got you covered', 'fa-solid fa-person', 3),
    ('Footwear', 'Step up your shoe game', 'fa-solid fa-shoe-prints', 4),
    ('Accessories', 'Complete your look with style', 'fa-solid fa-watch', 5),
    ('Premium', 'Luxury items for the distinguished', 'fa-solid fa-gem', 6);
END