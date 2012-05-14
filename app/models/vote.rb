class Vote < ActiveRecord::Base
  belongs_to :question
  belongs_to :choice
  has_one :guess
  
  accepts_nested_attributes_for :guess, :allow_destroy => true
end
