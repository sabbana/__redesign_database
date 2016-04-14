-- 
	-- Redesign Directory Member IBF
	-- 2016
-- 

-- ibf_region
create table ibf_region(
	region_id int primary key auto_increment,
	region_name varchar(50) not null
);
insert into ibf_region(region_name) values
('Jabodetabek'),
('Jawa Barat'),
('Banten'),
('DIY Jateng'),
('Jawa Timur'),
('Papua'),
('Kalimantan'),
('Sulawesi'),
('Sumatra'),
('Hongkong'),
('Korea');

-- ibf_member_type
create table ibf_member_type(
	type_id int primary key auto_increment,
	member_type varchar(100) not null,
	type_description text
);

insert into ibf_member_type (member_type, type_description) values
('Kontributor Tulisan Artikel',''),
('Kontributor Desain Grafis dan Media',''),
('Narasumber Webminar',''),
('Web Developer',''),
('Mobile Developer',''),
('System Admin',''),
('Web Admin dan Sosial Media Admin',''),
('Video Editor',''),
('Animator',''),
('Fotografer',''),
('Pelaksana Kegiatan',''),
('Pengajar Pelatihan dan Mentor',''),
('Narasumber Berbagi Ilmu Tematik',''),
('Donatur Beasiswa Ilmuberbagi @200rb/bulan',''),
('Donatur IB Academy Heroes @500rb/bulan','');
-- ibf apps

create table ibf_app(
	app_id int primary key,
	`app_name` varchar(20) not null,
	app_url varchar(50),
	date_create datetime
);

insert into ibf_app (app_id, `app_name`, app_url, date_create) values 
(1, 'member','http://member.ilmuberbagi.or.id', current_timestamp),
(2, 'blog','http://blog.ilmuberbagi.or.id', current_timestamp),
(3, 'jurnal','http://jurnal.ilmuberbagi.or.id', current_timestamp),
(4, 'quote','http://quote.ilmuberbagi.or.id', current_timestamp),
(5, 'market','http://market.ilmuberbagi.or.id', current_timestamp),
(6, 'chanel','http://channel.ilmuberbagi.or.id', current_timestamp),
(7, 'mitra','http://mitra.ilmuberbagi.or.id', current_timestamp);


-- ibf_members
create table ibf_member(
	member_id int primary key auto_increment,
	member_name varchar(50) not null,
	member_email varchar(50) not null,
	member_username varchar(20),
	member_password varchar(32),
	member_ibf_code varchar(10),
	member_status boolean default 1
);

-- ibf_member detail
create table ibf_member_detail(
	member_id int,
	member_type varchar(100),
	member_birth_date date,
	member_birthplace varchar(50),
	member_gender boolean default 1,
	member_address varchar(200),
	member_region int,
	member_education varchar(200),
	member_skills varchar(500),
	member_job varchar(50),
	member_phone varchar(50),
	member_facebook varchar(50),
	member_twitter varchar(50),
	member_gplus varchar(50),
	member_blog varchar(50),
	member_image_profile varchar(200),
	member_motivation text,
	member_description text,
	member_reg_year int(4),
	member_date_input datetime,
	member_date_update datetime,
	foreign key (member_id) references ibf_member(member_id) ON DELETE CASCADE,
	foreign key (member_region) references ibf_region(region_id)
);

-- ibf privilages
-- app number mengacu pada ibf_app, privilage values = 1 .. 9
-- ketentuan value privilage menyesuaikan dengan masing-masing app

create table ibf_privilage(
	member_id int,
	app_1 tinyint(1) default 1,
	app_2 tinyint(1) default 1,
	app_3 tinyint(1) default 1,
	app_4 tinyint(1) default 1,
	app_5 tinyint(1) default 1,
	app_6 tinyint(1) default 1,
	app_7 tinyint(1) default 1,
	app_8 tinyint(1) default 1,
	app_9 tinyint(1) default 1,
	app_10 tinyint(1) default 1,
	app_11 tinyint(1) default 1,
	app_12 tinyint(1) default 1,
	app_13 tinyint(1) default 1,
	app_14 tinyint(1) default 1,
	app_15 tinyint(1) default 1,
	app_16 tinyint(1) default 1,
	app_17 tinyint(1) default 1,
	app_18 tinyint(1) default 1,
	app_19 tinyint(1) default 1,
	app_20 tinyint(1) default 1,
	foreign key (member_id) references ibf_member(member_id) ON DELETE CASCADE
);

-- article database
create table ibf_article_category(
	category_id int primary key auto_increment,
	category_name varchar(50) not null
);

create table ibf_article(
	article_id int primary key auto_increment,
	article_category int,
	article_title varchar(100) not null,
	article_content text,
	article_author int,
	article_reviewer int,
	article_image varchar(100),
	article_tags varchar(200),
	article_approve boolean default 0,
	article_date_input datetime,
	article_date_update datetime,
	foreign key (article_author) references ibf_member(member_id),
	foreign key (article_category) references ibf_article_category(category_id)
);

create table ibf_article_comment(
	comment_id int primary key auto_increment,
	comment_article_id int,
	comment_author varchar(50) not null,
	comment_author_email varchar(50),
	comment_author_url varchar(100),
	comment_author_ip varchar(50),
	comment_content text,
	comment_approved boolean default 0,
	comment_date_input datetime,
	foreign key (comment_article_id) references ibf_article(article_id)
);

create table ibf_asset(
	asset_id int primary key auto_increment,
	asset_name varchar(50),
	asset_url varchar(100),
	asset_url_thumb varchar(100),
	asset_description text,
	asset_create_date datetime
);

create table ibf_activity(
	activity_id int primary key auto_increment,
	activity_name varchar(100) not null,
	activity_location varchar(100) not null,
	activity_lat float,
	activity_long float,
	activity_google_address varchar(100),
	activity_pic varchar(100) not null,
	activity_description text,
	activity_date_start datetime,
	activity_date_end datetime,
	activity_participant boolean default 0,
	activity_image varchar(100),
	activity_create_date datetime,
	activity_update_date datetime
);

create table ibf_activity_participant(
	activity_id int,
	name varchar(50) not null,
	gender boolean default 1,
	email varchar(50) not null,
	phone varchar(20) not null,
	job varchar(50),
	date_register datetime,
	foreign key (activity_id) references ibf_activity(activity_id) ON DELETE CASCADE
);
