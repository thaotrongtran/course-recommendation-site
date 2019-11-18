Feature: View all reviews
  
    As a student 
    So that I can access content from fellow students 
    I want to be able to add a new review 

Scenario: As a student I want to be able to view all reviews from the home page
  Given I am on the homepage
  When I click on the "View all reviews" link
  Then I should be on the "Listing reviews" page
  And  I should see "Action" field