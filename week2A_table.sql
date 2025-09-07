--Note my friends don't watch a lot of movies that overlap so I decided to go with TV shows, and created some categories to get more data that could be explored later.
CREATE TABLE Shows (
	interviewees     varchar(80),  -- people
	tv_shows         varchar(80),
    overall          int,          -- rating of if they like it (1-5)
    acting           int,          -- rating of acting (1-5)
    plots            int,          -- rating of plot quality (1-5)
    recommend        boolean       -- would they recommend this (T/F)
);

--Note: originally called tv shows column 'shows' which is same name as table, thought it may get confusing
--ALTER TABLE Shows
--RENAME COLUMN shows TO tv_shows;

insert into Shows (interviewees, tv_shows, overall, acting, plots, recommend)
values 
	('Mackenzie', 'Its Always Sunny In Philadelphia', 5,4,3, TRUE),
	('Mackenzie', 'Game of Thrones', 4,4,3, TRUE),
	('Mackenzie', 'Gilmore Girls', 3,3,2, TRUE),
	('Mackenzie', 'Peaky Blinders', 4,4,4, TRUE),
	('Mackenzie', 'Love Island', 3,2,3, TRUE),
	('Mackenzie', 'Guys Grocery Games', 5,2,4, TRUE),
	('Crystal', 'Its Always Sunny In Philadelphia', 5,5,3, TRUE),
	('Crystal', 'Game of Thrones', 4,5,5, TRUE),
	('Crystal', 'Gilmore Girls', 4,4,3, TRUE),
	--('Crystal', 'Guys Grocery Games', , , , TRUE), --Note she hasn't seen the show but knows other people like it so she'd recommend it. Need to make separate query to insert based on valid fields
	('Tyler', 'Its Always Sunny In Philadelphia', 5,5,5, TRUE),
	('Tyler', 'Game of Thrones', 4,5,4, TRUE),
	('Tyler', 'Peaky Blinders', 4,4,3, TRUE),
	('Tyler', 'Love Island', 3,1,2, FALSE),
	('Tyler', 'Guys Grocery Games', 5,5,5, TRUE),
	('Jake', 'Its Always Sunny In Philadelphia', 5,5,4, TRUE),
	('Jake', 'Game of Thrones', 4,4,5, TRUE),
	('Jake', 'Guys Grocery Games', 3,1,4, FALSE),
	('Caitlin', 'Its Always Sunny In Philadelphia', 4,3,3, TRUE),
	('Caitlin', 'Game of Thrones', 4,3,5, TRUE),
	('Caitlin', 'Peaky Blinders', 5,5,5, TRUE),
	('Caitlin', 'Guys Grocery Games', 3,2,4, TRUE),
	('Alexis', 'Guys Grocery Games', 3,4,5, TRUE),
	('Josh', 'Its Always Sunny In Philadelphia', 4,5,3, TRUE),
	('Josh', 'Game of Thrones', 5,5,5, TRUE),
	('Josh', 'Love Island', 4,3,5, TRUE),
	('Stu', 'Its Always Sunny In Philadelphia', 5,5,5, TRUE),
	('Stu', 'Guys Grocery Games', 3,2,4, FALSE),
	('Skyler', 'Its Always Sunny In Philadelphia', 5,5,5, TRUE),
	('Skyler', 'Guys Grocery Games', 4,1,5, TRUE),
	('Valerie', 'Its Always Sunny In Philadelphia', 3,3,4, FALSE),
	('Valerie', 'Gilmore Girls', 5,5,5, TRUE),
	('Valerie', 'Guys Grocery Games', 3,1,1, TRUE);

insert into Shows (interviewees, tv_shows, recommend)
values ('Crystal', 'Guys Grocery Games', TRUE);

--insert all instances of them not seeing a show
insert into Shows (interviewees, tv_shows)
values 
	('Crystal', 'Peaky Blinders'),
	('Crystal', 'Love Island'),
	('Tyler', 'Gilmore Girls'),
	('Jake', 'Gilmore Girls'),
	('Jake', 'Peaky Blinders'),
	('Jake', 'Love Island'),
	('Caitlin', 'Gilmore Girls'),
	('Caitlin', 'Love Island'),
	('Alexis', 'Its Always Sunny In Philadelphia'),
	('Alexis', 'Game of Thrones'),
	('Alexis', 'Gilmore Girls'),
	('Alexis', 'Peaky Blinders'),
	('Alexis', 'Love Island'),
	('Josh', 'Gilmore Girls'),
	('Josh', 'Peaky Blinders'),
	('Josh', 'Guys Grocery Games'),
	('Stu', 'Game of Thrones'),
	('Stu', 'Gilmore Girls'),
	('Stu', 'Peaky Blinders'),
	('Stu', 'Love Island'),
	('Skyler', 'Game of Thrones'),
	('Skyler', 'Gilmore Girls'),
	('Skyler', 'Peaky Blinders'),
	('Skyler', 'Love Island'),
	('Valerie', 'Game of Thrones'),
	('Valerie', 'Peaky Blinders'),
	('Valerie', 'Love Island');

select * from Shows