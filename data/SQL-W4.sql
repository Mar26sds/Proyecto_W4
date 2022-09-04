-- Poner el nombre científico como PK
alter table mamiferos modify `nombre_científico` varchar(100);


alter table mamiferos
add primary key(`nombre_científico`);


alter table `mamiferos_españa` modify `nombre_científico` varchar(100);
alter table `mamiferos_españa`
add primary key(`nombre_científico`);

select*
from `mamiferos_españa`;

select* 
from `mamiferos_españa`
left join mamiferos
on mamiferos.`nombre_científico`=`mamiferos_españa`.`nombre_científico`;

-- Estaría bien para el futuro rellenar la tabla entera. Por ahora vamos a exportarla para el futuro y vamos a hacer otras queries.


CREATE TABLE mamiferos_comun AS (select `mamiferos_españa`.`nombre_científico`,`mamiferos_españa`.`nombre_común`,autoridad,`categoría_de_amenaza`,origen 
from `mamiferos_españa`
left join mamiferos
on mamiferos.`nombre_científico`=`mamiferos_españa`.`nombre_científico`);

select*
from mamiferos_comun;

-- Queries
-- Saber cuáles están extintos regionalmente
select `nombre_científico`,`nombre_común`,`categoría_de_amenaza`
from mamiferos_comun
where `categoría_de_amenaza`='RE';
-- No sale el lince europeo porque no está en la lista de mamiferos de españa. Se puede solucionar en el futuro.


-- Saber cuáles están en situación crítica

select `nombre_científico`,`nombre_común`,`categoría_de_amenaza`
from mamiferos_comun
where `categoría_de_amenaza`='CR';


-- Saber cuáles están en peligro de extinción
select `nombre_científico`,`nombre_común`,`categoría_de_amenaza`
from mamiferos_comun
where `categoría_de_amenaza`='EN';


-- Saber cuáles están en vulnerables de estar en peligro de extinción
select `nombre_científico`,`nombre_común`,`categoría_de_amenaza`
from mamiferos_comun
where `categoría_de_amenaza`='VU';

-- Saber cuáles están en casi amenazadas de estar en peligro de extinción
select `nombre_científico`,`nombre_común`,`categoría_de_amenaza`
from mamiferos_comun
where `categoría_de_amenaza`='NT';

-- Importada la tabla de categorías de amenaza como leyenda
-- Importada la tabla de resumen

select*from mamiferos

