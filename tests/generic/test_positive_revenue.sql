SELECT *
FROM {{ ref('fct_daily_revenue') }}
WHERE revenue_amount <= 0
