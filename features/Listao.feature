Feature: University acceptance list submission

Scenario: Valid submission
	Given i am in the "Submissão de listão" page
	And the file "UFPE CC 2019_1.pdf" contains the students "Aluno1", "Aluno2" and "Aluno3"
	When i complete the name "UFPE CC 2019_1" of the university acceptance list
	And submit "UFPE CC 2019_1.pdf"
	Then i can see a message of successful submission
	And the students "Aluno1", "Aluno2" and "Aluno3" in the "UFPE CC 2019_1" list

Scenario: Invalid submission
	Given i am in the "Submissão de listão" page
	And the file "UFPE EC 2019_1.pdf" contains a unreadable formatting
	When i complete the name "UFPE EC 2019_1" of the university acceptance list
	And submit "UFPE EC 2019_1.pdf"
	Then i can see a message of unsuccessful submission
	And i can see there isn't a list named "UFPE EC 2019_1"

Scenario: Wrong file extension submission
	Given i am in the "Submissão de listão" page
	And the file "UPE EC 2019_1.csv" contains the students "Aluno4", "Aluno5" and "Aluno6"
	When i complete the name "UPE EC 2019_1" of the university acceptance list
	And submit "UPE EC 2019_1.csv"
	Then i can see a message of wrong file extension
	And i can see there isn't a list named "UPE EC 2019_1"
