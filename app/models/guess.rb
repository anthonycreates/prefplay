class Guess < ActiveRecord::Base
  belongs_to :question
  has_one :choice1, :through => question
  has_one :choice2, :through => question
end
