class CreateGuesses < ActiveRecord::Migration
  def change
    create_table :guesses do |t|
      t.integer :question_id
      t.decimal :choice1_percent, :precision => 3, :scale => 2
      t.decimal :choice2_percent, :precision => 3, :scale => 2

      t.timestamps
    end
  end
end
