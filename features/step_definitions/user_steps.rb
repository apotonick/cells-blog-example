Given /^a user exists with the login "([^\"]*)" and the password "([^\"]*)"$/ do |login, password|
  @user = User.create!(:login => login, :password => password, :password_confirmation => password)
end

Given /^I am logged in as them$/ do
  steps(%Q{
    Given I am on the homepage
    And I follow "Login"
    And I fill in "Login" with "#{@user.login}"
    And I fill in "Password" with "#{@user.password}"
    And I press "Login"
    Then I should see "You are now logged in as #{@user.login}"
  })
end
