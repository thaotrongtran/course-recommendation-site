Feature: Add a new review entry
  
    as a student 
    so that i can contribute content to fellow students 
    I want to be able to add a new review 

Scenario: As a student I want to be able to navigate from the homepage to the new review form
  Given I am on the homepage
  When I click on the "Create a new review" link
  Then I should be on the "New Course Review" page
  And  I should see "evaluation" field
  
