# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :choice do
    name { ["red", "orange", "yellow", "green", "blue", "purple", "black", "white"].sample }
  end
end
