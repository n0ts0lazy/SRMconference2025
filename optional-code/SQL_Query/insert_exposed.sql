DROP VIEW exposed_view
GO

CREATE VIEW exposed_view
AS SELECT
    im_key,
    full_name,
    email,
    current_year,
    department,
    section,
    play_games,
    engagement,
    engagement_true,
    demo_interaction,
    long_discuss,
    contact_type,
    long_contact
FROM im_data

--select top 100 * from exposed_view