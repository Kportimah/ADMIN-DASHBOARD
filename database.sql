-- Create a user
CREATE USER 'data_analyst'@'localhost' IDENTIFIED BY 'StrongP@ssword123!';

-- Create a role (if using RBAC)
CREATE ROLE 'report_viewer';

-- Grant permissions to the role
GRANT SELECT ON customer_db.sales_data TO 'report_viewer';
GRANT SELECT ON customer_db.product_catalog TO 'report_viewer';

-- Assign the role to a user
GRANT report_viewer TO 'data_analyst'@'localhost';

-- Grant direct permissions to a user (less common with RBAC)
GRANT INSERT, UPDATE ON customer_db.orders TO 'order_processor'@'localhost';

-- Revoke permissions
REVOKE DELETE ON customer_db.all_data FROM 'data_analyst'@'localhost';