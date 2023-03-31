{% snapshot orders_snapshot %}

{{
    config(
      target_schema='public',
      unique_key='id',
      strategy='timestamp',
      updated_at='updated_at',
    )
}}

select * from {{ ref('raw_orders') }}

{% endsnapshot %}