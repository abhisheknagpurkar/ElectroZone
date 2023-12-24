DROP TABLE IF EXISTS [products];
GO
CREATE TABLE [products] (
    [product_code] VARCHAR(255) NULL,
    [product_name] VARCHAR(255) NULL,
    [product_category ] VARCHAR(MAX) NULL,
	[updated_at] DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);
GO