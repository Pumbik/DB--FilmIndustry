-- (11 строк) подсчитать сумму гонораров всех актёров в возрасте от 40 до 60 лет,
-- вывести результат в виде таблицы с колонками: “Полное имя актёра” (одной колонкой), “Сумма гонораров”
SELECT concat_ws(' ',firstName,lastName) as Actor, SUM(fee) as 'Fee of Actor' 
	FROM tb_actors LEFT JOIN tb_fee_actors
		ON tb_actors.codeActor=tb_fee_actors.codeActor
			WHERE tb_actors.dateOfBirth BETWEEN str_to_date((year(now())-60), '%Y') AND str_to_date((year(now())-40), '%Y')
				GROUP BY Actor ORDER BY 2;


-- выбрать информацию о всех актёрах, снимавшихся в фильмах определённой студии.
-- В выборку включить количество фильмов этой студии, в которых снялся актёр.
-- Результат оформить в виде таблицы со следующими колонками: “Название студии”, “Полное имя актёра” (одной запись), “Кол-во фильмов”.
SELECT titleStudio as Studio, concat_ws(' ',firstName,lastName)as Actor, count(tb_product_studio.idMovie) as Movies
	FROM  tb_actors 
		JOIN tb_fee_actors ON tb_actors.codeActor=tb_fee_actors.codeActor
		JOIN tb_product_studio ON tb_fee_actors.idMovie=tb_product_studio.idMovie
		JOIN tb_studio ON tb_studio.codeStudio=tb_product_studio.codeStudio
			WHERE titleStudio= '20th Century Fox'
				GROUP BY Actor ORDER BY Studio;
  
  
-- подсчитать сумму гонораров, выплаченных определённой студией за последние 10 лет
-- и средний размер такого гонорара. Также в выборку включить кол-во фильмов и кол-вы 
-- выплат гонораров. Вывести список в порядке уменьшения среднего гонорара студии актёрам.
-- Результат оформить в виде таблицы со следующими колонками: “Название студии”, “Кол-во фильмов”,
-- “Кол-во выплат”, “Сумма гонораров”, “Средний гонорар”.
-- !Данный запрос реализован не полностью!
-- !This request is not fully implemented!
SELECT titleStudio as Studio, count(tb_product_studio.idMovie) as 'Number of payments', sum(fee) AS 'Sum Fee', avg(fee) as 'Avg Fee'
	FROM tb_studio
		LEFT JOIN tb_product_studio ON tb_studio.codeStudio=tb_product_studio.codeStudio
		LEFT JOIN tb_fee_actors ON tb_product_studio.idMovie=tb_fee_actors.idMovie
			GROUP BY Studio ORDER BY 4 DESC;

-- выбрать список актёров, не имеющие однофамильцев.
-- Вывести список в виде: “Полное имя актёра” (одной колонкой).
-- (12 строк, 16-всего, 4-однофамильца)
SELECT concat_ws(' ',firstName,lastName)as Actor FROM tb_actors
	 GROUP BY lastName HAVING count(*)=1;

