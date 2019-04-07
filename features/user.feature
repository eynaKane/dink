Feature: User CRUD
  As a site administrator
  I should be able to CRUD user

Scenario: Create User
  Given I am on 'users' page
  When I click on 'New User'
  And I enter valid new user details
  And I click on 'Create User'
  Then I should see 'User was successfully created.'
  And I should see 'Jane Doe'

Scenario: Update User
  Given I have a new user
  And I am on 'users' page
  When I click on 'Edit'
  And I enter valid update user details
  And I click on 'Update User'
  Then I should see 'User was successfully updated.'
  And I should see 'Joe Doe'

Scenario: Destroy User
  Given I have a new user
  And I am on 'users' page
  When I click on 'Destroy'
  # And I confirm the destroy warning
  Then I should see 'User was successfully destroyed.'
  And I should not see the user
