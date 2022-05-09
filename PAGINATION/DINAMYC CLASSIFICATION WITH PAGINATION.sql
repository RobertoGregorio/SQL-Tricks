

--DINAMYC CLASSIFICATION WITH PAGINATION

DECLARE @PageNumber INT SET @PageNumber = 1
DECLARE @NumberRows INT SET @NumberRows = 4 

DECLARE @SortingColunm VARCHAR 
DECLARE @SortingOrder VARCHAR


SET @SortingColunm =  'PRICE'
SET @SortingOrder = 'DESC'

SELECT *FROM Products
ORDER BY
CASE WHEN @SortingColunm = 'PRICE' AND @SortingOrder = 'ASC'
THEN PRICE  END ASC ,
CASE WHEN @SortingColunm = 'PRICE' AND @SortingOrder = 'DESC'
THEN PRICE END DESC 
OFFSET (@PageNumber-1)*@NumberRows ROWS FETCH NEXT @NumberRows ROWS ONLY

