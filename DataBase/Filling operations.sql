select 'hello world' as yes

select version() as версия

select concat('yes', 'fine') as conc

select 'yes' || 'fine' as conc2

select right(version(), 20) as cut,
substring (version(), 17, 4) as cut_more

select CURRENT_DATE as today's date

select CURRENT_TIMESTAMP as today's date

select concat('Hello', 'world, в ', date_part('year', current_date), ' году') as yes



select version() as Full_Version,
substring (version(), 1, 10) as base,
substring (version(), 12, 4 ) as Num_Version, 
substring (version(), 30, 10) as compiled_by,
substring (version(), 47, 4) as build,
substring (version(), 53, 2) as bitt

select concat('Hi, my name is', ' Slim Shady', ' Я родился в ', extract('year' from current_date), ' году.', ' Я родился в месяце ', TO_CHAR(current_date, 'Month'), ', число ', date_part('day', current_date), ', день недели - ', extract(DOW from current_date), ', то есть - ', TO_CHAR(current_date, 'Day'),  '. Время рождение ', localtime)

SELECT TIMESTAMP '2023-11-09 16:41:15'::time ;

select * from "Recipe author" 

insert into "Recipe author" ("ID_author", "Surname", "Name", "Father name", "Sex", "DOB")
	values (1, 'Монастырев', 'Кирилл', 'Евгеньевич', 'М', '2000-01-20')
	
	
select * from "Categories"

insert into "Categories"
	values ('Суп', 'Первое блюдо')


select * from "Recipes" 

select "Recipe_name" from "Recipes"

insert into "Recipes" ("Recipe_name", "year created", "Description", "Category name", "ID_author")
	values ('Борщ', '1435', 'Традиционным считается горячий суп с мясом на кости, картофелем, свеклой, морковью и луком.', 'Суп', '1')

	
select * from "Ingredients" 

insert into "Ingredients" ("Ingredient name")
	values('Свекла')
 
DELETE FROM "Ingredients" 
WHERE "Ingredient name" = 'Сыр'
RETURNING *;

insert into "Ingredients" ("Ingredient name")
	values('Свекла'), ('Картофель'), ('Морковь'), ('Говядина'), ('Вода'), ('Лук'), ('Соль'), ('Лаврушка'), ('Перец')
	
select * from "Measurement units" 

insert into "Measurement units" ("Measurement unit name" , "abbr")
	values('Граммы', 'гр')
	
select * from "Amount of ingredients in recipe" aoiir 

insert into "Amount of ingredients in recipe" ("Value", "Recipe name" , "Ingredient name" , "Measurement unit name")
	values(500, 'Борщ', 'Свекла', 'Граммы')



select * from "Ingredients" i 

select * from "Ingredients" i order by "Ingredient name" desc

select * from "Ingredients" i order by "Ingredient name" asc limit 5 

select * from "Ingredients" i order by "Ingredient name" desc fetch first 5 rows only

select distinct * from "Ingredients" i 



select "Ingredient name" from "Ingredients" as P



GO

SELECT
  Р."Ingredient name"
FROM
  "Ingredients" AS Р


  
GO

SELECT
  
FROM
  "Ingredients" 


select * from "Recipe author" ra 

update "Recipe author" set "Sex" = 'M' where "ID_author" = 1 

select * from "Автор рецепта"

insert into "Автор рецепта" values ('1', 'Монастырев', 'Кирилл', 'Евгеньевич', 'М', '20-01-2000'), ('2', 'Степаненко', 'Андрей', 'Александрович', 'М', '11-11-1111')

insert into "Автор рецепта" values ('2', 'Степаненко', 'Андрей', 'Александрович', 'М', '11-11-1111')

select * from "Рецепты"

select * from "Категории"

insert into "Категории" values ('Вкусное', 'Объективно')

insert into "Рецепты" values ('Второе блюдо', '2024', 'Что-то наваристое', 'Вкусно', '1')

insert into "Рецепты" values ('Бешбармак', '2020', 'Национальное блюдо Казахстана', 'Вкусно', '1')





select * from "Recipes" r  

insert into "Categories" values ('Вкусно', 'Объективно')

insert into "Recipes"  values ('Бешбармак', '2020', 'Национальное блюдо Казахстана', 'Вкусно', '1')

insert into "Recipe author"  values ('2', 'Степаненко', 'Андрей', 'Александрович', 'М', '11-11-1111')

select * from "Amount of ingredients in recipe" aoiir 

insert into "Measurement units"  values ('Килограммы', 'кг'), ('Жменя', 'жм'), ('Щепотка', 'щеп')


SELECT
  "Ingredient name"
FROM
  "Ingredients" order by "Ingredient name" asc
  limit 5

 
select distinct
	"ID_author" 
from
	"Recipe author" 


select * from "Recipes" r  

select 
	count("ID_author") as "Всего авторов рецептов", 
	count(*) as "Всего рецептов",
	count(distinct "Recipe_name") as "Всего уникальных рецептов",
	count("ID_author")/count("Recipe_name") as "В среднем рецептов на 1 автора"
from "Recipes"  

declare 
	Auth integer;
	VsegoR integer;
	VsegoUnik integer;
	Sred integer;

