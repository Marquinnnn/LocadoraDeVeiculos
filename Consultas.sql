use db_locadora
;
/*
SELECT * FROM boleto;
SELECT * FROM caminhao;
SELECT * FROM carro;
SELECT * FROM cliente;
SELECT * FROM funcionario;
SELECT * FROM locacao;
SELECT * FROM locacao;
SELECT * FROM moto;
SELECT * FROM pagamento;
SELECT * FROM proprietario;
SELECT * FROM seguro;
SELECT * FROM veiculo;
*/

/*SELECT num_placa
	FROM carro
    WHERE num_placa = "JKE7029"
UNION
SELECT num_placa
	FROM moto
	WHERE nom_marca = "Honda"
;

SELECT num_cpf_cliente
	FROM locacao
    WHERE dat_locacao > "2021-04-19"
UNION
SELECT num_cpf_cliente
	FROM locacao
    WHERE id_pagamento < 5
;*/

-- 4. Execute cinco consultas com apenas uma tabela, envolvendo projeção e seleção

-- Mostra o modelo de carro Civic
SELECT * 
	FROM carro
 WHERE nom_modelo = "Civic"
;

SELECT * 
	FROM carro 
 WHERE nom_marca = "Hyundai" OR nom_marca = "BMW"
;

SELECT * 
	FROM carro 
 WHERE num_placa = 'KAB4432'
;

SELECT * 
	FROM carro 
  WHERE num_portas < 4
;

SELECT * 
	FROM carro 
  WHERE dsc_motor_carro = "2.0" AND nom_marca = "Chevrolet" 
;

-- 5. Execute uma consulta envolvendo união;

SELECT id_pagamento
	 FROM pagamento
  WHERE vlr_pagamento > 500
UNION
SELECT id_pagamento
	FROM pagamento
  WHERE dsc_forma_pagamento = "Cartao"
;
-- 6. Execute cinco consultas envolvendo junção de 2 e 3 tabelas com projeção e seleção; (NICK)






-- 7. Execute cinco consultas envolvendo subconsultas com projeção, seleção e junção; (LUCAS)







-- 8. Execute cinco consultas envolvendo agrupamento com projeção, seleção e junção ou subconsulta.(MARCUS)
-- 8.1 Mostra o numero do boleto, a data de vencimento e o nome do banco.Filtra por ID nas tabelas boleto e pagamento iguais e vence depois do mês de Novembro de 2021, agrupadas por dia de vencimento.
SELECT num_cod_barra CodBarras, dat_vencimento Vencimento, nom_banco Banco
	FROM (boleto INNER JOIN pagamento ON boleto.id_pagamento = pagamento.id_pagamento)
    WHERE dat_vencimento > "2021-11-01"
	GROUP BY dat_vencimento
;

--    				 CodBarras               	         Vencimento		         Banco
-- -----------------------------------------------------------------------------------------
-- 397215832106582135681256213568215617651205321321  2021-12-12 00:00:00		  Itaú
-- 582831578321567872135673019285607832560321563281  2022-02-01 00:00:00 	    Bradesco
-- 677607084512480681767312353046984044684760380207  2021-11-22 00:00:00         Caixa
-- 835672317985621378956321756713250912356732156165  2021-11-15 00:00:00         NuBank

-- 8.2 Mostra o numero do cartao e as parcelas que fez nele, cujo id de pagamento é igual nas tabelas de cartao e pagamento e o valor maior de 500 reais. Além disso, agrupa pelo numero do cartao
SELECT num_cartao, num_parcelas
	FROM (cartao INNER JOIN pagamento ON cartao.id_pagamento = pagamento.id_pagamento)
    WHERE vlr_pagamento > 500
	GROUP BY num_cartao
;

-- 		num_cartao			num_parcelas
-- --------------------------------------
-- 	  5314543243213676           5

-- 8.3 Seleciona o nome e o numero de telefone do cliente que contratou uma seguradora parceira da locadora e que o tipo de seguro é comum, agrupado pelo nome
SELECT nom_cliente Cliente, num_telefone Telefone
	FROM cliente INNER JOIN seguro ON cliente.num_cnpj = seguro.num_cnpj
    WHERE cliente.nom_tipo = "Comum"
	GROUP BY nom_cliente
;

--    Cliente    	Telefone
-- --------------------------------
--    Celeste      (11)33422-0074
--     Drew        (62)14205-8515

-- 8.4 Mostra o numero do chassi das motos que possuem placa que estão alugadas e cadastradas no sistema e o modelo seja da Honda, agrupadas pela descrição do motor
SELECT moto.num_chassi Chassi
	FROM moto INNER JOIN locacao ON moto.num_placa = locacao.num_placa
    WHERE moto.nom_marca = "Honda"
    GROUP BY dsc_motor_moto
;

-- 	  Chassi
-- ------------------
-- 8ywdLY3Kv45A47812

-- 8.5 Mostra o nome, carteira de trabalho do funcionario com salario maior que 2000 reais e o numero de telefone do cliente que ele atendeu. Agrupado pelo nome dos funcionarios
SELECT nom_funcionario NomFuncionario, num_carteira_trabalho NumCarteiraTrab, cliente.num_telefone TelefoneCliente
	FROM funcionario INNER JOIN cliente ON funcionario.num_cpf_cliente = cliente.num_cpf_cliente
    WHERE vlr_salario > 2000
    GROUP BY nom_funcionario
-- 	NomFuncionario			NumCarteiraTrab		TelefoneCliente
-- -----------------------------------------------------------
-- Malachi Z. Sellers		31780979109			(84)43104-3536
-- Mark U. Bradshaw			77197075602			(09)93319-5494
-- Joan N. Peterson			52690791405			(73)63154-1406
-- Hunter P. Montgomery		85181314458			(72)25678-1399
-- Ross Macias				25868148536			(77)57148-4627
-- Uriel Reid				57356971455			(92)90485-4248
-- Nina Burch				20739936973			(62)14205-8515