# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    firstname "MyString"
    lastname "MyString"
    company "MyString"
    phone "MyString"
    twitter "MyString"
    blog "MyString"
    username "MyString"
    bio "MyText"
  end
end
