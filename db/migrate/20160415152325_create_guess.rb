class CreateGuess < ActiveRecord::Migration
  def change
    create_table :guesses do |t|
      t.references :game
      t.references :card

      t.timestamps
    end
  end
end
