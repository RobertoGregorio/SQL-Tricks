

--DYNAMIC PAGE WITH PAGE SEGREGATION WITH WHILE LOOP


DECLARE @PageNumber INT SET @PageNumber = 1
DECLARE @NumberRows INT SET @NumberRows = 4 
DECLARE @MaxTablePage  AS FLOAT 

 SELECT @MaxTablePage = COUNT(*) FROM Products -- return number of rows of table
 
 SET @MaxTablePage = CEILING (@MaxTablePage/@NumberRows) -- return number of rows of a page 

 WHILE (@PageNumber <= @MaxTablePage) --scroll through all pages
 BEGIN

 SELECT *FROM Products
 ORDER BY PRICE ASC
 OFFSET (@PageNumber-1)*@NumberRows ROWS FETCH NEXT @NumberRows ROWS ONLY 

 SET @PageNumber = @PageNumber + 1
 
 END