ALTER TABLE star_wars3 MODIFY created DATETIME;
ALTER TABLE star_wars3 MODIFY edited DATETIME;
/* --------------------------------------QUESTÃO 1 ---------------------------------------------------*/
#select * from star_wars3
#where birth_year like '%BBY' and birth_year not like 'unknown'

#PERGUNTA: Quantos personagens nasceram antes da batalha de Yavin (BBY=before battle of yavin) e possuem data de nascimento conhecida?
#REPOSTA: 43
/* --------------------------------------QUESTÃO 2 ---------------------------------------------------*/
select homeworld, COUNT(name) as personagens from star_wars3
GROUP BY homeworld
order by personagens DESC;

#PERGUNTA: Qual o número do planeta que apresenta a maior quantidade de personagens e qual essa quantidade?
#RESPOSTA: 8 e 11
/* --------------------------------------QUESTÃO 3 ---------------------------------------------------*/
select * from star_wars3 where skin_color like '%grey%'

#PERGUNTA: Quantos personagens possuem cinza em qualquer uma de suas cores de pele?
#RESPOSTA:12
/* --------------------------------------QUESTÃO 4 ---------------------------------------------------*/
select name, (mass*mass/height) as ISW from star_wars3
order by ISW desc 

#PERGUNTA:De quem é o maior ISW (mass²/height) dos personagens de SW e seu ISW
#RESPOSTA: Grievous, 117,04
/* --------------------------------------QUESTÃO 5 --------------------------------------------------- */
select name, DATE(edited), DATE(created) from star_wars3 where DATE(edited) <= DATE(created);

#PERGUNTA: Há algum personagem que não foi editado após a sua data de criação? (Apenas dias, não horas)
#RESPOSTA: Sim
/* --------------------------------------QUESTÃO 6 ---------------------------------------------------*/
select name, height from star_wars3
order by height desc;

#PERGUNTA: Qual é o personagem mais alto
#RESPOSTA: Yarael Poof
/* --------------------------------------QUESTÃO 7 ---------------------------------------------------*/
select name, skin_color, eye_color, height from star_wars3
WHERE skin_color = 'grey' AND eye_color = 'black'
ORDER BY height DESC

#PERGUNTA: Selecione os 3 personagens mais altos que tenham olhos pretos e pele cinza, do mais alto pro mais baixo
#RESPOSTA: Lama Su, Taun We, Tion Medon
/* --------------------------------------QUESTÃO 8 ---------------------------------------------------*/
select homeworld, eye_color, COUNT(eye_color) from star_wars3 where homeworld = 1
#PERGUNTA: Quantos % representam as cores de olho dos personagens do mesmo planeta do Darth Vader
#RESPOSTA: C (100% blue, total = 10)
/* --------------------------------------QUESTÃO 9 ---------------------------------------------------*/
select COUNT(created) as diacriado, DAYNAME(created) as diasemana from star_wars3
GROUP BY diasemana

#PERGUNTA: Qual foi o dia da semana em que mais foram criados personagens?
#RESPOSTA: Sábado
