CREATE SEQUENCE public.endereco_id_endereco;

CREATE TABLE public.endereco(
	id_endereco 		BIGINT NOT NULL DEFAULT nextval('public.endereco_id_endereco'),
	local_endereco		VARCHAR NOT NULL,
	cidade				VARCHAR NOT NULL,
	estado				VARCHAR NOT NULL,
	cep					VARCHAR NOT NULL,
        CONSTRAINT id_endereco PRIMARY KEY (id_endereco)
);

CREATE SEQUENCE public.contatos_id_contatos;

CREATE TABLE public.contatos(
	id_contatos 		BIGINT NOT NULL DEFAULT nextval('public.contatos_id_contatos'),
	email				VARCHAR NOT NULL,
	nome				VARCHAR NOT NULL,
	sobrenome			VARCHAR NOT NULL,
	telefone			VARCHAR NOT NULL,
	version				BIGINT NOT NULL,
	endereco	 		BIGINT NOT NULL,
        CONSTRAINT id_contatos PRIMARY KEY (id_contatos),
  	CONSTRAINT endereco_contatos_fk 
	FOREIGN KEY (endereco)
	REFERENCES endereco (id_endereco)
	ON UPDATE CASCADE 		
);