# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :guess do
    question_id 1
    choice1_percent "9.99"
    choice2_percent "9.99"
  end
end
