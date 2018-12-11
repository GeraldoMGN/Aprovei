import { defineSupportCode } from 'cucumber';

defineSupportCode(function ({ Given, When, Then }) {
    //Scenario 11|12|13|14|15
    Given (/^I am a member of the course$/, async () => {});
    //Scenario 11|12|13|14|15
    Given (/^I am on the "(.*?)"$/, async (NameHomePage) => {});
    //Scenario 11|12|13|14|15
    Given (/^The student "(.*?)", with CPF "(.*?)", is registered$/, async (NameStudent, CPF) => {});


    //Scenario 11|14|15
    When (/^I select "(.*?)" from student "(.*?)"$/, async (NameDetails, NameStudent) => {});
    //Scenario 12
    When (/^I select the "(.*?)" option of the student "(.*?)"$/, async (NameStatistics, NameStudent) => {});
    //Scenario 13
    When (/^I view the "(.*?)" of student "(.*?)"$/, async (NameStatistics, NameStudent) => {});
    //Scenario 13
    When (/^I select the entrance exam "(.*?)"$/, async (NameEntranceExam) => {});
    //Scenario 14
    When (/^I select the class "(.*?)" to which it is part$/, async (NameClass) => {});
    //Scenario 15
    When (/^I select the area "(.*?)" to which it is part$/, async (NameArea) => {});


    //Scenario 11
    Then (/^I see that the student "(.*?)", with CPF "(.*?)", is registered in the class "(.*?)", course "(.*?)" and area "(.*?)"$/, async (NameStudent, CPF, NameClass, NameCourse, NameArea) => {});
    //Scenario 12
    Then (/^I see that the student "(.*?)", with CPF "(.*?)", made the entrance exam "(.*?)" and "(.*?)"$/, async (NameStudent, CPF, NameEntranceExam01, NameEntranceExam02) => {});
    //Scenario 12
    Then (/^Was "(.*?)" at "(.*?)"$/, async (NameEntranceExamOption, NameEntranceExam) => {});
    //Scenario 13
    Then (/^I can see the list of students who participated in the entrance exam "(.*?)"$/, async (NameEntranceExam) => {});
    //Scenario 13|14|15
    Then (/^The student "(.*?)", with CPF "(.*?)", in this list$/, async (NameStudent, CPF) => {});
    //Scenario 14
    Then (/^I can see the list of all the students that belong to the class "(.*?)"$/, async (NameClass) => {});
    //Scenario 15
    Then (/^I can see the list of all the students that are part of the area "(.*?)"$/, async (NameArea) => {});
});