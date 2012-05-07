# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :question do
    name "MyString"
    choice1 1
    choice2 1
  end
end
