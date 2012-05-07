class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :name
      t.integer :choice1
      t.integer :choice2
      
      t.timestamps
    end
  end
end
