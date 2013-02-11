Feature: Student Application 
In order to enroll of my child's school
As a Student parent
I want to make an application
 
Scenario: Make an application to school first time
  Given I am at application form
  When I enter student fullname
  And I fill in student ID Number
  And I fill in student birthday
  And I fill in student gender
  And I fill in parent fullname
  And I click register button
  Then I should see "Process is completed succesfully" message
