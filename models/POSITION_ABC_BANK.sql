SELECT
*
, POSITION_VALUE - COST_BASE as UNREALIZED_PROFIT
, ROUND(UNREALIZED_PROFIT / COST_BASE, 5) as UNREALIZED_PROFIT_PCT
FROM {{ source('abc_bank', 'ABC_BANK_POSITION') }}