/*
GRUPO: LUCAS DE GODOI MORAES
	   MARCUS VINÍCIUS RIBEIRO - R.A.: 688487
	   NICHOLAS CÉSAR PEREIRA
*/

drop database if exists db_locadora
;
create database db_locadora character set='utf8mb4'
;
use db_locadora
;

drop table if exists seguro
;
drop table if exists cliente
;
drop table if exists funcionario
;
drop table if exists proprietario
;
drop table if exists veiculo
;
drop table if exists carro
;
drop table if exists caminhao
;
drop table if exists moto
;
drop table if exists pagamento
;
drop table if exists boleto
;
drop table if exists cartao
;
drop table if exists locacao
;

-- seguro
create table seguro
(
	nom_tipo	varchar(20)		not null,
    num_cnpj	char(18)		not null,
    vlr_seguro	float(2)		not null,
    
    constraint pk_seguro primary key(nom_tipo, num_cnpj)
) engine='InnoDB'
;

-- cliente
create table cliente
(
	num_cpf_cliente char(14)	   	not null,
    num_cnh		    char(11)		not null,
    nom_cliente     varchar(45)		not null,
	num_telefone    char(14)	  	not null,
    nom_rua         varchar(20)		not null,
    num_residencia  varchar(3)  	not null,
    nom_bairro      varchar(40) 	not null,
    nom_cidade      varchar(30) 	not null,
    sig_uf		    char(2)     	not null,
    num_cep		    char(9)	  		not null,
    nom_tipo	    varchar(10)		not null,
    num_cnpj	    char(18)		not null,
    
    constraint pk_cliente primary key(num_cpf_cliente, num_cnh),
    constraint fk_cliente_seguro
		foreign key (nom_tipo, num_cnpj)
        references seguro (nom_tipo, num_cnpj)
) engine='InnoDB'
;

-- funcionario
create table funcionario
(
	num_cpf_funcionario		char(14)	not null,
    num_carteira_trabalho	char(11)	not null,
    nom_funcionario			varchar(40) not null,
    vlr_salario				float(6.2)	not null,
    num_telefone			char(14)	not null,
    nom_email				varchar(45)	not null,
    num_cpf_cliente			char(14)	not null,
    num_cnh		   			char(11)	not null,
    
    constraint pk_funcionario primary key(num_cpf_funcionario, num_carteira_trabalho),
    constraint fk_funcionario_cliente
		foreign key (num_cpf_cliente, num_cnh)
        references cliente (num_cpf_cliente, num_cnh)
)engine='InnoDB'
;

-- proprietario
create table proprietario
(
	num_cpf_proprietario char(14)	    not null,
    nom_proprietario     varchar(40)    not null,
    num_cpf_funcionario		char(14)	not null,
    num_carteira_trabalho	char(11)	not null,
    
    constraint pk_pessoa primary key(num_cpf_proprietario),
    constraint fk_proprietario_funcionario
		foreign key (num_cpf_funcionario, num_carteira_trabalho)
        references funcionario (num_cpf_funcionario, num_carteira_trabalho)
) engine='InnoDB'
;

-- veiculo
create table veiculo
(
	num_placa			 char(7)	 	not null,
    num_chassi			 char(17)		not null,
    dsc_cor				 varchar(10)	not null,
    dsc_tipo			 varchar(45)	not null,
    num_cpf_proprietario char(14)	    not null,
    
    constraint pk_veiculo primary key(num_placa, num_chassi),
    constraint fk_veiculo_proprietario
		foreign key (num_cpf_proprietario)
        references proprietario (num_cpf_proprietario)
)engine='InnoDB'
;

-- carro
create table carro
(
	nom_modelo			 varchar(15)    		not null,
	nom_marca			 varchar(17)			not null,
    dsc_motor_carro		 char(3)				not null,
    num_passageiros		 tinyint unsigned		not null,
    num_portas			 tinyint unsigned		not null,
	num_placa			 char(7)	 			not null,
    num_chassi			 char(17)				not null,
    
    constraint pk_carro primary key(num_placa, num_chassi),
	constraint fk_carro_veiculo
		foreign key (num_placa, num_chassi)
        references veiculo (num_placa, num_chassi)
        
)engine='InnoDB'
;

-- caminhao
create table caminhao
(
	nom_modelo			 varchar(20)   			not null,
	nom_marca			 varchar(17)			not null,
    dsc_motor_caminhao	 varchar(11)				not null,
    num_eixo			 tinyint unsigned		not null,
	num_placa			 char(7)	 			not null,
    num_chassi			 char(17)				not null,
    
    constraint pk_caminhao primary key(num_placa, num_chassi),
	constraint fk_caminhao_veiculo
		foreign key (num_placa, num_chassi)
        references veiculo (num_placa, num_chassi)
        
)engine='InnoDB'
;

-- moto
create table moto
(
	nom_modelo			 varchar(15)    not null,
	nom_marca			 varchar(17)	not null,
    dsc_motor_moto		 char(4)		not null,
	num_placa			 char(7)	 	not null,
    num_chassi			 char(17)		not null,
    
    constraint pk_moto primary key(num_placa, num_chassi),
	constraint fk_moto_veiculo
		foreign key (num_placa, num_chassi)
        references veiculo (num_placa, num_chassi)
        
)engine='InnoDB'
;

-- pagamento
create table pagamento
(
	id_pagamento		int 	unsigned auto_increment not null,
    dsc_forma_pagamento char(6) 						not null,
    vlr_pagamento		float(6.2)						not null,
    
    constraint pk_pagamento primary key(id_pagamento)
)engine='InnoDB'
;

-- boleto
create table boleto
(
	num_cod_barra	varchar(48)					not null,
    dat_vencimento	datetime					not null,
    nom_banco		varchar(25) 				not null,
    id_pagamento	int unsigned auto_increment not null,
    
    constraint pk_boleto primary key(num_cod_barra, id_pagamento),
    constraint fk_boleto_pagamento
		foreign key (id_pagamento)
        references pagamento (id_pagamento)
)engine='InnoDB'
;

-- cartao
create table cartao
(
	num_cartao		varchar(16)	     				 not null,
    num_parcelas	tinyint  unsigned				 not null,
    id_pagamento	int 	 unsigned auto_increment not null,
    cod_seguranca	int 	 unsigned				 not null,
    dat_validade	datetime 						 not null,
    
    constraint pk_cartao primary key(num_cartao, id_pagamento),
    constraint fk_cartao_pagamento
		foreign key (id_pagamento)
        references pagamento (id_pagamento)
)engine='InnoDB'
;

-- locacao
create table locacao
(
	num_cpf_cliente       char(14)	   			      not null,
    num_cnh		    	  char(11)					  not null,
    num_placa			  char(7)	 				  not null,
    num_chassi			  char(17)					  not null,
    
    dat_locacao			  datetime					  not null,
    nom_empregado_locador varchar(45)				  not null,
    id_pagamento		  int unsigned auto_increment not null,
    
    constraint pk_locacao primary key(num_cpf_cliente, num_cnh, num_placa,  num_chassi),
        
	constraint fk_locacao_cliente
		foreign key (num_cpf_cliente, num_cnh)
        references cliente (num_cpf_cliente, num_cnh),
        		
	constraint fk_locacao_veiculo
		foreign key (num_placa, num_chassi)
        references veiculo (num_placa, num_chassi),
	
    constraint fk_locacao_pagamento
		foreign key (id_pagamento)
        references pagamento (id_pagamento)
        
)engine='InnoDB'
;

