-- a) Crie uma consulta SQL por meio do comando SELECT que exiba informa��es das categorias de produto e respectivos produtos de cada categoria. Exiba as seguintes informa��es : c�digo e nome da categoria, c�digo e descri��o do produto, valor unit�rio, tipo de embalagem e percentual do lucro. Caso exista alguma categoria sem produto, voc� deve exibir a categoria e deixar os dados em branco. Classifique a consulta por ordem de nome de categoria e nome de produto, ambos de forma ascendente.

SELECT CAT.cd_categoria,CAT.ds_categoria,
       PRO.cd_produto, PRO.ds_produto, PRO.vl_unitario, PRO.tp_embalagem, PRO.vl_perc_lucro
  FROM mc_categoria_prod CAT LEFT OUTER JOIN mc_produto PRO
  ON (CAT.CD_CATEGORIA = PRO.CD_CATEGORIA)
ORDER BY 2 ASC, 4 ASC;

-- b) Crie uma instru��o SQL que exiba os dados dos clientes pessoas f�sicas. Exiba as seguintes informa��es : c�digo e nome do cliente, email, telefone, login, data de nascimento no formato dia-mes-ano (com 4 d�gitos), dia da semana da data de nascimento, anos de vida, sexo biol�gico e CPF.

SELECT FIS.nr_cliente,CLI.nm_cliente,CLI.ds_email,CLI.nr_telefone, CLI.nm_login,
       TO_DATE(FIS.dt_nascimento,'DD,MM,YYYY'),TRUNC(MONTHS_BETWEEN(SYSDATE, FIS.dt_nascimento) / 12) AS "Anos de vida", TO_CHAR(FIS.dt_nascimento, 'FMDay') AS dia_da_semana,
       FIS.ds_genero, FIS.nr_cpf
  FROM mc_cli_fisica FIS INNER JOIN mc_cliente CLI
  ON (FIS.nr_cliente = CLI.nr_cliente);
  
-- c) Exiba as seguintes informa��es da tabela de visualiza��o dos v�deos dos produtos : c�digo do produto, nome do produto, data e hora de visualiza��o do produto. Exiba essas informa��es classificadas pela data e hora mais recente.

SELECT VIS.cd_produto, PRO.ds_produto, VIS.dt_visualizacao, VIS.nr_hora_visualizacao
  FROM mc_sgv_visualizacao_video VIS INNER JOIN mc_produto PRO
  ON (VIS.cd_produto = PRO.cd_produto)
ORDER BY 2 DESC, 3 DESC;
 