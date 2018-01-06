

CREATE TABLE [dbo].[Attachment](
	[AttachmentId] [uniqueidentifier] NOT NULL,
	[CompanyId] [bigint] NOT NULL,
	[Folder] [varchar](10) NOT NULL,
	[Title] [nvarchar](500) NOT NULL,
	[SizeOriginal] [bigint] NOT NULL,
	[SizeSmall] [bigint] NOT NULL,
	[SizeBig] [bigint] NOT NULL,
	[FileExt] [varchar](50) NOT NULL,
	[Downloads] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[CreateUserId] [bigint] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Attachment] PRIMARY KEY CLUSTERED 
(
	[AttachmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[Attachment] ADD  CONSTRAINT [DF_Attachment_SizeBigThumbnails]  DEFAULT ((0)) FOR [SizeBig]
GO

ALTER TABLE [dbo].[Attachment] ADD  CONSTRAINT [DF_Attachment_Downloads]  DEFAULT ((0)) FOR [Downloads]
GO

ALTER TABLE [dbo].[Attachment] ADD  CONSTRAINT [DF_Attachment_IsEnable]  DEFAULT ((0)) FOR [Status]
GO

ALTER TABLE [dbo].[Attachment]  WITH CHECK ADD  CONSTRAINT [CK_Attachment] CHECK  (([Status]=(2) OR [Status]=(1) OR [Status]=(0)))
GO

ALTER TABLE [dbo].[Attachment] CHECK CONSTRAINT [CK_Attachment]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����Guid' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Attachment', @level2type=N'COLUMN',@level2name=N'AttachmentId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��˾Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Attachment', @level2type=N'COLUMN',@level2name=N'CompanyId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ļ�����201709' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Attachment', @level2type=N'COLUMN',@level2name=N'Folder'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ļ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Attachment', @level2type=N'COLUMN',@level2name=N'Title'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Դ�ļ���С' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Attachment', @level2type=N'COLUMN',@level2name=N'SizeOriginal'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'С����ͼ��С' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Attachment', @level2type=N'COLUMN',@level2name=N'SizeSmall'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ͼ��С' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Attachment', @level2type=N'COLUMN',@level2name=N'SizeBig'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ļ���չ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Attachment', @level2type=N'COLUMN',@level2name=N'FileExt'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Attachment', @level2type=N'COLUMN',@level2name=N'Downloads'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'״̬��0�ϴ��ļ�����24Сʱ��ɾ������1���õ��ļ���2��־Ϊ�������ļ�������ϵͳ�ļ�������ɾ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Attachment', @level2type=N'COLUMN',@level2name=N'Status'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Attachment', @level2type=N'COLUMN',@level2name=N'CreateUserId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Attachment', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Attachment'
GO


