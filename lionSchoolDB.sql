use db_Lion_school;

show tables;

create table tbl_aluno(

id int  UNSIGNED not null auto_increment primary key,
nome varchar (80) not null,
foto varchar (100)  not null,
sexo varchar(1),
rg varchar(15) not null,
cpf varchar (18) not null,
email varchar(256) not null,               
telefone varchar (19),
celular varchar(19),
data_nascimento date not null,
unique index(id)
);

create table tbl_curso(

id int  UNSIGNED not null auto_increment primary key,
nome varchar (50) not null,
disciplinas varchar (130) not null,
carga_horaria int not null,
icone varchar (200),
sigla varchar (7),
unique index (id)




);
alter table tbl_curso drop column disciplinas ;

create table tbl_aluno_curso(
id int  unsigned not null auto_increment primary key,
id_aluno int unsigned not null,
id_curso int unsigned not null,
matricula varchar (15),
status_aluno varchar (10) not null,


#programacao para definir a chave estrangeira 
foreign key(id_aluno) #define qual atributo sera uma fk
	references tbl_aluno(id),#define onde vira a pk
foreign key (id_curso)#define qual atributo sera uma fk
		references tbl_curso(id),##define onde vira a pk

	unique index(id)
);

drop table tbl_usuario;

insert into tbl_aluno(nome, 
					  foto,
                      sexo,
                      rg,
                      cpf,
                      email,
                      telefone,
                      celular,
                      data_nascimento)
	values 			  ('José da Silva', 'https://uploads.metropoles.com/wp-content/uploads/2022/07/22153152/Caneta-azul-1-600x400.jpg', 
					  'M',
					  '34.456.666.-1',
					  '300.567.456-23',
					  'jose@gmail.com',
					  '011 4556-7777',
					  '011 9 369-8349',
					  '1965-04-10'
						);
 use db_Lion_school  ;                     
                        
                        
                        
insert into tbl_aluno(nome, 
					  foto,
                      sexo,
                      rg,
                      cpf,
                      email,
                      telefone,
                      celular,
                      data_nascimento)
	values 			  ('Maria Arrivalda Rodrigues', 'https://twitter.com/DenioDeninhobh/status/621794137487114241/photo/1', 
					  'F',
					  '34.436.765.-1',
					  '312.557.556-73',
					  'maria@gmail.com',
					  '011 4556-9823',
					  '011 9 987-8349',
					  '1965-05-20'
						);    
                        
insert into tbl_aluno(nome, 
					  foto,
                      sexo,
                      rg,
                      cpf,
                      email,
                      telefone,
                      celular,
                      data_nascimento)
	values 			  ('Raphael Anao 22', 'https://pbs.twimg.com/profile_images/999343562490720256/95SBKHz1_400x400.jpg', 
					  'M',
					  '38.438.785.-9',
					  '312.557.556-73',
					  'rafaelanao22@gmail.com',
					  '011 4556-9823',
					  '011 9 987-8349',
					  '1990-05-20'
						);    
                        
   insert into tbl_curso(nome, 
						carga_horaria,
                        icone,
                        sigla)
values
						('Desenvolvimeto de Sistemas',
                        'https://image.shutterstock.com/image-vector/social-network-connection-global-business-600w-1683881017.jpg',
                        'DS'
                        );
                        
                        insert into tbl_curso(nome,
                                          carga_horaria,
                                          icone,
                                          sigla)
                                          values(
                                            'Marcel',
                                            '2000',
                                            'https://image.shutterstock.com/image-vectorsocial-network-connection-global-business-600w-1683881017.jpg',
                                            'RD'
                                          );
                                          
                                          
	select cast(id as float) as id ,
    nome,
    carga_horaria,
    icone,
    sigla
    from tbl_curso
    where id = 1;
                                         

		desc tbl_curso;
        
        
   
   
   
   
   
   
  