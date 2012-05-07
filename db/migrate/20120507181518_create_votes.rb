class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :question_id
      t.integer :choice_id

      t.timestamps
    end
  end
end
