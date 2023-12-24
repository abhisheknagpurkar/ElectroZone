DROP TABLE IF EXISTS [store_orders];
CREATE TABLE [store_orders] (
    [order_number] INTEGER NULL,
    [customer_id] INTEGER NULL,
    [product_id] INTEGER NULL,
    [order_date] VARCHAR(255),
    [units] INTEGER NULL,
    [sale_price] VARCHAR(100) NULL,
    [currency] VARCHAR(255) NULL,
    [order_mode] VARCHAR(255) NULL,
	[updated_at] DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);

GO