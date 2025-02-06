--SELECT TOP 100 * FROM source_data

CREATE TABLE staging_data(
    stg_key_id BIGINT IDENTITY(1,1) PRIMARY KEY,
    full_name NVARCHAR(55),
    email NVARCHAR(200),
    current_year BIGINT,
    department NVARCHAR(50),
    section NVARCHAR(5),
    play_games NVARCHAR(10),
    engagement NVARCHAR(10),
    engagement_true NVARCHAR(10),
    demo_interaction NVARCHAR(10),
    long_discuss NVARCHAR(3000),
    contact_type NVARCHAR(200),
    long_contact NVARCHAR(3000)
)
GO

--SELECT TOP 100 * FROM staging_data

CREATE TABLE IM_data (
    im_key NVARCHAR(200) NOT NULL PRIMARY KEY,
    full_name NVARCHAR(55),
    email NVARCHAR(200),
    current_year BIGINT,
    department NVARCHAR(50),
    section NVARCHAR(1),
    play_games INT,
    engagement INT,
    engagement_true INT,
    demo_interaction INT,
    long_discuss NVARCHAR(3000),
    contact_type NVARCHAR(200),
    long_contact NVARCHAR(3000)
)
GO
--SELECT TOP 100 * from IM_data
