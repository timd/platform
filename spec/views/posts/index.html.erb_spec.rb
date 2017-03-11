require 'rails_helper'

RSpec.describe "posts/index", type: :view do
  before(:each) do
    
    post1 = FactoryGirl.create(:post, title: "title", content: "content", date: Time.now)
    post2 = FactoryGirl.create(:post, title: "title", content: "content", date: Time.now)
    
    assign(:posts, [post1, post2])

  end

  it "renders a list of posts" do
    render
    assert_select "tr>td", :text => "title".to_s, :count => 2
    assert_select "tr>td", :text => "content".to_s, :count => 2
  end
end
