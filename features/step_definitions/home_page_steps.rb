Given(/^there is a post called '(.*?)' with the contents '(.*?)'$/) do |title, content|
  @post = FactoryGirl.create(:post, title: title, content: content)
end

When(/^I am on the homepage$/) do
  visit root_path
end

Then(/^I should see the 'Hello, World!' post$/) do
  expect(page).to have_content("Hello, world...")
end