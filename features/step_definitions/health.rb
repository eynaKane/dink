Given('I am on the health page') do
  visit '/health'
end

Then('I should see {string}') do |string|
  expect(page).to have_content(string)
end
