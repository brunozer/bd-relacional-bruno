## relacionamento sala/especialidade

ALTER TABLE tbl_sala ADD constraint FK_ESPECIALIDADE
foreign key (cod_especialidade)
references tbl_especialidade(cod_especialidade)
