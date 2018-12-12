Feature: Separação das listas por turma, área, curso e vestibular

Scneário: Separação por vestibular
Given que eu estou na tela “home”, e 10 alunos fizeram o vestibular da UPE, e apenas 3 passaram sendo eles “João Rodrigues”, “Leticia Maria”, “Caio José”
When eu seleciono a opção de “vestibular”
And eu seleciono ao lado do nome “UPE”
Then eu sou redirecionado para a lista de alunos aprovados na UPE, e consigo visualizar os nomes de  “João Rodrigues”, “Leticia Maria”, “Caio José”.


Scneário: Separação por turmma
Given que eu estou na tela “home”, e 10 alunos fizeram o vestibular da UPE, e apenas 3 passaram sendo eles “João Rodrigues”, “Leticia Maria”, “Caio José”
When eu seleciono a opção de “Turma”
And eu clico no botão ao lado do nome “Manhã 1”
Then eu sou redirecionado para a lista de alunos aprovados da turma “Manhã 1”, e consigo visualizar os nomes de  “João Rodrigues”, “Leticia Maria”, “Caio José”.


Scneário: Separação por curso
Given que eu estou na tela “home”, e 10 alunos fizeram o vestibular da UPE, e apenas 3 passaram sendo eles “João Rodrigues”, “Leticia Maria”, “Caio José”
When eu seleciono a opção de “Curso”
And eu clico no botão ao lado do nome do Curso “Letras”
Then eu sou redirecionado para a lista de alunos aprovados no Curso “Letras”, e consigo visualizar os nomes de  “João Rodrigues”, “Leticia Maria”, “Caio José”.


Scneário: Separação por área
Given que eu estou na tela “home”, e 10 alunos fizeram o vestibular da UPE, e apenas 3 passaram sendo eles “João Rodrigues”, “Leticia Maria”, “Caio José”
When eu seleciono a opção de “Área”
And eu clico no botão ao lado do nome da área de “Humanas”
Then eu sou redirecionado para a lista de alunos aprovados na Área “Humanas”, e consigo visualizar os nomes de  “João Rodrigues”, “Leticia Maria”, “Caio José”.

Cenário 10: Ordenação por coluna
	Given que eu estou na tela “Resultados”, e 3 alunos fizeram o vestibular da UFRPE, “Rafael Veiga” obteve a nota “600”, “Pamella Bezerra” obteve a nota “660” e “Walber Nunes” obteve a nota “580”
	When eu opção opção de “Coluna”
	And eu seleciono o cabeçalho da coluna de nome “Nota”
	Then eu sou redirecionado para a lista ordenada em relação a nota e consigo visualizar os nomes na seguinte ordem “Pamella Bezerra”, “Rafael Veiga” e  “Walber Nunes”. 
