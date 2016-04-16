class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.references :user, null: false
      t.references :deck, null: false

      t.timestamps
    end
  end
end
