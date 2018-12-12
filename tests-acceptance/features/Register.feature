Feature: Register

Cenário 1: Cadastro com planilha válida
	Given que eu estou na tela “Registro” da minha conta de usuário e não possuo uma lista de alunos cadastrada
	When eu seleciono a opção “Cadastrar alunos por planilha”
	And eu insiro uma planilha válida com um total de 20 alunos
	Then é retornado um  modal com a mensagem “Cadastro realizado com sucesso - 20 alunos cadastrados”
	And eu sou direcionado para a tela de Tabelas

Cenário 2: Cadastro com planilha inválida
	Given que eu estou na tela “Registro” da minha conta de usuário  e não possuo uma lista de alunos cadastrada
	When eu seleciono a opção cadastrar alunos por planilha
	And eu insiro uma planilha inválida com um total de 20 alunos
	Then é retornado um  modal com a mensagem “Planilha inválida - Tente novamente”
	And eu sou direcionado para a tela de Tabelas
