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




