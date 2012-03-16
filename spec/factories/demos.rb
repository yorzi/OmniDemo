# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :demo do
    description "MyText"
    author "MyString"
    page_view 1
    link "MyString"
  end
end
