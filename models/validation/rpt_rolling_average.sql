{% set rolling_data = unit_testing_select_table(ref('rolling_test_data'), ref('unit_test_rolling_data')) %}
-- This calls the macro we just wrote above, and returns our original source table, or our mock dataset,
-- depending on the value of the unit_testing variable during dbt run

WITH

test_set AS (
    SELECT
        *
    FROM
        {{ rolling_data }}
),

unrounded AS (
    SELECT
        created_at,
        fruit,
        price,
        {{ rolling_average('price', 'fruit', 3) }},
        {{ rolling_average('price', 'fruit') }},
        {{ rolling_average('price', 'fruit', 14) }}
    FROM
        test_set
),

final AS (
    SELECT
        created_at,
        fruit,
        price,
        CAST(avg_3_periods_price AS NUMBER(20, 2)) AS avg_3_periods_price,
        CAST(avg_7_periods_price AS NUMBER(20, 2)) AS avg_7_periods_price,
        CAST(avg_14_periods_price AS NUMBER(20, 2)) AS avg_14_periods_price
    FROM
        unrounded
)

SELECT * FROM final
