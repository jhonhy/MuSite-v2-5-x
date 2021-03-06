USE [webSite]
GO
/****** Object:  StoredProcedure [dbo].[webChatServerWrite]    Script Date: 02/22/2011 12:05:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[webChatServerWrite]
@dateSay datetime,
@server int,
@type tinyint,
@name varchar(10),
@message varchar(255),
@destiny varchar(65)
AS
BEGIN

INSERT INTO [dbo].[webChatServer]
           ([dateSay]
           ,[server]
           ,[type]
           ,[name]
           ,[message]
           ,[destiny])
     VALUES
           (@dateSay
           ,@server
           ,@type
           ,@name
           ,@message
           ,@destiny)

END

