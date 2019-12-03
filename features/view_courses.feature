Feature: View all courses
  
    As a student 
    So that I can access content from fellow students
    I want to be able to view all courses

Scenario: As a student I want to be able to view all professors from the home page
  Given I am on the homepage
  When I click on the "View all courses" link
  Then I should be on the "Listing courses" page
  And  I should see "course" field