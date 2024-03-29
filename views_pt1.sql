CREATE VIEW listagem_geral_medico as 
select * from tbl_medico;

Select * from listagem_geral_medico
where cod_medico = 1;



##LISTAGEM MEDICO/ESPECIALIDADE####
create view listagem_medico_especialidade_aula as
select tm.nome_medico, tm.telefone_medico, tm.celular_medico, tm.email_medico
from tbl_medico as tm
inner join tbl_especialidade as te
on tm.cod_especialidade = te.cod_especialidade;


## SALA/ESPECIALIDADE###

create view listagem_sala_especialidade_aula as
select
ts.nro_sala,
te.nome_especialidade
from tbl_sala as ts
inner join tbl_especialidade as te
on te.cod_especialidade = ts.cod_especialidade;

## LISTAGEM AGENDA ##
create view agenda_aula as
select
ta.data_cirurgia, ta.status_cirurgia,
ts.nro_sala,
tm.nome_medico, tm.celular_medico,
tp.nome_paciente, tp.celular_paciente,
tp.nome_responsavel, tp.telefone_responsavel
from tbl_agenda as ta
inner join tbl_sala as ts 
on ta.cod_sala = ts.cod_sala
inner join tbl_medico as tm
on ta.cod_medico = tm.cod_medico
inner join tbl_paciente as tp
on ta.cod_paciente= tp.cod_paciente;


## Testando as views ####
SELECT * FROM listagem_medico_especialidade_aula;
SELECT * FROM listagem_sala_especialidade_aula;
SELECT * FROM agenda_aula;

##deletar views 
drop view listagem_medico_especialidade_aula;
drop view listagem_sala_especialidade_aula;
drop view agenda_aula;



