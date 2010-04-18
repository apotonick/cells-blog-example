Feature: Creating posts
  In order to create posts
  As a writer
  I want an interface for it
  
  Background:
    Given a user exists with the login "Radar" and the password "password"
    And I am logged in as them
    And I am on the homepage
    When I follow "New Post"
    
  Scenario: Creating a post
    When I fill in "Title" with "This is my first post!"
    And I fill in "Text" with "This is my first post!"
    And I press "Submit"
    Then I should see "Post has been created"
  
  Scenario: Creating a post without a title should break
    When I fill in "Text" with "This is my first post!"
    And I press "Submit"
    Then I should see "Post has not been created."
    
  
  
  

  
