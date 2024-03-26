#Criação de stored procedure with params para
# lisagem de dados de agendamento de cirurgia

DELIMITER $

Create procedure contagem_pacientes(out total_pacientes int(10))

BEGIN 
select count(cod_paciente) into  total_pacientes from tbl_paciente; 

END


$

call contagem_pacientes(@total_pacientes);


select @total_pacientes;
