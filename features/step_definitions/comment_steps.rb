Given(/^there is a post called 'Hello, World!' and a comment$/) do
  @post = FactoryGirl.create(:post, title: "Hello, World!", content: "content")
  @comment = FactoryGirl.create(:comment, commenter: "Foo", body: "Bar", post: @post)
  FactoryGirl.create(:post, title: "Second post", content: "More content")
end

When(/^I am on the post page$/) do
  visit post_path(@post.id)
end

Then(/^I should see the '(.*?)' post on the page$/) do |title|
  @post = Post.find_by_title(title)
  expect(page).to have_content(@post.title)
end

Then(/^I should see the comment$/) do
  @comment = Post.find_by_title('Hello, World!').comments.first
  expect(page).to have_content(@comment.commenter)
  expect(page).to have_content(@comment.body)
end

Then(/^I should see that there is (\d+) comment on the first post$/) do |arg1|
  expect(page).to have_content("1 comment")
end

Then(/^I should see that there is (\d+) comments on the second post$/) do |arg1|
  expect(page).to have_content("0 comments")
end