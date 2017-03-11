require 'rails_helper'
require 'spec_helper'

RSpec.describe Post, type: :model do
  
  it "has a valid factory" do
    expect(FactoryGirl.create(:post)).to be_valid
  end
  
  it "is invalid without a title" do
    expect(FactoryGirl.build(:post, title: nil)).to_not be_valid
  end
  
  it "is invalid without content" do
    expect(FactoryGirl.build(:post, content: nil)).to_not be_valid
  end

end
