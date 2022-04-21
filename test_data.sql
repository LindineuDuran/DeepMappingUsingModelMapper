set foreign_key_checks = 0;

delete from cidade;
delete from cozinha;
delete from estado;
delete from forma_pagamento;
delete from grupo;
delete from grupo_permissao;
delete from permissao;
delete from produto;
delete from restaurante;
delete from restaurante_forma_pagamento;
delete from usuario;
delete from usuario_grupo;
delete from restaurante_usuario_responsavel;

set foreign_key_checks = 1;

alter table cidade auto_increment = 1;
alter table cozinha auto_increment = 1;
alter table estado auto_increment = 1;
alter table forma_pagamento auto_increment = 1;
alter table grupo auto_increment = 1;
alter table permissao auto_increment = 1;
alter table produto auto_increment = 1;
alter table restaurante auto_increment = 1;
alter table usuario auto_increment = 1;

insert into cozinha (id,nome) values (1, 'Tailandesa');
insert into cozinha (id,nome) values (2, 'Indiana');
insert into cozinha (id,nome) values (3, 'Mexicana');
insert into cozinha (id,nome) values (4, 'Árabe');
insert into cozinha (id,nome) values (5, 'Japonesa');
insert into cozinha (id,nome) values (6, 'Argentina');
insert into cozinha (id,nome) values (7, 'Brasileira');

insert into estado (id, nome) values (1, 'Minas Gerais');
insert into estado (id, nome) values (2, 'São Paulo');
insert into estado (id, nome) values (3, 'Ceará');

insert into cidade (id, nome, estado_id) values (1, 'Uberlândia', 1);
insert into cidade (id, nome, estado_id) values (2, 'Belo Horizonte', 1);
insert into cidade (id, nome, estado_id) values (3, 'São Paulo', 2);
insert into cidade (id, nome, estado_id) values (4, 'Campinas', 2);
insert into cidade (id, nome, estado_id) values (5, 'Fortaleza', 3);

insert into restaurante (id,cozinha_id,nome,taxa_frete,data_atualizacao,data_cadastro,endereco_cidade_id,endereco_cep,endereco_logradouro,endereco_numero,endereco_complemento,endereco_bairro)
values
  (1,6,"Enim Non Foundation",6.66,utc_timestamp,utc_timestamp,2,"55471-146","2883 Pharetra. St.","326","U1M 3D6","PE"),
  (2,3,"Luctus Felis PC",8.12,utc_timestamp,utc_timestamp,3,"60524-880","6445 Tortor, Avenue","778","R1J 4M5","BA"),
  (3,1,"Nec Enim Nunc Company",0.62,utc_timestamp,utc_timestamp,3,"73762-458","185-6978 Elementum, Street","880","Y2B 4C5","CE"),
  (4,6,"Mus LLC",5.88,utc_timestamp,utc_timestamp,5,"17241-522","828-3954 Justo. Avenue","555","L9Z 2X9","Goiás"),
  (5,3,"A Neque LLP",5.76,utc_timestamp,utc_timestamp,4,"36849644","275-483 Sapien, St.","014","R9M 6Z8","Rio de Janeiro"),
  (6,4,"Consequat Incorporated",5.67,utc_timestamp,utc_timestamp,3,"58638-185","Ap #376-7769 Ridiculus Av.","296","M5X 4V7","RS"),
  (7,5,"Eu Turpis Corporation",4.39,utc_timestamp,utc_timestamp,2,"83463-472","P.O. Box 371, 1560 Pellentesque Street","506","C1Q 5P3","Pará"),
  (8,7,"Ornare Lectus Foundation",5.26,utc_timestamp,utc_timestamp,2,"74705-071","574-7215 Lorem St.","687","K5Y 7X4","PB"),
  (9,2,"Integer Tincidunt Aliquam Inc.",6.21,utc_timestamp,utc_timestamp,3,"61567-443","P.O. Box 504, 3457 Vulputate Road","131","E4P 1G6","Santa Catarina"),
  (10,7,"Egestas Urna Industries",0.78,utc_timestamp,utc_timestamp,5,"56795-342","P.O. Box 999, 2579 Ipsum. Street","060","B1V 9X3","Minas Gerais"),
  (11,4,"Ut Molestie Corp.",7.97,utc_timestamp,utc_timestamp,1,"58277-821","Ap #209-8923 Nulla. St.","138","O8I 5C8","PE"),
  (12,6,"Malesuada Ut Sem Foundation",8.77,utc_timestamp,utc_timestamp,3,"13853-265","Ap #913-5690 Neque St.","041","Z1B 1T1","Paraná"),
  (13,1,"Nulla Vulputate Dui Company",7.91,utc_timestamp,utc_timestamp,4,"88428-034","841-6517 Sit Rd.","258","U1D 0U6","Santa Catarina"),
  (14,6,"Sed Consequat Auctor LLP",2.87,utc_timestamp,utc_timestamp,5,"40418-324","P.O. Box 488, 5155 Nibh. Street","339","K7B 8Z8","Bahia"),
  (15,6,"Gravida Consulting",4.45,utc_timestamp,utc_timestamp,4,"88642-443","P.O. Box 421, 4460 Nulla. Avenue","312","F3W 3W4","BA"),
  (16,3,"Auctor Mauris Vel LLP",1.69,utc_timestamp,utc_timestamp,5,"18483-899","P.O. Box 858, 746 Eleifend. Road","147","C4V 1A6","Goiás"),
  (17,5,"Eu Odio Limited",3.31,utc_timestamp,utc_timestamp,3,"52351-877","912-4785 Laoreet Ave","663","T3C 9H0","PA"),
  (18,3,"Cras Dictum Limited",6.92,utc_timestamp,utc_timestamp,2,"66160-286","450-2521 Non, Rd.","503","T7I 9S7","SC"),
  (19,3,"Odio Semper LLP",9.68,utc_timestamp,utc_timestamp,1,"50937-511","710-2705 Adipiscing. Street","421","A2B 8F5","MG"),
  (20,1,"Eleifend LLP",6.26,utc_timestamp,utc_timestamp,3,"67672-734","Ap #478-955 Cum Road","460","O1W 7W4","Paraná"),
  (21,4,"Eget Magna Industries",0.68,utc_timestamp,utc_timestamp,2,"91250-972","Ap #935-1493 Parturient Avenue","524","F4I 1H7","PB"),
  (22,5,"Vel Turpis Corporation",1.09,utc_timestamp,utc_timestamp,3,"23172-787","Ap #301-8573 Sit Ave","628","F9D 5G1","RS"),
  (23,7,"Dui Augue Eu Incorporated",7.21,utc_timestamp,utc_timestamp,2,"75753-298","354-7856 Magna. Av.","837","L5F 1N1","Goiás"),
  (24,1,"Feugiat Nec Diam LLP",5.52,utc_timestamp,utc_timestamp,1,"89557-820","P.O. Box 375, 1541 Erat St.","574","R1I 7U5","Goiás"),
  (25,6,"Tempor Arcu Inc.",3.41,utc_timestamp,utc_timestamp,2,"65640-625","9064 Cras Av.","682","Z4H 1J2","PB"),
  (26,6,"Ante Blandit Viverra Ltd",3.82,utc_timestamp,utc_timestamp,2,"88657-647","Ap #226-2429 Amet Rd.","744","F5G 5L1","RJ"),
  (27,3,"Dui Semper Associates",1.86,utc_timestamp,utc_timestamp,2,"88252-912","7069 Dictum. St.","582","O2Q 7R8","PB"),
  (28,5,"Accumsan Neque Company",7.93,utc_timestamp,utc_timestamp,2,"84794-633","P.O. Box 119, 5116 Auctor Rd.","256","V0X 3J4","Rio de Janeiro"),
  (29,5,"Nunc Lectus Foundation",2.01,utc_timestamp,utc_timestamp,1,"65475-955","Ap #270-7481 Egestas Rd.","079","N4G 2T1","Rio Grande do Sul"),
  (30,5,"Ullamcorper Duis PC",6.12,utc_timestamp,utc_timestamp,5,"98316-128","P.O. Box 299, 3935 Cum Rd.","737","V3O 4F1","São Paulo");

insert into forma_pagamento (id, descricao, data_atualizacao) values (1, 'Cartão de crédito', utc_timestamp);
insert into forma_pagamento (id, descricao, data_atualizacao) values (2, 'Cartão de débito', utc_timestamp);
insert into forma_pagamento (id, descricao, data_atualizacao) values (3, 'Dinheiro', utc_timestamp);

insert into permissao (id, nome, descricao) values (1, 'CONSULTAR_COZINHAS', 'Permite consultar cozinhas');
insert into permissao (id, nome, descricao) values (2, 'EDITAR_COZINHAS', 'Permite editar cozinhas');

insert into restaurante_forma_pagamento (restaurante_id, forma_pagamento_id) values (1,1), (1,2), (1,3), (2,1),  (2,3), (3,1), (3,2), (3,3), (4,1), (4,2), (5,1), (5,2), (5,3), (6,1), (6,2), (6,3), (7,1), (8,1), (8,2), (8,3), (9,1), (9,2), (9,3), (10,1),  (10,3), (11,1), (11,2), (12,1), (12,2), (12,3), (13,1), (13,2), (14,1),  (14,3), (15,1), (15,2), (15,3), (16,1), (16,2), (16,3), (17,1), (17,2), (17,3), (18,2), (18,3), (19,1), (19,2), (20,1), (20,2), (20,3), (21,1), (22,1), (22,2), (22,3), (23,1), (23,2), (23,3), (24,1), (24,2), (24,3), (25,1), (25,2), (25,3), (26,1), (26,2), (26,3), (27,1), (27,2), (27,3), (28,1), (28,2), (28,3), (29,1), (29,2), (29,3), (30,1), (30,2), (30,3);

insert into produto (nome, descricao, preco, ativo, restaurante_id) values ('Porco com molho agridoce', 'Deliciosa carne suína ao molho especial', 78.90, 0, 1);
insert into produto (nome, descricao, preco, ativo, restaurante_id) values ('Camarão tailandês', '16 camarões grandes ao molho picante', 110, 1, 1);
insert into produto (nome, descricao, preco, ativo, restaurante_id) values ('Salada picante com carne grelhada', 'Salada de folhas com cortes finos de carne bovina grelhada e nosso molho especial de pimenta vermelha', 87.20, 1, 2);
insert into produto (nome, descricao, preco, ativo, restaurante_id) values ('Garlic Naan', 'Pão tradicional indiano com cobertura de alho', 21, 1, 3);
insert into produto (nome, descricao, preco, ativo, restaurante_id) values ('Murg Curry', 'Cubos de frango preparados com molho curry e especiarias', 43, 1, 3);
insert into produto (nome, descricao, preco, ativo, restaurante_id) values ('Bife Ancho', 'Corte macio e suculento, com dois dedos de espessura, retirado da parte dianteira do contrafilé', 79, 1, 6);
insert into produto (nome, descricao, preco, ativo, restaurante_id) values ('T-Bone', 'Corte muito saboroso, com um osso em formato de T, sendo de um lado o contrafilé e do outro o filé mignon', 89, 1, 6);
insert into produto (nome, descricao, preco, ativo, restaurante_id) values ('Sanduíche X-Tudo', 'Sandubão com muito queijo, hamburger bovino, bacon, ovo, salada e maionese', 19, 1, 7);
insert into produto (nome, descricao, preco, ativo, restaurante_id) values ('Espetinho de Cupim', 'Acompanha farinha, mandioca e vinagrete', 8, 1, 8);

insert into grupo (id, nome) values (1, 'Gerente'), (2, 'Vendedor'), (3, 'Secretária'), (4, 'Cadastrador');

insert into grupo_permissao (grupo_id, permissao_id) values (1, 1), (1, 2), (2, 1), (2, 2), (3, 1);

insert into usuario (id, nome, email, senha, data_cadastro) values
(1, 'João da Silva', 'lduran.tab+joaodasilva@gmail.com', '123', utc_timestamp),
(2, 'Maria Joaquina', 'lduran.tab+mariajoaquina@gmail.com', '123', utc_timestamp),
(3, 'José Souza', 'lduran.tab+josesouza@gmail.com', '123', utc_timestamp),
(4, 'Sebastião Martins', 'lduran.tab+sebastiaomartins@gmail.com', '123', utc_timestamp),
(5, 'Manoel Lima', 'lduran.tab+manoellima@gmail.com', '123', utc_timestamp),
(6, 'Débora Mendonça', 'lduran.tab+deboramendonça@gmail.com', '123', utc_timestamp),
(7, 'Carlos Lima', 'lduran.tab+carloslima@gmail.com', '123', utc_timestamp);

insert into usuario_grupo (usuario_id, grupo_id) values (1, 1), (1, 2), (2, 2);

insert into restaurante_usuario_responsavel (restaurante_id, usuario_id) values (1, 5), (3, 5);