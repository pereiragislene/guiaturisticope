USE dadospe;

-- load museu
LOAD DATA LOCAL INFILE '{%data_dir%}/museu.csv'
INTO TABLE museu CHARACTER SET utf8
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(@mu_nome,@mu_descricao,@mu_bairro,@mu_logradouro,@mu_latitude,@mu_longitude)
SET
mu_nome = nullif(@mu_nome,'(null)'),
mu_descricao = nullif(@mu_descricao,'(null)'),
mu_bairro = nullif(@mu_bairro,'(null)'),
mu_logradouro = nullif(@mu_logradouro,'(null)'),
mu_latitude = nullif(REPLACE(@mu_latitude,',','.'),'(null)'),
mu_longitude = nullif(REPLACE(@mu_longitude,',','.'),'(null)');

-- load teatro
LOAD DATA LOCAL INFILE '{%data_dir%}/teatro.csv'
INTO TABLE teatro CHARACTER SET utf8
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(@te_nome,@te_descricao,@te_bairro,@te_logradouro,@te_telefone,@te_latitude,@te_longitude)
SET
te_nome = nullif(@te_nome,'(null)'),
te_descricao = nullif(@te_descricao,'(null)'),
te_bairro = nullif(@te_bairro,'(null)'),
te_logradouro = nullif(@te_logradouro,'(null)'),
te_latitude = nullif(REPLACE(@te_latitude,',','.'),'(null)'),
te_longitude = nullif(REPLACE(@te_longitude,',','.'),'(null)');

-- load mercado
LOAD DATA LOCAL INFILE '{%data_dir%}/mercado.csv'
INTO TABLE mercado CHARACTER SET utf8
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(@me_nome,@me_descricao,@me_bairro,@me_latitude,@me_longitude)
SET
me_nome = nullif(@me_nome,'(null)'),
me_descricao = nullif(@me_descricao,'(null)'),
me_bairro = nullif(@me_bairro,'(null)'),
me_latitude = nullif(REPLACE(@me_latitude,',','.'),'(null)'),
me_longitude = nullif(REPLACE(@me_longitude,',','.'),'(null)');

-- load ponte
LOAD DATA LOCAL INFILE '{%data_dir%}/ponte.csv'
INTO TABLE ponte CHARACTER SET utf8
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(@pon_nome,@pon_descricao,@pon_bairro,@pon_latitude,@pon_longitude)
SET
pon_nome = nullif(@pon_nome,'(null)'),
pon_descricao = nullif(@pon_descricao,'(null)'),
pon_bairro = nullif(@pon_bairro,'(null)'),
pon_latitude = nullif(REPLACE(@pon_latitude,',','.'),'(null)'),
pon_longitude = nullif(REPLACE(@pon_longitude,',','.'),'(null)');

-- load ponte
LOAD DATA LOCAL INFILE '{%data_dir%}/shopping.csv'
INTO TABLE shopping CHARACTER SET utf8
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(@sho_nome,@sho_descricao,@sho_bairro,@sho_logradouro,@sho_latitude,@sho_longitude)
SET
sho_nome = nullif(@sho_nome,'(null)'),
sho_descricao = nullif(@sho_descricao,'(null)'),
sho_bairro = nullif(@sho_bairro,'(null)'),
sho_logradouro = nullif(@sho_logradouro,'(null)'),
sho_latitude = nullif(REPLACE(@sho_latitude,',','.'),'(null)'),
sho_longitude = nullif(REPLACE(@sho_longitude,',','.'),'(null)');

-- load feiralivre
LOAD DATA LOCAL INFILE '{%data_dir%}/feiralivre.csv'
INTO TABLE feiralivre CHARACTER SET utf8
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(@fei_nome,@fei_localizacao,@fei_dias,@fei_horario,@fei_observacao,@fei_latitude,@fei_longitude)
SET
fei_nome = nullif(@fei_nome,'(null)'),
fei_localizacao = nullif(@fei_localizacao,'(null)'),
fei_dias = nullif(@fei_dias,'(null)'),
fei_horario = nullif(@fei_horario,'(null)'),
fei_observacao = nullif(@fei_observacao,'(null)'),
fei_latitude = nullif(REPLACE(@fei_latitude,',','.'),'(null)'),
fei_longitude = nullif(REPLACE(@fei_longitude,',','.'),'(null)');
