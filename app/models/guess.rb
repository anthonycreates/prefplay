class Guess < ActiveRecord::Base
  belongs_to :question
  belongs_to :choice1, :through => question
  belongs_to :choice2, :through => question
end
