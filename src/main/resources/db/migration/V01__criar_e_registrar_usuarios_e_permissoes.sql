CREATE TABLE base.usuario (
	codigo SERIAL PRIMARY KEY,
	nome VARCHAR(50) NOT NULL,
	email VARCHAR(50) NOT NULL,
	senha VARCHAR(150) NOT NULL
);

CREATE TABLE base.permissao (
	codigo SERIAL PRIMARY KEY,
	descricao VARCHAR(50) NOT NULL
);

CREATE TABLE base.usuario_permissao (
	codigo_usuario INTEGER NOT NULL,
	codigo_permissao INTEGER NOT NULL,
	PRIMARY KEY (codigo_usuario, codigo_permissao),
	FOREIGN KEY (codigo_usuario) REFERENCES base.usuario(codigo),
	FOREIGN KEY (codigo_permissao) REFERENCES base.permissao(codigo)
);

INSERT INTO base.usuario (codigo, nome, email, senha) values (1, 'Administrador', 'admin@admin.com', '$2a$10$l4TKw2RXr1Put36T3qkEruXObOVGhqebp4g0f1HTAZ07smXDGkCG.');
INSERT INTO base.usuario (codigo, nome, email, senha) values (2, 'Maria Silva', 'maria@silva.com', '$2a$10$l4TKw2RXr1Put36T3qkEruXObOVGhqebp4g0f1HTAZ07smXDGkCG.');

