{% macro rolling_average(column_name, partition_by, n=7, order_by='created_at') %}

{% set n_less_one = n-1 %}
    avg( {{ column_name }} ) OVER (
                PARTITION BY {{ partition_by }}
                ORDER BY {{ order_by }}
                ROWS BETWEEN {{ n_less_one }} PRECEDING AND CURRENT ROW
            ) AS avg_{{n}}_periods_{{ column_name }}
{% endmacro %}
