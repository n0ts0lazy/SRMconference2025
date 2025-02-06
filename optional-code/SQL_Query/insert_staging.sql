TRUNCATE TABLE staging_data
GO

INSERT INTO staging_data
(
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
)
SELECT DISTINCT 
    --Clean the data before you insert by removing white spaces and duplicate
    TRIM(Your_Name),
    TRIM(Username),
    Current_year,
    TRIM(Department),
    TRIM(Section),
    TRIM(Do_you_play_video_games),
    TRIM(Do_you_engage_in_community_events),
    TRIM(Have_you_engaged_in_community_problem_solving_for_events),
    TRIM(Do_you_wish_to_share_this_during_the_demo_session),
    TRIM(Tell_me_about_the_event_in_detail_I_may_contact_you_in_future_if_you_are_interested_as_well_as_during_the_demo_session),
    TRIM(Form_of_contact),
    TRIM(Provide_your_contact_details_here)
FROM source_data 

GO

SELECT count(*) AS 'Duplicate Count', 
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
FROM staging_data
GROUP BY full_name,
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
HAVING count(*) >1
GO

--select TOP 100 * from staging_data

