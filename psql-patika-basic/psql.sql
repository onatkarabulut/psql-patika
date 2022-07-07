CREATE TABLE <table_name> (
	<column_name> <data_type> <constraint>,
	...
	<column_name> <data_type> <constraint>,

)



	--tablo ve sütun yarattık
CREATE TABLE author(
	id SERIAL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	email VARCHAR(100),
	birthday DATE
);

Select * From author;





	--veri ekledik
Insert Into author (
	first_name,
	last_name,
	email,
	birthday
)Values
	('Haruki', 'Murakami', 'haruki@murakami.com', '1948-11-07'),
	('Sabahattin', 'Ali', 'sabahattin@ali.com', '1914-07-11'),
	('Orhan', 'Pamuk', 'orhan@pamuk.com', '1950-04-14'),
	('Halide Edip', 'Adıvar', 'halide@edip.com', '1884-07-11'),
	('Zygmunt', 'Bauman', 'zygmunt@ali.com', '1911-07-12');

	--yeni bir tablo oluşturmak istedik ve sütunları ilk tablodan çektik
Create Table author2 (Like author);






	--author tablosundan sabahattin ali satırını author2'ye kopyaladık
Insert Into author2
	-- sadece select * from author dersek tüm verileri author2 ye çekeriz
	--bu yüzden where koşulu koyduk
Select * From author
Where first_name = 'Sabahattin';





	--author tablosunu verileriyle birlikte author3 tablosuna kopyalamak
Create Table author3 As
Select * From author;



	--author3 tablosunu silmek ve eğer tablo yoksa hata mesajı almamak için
Drop Table If Exists author3;


	--yeni veri girişleri
insert into author (first_name, last_name, email, birthday) values ('Mathilde', 'Mockford', 'mmockford0@samsung.com', '1949-07-11');
insert into author (first_name, last_name, email, birthday) values ('Ave', 'Volcker', 'avolcker1@yolasite.com', null);
insert into author (first_name, last_name, email, birthday) values ('Laurice', 'Cossor', 'lcossor2@tripadvisor.com', '1974-01-20');
insert into author (first_name, last_name, email, birthday) values ('Care','Manners','cmanners3@pbs.org','1993-02-18');
insert into author (first_name, last_name, email, birthday) values ('Christoffer', 'Sheldrick', null, '1919-11-16');
insert into author (first_name, last_name, email, birthday) values ('Marlon', 'Edwards', 'medwards5@netlog.com', null);
insert into author (first_name, last_name, email, birthday) values ('Spencer', 'Inott', 'sinott6@issuu.com', null);
insert into author (first_name, last_name, email, birthday) values ('Bryant', 'Rummings', 'brummings7@sphinn.com', null);
insert into author (first_name, last_name, email, birthday) values ('Noam', 'Sleeny', 'nsleeny8@economist.com', '1900-10-18');
insert into author (first_name, last_name, email, birthday) values ('Kathye', 'Symson', 'ksymson9@seattletimes.com', '1922-11-03');
insert into author (first_name, last_name, email, birthday) values ('Sheppard', 'Challes', 'schallesa@hubpages.com', '1986-01-20');
insert into author (first_name, last_name, email, birthday) values ('Halie', 'Semorad', 'hsemoradb@sourceforge.net', '1938-10-16');
insert into author (first_name, last_name, email, birthday) values ('Liv', 'Growcock', null, '1971-12-03');
insert into author (first_name, last_name, email, birthday) values ('Karlik', 'Welsh', 'kwelshd@elegantthemes.com', '1983-05-09');
insert into author (first_name, last_name, email, birthday) values ('Pyotr', 'Breton', 'pbretone@woothemes.com', '1960-03-01');
insert into author (first_name, last_name, email, birthday) values ('Ammamaria', 'Breheny', 'abrehenyf@businesswire.com', null);
insert into author (first_name, last_name, email, birthday) values ('Fidela', 'Spackman', 'fspackmang@mysql.com', '1936-12-12');
insert into author (first_name, last_name, email, birthday) values ('Filberte', 'Ivakhno', null, null);
insert into author (first_name, last_name, email, birthday) values ('Jolee', 'Simms', 'jsimmsi@github.io', '1922-08-19');
insert into author (first_name, last_name, email, birthday) values ('Ahmed', 'Scane', 'ascanej@icq.com', '1931-11-09');
insert into author (first_name, last_name, email, birthday) values ('Melodee', 'Siggin', null, '1911-05-30');
insert into author (first_name, last_name, email, birthday) values ('Melisande', 'Rait', null, '1982-05-05');
insert into author (first_name, last_name, email, birthday) values ('Nanine', 'Searchwell', 'nsearchwellm@surveymonkey.com', null);
insert into author (first_name, last_name, email, birthday) values ('Eugine', 'MacGowing', 'emacgowingn@hostgator.com', '1932-01-06');
insert into author (first_name, last_name, email, birthday) values ('Fergus', 'Gilfoyle', 'fgilfoyleo@indiegogo.com', null);
insert into author (first_name, last_name, email, birthday) values ('Mercedes', 'Szymanek', 'mszymanekp@t-online.de', '1925-07-10');
insert into author (first_name, last_name, email, birthday) values ('Zorah', 'Meaney', 'zmeaneyq@bing.com', '1968-01-15');
insert into author (first_name, last_name, email, birthday) values ('Mickey', 'Musgrave', 'mmusgraver@foxnews.com', '1922-05-10');
insert into author (first_name, last_name, email, birthday) values ('Arielle', 'Mossbee', null, '1999-01-27');
insert into author (first_name, last_name, email, birthday) values ('Aurea', 'Mackie', 'amackiet@dmoz.org', '1904-08-20');
insert into author (first_name, last_name, email, birthday) values ('Sergio', 'McMeyler', 'smcmeyleru@sfgate.com', '1952-05-15');
insert into author (first_name, last_name, email, birthday) values ('Emmalynne', 'Berryman', 'eberrymanv@jimdo.com', '1975-08-05');
insert into author (first_name, last_name, email, birthday) values ('Willis', 'Gulliver', 'wgulliverw@tripadvisor.com', null);
insert into author (first_name, last_name, email, birthday) values ('Eb', 'Kloser', 'ekloserx@bloomberg.com', '1983-02-26');
insert into author (first_name, last_name, email, birthday) values ('Val', 'Stammirs', 'vstammirsy@rakuten.co.jp', '1979-02-25');
insert into author (first_name, last_name, email, birthday) values ('Marline', 'Huckle', 'mhucklez@stanford.edu', '1907-02-28');
insert into author (first_name, last_name, email, birthday) values ('Merna', 'Markl', 'mmarkl10@fastcompany.com', '1978-03-15');
insert into author (first_name, last_name, email, birthday) values ('Perren', 'Sherborn', 'psherborn11@issuu.com', '1964-04-06');
insert into author (first_name, last_name, email, birthday) values ('Ulysses', 'Bolingbroke', 'ubolingbroke12@timesonline.co.uk', null);
insert into author (first_name, last_name, email, birthday) values ('Linnie', 'Abele', 'labele13@hugedomains.com', '1948-11-12');
insert into author (first_name, last_name, email, birthday) values ('Geraldine', 'Feak', 'gfeak14@rakuten.co.jp', '1955-07-14');
insert into author (first_name, last_name, email, birthday) values ('Orly', 'Derobert', 'oderobert15@mediafire.com', '1986-11-30');
insert into author (first_name, last_name, email, birthday) values ('Elberta', 'Newband', 'enewband16@wikia.com', '1928-06-02');
insert into author (first_name, last_name, email, birthday) values ('Jannelle', 'Dain', 'jdain17@statcounter.com', '1982-02-17');
insert into author (first_name, last_name, email, birthday) values ('Cookie', 'Sarney', 'csarney18@yandex.ru', '1982-01-17');
insert into author (first_name, last_name, email, birthday) values ('Hill', 'Scherme', 'hscherme19@webnode.com', '1965-08-25');
insert into author (first_name, last_name, email, birthday) values ('Omero', 'Dodamead', 'ododamead1a@cnet.com', '1987-07-07');
insert into author (first_name, last_name, email, birthday) values ('Julee', 'Leggon', 'jleggon1b@examiner.com', '1922-07-17');
insert into author (first_name, last_name, email, birthday) values ('Galina', 'Glowacki', 'gglowacki1c@answers.com', '1907-08-10');
insert into author (first_name, last_name, email, birthday) values ('Sloane', 'Waiton', 'swaiton1d@eepurl.com', '1928-10-17');
insert into author (first_name, last_name, email, birthday) values ('Judas', 'Tewnion', 'jtewnion1e@xing.com', '1951-12-09');
insert into author (first_name, last_name, email, birthday) values ('Sully', 'Stang-Gjertsen', 'sstanggjertsen1f@ameblo.jp', '1910-09-12');






	--veriyi güncellemek
Update author
Set first_name = 'Emrah Safa',
		last_name = 'Gürkan',
		email = 'emrah@gürkan.com',
		birthday = '1980-01-01'
Where id = 10;




--ilk ismi v ile başlayanlar
Update author
Set first_name = 'XXXX',
	last_name = 'YYYY'
Where first_name Like 'V%';




--idsi 11 den büyük olanları silsin ve göstersin
Delete From author
Where id > 11
Returning *;


--referans vereceğimiz tabloyu yarattık	
Create Table book(
	id SERIAL Primary Key,
	title VARCHAR(100) Not Null,
	page_number INTEGER Not Null,
	author_id INTEGER REFERENCES author(id) 
)

Insert Into book(title, page_number, author_id) values ('White Banners', 62, 1);
Insert Into book(title, page_number, author_id) values ('Saving Shiloh', 580, 10);
Insert Into book(title, page_number, author_id) values ('Abe Lincoln in Illinois', 105 , 7);
Insert Into book(title, page_number, author_id) values ('Apache Territory', 286, 1);
Insert Into book(title, page_number, author_id) values ('Out 1: Spectre', 402, 9);
Insert Into book(title, page_number, author_id) values ('Trials of Muhammed Ali, The', 164, 5);
Insert Into book(title, page_number, author_id) values ('B.U.S.T.E.D (Everybody Loves Sunshine) (Busted)', 84, 10);
Insert Into book(title, page_number, author_id) values ('Father Sergius (Otets Sergiy)', 265, 9);
Insert Into book(title, page_number, author_id) values ('It Started in Naples', 838, 8);
Insert Into book(title, page_number, author_id) values ('Thirty Seconds Over Tokyo', 586,1);
Insert Into book(title, page_number, author_id) values ('Return to Homs, The', 580, 9);
Insert Into book(title, page_number, author_id) values ('Cutie Honey', 788, 8);
Insert Into book(title, page_number, author_id) values ('Jackass 3.5', 834, 1);
Insert Into book(title, page_number, author_id) values ('Baby On Board', 339 , 7);
Insert Into book(title, page_number, author_id) values ('Making Plans for Lena (Non ma fille, tu n''iras pas danser)' , 375, 7);

--referansları tek tabloda birleştirdik
Select * From book
Join author On author.id = book.author_id;



--users tablosu oluşturduk
Create Table users(
	id SERIAL PRIMARY KEY,
	username VARCHAR(20),
	email VARCHAR(50),
	age INTEGER
);
Select * from users;


Insert Into users(username,email,age)
Values('tester', 'tester@gmail.com', 23);

Insert Into users(email,age)
Values ('gamer@gmail.com', 35)

Create Table users(
	id SERIAL PRIMARY KEY,
	username VARCHAR(20) Not null, --182.satırda not null demeyi unuttuk diyelim sonradan nasıl ekleriz?
	email VARCHAR(50),
	age INTEGER
);
Select * from users;

--not null sorununu sonradan böyle çözmeye çalıştığımızda şu hatayı alırız
--"username" sütunu null değerleri içermektedir
Alter Table users
Alter Column username
Set Not Null;



--Null ifadelerden şu şekilde kurtulmalıyız
--Null ifadeleri siliyoruz
Delete From users
Where username Is NULL
Returning *; --yapmamızın nedeni silinin satırı görmek istiyoruz


--208.satırda yapamadığımızı şimdi yapabiliriz
Alter Table users
Alter Column username
Set Not Null;
Select * From users;


--denemek için username'i null olan bir değer girmeye çalışalım
Insert Into users
(email, age)
Values ('test2@mail.com', 35);
--gördüğünüz gibi kuralımız bu sefer çalıştı ve şu hatayı verdi
--ERROR: HATA:  "username" sütununda null değeri not-null kısıtlamasını ihlal ediyor
--DETAIL:  Hata veren satır (3, null, test2@mail.com, 35) içeriyor.
--gördüğünüz gibi beklediğimiz ve istediğimiz hatayı veriyor



--Null bilinmeyen veridir fakat 0 'sıfır' null değildir
--aynı şeyi email ifadesinde deneyelim 	
--boş stringler null değildir
Insert Into users(username, email, age)
values ('','gamer@gmail.com', 35);
select * from users;



--örneğin bazı senaryolarda bulunan verilerimiz uniqe yani benzersiz olmasını isteriz
--yani o sütundaki tüm verilerin birbirinden farklı olmasını isteriz
--örneğin users tablosundaki her emailin birbirinden farklı olmasını isteriz
--öncelikle tablomuza burada bulunan emaillerin benzerlerini girmeye çalışalım
Insert Into users(username,email,age)
values('tester2', 'tester@gmail.com',44);
select * from users;
--şimdi biz tablomuzdaki 1. ve 3.satırlardaki email verilerinin birbirinden farklı olmasını istiyoruz 
--ve bunun için iki yöntemimiz var
--1.yöntemimiz
--200.satırda not null yaptığımız gibi unique yapmamızdır
Create Table users(
	id SERIAL PRIMARY KEY,
	username VARCHAR(20) Not null,
	email VARCHAR(50) Unique,
	age INTEGER
);
Select * from users;
--ancak bizim tablomuz zaten var olduğundan dolayı bu şekilde hata yaparız
--bu yüzden diğer yöntemimiz olan alterı kullanacağız
Alter Table users Add Unique(null);	
--burada hata alıyoruz
--ERROR: HATA:  "null"  yerinde söz dizim hatası 
--LINE 268: Alter Table users Add Unique(null); 
--email sütununu unique yapmaya çalışıyorsun ama zaten null verilerin bulunduğu bir sütunu değiştiremezsin diyor

select * from users;
--tablomuzda tester@gmail.com olan 3.satırdaki veriyi çift tıklayıp
--tester2@gmail.com olarak değiştiriyoruz
--ardından 'Save Data Changes' butonuna tılıyoruz(f6)

Alter Table users 
Add Unique(email);
--başarılı bir şekilde değişiklik yapmış olduk

--deneyelim
Insert Into users(username, email, age)
values('tester2', 'tester@gmail.com' , 44);
--hatayla karşılaşıyoruz ve bize aynı veriyi giremezsin hatasını veriyor
Insert Into users(username,email,age)
values('tester3', 'tester3@gmail.com', 55);





--diyelim ki biz tabloya gireceğimiz verileri belirli şartlardan sınırlamalardan geçirmek istiyoruz
--bunun için check kullanırız
Insert Into users(username, email, age)
values ('gamer3', 'gamer3@gmail.com', -22) --diyelim ki yaşını eksi bir sayı girdi
--check kısıtlamasını iki şekilde kullanabiliriz
--1. ya tabloyu oluştururken
--2. ya da tabloda bir değişiklik


--önce 2.den başlıyoruz
Alter Table users
Add Check (age > 18);
-- ve bir hatayla karşılıyoruz
--hata bize şunu diyor, sen bu checki uygulamaya çalışıyorsun ama senin tablonda buna uymayan değerler var


--öncelikle o eksi veriden kurtulalım
Delete From users where age = -22;

--şimdi yapabiliriz
--tablomuza yani web site senaryomuza +18 kayıt sınırlamasını getirelim
Alter Table users
Add Check(age > 18);


Insert Into users(username, email, age)
Values ('gamer4', 'gamer4@gmail.com', -27);
select * from users;




--products tablosunu ve user tablosunu silip başka şeyler deneyelim
Drop table products;
Drop Table users;

--normal olarak yazarsak title book tablosuna ait olmadığı için hata verecekti
--o yüzden birleştirme yani inner join işlemini gerçekleştireceğiz
Select title, first_name, last_name From book 
Inner Join author On book.author_id = author.id;
--bu işlem ile iki tabloyu vermiş olduğumuz keyler yardımıyla birleştirdik


--eğer tüm sütunlardaki verileri görmek istiyorsak da
Select * From book Inner Join author On book.author_id = author.id;  


--ınner joini iki tablonun, iki kümenin ortak, kesişen elemanları olarak düşünebiliriz
--left join ise hem kesişimleriyle hem de sol taraftaki kümeyle, tabloyla ilgilenmektedir
--author yerine hangi tabloyu yazarsak o verileri alacaktır önce
Select title, first_name, last_name From author 
Left Join book On author.id = book.author_id;


--right join, öncelikle tablo2 deki verileri alıyor, sonrasında da o verilerle eşleşen tablo1 deki verileri alıyor ve eşleşmeyen veriler içinde null veriyor
Select author.first_name, author.last_name, book.title From book
Right Join author On author.id = book.author_id;



--full joinde ise tablo1 ve tablo2 de bulunan tüm değerler alınır
Select author.first_name, author.last_name, book.title From book
Full Join author On author.id = book.author_id;

--full joinden null olduğu koşulları şu şekilde çıkartırız
Select * From author
Full Join book On author.id = book.author_id
Where (book.id Is Not Null And author.id Is Not Null);



--union anahtar kelimesi birden daha fazla select sorgusu sonuçlarını tek bir sonuç sorgusu altında göstermeye yaramaktadırse
(	
	Select * From book
	Order By page_number Desc
	Limit 5
)
Union All
(
	Select * From book
	Order By title
	Limit 5
);

--Hepsini göstermek istersek 371.satırda olduğu gibi All dememiz gerekmektedir
--union operatörünün çalışması için sorgularda verilen sütun sayıları eşit olmak zorundadır
--aynı zamanda bu sütunların veri tipleride birbiriyle aynı olmak zorundadır





--instersect anahtar kelimesi, unionın aksine yalnızca kesişimlerini almaktadır
(	
	Select * From book
	Order By page_number Desc
	Limit 10
)
Intersect
(
	Select * From book
	Order By title
	Limit 10
);





--except anahtar kelimesi ile ilk sorguda yani yukarı parantezde bulunan 
--ancak ikinci sorguda yani alt parantezde bulunmayan verileri alır
(	
	Select * From book
	Order By page_number Desc
	Limit 10
)
Except
(
	Select * From book
	Order By title
	Limit 10
);





--bookstore veritabanında "Gülün Adı" isimli kitabımızın sayfa sayısı 466 dır. Bu kitaptan daha fazla sayıda sayfası bulunan kitapları aşağıdaki sorgu yardımıyla sıralayabiliriz.
SELECT *
FROM book
WHERE page_number > 466;

--Ancak yukarıdaki sorgumuzda şöyle bir sorun var. 466 ifade statik bir ifade ve biz bu değeri bilmiyor olabiliriz
--Bu nedenle buradaki 466 rakamını aşağıdaki sorgu yardımıyla bulabiliriz.
SELECT page_number
FROM book
WHERE title = 'Gülün Adı'


--İşte bu ikinci sorgumuz ilk sorgumuzda bir alt sorgu görevi görebilir. Her iki sorguyu da birleştirelim.
SELECT *
FROM book
WHERE page_number >
(
SELECT page_number
FROM book
WHERE title = 'Gülün Adı'
);



--Alt sorgudan gelen herhangi bir değer koşulu sağlaması durumunda TRUE olarak ilgili değerin koşu sağlamasını sağlar. 
--bookstore veritabanında yapmış olduğumuz aşağıdaki sorguyu inceleyelim.
SELECT first_name, last_name
FROM author
WHERE id = ANY
(
  SELECT id
  FROM book
  WHERE title = 'Abe Lincoln in Illinois' OR title = 'Saving Shiloh'
)

--Yukarıda görmüş olduğunuz gibi alt sorgudan gelebilecek potansiyel iki id değeri var, 
--bu id değerinin her ikisi de birbirinden bağımsız olarak ana sorgudaki id sütununda bulunan değerler ile eşleştiği için sorgu sonucunda oluşan
--tabloda id değeri 4 ve 5 olan yazarlara ait first_name ve last_name değerlerini göreceğiz.




--All operatörü
--Alt sorgudan gelen tüm değerlerin koşulu sağlaması durumunda TRUE olarak döner.
--bookstore veritabanındaki yine aynı sorguyu inceleyelim.

SELECT first_name, last_name
FROM author
WHERE id = ALL
(
  SELECT id
  FROM book
  WHERE title = 'Abe Lincoln in Illinois' OR title = 'Saving Shiloh'
)
