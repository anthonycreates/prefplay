class AddVoteIdToGuesses < ActiveRecord::Migration
  def change
    add_column :guesses, :vote_id, :integer
  end
end
