Feature: Creating a comment
  In order to let my opinions of posts be known
  As a user
  I want to post comments willy nilly
  
  Background:
    Given a post exists with the title "My first post" and text "Text"
    And a user exists with the login "Radar" and the password "password"
    And I am logged in as them
    And I am on the homepage
    When I follow "My first post"
    And I follow "New Comment"
    
  Scenario: Posting a comment
    And I fill in "Text" with "This is a really great post."
    And I press "Submit"
    Then I should see "Comment has been created."
  
  Scenario: Posting a comment with "LOL" is useless
    And I fill in "Text" with "LOL"
    And I press "Submit"
    Then I should see "Comment has not been created."
    
    
  
  
  

  
