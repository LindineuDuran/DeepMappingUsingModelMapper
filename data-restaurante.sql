DROP TABLE IF EXISTS restaurante;

insert ignore into restaurante (id,cozinha_id,nome,taxa_frete,data_atualizacao,data_cadastro,endereco_cidade_id,endereco_cep,endereco_logradouro,endereco_numero,endereco_complemento,endereco_bairro)
values
  (1,6,"Enim Non Foundation","R$6,66","Jul 7, 2021","Oct 18, 2022",2,"55471-146","2883 Pharetra. St.","326","U1M 3D6","PE"),
  (2,3,"Luctus Felis PC","R$8,12","Jan 8, 2023","Feb 13, 2022",3,"60524-880","6445 Tortor, Avenue","778","R1J 4M5","BA"),
  (3,1,"Nec Enim Nunc Company","R$0,62","Sep 25, 2022","May 1, 2021",3,"73762-458","185-6978 Elementum, Street","880","Y2B 4C5","CE"),
  (4,6,"Mus LLC","R$5,88","Apr 30, 2022","Jan 23, 2023",5,"17241-522","828-3954 Justo. Avenue","555","L9Z 2X9","Goiás"),
  (5,3,"A Neque LLP","R$5,76","Jul 15, 2022","Mar 16, 2022",4,"36849644","275-483 Sapien, St.","014","R9M 6Z8","Rio de Janeiro"),
  (6,4,"Consequat Incorporated","R$5,67","Aug 24, 2022","Jun 28, 2022",3,"58638-185","Ap #376-7769 Ridiculus Av.","296","M5X 4V7","RS"),
  (7,5,"Eu Turpis Corporation","R$4,39","Sep 10, 2022","Mar 15, 2023",2,"83463-472","P.O. Box 371, 1560 Pellentesque Street","506","C1Q 5P3","Pará"),
  (8,7,"Ornare Lectus Foundation","R$5,26","May 10, 2022","Sep 14, 2022",2,"74705-071","574-7215 Lorem St.","687","K5Y 7X4","PB"),
  (9,2,"Integer Tincidunt Aliquam Inc.","R$6,21","Nov 20, 2021","May 2, 2022",3,"61567-443","P.O. Box 504, 3457 Vulputate Road","131","E4P 1G6","Santa Catarina"),
  (10,7,"Egestas Urna Industries","R$0,78","May 31, 2021","Jun 10, 2022",5,"56795-342","P.O. Box 999, 2579 Ipsum. Street","060","B1V 9X3","Minas Gerais"),
  (11,4,"Ut Molestie Corp.","R$7,97","Jul 12, 2022","Aug 29, 2022",1,"58277-821","Ap #209-8923 Nulla. St.","138","O8I 5C8","PE"),
  (12,6,"Malesuada Ut Sem Foundation","R$8,77","Oct 17, 2022","Aug 4, 2021",3,"13853-265","Ap #913-5690 Neque St.","041","Z1B 1T1","Paraná"),
  (13,1,"Nulla Vulputate Dui Company","R$7,91","Feb 10, 2022","Jan 18, 2022",4,"88428-034","841-6517 Sit Rd.","258","U1D 0U6","Santa Catarina"),
  (14,6,"Sed Consequat Auctor LLP","R$2,87","Jul 12, 2022","Mar 17, 2023",5,"40418-324","P.O. Box 488, 5155 Nibh. Street","339","K7B 8Z8","Bahia"),
  (15,6,"Gravida Consulting","R$4,45","Oct 2, 2021","May 29, 2022",4,"88642-443","P.O. Box 421, 4460 Nulla. Avenue","312","F3W 3W4","BA"),
  (16,3,"Auctor Mauris Vel LLP","R$1,69","Apr 19, 2022","Dec 2, 2022",5,"18483-899","P.O. Box 858, 746 Eleifend. Road","147","C4V 1A6","Goiás"),
  (17,5,"Eu Odio Limited","R$3,31","Feb 25, 2022","Jun 1, 2022",3,"52351-877","912-4785 Laoreet Ave","663","T3C 9H0","PA"),
  (18,3,"Cras Dictum Limited","R$6,92","Apr 13, 2022","Apr 8, 2022",2,"66160-286","450-2521 Non, Rd.","503","T7I 9S7","SC"),
  (19,3,"Odio Semper LLP","R$9,68","Jan 3, 2023","Dec 9, 2022",1,"50937-511","710-2705 Adipiscing. Street","421","A2B 8F5","MG"),
  (20,1,"Eleifend LLP","R$6,26","Nov 12, 2022","Aug 5, 2022",3,"67672-734","Ap #478-955 Cum Road","460","O1W 7W4","Paraná"),
  (21,4,"Eget Magna Industries","R$0,68","Jun 5, 2021","Sep 2, 2022",2,"91250-972","Ap #935-1493 Parturient Avenue","524","F4I 1H7","PB"),
  (22,5,"Vel Turpis Corporation","R$1,09","Jan 9, 2022","Sep 2, 2022",3,"23172-787","Ap #301-8573 Sit Ave","628","F9D 5G1","RS"),
  (23,7,"Dui Augue Eu Incorporated","R$7,21","Mar 27, 2022","Jul 15, 2021",2,"75753-298","354-7856 Magna. Av.","837","L5F 1N1","Goiás"),
  (24,1,"Feugiat Nec Diam LLP","R$5,52","Feb 14, 2023","Oct 30, 2021",1,"89557-820","P.O. Box 375, 1541 Erat St.","574","R1I 7U5","Goiás"),
  (25,6,"Tempor Arcu Inc.","R$3,41","Apr 10, 2022","Jun 28, 2022",2,"65640-625","9064 Cras Av.","682","Z4H 1J2","PB"),
  (26,6,"Ante Blandit Viverra Ltd","R$3,82","Jun 18, 2021","Aug 26, 2022",2,"88657-647","Ap #226-2429 Amet Rd.","744","F5G 5L1","RJ"),
  (27,3,"Dui Semper Associates","R$1,86","Dec 4, 2022","Dec 31, 2022",2,"88252-912","7069 Dictum. St.","582","O2Q 7R8","PB"),
  (28,5,"Accumsan Neque Company","R$7,93","Apr 5, 2022","Sep 21, 2022",2,"84794-633","P.O. Box 119, 5116 Auctor Rd.","256","V0X 3J4","Rio de Janeiro"),
  (29,5,"Nunc Lectus Foundation","R$2,01","Nov 7, 2022","Jul 21, 2022",1,"65475-955","Ap #270-7481 Egestas Rd.","079","N4G 2T1","Rio Grande do Sul"),
  (30,5,"Ullamcorper Duis PC","R$6,12","Nov 19, 2022","Aug 8, 2021",5,"98316-128","P.O. Box 299, 3935 Cum Rd.","737","V3O 4F1","São Paulo");
