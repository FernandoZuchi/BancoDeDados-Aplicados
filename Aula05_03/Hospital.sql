select * from paciente where bairro != "Centro";

select * from doenca where descricao is null;

select * from hospital where bairro = "São Mateus";

select * from medico where rua = "Av. Barão do Rio Branco";

select * from paciente where datanasc > 01/01/1990;

select * from especialidade where especialidade = "Dermatologia";

select * from paciente where cpf = 12345678901;

select * from medico_hospital where dataInicio > 01/01/2000 and dataInicio < 08/02/2003;