PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "Anime"
(
    anime_id integer NOT NULL,
    name character varying(255),
    genre character varying(255),
    year integer,
    rating numeric,
    duration numeric,
    CONSTRAINT "Anime_pkey" PRIMARY KEY (anime_id)
);
INSERT INTO Anime VALUES(1,'Ковбой Бибоп / Cowboy Bebop','Экшен, Приключения, Комедия, Драма, Фантастика, Космос',1999,8.7699999999999995736,24);
INSERT INTO Anime VALUES(19,'Монстр / Monster','Сэйнэн, Драма, Ужасы, Детектив, Триллер, Полиция, Психологическое',2004,8.8499999999999996447,74);
INSERT INTO Anime VALUES(33,'Берсерк / Kenpuu Denki Berserk','Сэйнэн, Экшен, Приключения, Драма, Фэнтези, Ужасы, Сверхъестественное, Демоны, Военное',1997,8.5500000000000007105,25);
INSERT INTO Anime VALUES(121,replace('Стальной алхимик\n','\n',char(10)),'Сёнен, Экшен, Приключения, Комедия, Драма, Фэнтези, Военное',2003,8.1300000000000007815,51);
INSERT INTO Anime VALUES(245,'Крутой учитель Онидзука / Great Teacher Onizuka','Cёнен, Комедия, Драма, Школа, Работа',2000,8.6899999999999995026,43);
INSERT INTO Anime VALUES(849,'Меланхолия Харухи Судзумии','Комедия, Детектив, Повседневность, Пародия, Школа, Фантастика',2008,7.8499999999999996447,12);
INSERT INTO Anime VALUES(1535,'Тетрадь смерти / Death Note','Сёнен, Детектив, Сверхъестественное, Триллер, Полиция, Психологическое',2006,8.6300000000000007815,37);
INSERT INTO Anime VALUES(6594,'Истории мечей / Katanagatari','Экшен, Приключения, Романтика, Боевые искусства, Исторический',2010,8.3399999999999998578,12);
INSERT INTO Anime VALUES(9253,'Врата Штейна / Steins;Gate','Драма, Фантастика, Триллер, Психологическое',2011,9.080000000000000071,12);
INSERT INTO Anime VALUES(31043,'Город, в котором меня нет / Boku dake ga Inai Machi','Сэйнэн, Детектив, Сверхъестественное, Психологическое',2016,8.3200000000000002842,12);
INSERT INTO Anime VALUES(31240,'Re:Zero','Драма, Фэнтези, Триллер, Психологическое',2016,8.2400000000000002131,25);
INSERT INTO Anime VALUES(32281,'Твоё имя / Kimi no Na wa','Драма, Романтика, Школа, Сверхъестествернное',2017,8.8900000000000005684,5);
INSERT INTO Anime VALUES(33352,'Вайолет Эвергарден / Violet Evergarden','Драма, Фэнтези, Повседневность',2018,8.6699999999999999289,13);
INSERT INTO Anime VALUES(37521,'Сага о Винланде / Vinland Saga','Сэйнэн, Экшен, Приключения, Драма, Исторический',2019,8.7300000000000004263,24);
INSERT INTO Anime VALUES(40434,'Магистр дьявольского культа 3 / Mo Dao Zu Shi: Wanjie Pian','Экшен, Драма, Сверхъестественное, Демоны, Исторический',2021,8.5500000000000007105,13);
INSERT INTO Anime VALUES(43608,'Госпожа Кагуя / Kaguya-sama wa Kokurasetai','Сэйнэн, Комедия, Романтика, Психологическое, Школа',2019,8.4100000000000001421,12);
INSERT INTO Anime VALUES(44511,'Человек-бензопила / Chainsaw Man','Сёнен, Экшен, Сверхъестественное',2022,8.830000000000000071,12);
INSERT INTO Anime VALUES(46102,'Случайное такси / Odd Taxi','Детектив',2021,8.6300000000000007815,13);
INSERT INTO Anime VALUES(52193,'Война горничных Акибы / Akiba Meido Sensou','Экшен, Комедия',2022,7.5199999999999995736,12);
CREATE TABLE IF NOT EXISTS "Playlists"
(
    playlist_id integer NOT NULL,
    playlist_name character varying(255),
    is_open boolean,
    description character varying(255),
    creation_date date,
    CONSTRAINT "Playlists_pkey" PRIMARY KEY (playlist_id)
);
INSERT INTO Playlists VALUES(0,'Советуют смотреть',1,'В плейлист добавлены лучшие по мнению аудитории аниме.','2020-05-01');
INSERT INTO Playlists VALUES(1,'Лучшие аниме 1990-х гг.',0,'Коллекция из лучших в рейтинге аниме, выпущенных в 1990-х годах.','2021-06-02');
INSERT INTO Playlists VALUES(2,'Выбор редакции',1,'Аниме, которые рекомендует редакция.','2020-01-03');
INSERT INTO Playlists VALUES(3,'Классика жанра',1,'Лучшие из лучших в жанре аниме.','2022-01-01');
INSERT INTO Playlists VALUES(4,'Лучшие аниме 2000-х гг.',1,'Коллекция из лучших в рейтинге аниме, выпущенных в 2000-х годах.','2021-01-02');
INSERT INTO Playlists VALUES(5,'Для просмотра с друзьями',1,'Плейлист из аниме, которые стоит посмотреть с друзьями.','2020-05-04');
INSERT INTO Playlists VALUES(111,'Любимое',0,'Моё любмое аниме','2022-09-12');
INSERT INTO Playlists VALUES(222,'нелюбимое',0,'Моё нелюбимое аниме','2022-09-12');
INSERT INTO Playlists VALUES(333,'Подборка аниме 2022 года',1,'Лучшие аниме 2022 года','2022-12-12');
INSERT INTO Playlists VALUES(444,replace('Подборка полнометра\nжных аниме','\n',char(10)),1,replace('Лучшие полнометражн\nые аниме','\n',char(10)),'2018-03-04');
INSERT INTO Playlists VALUES(555,replace('Подборка аниме в жанре\n Комедия','\n',char(10)),1,'Лучшие аниме в жанре комедия','2021-04-04');
CREATE TABLE IF NOT EXISTS "Users"
(
    user_id integer NOT NULL,
    user_name character varying(255),
    registration date,
    CONSTRAINT "Users_pkey" PRIMARY KEY (user_id)
);
INSERT INTO Users VALUES(0,'Vladimir','2016-04-02');
INSERT INTO Users VALUES(1,'Sasha','2020-11-11');
INSERT INTO Users VALUES(2,'Uliana','2020-07-13');
INSERT INTO Users VALUES(3,'Arina','2022-01-28');
INSERT INTO Users VALUES(4,'Maria','2021-03-07');
INSERT INTO Users VALUES(5,'Yaroslav','2021-10-03');
CREATE TABLE IF NOT EXISTS "animeToPlaylist"
(
    anime_id integer NOT NULL,
    playlist_id integer NOT NULL,
    add_date date,
    CONSTRAINT "animeToPlaylist_pkey" PRIMARY KEY (anime_id, playlist_id),
    CONSTRAINT fk_anime_id FOREIGN KEY (anime_id)
        REFERENCES "Anime" (anime_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT fk_playlist_id FOREIGN KEY (playlist_id)
        REFERENCES "Playlists" (playlist_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
);
INSERT INTO animeToPlaylist VALUES(121,0,'2020-01-11');
INSERT INTO animeToPlaylist VALUES(121,3,'2022-03-12');
INSERT INTO animeToPlaylist VALUES(121,4,'2021-05-23');
INSERT INTO animeToPlaylist VALUES(9253,2,'2020-02-12');
INSERT INTO animeToPlaylist VALUES(9253,3,'2022-03-12');
INSERT INTO animeToPlaylist VALUES(9253,5,'2020-06-01');
INSERT INTO animeToPlaylist VALUES(44511,2,'2020-02-12');
INSERT INTO animeToPlaylist VALUES(44511,3,'2022-03-12');
INSERT INTO animeToPlaylist VALUES(44511,5,'2020-06-01');
INSERT INTO animeToPlaylist VALUES(19,0,'2020-01-11');
INSERT INTO animeToPlaylist VALUES(19,2,'2020-02-12');
INSERT INTO animeToPlaylist VALUES(19,5,'2020-06-01');
INSERT INTO animeToPlaylist VALUES(37521,0,'2020-01-11');
INSERT INTO animeToPlaylist VALUES(37521,4,'2021-05-23');
INSERT INTO animeToPlaylist VALUES(37521,5,'2020-06-01');
INSERT INTO animeToPlaylist VALUES(40434,0,'2020-01-11');
INSERT INTO animeToPlaylist VALUES(40434,2,'2020-02-12');
INSERT INTO animeToPlaylist VALUES(40434,5,'2020-06-01');
INSERT INTO animeToPlaylist VALUES(46102,0,'2020-01-11');
INSERT INTO animeToPlaylist VALUES(46102,2,'2020-02-12');
INSERT INTO animeToPlaylist VALUES(46102,5,'2020-06-01');
INSERT INTO animeToPlaylist VALUES(33352,2,'2020-02-12');
INSERT INTO animeToPlaylist VALUES(33352,3,'2022-03-12');
INSERT INTO animeToPlaylist VALUES(33352,5,'2020-06-01');
INSERT INTO animeToPlaylist VALUES(1535,0,'2020-01-11');
INSERT INTO animeToPlaylist VALUES(1535,3,'2022-03-12');
INSERT INTO animeToPlaylist VALUES(1535,5,'2020-06-01');
INSERT INTO animeToPlaylist VALUES(33,1,'2021-11-22');
INSERT INTO animeToPlaylist VALUES(33,3,'2022-03-12');
INSERT INTO animeToPlaylist VALUES(33,5,'2020-06-01');
CREATE TABLE IF NOT EXISTS "usersToPlaylist"
(
    user_id integer NOT NULL,
    playlist_id integer NOT NULL,
    CONSTRAINT "usersToPlaylist_pkey" PRIMARY KEY (user_id, playlist_id),
    CONSTRAINT "usersToPlaylist_playlist_id_fkey" FOREIGN KEY (playlist_id)
        REFERENCES "Playlists" (playlist_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT "usersToPlaylist_user_id_fkey" FOREIGN KEY (user_id)
        REFERENCES "Users" (user_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
);
INSERT INTO usersToPlaylist VALUES(0,1);
INSERT INTO usersToPlaylist VALUES(0,2);
INSERT INTO usersToPlaylist VALUES(1,4);
INSERT INTO usersToPlaylist VALUES(1,5);
INSERT INTO usersToPlaylist VALUES(2,1);
INSERT INTO usersToPlaylist VALUES(2,2);
INSERT INTO usersToPlaylist VALUES(3,0);
INSERT INTO usersToPlaylist VALUES(3,4);
INSERT INTO usersToPlaylist VALUES(4,0);
INSERT INTO usersToPlaylist VALUES(4,1);
INSERT INTO usersToPlaylist VALUES(5,5);
INSERT INTO usersToPlaylist VALUES(5,4);
INSERT INTO usersToPlaylist VALUES(44511,333);
INSERT INTO usersToPlaylist VALUES(44511,111);
INSERT INTO usersToPlaylist VALUES(52193,555);
INSERT INTO usersToPlaylist VALUES(52193,222);
INSERT INTO usersToPlaylist VALUES(52193,333);
INSERT INTO usersToPlaylist VALUES(849,555);
INSERT INTO usersToPlaylist VALUES(849,111);
INSERT INTO usersToPlaylist VALUES(31043,111);
INSERT INTO usersToPlaylist VALUES(31240,222);
INSERT INTO usersToPlaylist VALUES(6594,222);
INSERT INTO usersToPlaylist VALUES(43608,111);
INSERT INTO usersToPlaylist VALUES(43608,555);
INSERT INTO usersToPlaylist VALUES(1,555);
INSERT INTO usersToPlaylist VALUES(1,111);
INSERT INTO usersToPlaylist VALUES(245,222);
INSERT INTO usersToPlaylist VALUES(32281,111);
INSERT INTO usersToPlaylist VALUES(32281,444);
CREATE TABLE "usersToAnime" (
    "user_id" INTEGER NOT NULL,
    "anime_id" INTEGER NOT NULL,
    "status" CHARACTER VARYING,
    "date" DATE,
    "rating" REAL,
    CONSTRAINT "usersToAnime_pkey" PRIMARY KEY (user_id, anime_id),
    CONSTRAINT "usersToAnime_anime_id_fkey" FOREIGN KEY (anime_id)
        REFERENCES "Anime" (anime_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT "usersToAnime_user_id_fkey" FOREIGN KEY (user_id)
        REFERENCES "Users" (user_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
    );
INSERT INTO usersToAnime VALUES(0,9253,'просмотрено','2021-12-12',10.0);
INSERT INTO usersToAnime VALUES(0,44511,'просмотрено','2021-11-08',9.0);
INSERT INTO usersToAnime VALUES(1,37521,'запланировано','2020-12-15',NULL);
INSERT INTO usersToAnime VALUES(1,19,'запланировано','2020-12-16',NULL);
INSERT INTO usersToAnime VALUES(1,33,'просмотрено','2020-12-17',6.0);
INSERT INTO usersToAnime VALUES(2,121,'просмотрено','2020-10-18',5.0);
INSERT INTO usersToAnime VALUES(2,44511,'просмотрено','2020-10-19',4.0);
INSERT INTO usersToAnime VALUES(2,40434,'запланировано','2020-10-20',NULL);
INSERT INTO usersToAnime VALUES(3,19,'запланировано','2022-12-21',NULL);
INSERT INTO usersToAnime VALUES(3,44511,'запланировано','2022-12-22',NULL);
INSERT INTO usersToAnime VALUES(3,37521,'просмотрено','2022-12-23',5.0);
INSERT INTO usersToAnime VALUES(4,33352,'просмотрено','2021-10-24',6.0);
INSERT INTO usersToAnime VALUES(4,1535,'просмотрено','2021-10-25',7.0);
INSERT INTO usersToAnime VALUES(4,33,'запланировано','2021-11-26',NULL);
INSERT INTO usersToAnime VALUES(5,9253,'просмотрено','2021-11-27',NULL);
INSERT INTO usersToAnime VALUES(5,121,'просмотрено','2021-11-28',7.0);
INSERT INTO usersToAnime VALUES(5,44511,'запланировано','2021-11-29',NULL);
COMMIT;
