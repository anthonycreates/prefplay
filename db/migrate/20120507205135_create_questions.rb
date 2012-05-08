class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :name
      t.integer :choice1_id
      t.integer :choice2_id
      
      t.timestamps
    end
  end
end
