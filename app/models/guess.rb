class Guess < ActiveRecord::Base
  belongs_to :question
  belongs_to :vote
  belongs_to :choice1, :through => question
  belongs_to :choice2, :through => question
  
  validates :choice1_percent, :presence => true
  validates :choice2_percent, :presence => true
end
