class Question < ActiveRecord::Base
  belongs_to :choice1, :class_name => 'Choice', :foreign_key => 'choice1_id'
  belongs_to :choice2, :class_name => 'Choice', :foreign_key => 'choice2_id'
  has_many :votes
  has_many :guesses
  
  accepts_nested_attributes_for :choice1, :choice2, :allow_destroy => true

  validates :name,  :presence => true
  validates :choice1,  :presence => true
  validates :choice2,  :presence => true
  
  def other_choice(choice)
    other = choice1
    other = choice2 if choice == choice1 
    return other
  end
end
