
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='table') }}
/*
with source_data as (

    select 1 as id
    union all
    select null as id

)

select *
from source_data  */


WITH source_data AS (
  SELECT
    mcdm_table_name,
    mcdm_field_name,
    mcdm_field_value_type
    
  FROM
    {{ ref('mcdm_paid_ads_basic_performance_structure') }}
)

SELECT
*
FROM
  source_data;

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
