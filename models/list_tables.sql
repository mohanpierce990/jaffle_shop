{{
    config(
        materialized='ephemeral'
    )
}}
SELECT
    table_schema,
    table_name
FROM
    information_schema.tables
WHERE
    table_catalog = current_database()
    AND table_schema NOT IN ('information_schema', 'pg_catalog')
ORDER BY
    table_schema,
    table_name;