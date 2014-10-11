CREATE TABLE [blog_themes](
	[id] [int] IDENTITY(1,1) PRIMARY KEY NOT NULL,
	[tm_key] [varchar](255) NULL,
	[tm_value] [ntext] NULL
)

CREATE TABLE [blog_tags](
	[id] [int] IDENTITY(1,1) PRIMARY KEY NOT NULL,
	[tag_name] [varchar](255) NULL,
	[tag_count] [int] NULL
)

CREATE TABLE [blog_plugins](
	[id] [int] IDENTITY(1,1) PRIMARY KEY NOT NULL,
	[plu_mark] [varchar](255) NULL,
	[plu_name] [varchar](255) NULL,
	[plu_des] [ntext] NULL,
	[plu_author] [varchar](255) NULL,
	[plu_mail] [varchar](255) NULL,
	[plu_web] [ntext] NULL,
	[plu_folder] [varchar](255) NULL,
	[plu_icon] [ntext] NULL,
	[plu_stop] [bit] NULL
)

CREATE TABLE [blog_params](
	[id] [int] IDENTITY(1,1) PRIMARY KEY NOT NULL,
	[par_keyword] [varchar](255) NULL,
	[par_keyvalue] [ntext] NULL,
	[par_pid] [int] NULL,
	[par_hide] [bit] NOT NULL
)

CREATE TABLE [blog_members](
	[id] [int] IDENTITY(1,1) PRIMARY KEY NOT NULL,
	[member_mark] [varchar](255) NULL,
	[member_nick] [varchar](255) NULL,
	[member_hashkey] [varchar](40) NULL,
	[member_salt] [varchar](10) NULL,
	[member_mail] [varchar](255) NULL,
	[member_group] [int] NULL,
	[member_comments] [int] NULL,
	[member_messages] [int] NULL,
	[member_forbit] [bit] NULL,
	[member_logindate] [datetime] NULL,
	[member_birthday] [datetime] NULL,
	[member_address] [ntext] NULL,
	[member_website] [ntext] NULL,
	[member_sex] [int] NULL,
	[member_avatar] [ntext] NULL,
	[member_token] [varchar](50) NULL,
	[member_openid] [varchar](50) NULL
)

CREATE TABLE [blog_levels](
	[id] [int] IDENTITY(1,1) PRIMARY KEY NOT NULL,
	[code_name] [varchar](255) NULL,
	[code_des] [ntext] NULL,
	[code_isystem] [bit] NULL,
	[code_mark] [varchar](255) NULL
)

CREATE TABLE [blog_groups](
	[id] [int] IDENTITY(1,1) PRIMARY KEY NOT NULL,
	[group_name] [varchar](255) NULL,
	[group_code] [ntext] NULL,
	[group_isystem] [bit] NULL
)

CREATE TABLE [blog_global](
	[id] [int] IDENTITY(1,1) PRIMARY KEY NOT NULL,
	[blog_name] [varchar](255) NULL,
	[blog_title] [varchar](255) NULL,
	[blog_des] [ntext] NULL,
	[blog_mail] [varchar](255) NULL,
	[blog_copyright] [varchar](50) NULL,
	[blog_keywords] [ntext] NULL,
	[blog_description] [ntext] NULL,
	[blog_theme] [varchar](255) NULL,
	[blog_themename] [varchar](255) NULL,
	[blog_thememail] [varchar](255) NULL,
	[blog_themeweb] [ntext] NULL,
	[blog_themeversion] [varchar](255) NULL,
	[blog_status] [int] NULL,
	[blog_message] [ntext] NULL,
	[blog_categoryremove] [int] NULL,
	[blog_articlecut] [int] NULL,
	[blog_categoryremovechild] [int] NULL,
	[blog_appid] [int] NULL,
	[blog_appkey] [varchar](50) NULL,
	[blog_articlepage] [int] NULL,
	[blog_article_cloud_notice] [bit] NULL
)

CREATE TABLE [blog_categorys](
	[id] [int] IDENTITY(1,1) PRIMARY KEY NOT NULL,
	[cate_name] [varchar](255) NULL,
	[cate_des] [ntext] NULL,
	[cate_count] [int] NULL,
	[cate_parent] [int] NULL,
	[cate_src] [ntext] NULL,
	[cate_outlink] [bit] NULL,
	[cate_isroot] [bit] NULL,
	[cate_order] [int] NULL,
	[cate_icon] [ntext] NULL
)

CREATE TABLE [blog_articles](
	[id] [int] IDENTITY(1,1) PRIMARY KEY NOT NULL,
	[art_title] [varchar](255) NULL,
	[art_des] [ntext] NULL,
	[art_category] [int] NULL,
	[art_content] [ntext] NULL,
	[art_tags] [ntext] NULL,
	[art_draft] [bit] NULL,
	[art_tname] [varchar](255) NULL,
	[art_postdate] [datetime] NULL,
	[art_modifydate] [datetime] NULL,
	[art_comment_count] [int] NULL,
	[art_cover] [ntext] NULL,
	[art_tdes] [ntext] NULL
)

ALTER TABLE [blog_tags] ADD  CONSTRAINT [DF_blog_tags_tag_count]  DEFAULT ((0)) FOR [tag_count]
ALTER TABLE [blog_plugins] ADD  CONSTRAINT [DF_blog_plugins_plu_stop]  DEFAULT ((0)) FOR [plu_stop]
ALTER TABLE [blog_params] ADD  CONSTRAINT [DF_blog_params_par_pid]  DEFAULT ((0)) FOR [par_pid]
ALTER TABLE [blog_params] ADD  CONSTRAINT [DF_blog_params_par_hide]  DEFAULT ((0)) FOR [par_hide]
ALTER TABLE [blog_members] ADD  CONSTRAINT [DF_blog_members_member_group]  DEFAULT ((0)) FOR [member_group]
ALTER TABLE [blog_members] ADD  CONSTRAINT [DF_blog_members_member_comments_1]  DEFAULT ((0)) FOR [member_comments]
ALTER TABLE [blog_members] ADD  CONSTRAINT [DF_blog_members_member_messages_1]  DEFAULT ((0)) FOR [member_messages]
ALTER TABLE [blog_members] ADD  CONSTRAINT [DF_blog_members_member_forbit_1]  DEFAULT ((0)) FOR [member_forbit]
ALTER TABLE [blog_members] ADD  CONSTRAINT [DF_blog_members_member_sex]  DEFAULT ((0)) FOR [member_sex]
ALTER TABLE [blog_levels] ADD  CONSTRAINT [DF_blog_code_code_isystem]  DEFAULT ((0)) FOR [code_isystem]
ALTER TABLE [blog_groups] ADD  CONSTRAINT [DF_blog_groups_group_isystem]  DEFAULT ((0)) FOR [group_isystem]
ALTER TABLE [blog_global] ADD  CONSTRAINT [DF_blog_global_blog_status]  DEFAULT ((0)) FOR [blog_status]
ALTER TABLE [blog_global] ADD  CONSTRAINT [DF_blog_global_blog_articlepage]  DEFAULT ((10)) FOR [blog_articlepage]
ALTER TABLE [blog_global] ADD  CONSTRAINT [DF_blog_global_blog_article_cloud_notice]  DEFAULT ((0)) FOR [blog_article_cloud_notice]
ALTER TABLE [blog_categorys] ADD  CONSTRAINT [DF_blog_categorys_cate_count]  DEFAULT ((0)) FOR [cate_count]
ALTER TABLE [blog_categorys] ADD  CONSTRAINT [DF_blog_categorys_cate_parent]  DEFAULT ((0)) FOR [cate_parent]
ALTER TABLE [blog_categorys] ADD  CONSTRAINT [DF_blog_categorys_cate_outlink]  DEFAULT ((0)) FOR [cate_outlink]
ALTER TABLE [blog_categorys] ADD  CONSTRAINT [DF_blog_categorys_cate_isroot]  DEFAULT ((0)) FOR [cate_isroot]
ALTER TABLE [blog_categorys] ADD  CONSTRAINT [DF_blog_categorys_cate_order]  DEFAULT ((99)) FOR [cate_order]
ALTER TABLE [blog_articles] ADD  CONSTRAINT [DF_blog_articles_art_draft]  DEFAULT ((0)) FOR [art_draft]
ALTER TABLE [blog_articles] ADD  CONSTRAINT [DF_blog_articles_art_comment_count]  DEFAULT ((0)) FOR [art_comment_count]