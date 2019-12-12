Feature: View all professors
  
    As a student 
    So that I can access content from fellow students 
    I want to be able to view all professors

Scenario: As a student I want to be able to view all professors from the home page
  Given I am on the homepage
  When I click on the "View all professors" link
  Then I should be on the "Listing professors" page
  And  I should see "professor" field