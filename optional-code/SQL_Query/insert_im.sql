TRUNCATE TABLE IM_data
GO

INSERT INTO IM_data(
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
)

SELECT 
    --Defining Key
    CONCAT(stg_key_id,'-',department,'-',current_year,'-',section),
    full_name,
    email,
    current_year,
    department,
    section,
    -- Reduce data to conserve storage
    CASE WHEN play_games='Yes' THEN 1 ELSE 0 END,
    CASE WHEN engagement='Yes' THEN 1 ELSE 0 END,
    CASE WHEN engagement_true='Yes' THEN 1 ELSE 0 END,
    CASE WHEN demo_interaction='Yes' THEN 1 ELSE 0 END,
    long_discuss,
    contact_type,
    long_contact
FROM staging_data
GO

select count(*) as 'Duplicate Count',
    im_key
FROM IM_data
GROUP BY im_key
HAVING count(*) > 1