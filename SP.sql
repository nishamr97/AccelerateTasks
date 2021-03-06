USE [AccelerateTask]
GO
/****** Object:  StoredProcedure [dbo].[USP_AT_DeliveryUnit]    Script Date: 3/23/2021 10:06:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Nisha 
-- Create date: 20/03/2020
-- Description:	USP_AT_DeliveryUnit
-- =============================================
ALTER PROCEDURE [dbo].[USP_AT_DeliveryUnit]
	(
		@Flag INT = NULL
	)
AS
BEGIN
	SET NOCOUNT ON;
		IF @Flag = 1
			BEGIN
				SELECT Vertical,1 AS Result,'Vertical data' AS Msg FROM DeliveryUnit
			END
		ELSE IF @Flag = 2
			BEGIN
				SELECT Horizantal,1 AS Result,'Horizantal data' AS Msg FROM DeliveryUnit
			END
		ELSE
			BEGIN
				SELECT 0 AS Result,'Something went wrong' AS Msg
			END
END
