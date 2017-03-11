Given(/^there is a post called '(.*?)' with the contents '(.*?)'$/) do |title, content|
  @post = FactoryGirl.create(:post, title: title, content: content)
end

When(/^I am on the homepage$/) do
  visit root_path
end

Then(/^I should see the '(.*?)' post$/) do |title|
  @post = Post.find_by_title(title)
  expect(page).to have_content(@post.title)
  expect(page).to have_content(@post.content)
end