Given('I am on the users page') do
  visit '/users'
end

Given('I have a new user') do
  @user = FactoryBot.create(:user)
end

When('I click on {string}') do |string|
  click_on string
end

When('I enter valid new user details') do
  fill_in 'First Name', with: 'Jane'
  fill_in 'Last Name', with: 'Doe'
  fill_in 'Username', with: 'JaneDoe'
  fill_in 'Email', with: 'JDoe@gmail.com'
  fill_in 'Password', with: 'Password'
  fill_in 'Password Confirmation', with: 'Password'
end

When('I enter valid update user details') do
  fill_in 'First Name', with: 'Joe'
  fill_in 'Last Name', with: 'Doe'
  fill_in 'Old Password', with: 'Password'
  fill_in 'Password', with: 'password'
  fill_in 'Password Confirmation', with: 'password'
end

# When('I confirm the destroy warning') do
#   page.driver.browser.switch_to.alert.accept
# end

Then('I should not see the user') do
  name = [@user.first_name, @user.last_name].join(' ')
  expect(page).to_not have_content(name)
end
