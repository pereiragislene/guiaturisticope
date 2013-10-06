DROP DATABASE IF EXISTS dadospe;
CREATE DATABASE dadospe CHARSET = Latin1 COLLATE = latin1_swedish_ci;
USE dadospe;

CREATE TABLE museu (
  mu_id INT AUTO_INCREMENT PRIMARY KEY,
  mu_nome CHAR(50),
  mu_descricao VARCHAR(600),
  mu_bairro CHAR(50),
  mu_logradouro CHAR(100),
  mu_latitude DECIMAL(10,8),
  mu_longitude DECIMAL(10,8)
);

CREATE TABLE teatro (
  te_id INT AUTO_INCREMENT PRIMARY KEY,
  te_nome CHAR(50),
  te_descricao VARCHAR(600),
  te_bairro CHAR(50),
  te_logradouro CHAR(100),
  te_telefone CHAR(20),
  te_latitude DECIMAL(10,8),
  te_longitude DECIMAL(10,8)
);

CREATE TABLE mercado (
  me_id INT AUTO_INCREMENT PRIMARY KEY,
  me_nome CHAR(50),
  me_descricao VARCHAR(600),
  me_bairro CHAR(50),
  me_latitude DECIMAL(10,8),
  me_longitude DECIMAL(10,8)
);

CREATE TABLE ponte (
  pon_id INT AUTO_INCREMENT PRIMARY KEY,
  pon_nome CHAR(50),
  pon_descricao VARCHAR(600),
  pon_bairro CHAR(50),
  pon_latitude DECIMAL(10,8),
  pon_longitude DECIMAL(10,8)
);

CREATE TABLE shopping (
  sho_id INT AUTO_INCREMENT PRIMARY KEY,
  sho_nome CHAR(50),
  sho_descricao VARCHAR(600),
  sho_bairro CHAR(50),
  sho_logradouro CHAR(100),
  sho_latitude DECIMAL(10,8),
  sho_longitude DECIMAL(10,8)
);


CREATE TABLE feiralivre (
  fei_id INT AUTO_INCREMENT PRIMARY KEY,
  fei_nome CHAR(50),
  fei_localizacao CHAR(100),
  fei_dias CHAR(50),
  fei_horario CHAR(50),
  fei_observacao CHAR(50),
  fei_latitude DECIMAL(10,8),
  fei_longitude DECIMAL(10,8)
);

