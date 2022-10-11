/* Inner join- Retorna apenas os resultados que correspondem(Existem) tanto na tabela A como na tabela B

--Sintaxe*/

SELECT * from TabelaA
Inner JOIN TabelaB
on TabelaA.nome = TabelaB.nome

/* Full outer join - retorna um conjunot de todos os registros correspondentes da TabelaA e TabelaB quando são iguais.
E além disso se não houver valores correspondentes, ele simplesmente irá preencher esse lado com "null"
Sintaxe:*/

SELECT * FROM TabelaA
FULL OUTER JOIN TabelaB
on TabelaA.nome = TabelaB.nome

/* Left Outer Join - retorna um conjunto de todos os registros da TabelaA e além disso os registros correspondentes
(quando dispponiveis) na tabelaB. Se não houver registro correspondente ele simplesmente vai preencher com "null"
Sintaxe:*/

SELECT * from TabelaA
LEFT JOIN TabelaB
on TabelaA.nome = TabelaB.nome

