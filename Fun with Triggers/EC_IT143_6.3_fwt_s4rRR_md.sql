DROP TRIGGER IF EXISTS trg_prevent_delete
GO
CREATE TRIGGER trg_prevent_delete
ON dbo.t_w3_schools_customers
INSTEAD OF DELETE 
AS 
/*****************************************************************************************************************
NAME:    dbo.trg_disable_delete
PURPOSE: w3 schools - Disable delete

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     12/07/2025   Mary Daniel       1. Built this script for EC IT440


RUNTIME: 
1s

NOTES: 
To stop or disable anyone from deletting the customer table.  
******************************************************************************************************************/
BEGIN 
    PRINT 'Deletion STOPPED! You cannot delete customers from this table.';

END;
GO