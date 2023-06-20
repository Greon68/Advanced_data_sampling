-- Создаём таблицу жанров
CREATE TABLE IF NOT EXISTS Genres (
	id SERIAL PRIMARY KEY,
	name VARCHAR(80) UNIQUE NOT NULL
);

-- Создаём таблицу артистов
CREATE TABLE IF NOT EXISTS Artists (
	id SERIAL PRIMARY KEY,
	name VARCHAR(80) NOT NULL
);

-- Создаём связь "многие-ко-многим" "Жанры-Артисты"
CREATE TABLE IF NOT EXISTS GenresArtists (
	genre_id INTEGER REFERENCES Genres(id),
	artist_id INTEGER REFERENCES Artists(id),
	CONSTRAINT pk PRIMARY KEY (genre_id, artist_id)
);

-- Создаём таблицу альбомов
CREATE TABLE IF NOT exists Albums (
	id SERIAL PRIMARY KEY,
	name VARCHAR(80) NOT NULL,
	year_of_release INTEGER NOT NULL 
);

-- Создаём связь "многие-ко-многим" "Артисты-Альбомы"
CREATE TABLE IF NOT EXISTS ArtistsAlbums (
	artist_id INTEGER REFERENCES Artists(id),
	album_id INTEGER REFERENCES Albums(id),
	CONSTRAINT pk2 PRIMARY KEY (artist_id,album_id)
);

-- Создаём таблицу ТРЕКОВ
-- Cоздаём связь "один-к-одному" с таблицей альбомов
CREATE TABLE IF NOT EXISTS Trecks (
	id SERIAL PRIMARY KEY ,
	name VARCHAR(80) NOT NULL ,
	duration INTEGER NOT NULL ,
	album_id INTEGER NOT NULL REFERENCES Albums(id)
);

-- Создаём таблицу СБОРНИКОВ
CREATE TABLE IF NOT EXISTS Collections (
	id SERIAL PRIMARY KEY,
	name VARCHAR(80) NOT NULL,
	year_of_release INTEGER NOT NULL 
);
-- Создаём связь "многие-ко-многим" "Сборники-треки"
CREATE TABLE IF NOT EXISTS CollectionsTrecks (
	сollection_id INTEGER REFERENCES Collections(id),
	treck_id INTEGER REFERENCES Trecks(id),
	CONSTRAINT pk3 PRIMARY KEY (сollection_id,treck_id)	
);

-- ЗАПОЛНЯЕМ ТАБЛИЦЫ 
-- Жанры
INSERT INTO Genres (name)
VALUES ('pop');
INSERT INTO Genres (name)
VALUES ('disco' );
INSERT INTO Genres (name)
VALUES ('rock' );
INSERT INTO Genres (name)
VALUES ('folk' );
INSERT INTO Genres (name)
VALUES ('classical' );
INSERT INTO Genres (name)
VALUES ('jazz' );
INSERT INTO Genres (name)
VALUES ('hip hop' );
INSERT INTO Genres (name)
VALUES ('new age' );

-- Альбомы
INSERT INTO Albums (name,year_of_release)
VALUES ('Sunday',2017);
INSERT INTO Albums (name,year_of_release)
VALUES ('Mondey',2018);
INSERT INTO Albums (name,year_of_release)
VALUES ('Tuesday',2019);
INSERT INTO Albums (name,year_of_release)
VALUES ('Wednesday',2020);
INSERT INTO Albums (name,year_of_release)
VALUES ('Thursday',2021);
INSERT INTO Albums (name,year_of_release)
VALUES ('Friday',2022);

--Сборники
INSERT INTO Collections (name,year_of_release)
VALUES ('Winter',2017);
INSERT INTO Collections (name,year_of_release)
VALUES ('Spring',2018);
INSERT INTO Collections (name,year_of_release)
VALUES ('Summer',2019);
INSERT INTO Collections (name,year_of_release)
VALUES ('Autumn',2020);
INSERT INTO Collections (name,year_of_release)
VALUES ('Yesterday',2021);
INSERT INTO Collections (name,year_of_release)
VALUES ('Today',2022);

-- Артисты 
INSERT INTO Artists (name)
VALUES ('Arkham Knights');
INSERT INTO Artists (name)
VALUES ('Nostalgraph');
INSERT INTO Artists (name)
VALUES ('Kvaii ');
INSERT INTO Artists (name)
VALUES ('Daniel Rigoni');
INSERT INTO Artists (name)
VALUES ('Kohta Imafuku');
INSERT INTO Artists (name)
VALUES ('Huem');
INSERT INTO Artists (name)
VALUES ('Alphacube');
INSERT INTO Artists (name)
VALUES ('Bryn Whiting');
INSERT INTO Artists (name)
VALUES ('Harshil Kamdar');
INSERT INTO Artists (name)
VALUES ('Inversed');
INSERT INTO Artists (name)
VALUES ('Tom Exo ');
INSERT INTO Artists (name)
VALUES ('HALIENE');
INSERT INTO Artists (name)
VALUES ('Discordia');
INSERT INTO Artists (name)
VALUES ('Darren Bax');
INSERT INTO Artists (name)
VALUES ('Alphacube');
INSERT INTO Artists (name)
VALUES ('Darkingz ');
INSERT INTO Artists (name)
VALUES ('Carl Pearce');

-- Треки
INSERT INTO Trecks (name,duration,album_id)
VALUES ('Odyssey',230,1);
INSERT INTO Trecks (name,duration,album_id)
VALUES ('The Legend ',200,1);
INSERT INTO Trecks (name,duration,album_id)
VALUES ('Autumn Hearts',220,1);
INSERT INTO Trecks (name,duration,album_id)
VALUES ('Lost In The Abyss',130,1);
INSERT INTO Trecks (name,duration,album_id)
VALUES ('Heavens Gate',167,1);
INSERT INTO Trecks (name,duration,album_id)
VALUES ('Enja',221,1);
INSERT INTO Trecks (name,duration,album_id)
VALUES ('Triplicity',203,1);
INSERT INTO Trecks (name,duration,album_id)
VALUES ('Essence Of My Sound',189,1);
INSERT INTO Trecks (name,duration,album_id)
VALUES ('Somnambulist',127,2);
INSERT INTO Trecks (name,duration,album_id)
VALUES ('The World In My Eyes',330,2);
INSERT INTO Trecks (name,duration,album_id)
VALUES ('New Life',320,2);
INSERT INTO Trecks (name,duration,album_id)
VALUES ('Odyssey',201,2);
INSERT INTO Trecks (name,duration,album_id)
VALUES ('Sorrow',176,2);
INSERT INTO Trecks (name,duration,album_id)
VALUES ('Orihime',189,2);
INSERT INTO Trecks (name,duration,album_id)
VALUES ('Autumn Hearts',212,3);
INSERT INTO Trecks (name,duration,album_id)
VALUES ('The Hilltop',206,3);
INSERT INTO Trecks (name,duration,album_id)
VALUES ('Beyond the Stars',232,3);
INSERT INTO Trecks (name,duration,album_id)
VALUES ('Surrender',250,3);
INSERT INTO Trecks (name,duration,album_id)
VALUES ('Rush',254,3);
INSERT INTO Trecks (name,duration,album_id)
VALUES ('Southern Winds',175,3);
INSERT INTO Trecks (name,duration,album_id)
VALUES ('Azure Above',163,3);
INSERT INTO Trecks (name,duration,album_id)
VALUES ('Arena',221,4);
INSERT INTO Trecks (name,duration,album_id)
VALUES ('My Light ',335,4);
INSERT INTO Trecks (name,duration,album_id)
VALUES ('Emotions',210,4);
INSERT INTO Trecks (name,duration,album_id)
VALUES ('Halley',189,4);
INSERT INTO Trecks (name,duration,album_id)
VALUES ('Black Sky',195,4);
INSERT INTO Trecks (name,duration,album_id)
VALUES ('Stay With Me',169,4);
INSERT INTO Trecks (name,duration,album_id)
VALUES ('My Destiny',230,4);
INSERT INTO Trecks (name,duration,album_id)
VALUES ('Cosmos',210,4);
INSERT INTO Trecks (name,duration,album_id)
VALUES ('Waiting for You',230,5);
INSERT INTO Trecks (name,duration,album_id)
VALUES ('Fortress',207,5);
INSERT INTO Trecks (name,duration,album_id)
VALUES ('Janma',200,5);
INSERT INTO Trecks (name,duration,album_id)
VALUES ('Ascension',230,5);
INSERT INTO Trecks (name,duration,album_id)
VALUES ('Permanence',222,5);
INSERT INTO Trecks (name,duration,album_id)
VALUES ('Under Control ',254,5);
INSERT INTO Trecks (name,duration,album_id)
VALUES ('Warrior',190,6);
INSERT INTO Trecks (name,duration,album_id)
VALUES ('Aeternum',212,6);
INSERT INTO Trecks (name,duration,album_id)
VALUES ('My Only One',200,6);
INSERT INTO Trecks (name,duration,album_id)
VALUES ('Stay With Me',177,6);
INSERT INTO Trecks (name,duration,album_id)
VALUES ('Solar Sailer',187,6);
INSERT INTO Trecks (name,duration,album_id)
VALUES ('To See You Again',202,6);
INSERT INTO Trecks (name,duration,album_id)
VALUES ('My Mind',229,6);
INSERT INTO Trecks (name,duration,album_id)
VALUES ('Forgotten',185,6);
INSERT INTO Trecks (name,duration,album_id)
VALUES ('Alphacube',211,6);

-- Таблица- связка "Жанр-Исполнитель"
INSERT INTO GenresArtists (genre_id,artist_id)
VALUES (1,1);
INSERT INTO GenresArtists (genre_id,artist_id)
VALUES (1,12);
INSERT INTO GenresArtists (genre_id,artist_id)
VALUES (1,3);
INSERT INTO GenresArtists (genre_id,artist_id)
VALUES (1,16);
INSERT INTO GenresArtists (genre_id,artist_id)
VALUES (1,9);
INSERT INTO GenresArtists (genre_id,artist_id)
VALUES (2,4);
INSERT INTO GenresArtists (genre_id,artist_id)
VALUES (2,2);
INSERT INTO GenresArtists (genre_id,artist_id)
VALUES (2,1);
INSERT INTO GenresArtists (genre_id,artist_id)
VALUES (2,11);
INSERT INTO GenresArtists (genre_id,artist_id)
VALUES (2,6);
INSERT INTO GenresArtists (genre_id,artist_id)
VALUES (3,10);
INSERT INTO GenresArtists (genre_id,artist_id)
VALUES (3,4);
INSERT INTO GenresArtists (genre_id,artist_id)
VALUES (3,17);
INSERT INTO GenresArtists (genre_id,artist_id)
VALUES (3,11);
INSERT INTO GenresArtists (genre_id,artist_id)
VALUES (3,8);
INSERT INTO GenresArtists (genre_id,artist_id)
VALUES (4,5);
INSERT INTO GenresArtists (genre_id,artist_id)
VALUES (4,4);
INSERT INTO GenresArtists (genre_id,artist_id)
VALUES (4,11);
INSERT INTO GenresArtists (genre_id,artist_id)
VALUES (5,15);
INSERT INTO GenresArtists (genre_id,artist_id)
VALUES (5,7);
INSERT INTO GenresArtists (genre_id,artist_id)
VALUES (5,6);
INSERT INTO GenresArtists (genre_id,artist_id)
VALUES (5,17);
INSERT INTO GenresArtists (genre_id,artist_id)
VALUES (5,2);
INSERT INTO GenresArtists (genre_id,artist_id)
VALUES (6,13);
INSERT INTO GenresArtists (genre_id,artist_id)
VALUES (6,14);
INSERT INTO GenresArtists (genre_id,artist_id)
VALUES (6,7);
INSERT INTO GenresArtists (genre_id,artist_id)
VALUES (6,3);
INSERT INTO GenresArtists (genre_id,artist_id)
VALUES (6,11);
INSERT INTO GenresArtists (genre_id,artist_id)
VALUES (6,9);
INSERT INTO GenresArtists (genre_id,artist_id)
VALUES (7,17);
INSERT INTO GenresArtists (genre_id,artist_id)
VALUES (7,1);
INSERT INTO GenresArtists (genre_id,artist_id)
VALUES (7,3);
INSERT INTO GenresArtists (genre_id,artist_id)
VALUES (7,7);
INSERT INTO GenresArtists (genre_id,artist_id)
VALUES (8,6);
INSERT INTO GenresArtists (genre_id,artist_id)
VALUES (8,15);
INSERT INTO GenresArtists (genre_id,artist_id)
VALUES (8,10);

-- Таблица - связка "  Артист-Альбом  "
INSERT INTO ArtistsAlbums (artist_id,album_id)
VALUES (1,1);
INSERT INTO ArtistsAlbums (artist_id,album_id)
VALUES (2,1);
INSERT INTO ArtistsAlbums (artist_id,album_id)
VALUES (3,1);
INSERT INTO ArtistsAlbums (artist_id,album_id)
VALUES (13,1);
INSERT INTO ArtistsAlbums (artist_id,album_id)
VALUES (14,1);
INSERT INTO ArtistsAlbums (artist_id,album_id)
VALUES (4,2);
INSERT INTO ArtistsAlbums (artist_id,album_id)
VALUES (5,2);
INSERT INTO ArtistsAlbums (artist_id,album_id)
VALUES (6,2);
INSERT INTO ArtistsAlbums (artist_id,album_id)
VALUES (10,2);
INSERT INTO ArtistsAlbums (artist_id,album_id)
VALUES (11,2);
INSERT INTO ArtistsAlbums (artist_id,album_id)
VALUES (7,3);
INSERT INTO ArtistsAlbums (artist_id,album_id)
VALUES (8,3);
INSERT INTO ArtistsAlbums (artist_id,album_id)
VALUES (9,3);
INSERT INTO ArtistsAlbums (artist_id,album_id)
VALUES (6,3);
INSERT INTO ArtistsAlbums (artist_id,album_id)
VALUES (1,3);
INSERT INTO ArtistsAlbums (artist_id,album_id)
VALUES (16,3);
INSERT INTO ArtistsAlbums (artist_id,album_id)
VALUES (10,4);
INSERT INTO ArtistsAlbums (artist_id,album_id)
VALUES (11,4);
INSERT INTO ArtistsAlbums (artist_id,album_id)
VALUES (12,4);
INSERT INTO ArtistsAlbums (artist_id,album_id)
VALUES (7,4);
INSERT INTO ArtistsAlbums (artist_id,album_id)
VALUES (3,4);
INSERT INTO ArtistsAlbums (artist_id,album_id)
VALUES (13,5);
INSERT INTO ArtistsAlbums (artist_id,album_id)
VALUES (14,5);
INSERT INTO ArtistsAlbums (artist_id,album_id)
VALUES (15,5);
INSERT INTO ArtistsAlbums (artist_id,album_id)
VALUES (2,5);
INSERT INTO ArtistsAlbums (artist_id,album_id)
VALUES (8,5);
INSERT INTO ArtistsAlbums (artist_id,album_id)
VALUES (3,5);
INSERT INTO ArtistsAlbums (artist_id,album_id)
VALUES (16,6);
INSERT INTO ArtistsAlbums (artist_id,album_id)
VALUES (17,6);
INSERT INTO ArtistsAlbums (artist_id,album_id)
VALUES (10,6);

-- Таблица-связка "Сборники-треки"
INSERT INTO CollectionsTrecks (сollection_id,treck_id)
VALUES (1,3),
	   (1,6),
	   (1,10),
	   (1,13),
	   (1,22),
       (1,27),
       (1,31),
       (1,39),
       (1,44) ;
INSERT INTO CollectionsTrecks (сollection_id,treck_id)
VALUES (2,2),
	   (2,5),
	   (2,9),
	   (2,13),
	   (2,22),
       (2,17),
       (2,25),
       (2,44),
       (3,1),
	   (3,11),
	   (3,17),
	   (3,19),
	   (3,20),
       (3,25),
       (3,28),
       (3,32),
       (3,34),
	   (3,27),
       (3,40),
       (3,41),
       (3,43),
       (4,4),
	   (4,12),
	   (4,15),
	   (4,24),
	   (4,29),
       (4,33),
       (4,38),
       (5,1),
	   (5,18),
	   (5,20),
	   (5,26),
	   (5,28),
       (5,31),
       (5,33),
       (5,39),
       (5,40),
	   (5,41),
       (5,44),
       (6,9),
	   (6,13),
	   (6,17),
	   (6,21),
	   (6,22),
       (6,35),
       (6,38),
       (6,41);

-- Домашнее задание к лекции «Продвинутая выборка данных»
      
-- ЗАДАНИЕ 2
      
--Написать SELECT-запросы, которые выведут информацию согласно инструкциям ниже.     
      
-- Для удобства работы выведем содержание всех таблиц
-- Жанры :
--SELECT id,name FROM  Genres;
-- Исполнители 
--SELECT id,name FROM  Artists ;
--  Жанры-Исполнители
--SELECT genre_id,artist_id FROM  GenresArtists ;
--  Альбомы
--SELECT id, name,year_of_release FROM  Albums ;
--Исполнители-Альбомы
--SELECT artist_id,album_id FROM  ArtistsAlbums ;      
-- Треки   
--SELECT id,name,duration,album_id FROM  Trecks;
-- СБОРНИКИ
--SELECT id,name,year_of_release FROM  Collections ;
--СБОРНИКИ-ТРЕКИ
--SELECT сollection_id,treck_id FROM  CollectionsTrecks ;
      
-- ЗАДАНИЕ 2 , ЗАДАЧА 1 :      
-- Название и продолжительность самого длительного трека.     
-- РЕШЕНИЕ:     
SELECT name, duration FROM  Trecks
WHERE duration = (SELECT MAX (duration)FROM  Trecks);

-- ЗАДАНИЕ 2 , ЗАДАЧА 2 :
-- Название треков, продолжительность которых не менее 3,5 минут (210 секунд)
-- РЕШЕНИЕ: 
SELECT name FROM  Trecks
WHERE duration  >= 210 ;

-- ЗАДАНИЕ 2 , ЗАДАЧА 3 :
-- Названия сборников, вышедших в период с 2018 по 2020 год включительно
-- РЕШЕНИЕ: 
SELECT name, year_of_release FROM  Collections
WHERE year_of_release BETWEEN 2018 AND 2020;

-- ЗАДАНИЕ 2 , ЗАДАЧА 4 :
-- Исполнители, чьё имя состоит из одного слова
-- РЕШЕНИЕ: 
SELECT name   FROM  Artists
WHERE name NOT LIKE '% %'; 

-- ЗАДАНИЕ 2 , ЗАДАЧА 5 :
--Название треков, которые содержат слово «мой» или «my».
-- РЕШЕНИЕ: 
SELECT name FROM  Trecks
WHERE name LIKE '%My%';

-- ЗАДАНИЕ 3
-- Написать SELECT-запросы, которые выведут информацию согласно инструкциям ниже.

-- ЗАДАНИЕ 3 , ЗАДАЧА 1
-- Количество исполнителей в каждом жанре

-- Жанры :
--SELECT id,name FROM  Genres;
-- Исполнители 
--SELECT id,name FROM  Artists ;
--  Жанры-Исполнители
--SELECT genre_id,artist_id FROM  GenresArtists ;

-- Объединение таблиц Жанры , Жанры-Артисты и Артисты
--SELECT g.id,g.name,artist_id,art.name FROM Genres g
--JOIN GenresArtists gart ON g.id = gart.genre_id 
--JOIN Artists art ON gart.artist_id=art.id;

-- РЕШЕНИЕ
-- Количество исполнителей в каждом жанре
SELECT g.name, COUNT(art.name) count FROM Genres g
JOIN GenresArtists gart ON g.id = gart.genre_id 
JOIN Artists art ON gart.artist_id=art.id
GROUP BY g.name 
ORDER BY count DESC ;


-- ЗАДАНИЕ 3 , ЗАДАЧА 2
-- Количество треков, вошедших в альбомы 2019–2020 годов.


--  Альбомы
--SELECT id, name,year_of_release FROM  Albums ;
-- Треки   
--SELECT id,name,duration,album_id FROM  Trecks;
-- Объединение Альбомов и Треков
--SELECT al.id,al.name,year_of_release,tr.name,duration FROM Albums al
--JOIN Trecks tr ON al.id=tr.album_id ;

-- РЕШЕНИЕ :
-- Количество треков, вошедших в альбомы 2019–2020 годов.
SELECT al.name,COUNT(tr.name) FROM Albums al
JOIN Trecks tr ON al.id=tr.album_id
WHERE year_of_release BETWEEN 2019 AND 2020
GROUP BY al.name ;


-- ЗАДАНИЕ 3 , ЗАДАЧА 3
-- Средняя продолжительность треков по каждому альбому

SELECT al.name,AVG(duration ) FROM Albums al
JOIN Trecks tr ON al.id=tr.album_id
GROUP BY al.name ;


--ЗАДАНИЕ 3 , ЗАДАЧА 4
--Все исполнители, которые не выпустили альбомы в 2020 году.

----  Альбомы
--SELECT id, name,year_of_release FROM  Albums ;
-- Исполнители 
--SELECT id,name FROM  Artists ; 
--Исполнители-Альбомы
--SELECT artist_id,album_id FROM  ArtistsAlbums ;

-- Объединение Исполнителей и Альбомов
--SELECT art.id, art.name, al.id, al.name,year_of_release FROM  Artists art
--JOIN ArtistsAlbums artal ON art.id=artal.artist_id
--JOIN Albums al ON artal.album_id=al.id ;

-- Подсчитаю исполнителей в каждом альбоме
--SELECT al.name, COUNT (art.name) FROM  Albums al
--JOIN ArtistsAlbums artal ON al.id=artal.album_id
--JOIN Artists art ON art.id=al.id
--GROUP BY al.name;

--Артисты выпустившие альбомы в 2020 году
--SELECT  art.id,art.name, al.name,year_of_release FROM  Artists art
--JOIN ArtistsAlbums artal ON art.id=artal.artist_id
--JOIN Albums al ON artal.album_id=al.id
--WHERE year_of_release = 2020;

-- РЕШЕНИЕ
-- Все исполнители, которые не выпустили альбомы в 2020 году:

-- Используем вложенный запрос с поиском исполнителей ,
-- выпустивших альбом в 2020 году (их-5)
-- В результирущей таблице получаем 11 исполнителей из 17 
-- ПОТЕРЯН АРТИСТ с id=15 - Alphacube (альбом 2021 год)
-- НЕ ПОНЯТНО , ПОЧЕМУ ТАК ПРОИСХОДИТ !!!
SELECT  art.name FROM  Artists art
WHERE art.name NOT IN (SELECT  art.name FROM  Artists art
JOIN ArtistsAlbums artal ON art.id=artal.artist_id
JOIN Albums al ON artal.album_id=al.id
WHERE year_of_release = 2020);


--ЗАДАНИЕ 3 , ЗАДАЧА 5
-- Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами)

-- Исполнители 
--SELECT id,name FROM  Artists ;
--Исполнители-Альбомы
--SELECT artist_id,album_id FROM  ArtistsAlbums ;ё
----  Альбомы
--SELECT id, name,year_of_release FROM  Albums ;
-- Треки   
--SELECT id,name,duration,album_id FROM  Trecks;
--СБОРНИКИ-ТРЕКИ
--SELECT сollection_id,treck_id FROM  CollectionsTrecks ;
-- СБОРНИКИ
--SELECT id,name,year_of_release FROM  Collections ;

--Полная связь имя артиста - название сборника
--SELECT art.name ,al.name,al.year_of_release  ,tr.name , col.name ,col.year_of_release FROM  Artists art
--JOIN ArtistsAlbums artal ON art.id=artal.artist_id
--JOIN Albums al ON artal.album_id=al.id
--JOIN Trecks tr ON al.id=tr.album_id
--JOIN CollectionsTrecks coltr ON tr.id =coltr.treck_id 
--JOIN Collections col ON col.id = coltr.сollection_id ;

-- РЕШЕНИЕ 
-- Названия сборников, в которых присутствует конкретный исполнитель (Huem)
SELECT  DISTINCT col.name, art.name  FROM  Artists art
JOIN ArtistsAlbums artal ON art.id=artal.artist_id
JOIN Albums al ON artal.album_id=al.id
JOIN Trecks tr ON al.id=tr.album_id
JOIN CollectionsTrecks coltr ON tr.id =coltr.treck_id 
JOIN Collections col ON col.id = coltr.сollection_id
WHERE  art.name= 'Huem';


--Задание 4(необязательное)

--Написать SELECT-запросы, которые выведут информацию согласно инструкциям ниже:

--1.Названия альбомов, в которых присутствуют исполнители более чем одного жанра;
--2.Наименования треков, которые не входят в сборники ;
--3.Исполнитель или исполнители, написавшие самый короткий по продолжительности трек, —
--  теоретически таких треков может быть несколько ;
--4.Названия альбомов, содержащих наименьшее количество треков

--ЗАДАНИЕ 4 , ЗАДАЧА 1 :

--Названия альбомов, в которых присутствуют исполнители более чем одного жанра

-- В скольки жанрах исполняет конкретный исполнитель (+ отсеяли Исполнителей в 1 жанре)
--SELECT art.name, COUNT(g.name) count_g  FROM  Artists art
--JOIN GenresArtists gart ON art.id = gart.artist_id
--JOIN Genres g ON gart.genre_id=g.id
--GROUP BY art.name
--HAVING COUNT(g.name) > 1
--ORDER BY count_g DESC;

-- Связь Альбом- Исполнитель
--SELECT al.id, al.name, art.id ,art.name  FROM  Albums al
--JOIN ArtistsAlbums artal ON al.id =artal.album_id 
--JOIN Artists art ON artal.artist_id =art.id ;

--РЕШЕНИЕ

--Названия альбомов, в которых присутствуют исполнители более чем одного жанра:
--Вложенным запросом вычисляем список артистов , исполняющих в более чем 1 жанре
SELECT al.name FROM  Albums al
JOIN ArtistsAlbums artal ON al.id =artal.album_id 
JOIN Artists art ON artal.artist_id =art.id
WHERE art.name IN (SELECT art.name  FROM  Artists art
JOIN GenresArtists gart ON art.id = gart.artist_id
JOIN Genres g ON gart.genre_id=g.id
GROUP BY art.name
HAVING COUNT(g.name) > 1)
GROUP BY al.name ;


-- ЗАДАНИЕ 4 , ЗАДАЧА 2 :

--Наименования треков, которые не входят в сборники.

-- Треки   
--SELECT id,name,duration,album_id FROM  Trecks;
--СБОРНИКИ-ТРЕКИ
--SELECT сollection_id,treck_id FROM  CollectionsTrecks ;
-- СБОРНИКИ
--SELECT id,name,year_of_release FROM  Collections ;

-- ПЕРВЫЙ ВАРИАНТ РЕШЕНИЯ ЗАДАЧИ 

-- Объединим  треки со сборниками через LEFT JOIN
--SELECT tr.id, tr.name, col.id , col.name FROM  Trecks tr
--LEFT JOIN CollectionsTrecks coltr ON tr.id=coltr.treck_id 
--LEFT JOIN Collections col ON coltr.сollection_id = col.id ;

-- Выведем названия треков , не имеющих связи с таблицей сборников
SELECT tr.id, tr.name, col.id , col.name FROM  Trecks tr
LEFT JOIN CollectionsTrecks coltr ON tr.id=coltr.treck_id 
LEFT JOIN Collections col ON coltr.сollection_id = col.id 
WHERE col.id IS NULL;

-- ВТОРОЙ ВАРИАНТ РЕШЕНИЯ.

-- Находим те треки , которые связаны с таблицей сборников
--SELECT tr.id, tr.name, col.id , col.name FROM  Trecks tr
--JOIN CollectionsTrecks coltr ON tr.id=coltr.treck_id 
--JOIN Collections col ON coltr.сollection_id = col.id ;

-- Исключим из общего списка треков те треки, которые имеют связь 
-- с таблицей сборников 
SELECT id,name FROM  Trecks
WHERE name NOT IN (SELECT  tr.name FROM  Trecks tr
JOIN CollectionsTrecks coltr ON tr.id=coltr.treck_id 
JOIN Collections col ON coltr.сollection_id = col.id);


-- ЗАДАНИЕ 4 , ЗАДАЧА 3 :

-- Исполнитель или исполнители, написавшие самый короткий по продолжительности трек, —
--  теоретически таких треков может быть несколько ;

-- ПРОМЕЖУТОЧНЫЕ ВЫЧИСЛЕНИЯ 
-- Исполнители 
--SELECT id,name FROM  Artists ;
--Исполнители-Альбомы
--SELECT artist_id,album_id FROM  ArtistsAlbums ; 
--  Альбомы
--SELECT id, name,year_of_release FROM  Albums ;     
-- Треки   
--SELECT id,name,duration,album_id FROM  Trecks;

-- Треки , написанные каждым исполнителем 
-- Объединим таблицы Исполнителей , Альльбомов  и Треков
--SELECT art.id, art.name, al.id, al.name , tr.id , tr.name, tr.duration  FROM  Artists art 
--JOIN ArtistsAlbums artal ON art.id = artal.artist_id 
--JOIN Albums al ON artal.album_id = al.id 
--JOIN Trecks tr ON al.id = tr.album_id ;

-- Оставим имена исполнителей , названия и длительность треков :
--SELECT art.name, tr.name, tr.duration  FROM  Artists art 
--JOIN ArtistsAlbums artal ON art.id = artal.artist_id 
--JOIN Albums al ON artal.album_id = al.id 
--JOIN Trecks tr ON al.id = tr.album_id ;

-- Для контроля :
--Найдём  треки для каждого исполнителя минимальной длины 
--SELECT art.name, MIN ( tr.duration)  FROM  Artists art 
--JOIN ArtistsAlbums artal ON art.id = artal.artist_id 
--JOIN Albums al ON artal.album_id = al.id 
--JOIN Trecks tr ON al.id = tr.album_id
--GROUP BY art.name 
--;

-- Находим  минимальнуй длительность трека
--SELECT MIN (tr.duration)  FROM  Artists art 
--JOIN ArtistsAlbums artal ON art.id = artal.artist_id 
--JOIN Albums al ON artal.album_id = al.id 
--JOIN Trecks tr ON al.id = tr.album_id ;

-- РЕШЕНИЕ .

-- 1) Производим объединение таблиц Исполнителей , Альльбомов  и Треков
-- 2) Вложенный запрос находит минимальную длину трека 
-- 3) Путем сравнения длин треком с минимальной длиной , 
--    выводим имена исполнителей связанных с треком минимальной длины  ,
--    название вычисленного трека и длительность его звучания. 
 
SELECT art.name, tr.name, tr.duration  FROM  Artists art 
JOIN ArtistsAlbums artal ON art.id = artal.artist_id 
JOIN Albums al ON artal.album_id = al.id 
JOIN Trecks tr ON al.id = tr.album_id 
WHERE tr.duration = (SELECT MIN (tr.duration)  FROM  Artists art 
JOIN ArtistsAlbums artal ON art.id = artal.artist_id 
JOIN Albums al ON artal.album_id = al.id 
JOIN Trecks tr ON al.id = tr.album_id);


-- ЗАДАНИЕ 4 , ЗАДАЧА 4 :

-- Вывести названия альбомов, содержащих наименьшее количество треков

-- Промежуточные расчёты :

--  Альбомы
--SELECT id, name,year_of_release FROM  Albums ;     
-- Треки   
--SELECT id,name,duration,album_id FROM  Trecks;

-- Объединим таблицы 
--SELECT al.id, al.name, tr.id , tr.name  FROM  Albums al
--JOIN Trecks tr ON al.id = tr.album_id ; 

-- Подсчитаем  количество треков в каждом альбоме 
--SELECT  al.name, COUNT(tr.id) count_trecks FROM  Albums al
--JOIN Trecks tr ON al.id = tr.album_id 
--GROUP BY al.name;


--Подсчёт минимального количества треков в альбоме
--SELECT  COUNT(tr.id) count_trecks FROM  Albums al
--JOIN Trecks tr ON al.id = tr.album_id 
--GROUP BY al.name
--ORDER BY count_trecks LIMIT 1;

--РЕШЕНИЕ ЗАДАЧИ :

-- 1) Группируем таблицы альбомов и треков 
-- 2) Во вложенном запросе вычисляем минимальное количество треков в альбомах
-- 3) Оператором HAVING оставляем только те альбомы , количество треков в которых
--    равно минимальному количеству

SELECT  al.name, COUNT(tr.id) count_trecks FROM  Albums al
JOIN Trecks tr ON al.id = tr.album_id 
GROUP BY al.name
HAVING COUNT(tr.id)=(SELECT COUNT(tr.id) count_trecks FROM  Albums al
JOIN Trecks tr ON al.id = tr.album_id 
GROUP BY al.name
ORDER BY count_trecks LIMIT 1) ;







