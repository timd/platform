require 'rails_helper'

RSpec.describe "posts/show", type: :view do
  before(:each) do
    @post = FactoryGirl.create(:post, title: "title", content: "content1", date: Time.now)
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Content/)
  end
end
