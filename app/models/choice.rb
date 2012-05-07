class Choice < ActiveRecord::Base
  has_one :question
  
  validates :name,  :presence => true
end
