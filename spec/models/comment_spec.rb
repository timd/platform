require 'rails_helper'

RSpec.describe Comment, type: :model do
  
  it "has a valid factory" do
    post = FactoryGirl.create(:post)
    expect(FactoryGirl.create(:comment)).to be_valid
  end
  
  it "is invalid without a commenter" do
    expect(FactoryGirl.build(:comment, commenter: nil)).to_not be_valid
  end
  
  it "is invalid without content" do
    expect(FactoryGirl.build(:comment, body: nil)).to_not be_valid
  end
  
end
