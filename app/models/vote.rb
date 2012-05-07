class Vote < ActiveRecord::Base
  belongs_to :question
  has_one :choice
end
