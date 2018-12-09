Feature: As a member of the course
         I can manage your members
         To detail specific data of its members

Scenario: View the detail of the correct student, based on which was chosen from the list
    Given I am a member of the course
    Given I am on the "Home Page"
    Given the student "Alex", with CPF "023.745.113-02", is registered
    When I select "Detalhes" from student "Alex"
    Then I see that the student "Alex", with CPF "023.745.113-02", is registered in the class "Manhã 01", course "CC" and area "Ciências Exatas"

Scenario: Viewing student statistics
    Given I am a member of the course
    Given I am on the "Home Page"
    Given The student "André", with CPF "2.153.722-88", is registered
    When I select the "Estatísticas" option of the student "André"
    Then I see that the student "André", with CPF "2.153.722-88", made the entrance exam "UFPE CC 2019_1" and "USP CC 2019_1"
    Then Was "Aprovado" at "UFPE CC 2019_1"
    Then Was "Reprovado" at "USP CC 2019_1"

Scenario: Redirection to list of entrance exams
    Given I am a member of the course
    Given I am on the "Home Page"
    Given The student "Felipe", with CPF "197.804.125-06", is registered
    When I select the "Estatísticas" option of the student "Felipe"
    When I select the entrance exam "UFPE CC 2019_1"
    Then I can see the list of students who participated in the entrance exam "UFPE CC 2019_1"
    Then The student "Felipe", with CPF "197.804.125-06", in this list

Scenario: Redirection to student class list
    Given I am a member of the course
    Given I am on the "Home Page"
    Given The student "João", with CPF "019.984.101-22", is registered
    When I select "Detalhes" from student "João"
    When I select the class "Manhã 02" to which it is part
    Then I can see the list of all the students that belong to the class "Manhã 02"
    Then The student "João", with CPF "019.984.101-22", in this list

Scenario: Redirection to student area list
    Given I am a member of the course
    Given I am on the "Home Page"
    Given The student "Sabrina", with CPF "112.973.440-89", is registered
    When I select "Detalhes" from student "Sabrina"
    When I select the area "Ciências Naturais" to which it is part
    Then I can see the list of all the students that are part of the area "Ciências Naturais"
    Then The student "Sabrina", with CPF "112.973.440-89", in this list