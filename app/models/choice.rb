class Choice < ActiveRecord::Base
  has_one :question
  has_many :votes
  has_many :guesses
  
  validates :name,  :presence => true
end
