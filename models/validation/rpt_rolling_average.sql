WITH

test_set AS (
    SELECT
        *
    FROM
        {{ ref('rolling_test_data') }}
),

final AS (
    SELECT
        created_at,
        fruit,
        price,
        {{ rolling_average('price', 'fruit', 3) }},
        {{ rolling_average('price', 'fruit') }},
        {{ rolling_average('price', 'fruit', 14) }}
    FROM
        test_set
)

SELECT * FROM final
