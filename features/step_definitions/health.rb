Given('I am on {string} page') do |string|
  visit "/#{string}"
end

Then('I should see {string}') do |string|
  expect(page).to have_content(string)
end
