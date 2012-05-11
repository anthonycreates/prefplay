# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :question do
    name "What color do you like?"
    association :choice1, :factory => :choice
    association :choice2, :factory => :choice
  end
end
