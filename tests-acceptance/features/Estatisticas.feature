Feature: Exibição de Estatísticas por curso, turma, área e vestibular

Cenário: Visualização de dados por curso
Given que eu estou na tela “Estatísticas”, e dos 3 alunos que fizeram o vestibular da UPE para medicina, apenas o aluno “Jorge Amado” foi aprovado.
And as notas dos alunos “Jão Gabriel”, “Ozzy Osborne” e “Jorge Amado” são, “600”, “350” e “900”, respectivamente.
When eu seleciono a opção “Visualizar dados por Área”
And eu seleciono a opção “medicina”
Then eu vejo um campo informando que o curso teve 33% de aprovação
And eu vejo que a média geral foi “616,67”
	And eu vejo um link “Ver lista de aprovados”, que redireciona para a lista de aprovados no curso.


Cenário: Visualização de dados por turma
Given que eu estou na tela “Estatísticas”, e dos 3 alunos que participaram da turma “Pré Med Manhã”, apenas o aluno “Jorge Amado” foi aprovado.
And as notas dos alunos “Jão Gabriel”, “Ozzy Osborne” e “Jorge Amado” são, “600”, “350” e “900”, respectivamente.
When eu seleciono a opção “Visualizar dados por Turma”
And eu seleciono a opção “Pré Med Manhã”
Then eu vejo um campo informando que a turma teve 33% de aprovação
And eu vejo que a média geral foi “616,67”
	And eu vejo um link “Ver lista de aprovados”, que redireciona para a lista de aprovados da turma.


Cenário 19: Visualização de dados por área
	Given que eu estou na tela “Estatísticas”, e possuo 200 alunos aprovados, destes 26 são da área de “Ciências Biológicas”, “24” são da área “Ciências humanas”, “60” são da área de “Ciências Exatas” e “90” são da área de “Linguagens”
	When eu seleciono a opção “Área” 
	Then eu sou redirecionado para um gráfico me informando que ao total dos alunos aprovados “13%” são da área de “Ciências Biológicas”, “12%” são da área “Ciências humanas”, “30%” são da área de “Ciências Exatas” e “45%” são da área de “Linguagens”.

Cenário: Visualização de dados por vestibular
Given que eu estou na tela “Estatísticas”, e dos 3 alunos que fizeram o vestibular da UPE, apenas o aluno “Jorge Amado” foi aprovado.
And as notas dos alunos “Jão Gabriel”, “Ozzy Osborne” e “Jorge Amado” para este vestibular são, “600”, “350” e “900”, respectivamente.
When eu seleciono a opção “Visualizar dados por Vestibular”
And eu seleciono a opção “UPE”
Then eu vejo um campo informando que o vestibular teve 33% de aprovação
And eu vejo que a média geral foi “616,67”
	And eu vejo um link “Ver lista de aprovados”, que redireciona para a lista de aprovados no vestibular.
