{% snapshot orders_snapshot %}

{{
    config(
      target_schema='sandbox_chronek',
      unique_key='id',
      strategy='timestamp',
      updated_at='updated_at',
    )
}}

select * from {{ source('jaffle_shop', 'orders') }}

{% endsnapshot %}