DROP VIEW clone_view
GO

CREATE VIEW clone_view
AS SELECT * FROM exposed_view

--select * from clone_view