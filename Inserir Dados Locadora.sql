use db_locadora
;

-- INSERINDO VALORES NA TABELA PAGAMENTO
INSERT
	INTO pagamento(id_pagamento, dsc_forma_pagamento, vlr_pagamento)
		VALUES ( 1,'Boleto',100),
			   ( 2,'Cartao',200),
               ( 3,'Cartao',300),
               ( 4,'Cartao',270),
               ( 5,'Cartao',180),
               ( 6,'Boleto',260),
               ( 7,'Boleto',500),
               ( 8,'Boleto',430),
               ( 9,'Boleto',400),
               (10,'Boleto',220),
               (11,'Boleto',100),
			   (12,'Boleto',200),
               (13,'Boleto',300),
               (14,'Boleto',240),
               (15,'Cartao',1000),
               (16,'Cartao',470),
               (17,'Cartao',230),
               (18,'Cartao',115),
               (19,'Cartao',155),
               (20,'Cartao',220)
;
               
-- INSERINDO VALORES NA TABELA BOLETO
INSERT 
	INTO boleto (num_cod_barra,dat_vencimento,nom_banco,id_pagamento) 
		VALUES ('044101861849249821283661848112804546217947243263','2021-08-21','Itaú',1),
			   ('677607084512480681767312353046984044684760380207','2021-11-22','Caixa',6),
			   ('943684792165059959960622545177914357021170420334','2021-03-18','Banco do Brasil',7),
			   ('936639518851029594779933825190396875166770803455','2021-06-15','Itaú',8),
			   ('467800627635185170771714311723214014040972054815','2021-08-11','Bradesco',9),
			   ('373526802824154499766016490150376234481425210440','2021-09-02','Banco do Brasil',10),
               ('482316758102958325618370217563756370532147923476','2021-08-18','NuBank',11),
			   ('835672317985621378956321756713250912356732156165','2021-11-15','NuBank',12),
			   ('397215832106582135681256213568215617651205321321','2021-12-12','Itaú',13),
			   ('582831578321567872135673019285607832560321563281','2022-02-01','Bradesco',14);
			
-- INSERINDO VALORES NA TABELA CARTAO
INSERT
	INTO cartao(num_cartao, num_parcelas, id_pagamento, cod_seguranca, dat_validade)
		VALUES ('5314523782257316', 1, 2, 965, '2022-10-11'),
			   ('5344938457060155', 3, 3, 465, '2027-06-02'),
               ('5225551540214954', 2, 4, 337, '2024-05-06'),
               ('4539376972681460', 1, 5, 167, '2023-03-02'),
               ('5314543243213676', 5, 15, 865, '2022-10-06'),
			   ('5345864987075765', 4, 16, 860, '2027-09-30'),
               ('5253429859486594', 4, 17, 765, '2024-05-31'),
               ('4539334653870774', 2, 18, 123, '2023-03-09'),
               ('5336927934587293', 1, 19, 978, '2022-10-15'),
			   ('5365098427680924', 3, 20, 971, '2027-06-15');
               
-- INSERINDO VALORES NA TABELA SEGURO
INSERT
	INTO seguro(nom_tipo, num_cnpj, vlr_seguro)
		VALUES('Comum','36.111.337/6222-89' ,'50'),
			  ('Médio','36.111.337/6222-89' ,'70'),
			  ('Gold','36.111.337/6222-89' ,'120'),
              ('Ultimate','36.111.337/6222-89' ,'150'),
              ('Comum','00.878.266/8932-65' ,'45'),
			  ('Médio','00.878.266/8932-65' ,'75'),
			  ('Gold','00.878.266/8932-65' ,'110'),
              ('Ultimate','00.878.266/8932-65' ,'180'),
              ('Comum','61.627.692/0510-88' ,'30'),
			  ('Médio','61.627.692/0510-88' ,'50'),
			  ('Gold','61.627.692/0510-88' ,'100'),
              ('Ultimate','61.627.692/0510-88' ,'150');
              
-- INSERINDO VALORES NA TABELA CLIENTES
INSERT 
	INTO cliente (nom_cliente,num_telefone,nom_rua,num_residencia,nom_bairro,nom_cidade,num_cep,nom_tipo,num_cnpj,num_cpf_cliente,num_cnh,sig_uf) 
		VALUES ('Drew','(62)14205-8515','RUA PRIMEIRO DE MAIO',979,'Mauritius','João Pessoa','71482-918','Comum','36.111.337/6222-89','048.730.024-22','56337105123','PB'),
        ('Octavia','(77)57148-4627','RUA E',604,'Lesotho','Paulista','13663-359','Gold','36.111.337/6222-89','772.777.685-22','35562850161','PE'),
        ('Hamish','(72)25678-1399','RUA BOA VISTA',139,'Angola','Cajazeiras','32215-743','Gold','00.878.266/8932-65','997.059.648-88','25284106393','PB'),
        ('Charde','(09)93319-5494','RUA SANTA RITA',359,'Luxembourg','Anápolis','67600-691','Ultimate','61.627.692/0510-88','493.531.778-62','97773966475','GO'),
        ('Breanna','(84)43104-3536',' RUA SETE',698,'Serbia','Governador Valadares','76752-657','Gold','36.111.337/6222-89','623.650.299-16','59161376438','MG'),
        ('Celeste','(11)33422-0074','RUA PRIMEIRO DE MAIO',193,'Indonesia','Itabuna','73091-731','Comum','00.878.266/8932-65','485.354.388-97','16191096072','BA'),
        ('Haviva','(68)26650-7638','RUA D',886,'Denmark','São João de Meriti','82378-366','Ultimate','36.111.337/6222-89','967.094.357-60','78257273028','RJ'),
        ('Buckminster','(12)68541-3998','RUA SANTA RITA',576,'Pitcairn Islands','Itajaí','88043-610','Ultimate','00.878.266/8932-65','486.625.645-26','55723306001','SC'),
        ('Ori','(92)90485-4248','RUA C',144,'Somalia','Jundiaí','55744-760','Ultimate','61.627.692/0510-88','768.615.113-23','43213353156','SP'),
        ('Yuri','(73)63154-1406','RUA PARÁ',602,'Faroe Islands','Bragança','79019-391','Gold','61.627.692/0510-88','475.729.207-74','32917136708','PA');
        
-- INSERINDO VALORES NA TABELA FUNCIONARIO
INSERT 
	INTO funcionario (num_cpf_funcionario,num_carteira_trabalho,nom_funcionario,vlr_salario,num_telefone,nom_email,num_cpf_cliente, num_cnh) 
		VALUES ('906.131.399-42','20739936973','Nina Burch','3401.00','(18)96763-6749','ac@Nullam.org','048.730.024-22','56337105123'),
        ('425.408.376-72','25868148536','Ross Macias','3696.00','(31)75918-4918','Aliquam@felisorciadipiscing.net','772.777.685-22','35562850161'),
        ('105.628.475-32','85181314458','Hunter P. Montgomery','3550.10','(50)55846-1728','ac@pellentesque.co.uk','997.059.648-88','25284106393'),
        ('022.898.901-11','77197075602','Mark U. Bradshaw','2330.90','(81)28886-7725','pede.Nunc.sed@pedeetrisus.ca','493.531.778-62','97773966475'),
        ('022.007.780-85','31780979109','Malachi Z. Sellers','2571.91','(93)52143-6141','dui.nec.tempus@tortorNunc.ca','623.650.299-16','59161376438'),
        ('207.301.647-97','26197255518','Ocean Davenport','1334.02','(34)90405-4226','mauris@porttitortellusnon.co.uk','485.354.388-97','16191096072'),
        ('626.934.742-73','17108955101','Jessamine D. Perkins','1347.32','(95)70563-7818','nunc@lacus.net','967.094.357-60','78257273028'),
        ('054.436.552-81','97587966983','Amy C. Bridges','1251.12','(74)46437-2811','Cras@dolornonummy.org','486.625.645-26','55723306001'),
        ('701.355.384-13','57356971455','Uriel Reid','2826.00','(78)80169-2287','penatibus@velarcueu.net','768.615.113-23','43213353156'),
        ('035.522.289-13','52690791405','Joan N. Peterson','2331.32','(40)48187-0064','consequat@ultricesmauris.com','475.729.207-74','32917136708');
        
        -- INSERINDO VALORES NA TABELA PROPRIETARIO
INSERT
	INTO proprietario(num_cpf_proprietario, nom_proprietario)
		VALUES('247.653.610-55','Flipo Alves'),
			  ('754.773.330-14','Maria Figueiredo');
        
        -- INSERINDO VALORES NA TABELA VEICULO
INSERT
	INTO veiculo (num_placa, num_chassi, dsc_cor, dsc_tipo, num_cpf_proprietario)
    -- carros
		VALUES ('JKE7029', '53nPeAcbp00AA4007','Preto','Popular','247.653.610-55'),
			   ('LVM2507', '5wHPlpA0DA4kA6845','Prata','Popular','247.653.610-55'),
               ('LVM9485', '4XDLdAeAMfVnt8539','Branco','Caminhonete','754.773.330-14'),
               ('MZV1853', '3T468bJW1w7mG0888','Prata','Popular','754.773.330-14'),
               ('KYD4368', '2eSN2r4RALbLY3367','Vermelho','Popular','247.653.610-55'),
               ('NAC5863', '8B9z89tX2AWAs7396','Branco','Sedan','754.773.330-14'),
               ('KAB4432', '2At5W7CfPAK9k2408','Branco','Hatch','247.653.610-55'),
               ('HZM8666', '6rb0jv5jHaCrf7689','Cinza','Coupé','247.653.610-55'),
               ('IMK0033', '3AAAYS1bAbAKs2741','Branco','Sedan','247.653.610-55'),
               ('IYG5024', '2r1R5j6H1y59G3109','Branco','Sedan','754.773.330-14'),
	-- caminhões
               ('CLV5729', '8A2t3pk61H47p2326','Branco','VUC','754.773.330-14'),
               ('NAD1712', '5e520xAHlg1Cn1065','Preto','Truck','247.653.610-55'),
               ('NEU5194', '2A6KsuZA2S6Ab6186','Branco','Bitrem','247.653.610-55'),
               ('KCW1415', '6FA16AFTZjkwC6363','Branco','VUC','247.653.610-55'),
               ('MHO1284', '75UGAAv5t8Y854230','Cinza','VUC','754.773.330-14'),
               ('NEU5996', '8h1chj6sk6kjl0224','Branco','Bitrem','754.773.330-14'),
               ('MZF2085', '5J21e6UxK7gYs3405','Branco','Truck','247.653.610-55'),
               ('AUA2279', '880bssAP7vzH36294','Preto','Truck','754.773.330-14'),
               ('NAC8314', '4EAM5034WA0UU6868','Azul','Bitrem','247.653.610-55'),
               ('CCP1517', '21wUSWAAs2sV82037','Branco','Bitrem','754.773.330-14'),
	-- motos
			   ('MEG0168', '3z5X0S1zx6VBH9188','Branco','Street','754.773.330-14'),
               ('HYJ0647','8ywdLY3Kv45A47812','Prata','Street','754.773.330-14'),
               ('NAF7544','743S38wn8ZzdC4529','Preto','Street','247.653.610-55'),
               ('DKS2334','1twH9fAy7mu8N4505','Branco','Scooter','754.773.330-14'),
               ('LZD0529','699GP0VpNmRvA6657','Branco','Street','247.653.610-55'),
               ('HZM8430','8g1Hvs2yA4BT43871','Vermelho','Street','754.773.330-14'),
               ('JRV0449','5Vb1lGE37Cn4c3729','Verde','Street','754.773.330-14'),
               ('IIY3227','6s679602AP76A5570','Branco','Street','247.653.610-55'),
               ('MXP0222','85BJbZjX70A595211','Branco','Street','754.773.330-14'),
               ('ACF1981','6frA0NzvAYJF23909','Preto','Street','247.653.610-55');
               
               
-- INSERINDO VALORES NA TABELA CAMINHAO
INSERT
	INTO caminhao (nom_modelo, nom_marca, dsc_motor_caminhao, num_eixo, num_placa, num_chassi)
		VALUES ('FH 540', 'Volvo', 'D13', 04, 'CLV5729', '8A2t3pk61H47p2326'),
			   ('R450', 'Scania', 'DC13', 04, 'NAD1712', '5e520xAHlg1Cn1065'),
               ('FH 460', 'Volvo', 'D13', 04, 'NEU5194', '2A6KsuZA2S6Ab6186'),
               ('Actros 2651', 'Mercedes-Benz', 'OM-460 LA', 03, 'KCW1415', '6FA16AFTZjkwC6363'),
               ('XF 105', 'DAF', 'PaccarMX 13', 04, 'MHO1284', '75UGAAv5t8Y854230'),
               ('R500', 'Scania', 'DC16', 04, 'NEU5996', '8h1chj6sk6kjl0224'),
               ('Axor 2544', 'Mercedes-Benz', 'OM-457 LA', 03, 'MZF2085', '5J21e6UxK7gYs3405'),
               ('Axor 2546', 'Mercedes-Benz', 'OM-501 LA', 03, 'AUA2279', '880bssAP7vzH36294'),
               ('Axor 3344', 'Mercedes-Benz', 'OM-457', 03, 'NAC8314', '4EAM5034WA0UU6868'),
               ('Constellation 19.360', 'Volvo', 'Cummins ISL', 04, 'CCP1517', '21wUSWAAs2sV82037');

-- INSERINDO VALORES NA TABELA CARRO
INSERT
	INTO carro (nom_modelo, nom_marca, dsc_motor_carro, num_passageiros, num_portas, num_placa, num_chassi)
		VALUES ('Agile', 'Chevrolet', '1.4', 4, 4, 'JKE7029', '53nPeAcbp00AA4007'),
			   ('Vectra', 'Chevrolet', '2.0', 4, 4, 'LVM2507', '5wHPlpA0DA4kA6845'),
               ('Saveiro', 'Volkswagen', '1.6', 2, 2, 'LVM9485', '4XDLdAeAMfVnt8539'),
               ('Palio', 'Fiat', '1.0', 4, 4, 'MZV1853', '3T468bJW1w7mG0888'),
               ('Uno', 'Fiat', '1.4', 4, 4, 'KYD4368', '2eSN2r4RALbLY3367'),
               ('HB20s', 'Hyundai', '1.6', 4, 4, 'NAC5863', '8B9z89tX2AWAs7396'),
               ('HB20', 'Hyundai', '1.0', 4, 4, 'KAB4432', '2At5W7CfPAK9k2408'),
               ('Veloster', 'Hyundai', '1.6', 2, 2, 'HZM8666', '6rb0jv5jHaCrf7689'),
               ('320i', 'BMW', '2.0', 4, 4, 'IMK0033', '3AAAYS1bAbAKs2741'),
               ('Civic', 'Honda', '2.0', 4, 4, 'IYG5024', '2r1R5j6H1y59G3109');

-- INSERINDO VALORES NA TABELA LOCACAO
INSERT
	INTO locacao (num_cpf_cliente, num_cnh, num_placa, num_chassi, dat_locacao, nom_empregado_locador, id_pagamento)
		VALUES ('048.730.024-22','56337105123','JKE7029','53nPeAcbp00AA4007','2021-02-14','Nina Burch', 1),
			   ('772.777.685-22','35562850161','HYJ0647','8ywdLY3Kv45A47812','2021-02-18','Ross Macias', 2),
               ('997.059.648-88','25284106393','NEU5194', '2A6KsuZA2S6Ab6186','2021-03-01','Hunter P. Montgomery',3),
               ('493.531.778-62','97773966475','MZV1853', '3T468bJW1w7mG0888','2021-03-05','Mark U. Bradshaw',4),
               ('623.650.299-16','59161376438','LZD0529','699GP0VpNmRvA6657','2021-03-30','Malachi Z. Sellers',5),
               ('485.354.388-97','16191096072','NEU5996', '8h1chj6sk6kjl0224','2021-04-01','Ocean Davenport',6),
               ('967.094.357-60','78257273028','KAB4432', '2At5W7CfPAK9k2408','2021-04-12','Jessamine D. Perkins',7),
               ('486.625.645-26','55723306001','IIY3227','6s679602AP76A5570','2021-04-29','Amy C. Bridges',8),
               ('768.615.113-23','43213353156','NAC8314', '4EAM5034WA0UU6868','2021-05-01','Uriel Reid',9),
               ('475.729.207-74','32917136708','IYG5024', '2r1R5j6H1y59G3109','2021-05-15','Joan N. Peterson',10);

-- INSERINDO VALORES NA TABELA MOTO
INSERT
	INTO moto(nom_modelo, nom_marca, dsc_motor_moto, num_placa, num_chassi)
		VALUES ('CG 160', 'Honda', 'OHC', 'MEG0168', '3z5X0S1zx6VBH9188' ),
			   ('BIZ','Honda','OHC','HYJ0647','8ywdLY3Kv45A47812'),
               ('NXR 160','Honda','OHC','NAF7544','743S38wn8ZzdC4529'),
               ('POP 100','Honda','OHC','DKS2334','1twH9fAy7mu8N4505'),
               ('CB 250F Twiter','Honda','OHC','LZD0529','699GP0VpNmRvA6657'),
               ('PCX 150','Honda','OHC','HZM8430','8g1Hvs2yA4BT43871'),
               ('Fazer 250','Yamaha','OHC','JRV0449','5Vb1lGE37Cn4c3729'),
               ('YBR 150','Yahama','OHC','IIY3227','6s679602AP76A5570'),
               ('XTZ 150','Yamaha','OHC','MXP0222','85BJbZjX70A595211'),
               ('XRE 300','Honda','OHC','ACF1981','6frA0NzvAYJF23909');