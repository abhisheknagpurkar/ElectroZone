DROP TABLE IF EXISTS [store_customers];
GO
CREATE TABLE [store_customers] (
    [customer_id] INTEGER NULL,
    [customer_name] VARCHAR(255) NULL,
    [address] VARCHAR(255) NULL,
    [city] VARCHAR(255) NULL,
    [postalcode] VARCHAR(10) NULL,
    [country] VARCHAR(100) NULL,
    [phone] VARCHAR(100) NULL,
    [email] VARCHAR(255) NULL,
    [credit_card] VARCHAR(255) NULL,
	[updated_at] DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);
GO