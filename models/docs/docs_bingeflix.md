# Bingeflix Docs
This file contains doumentation for Bingeflix data sources.

## Users
{% docs bingeflix_table_users %}
This table contains the Bingeflix user's information.
{% enddocs %}

{% docs bingeflix_table_users_source %}
This table contains the source information for Bingeflix users.
{% enddocs %}

{% docs bingeflix_table_users_dim %}
Dimensional model of information about Bingeflix users.
{% enddocs %}

### Users Columns
{% docs bingeflix_column_user_id %}
The unique identifier of the Bingeflix user.
{% enddocs %}

{% docs bingeflix_column_user_created_at %}
Timestamp of user creation.
{% enddocs %}

{% docs bingeflix_column_phone_number %}
User's phone number.
{% enddocs %}

{% docs bingeflix_column_user_deleted_at %}
Timestamp of user deletion. The value is NULL if the account has not been deleted.
{% enddocs %}

{% docs bingeflix_column_username %}
User's Bingeflix username. Used for login, user posts, etc.
{% enddocs %}

{% docs bingeflix_column_user_name %}
User's name.
{% enddocs %}

{% docs bingeflix_column_sex %}
User's sex at birth. 'M' or 'F'.
{% enddocs %}

{% docs bingeflix_column_email %}
User's email
{% enddocs %}

{% docs bingeflix_column_birthdate %}
User's birthdate
{% enddocs %}

{% docs bingeflix_column_region %}
User's region or administrative division (state, province, etc)
{% enddocs %}

{% docs bingeflix_column_country %}
User's country of residence.
{% enddocs %}

{% docs bingeflix_column_user_current_age %}
User's current age.
{% enddocs %}

{% docs bingeflix_column_user_age_at_acquisition %}
The age of the user when they became a Bingeflix user.
{% enddocs %}


## Events
{% docs bingeflix_table_events %}
This table contains behavioral event data collected via app interaction.
{% enddocs %}

{% docs bingeflix_table_events_source %}
This table contains the source information for Bingeflix behavioural events while interacting with the Bingeflix app.
{% enddocs %}


### Events Columns
{% docs bingeflix_column_events_session_id %}
The unique session identifier of the session in the Bingeflix app.
{% enddocs %}

{% docs bingeflix_column_events_created_at %}
Timestamp when event logged.
{% enddocs %}

{% docs bingeflix_column_event_name %}
The name of the event.
{% enddocs %}

{% docs bingeflix_column_event_id %}
The unique identifier of the event.
{% enddocs %}



## Subscriptions

### Subscriptions Columns
{% docs bingeflix_column_first_subscription_starts_at %}
Timestamp of first user subscription.
{% enddocs %}

{% docs bingeflix_count_of_subscriptions %}
Number of subscriptions purchased by user.
{% enddocs %}
