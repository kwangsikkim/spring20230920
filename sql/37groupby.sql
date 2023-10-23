-- GROUP BY : 그룹 함수 사용 시 그룹 함수의 범위(그룸) 지정(소계)

SELECT MAX(Price)
FROM products;

SELECT COUNT(DISTINCT CategoryID)
FROM products;

SELECT CategoryID, MAX(Price)
FROM products
GROUP BY CategoryID;

SELECT CategoryID, MAX(Price), MIN(Price)
FROM products
GROUP BY CategoryID;

SELECT CategoryID, MAX(Price) maxPrice, MIN(Price) minPrice
FROM products
GROUP BY CategoryID
ORDER BY maxPrice DESC;

SELECT o.OrderDate, SUM(p.Price * od.Quantity) AS '일별 매출액'
FROM products p
         JOIN orderdetails od
              ON p.ProductID = od.ProductID
         JOIN orders o ON od.OrderID = o.OrderID
GROUP BY o.OrderDate
ORDER BY o.OrderDate;

-- 예) 직원별 주문 처리액 조회
SELECT CONCAT(e.FirstName, ' ', e.LastName), SUM(p.Price * od.Quantity) `총 처리금액`
FROM orders o
         JOIN employees e
              ON o.EmployeeID = e.EmployeeID
         JOIN orderdetails od
              ON o.OrderID = od.OrderID
         JOIN products p
              ON p.ProductID = od.ProductID
GROUP BY e.EmployeeID
ORDER BY `총 처리금액` DESC;


-- 예) 고객별 총 주문 금액 조회
SELECT c.CustomerName, SUM(p.Price * od.Quantity) `총 주문금액`
FROM customers c
         JOIN orders o ON c.CustomerID = o.CustomerID
         JOIN orderdetails od ON o.OrderID = od.OrderID
         JOIN products p ON od.ProductID = p.ProductID
GROUP BY c.CustomerID
ORDER BY `총 주문금액` DESC;

-- 10만 달러 이상 소비 고객 조회
SELECT * FROM
    (SELECT c.CustomerName, SUM(p.Price * od.Quantity) `총 주문금액`
    FROM customers c
             JOIN orders o ON c.CustomerID = o.CustomerID
             JOIN orderdetails od ON o.OrderID = od.OrderID
             JOIN products p ON od.ProductID = p.ProductID
    GROUP BY c.CustomerID) t1
WHERE t1.`총 주문금액` >= 100000;













