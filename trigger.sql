Use bd_clinica;
	
    
## creation delimitador de inicio da trigger !    
DELIMITER $ 


#Declaracao corpo da trigger

CREATE TRIGGER trg_delete_paciente before DELETE ON tbl_paciente 

for each row 
begin

insert into tbl_paciente_bkp 
set
cod_paciente= OLD.cod_paciente,
nome_paciente= OLD.nome_paciente,
telefone_paciente= OLD.telefone_paciente, 
celular_paciente= OLD.celular_paciente,
email_paciente= OLD.email_paciente,
nome_responsavel= OLD.nome_responsavel,
telefone_responsavel= OLD.telefone_responsavel,
date_delete = now();

END ## Fim trigger
$

DELIMITER $


CREATE TRIGGER trg_delete_aluno BEFORE DELETE ON tbl_alunos
FOR EACH ROW
BEGIN
    INSERT INTO tbl_alunos_bkp
    SET
        cod_aluno = OLD.cod_aluno,
        nome_aluno = OLD.nome_aluno,
        telefone_aluno = OLD.telefone_aluno,
        email_aluno = OLD.email_aluno,
        data_exclusao = NOW();
END$

DELIMITER ;



