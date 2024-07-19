SELECT o.CustomerID, c.CustomerName, o.OrderID, o.TotalCost, m.MenuName, m.Course
FROM orders o
JOIN customerdetails c ON o.CustomerID =c.CustomerID
JOIN menu m ON o.MenuID = m.MenuID;


SELECT 
    m.MenuName
FROM 
    menu m
WHERE 
    m.MenuID = ANY (
        SELECT 
            o.MenuID
        FROM 
            orders o
        WHERE 
            o.Quantity > 2
    );
