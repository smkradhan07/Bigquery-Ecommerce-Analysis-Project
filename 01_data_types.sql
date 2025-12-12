-- Data type extraction depends on BigQuery INFORMATION_SCHEMA
SELECT 
    column_name, data_type 
FROM `targetSQL.INFORMATION_SCHEMA.COLUMNS` 
WHERE table_name='customers';