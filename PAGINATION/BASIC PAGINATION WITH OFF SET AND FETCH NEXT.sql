
--BASIC PAGINATION WITH OFF SET AND FETCH NEXT


SELECT *FROM Products
ORDER BY (select null)
OFFSET 0 ROWS FETCH NEXT 6 ROWS ONLY


SELECT *FROM Products
ORDER BY PRICE
OFFSET 0 ROWS FETCH NEXT 6 ROWS ONLY

------------------------------------

DECLARE @PageNumber INT 
DECLARE @NumberRows INT

SET @PageNumber = 1
SET @NumberRows = 4 

SELECT *FROM Products
ORDER BY 1 ASC
OFFSET (@PageNumber-1)*@NumberRows ROWS FETCH NEXT @NumberRows ROWS ONLY