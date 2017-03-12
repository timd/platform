FactoryGirl.define do
  factory :comment do
    association :post, factory: :post
    commenter "MyString"
    body "MyString"
  end
end
