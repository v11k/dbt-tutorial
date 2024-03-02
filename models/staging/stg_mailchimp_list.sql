with

source as (

    select * from {{source('mailchimp_list', 'mailchimp_list') }}
),

staged as (

    select
        list_name,
        list_rating,
        list_created,
        list_visibility,
        campaign_count,
        members,
        unsubscribes
        from source
)


select * from staged