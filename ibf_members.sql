-- 
	-- Redesign Directory Member IBF
	-- 2016
-- 

-- ibf_region
create table ibf_region(
	region_id int primary key,
	region_name varchar(50) not null
);

-- ibf_member_type
create table ibf_member_type(
	type_id int primary key auto_increment,
	member_type tinyint(1) not null,
	type_description text
);


-- ibf_members
create table ibf_member(
	member_id int primary key auto_increment,
	member_name varchar(50) not null,
	member_email varchar(50) not null,
	member_username varchar(20),
	member_password varchar(32),
	member_ibf_code varchar(10)
);

-- ibf_member detail
create table ibf_member_detail(
	member_id int,
	member_type int,
	member_birth_date date,
	member_birthplace varchar(50),
	member_address varchar(200),
	member_region int,
	member_job varchar(50),
	member_phone varchar(50),
	member_facebook varchar(50),
	member_twitter varchar(50),
	member_gplus varchar(50),
	member_blog varchar(50),
	member_image_profile varchar(200),
	member_description text,
	foreign key (member_id) references ibf_member(member_id) ON DELETE CASCADE,
	foreign key (member_type) references ibf_member_type(type_id),
	foreign key (member_region) references ibf_region(region_id)
);