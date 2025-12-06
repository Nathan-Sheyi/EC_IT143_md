--Q3: How do you set the “last modified by” to “server user”?

ALTER TABLE dbo.t_w3_schools_customers
ADD last_modified_by VARCHAR(50) NULL;
GO