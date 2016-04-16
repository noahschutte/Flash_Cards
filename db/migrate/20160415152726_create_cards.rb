class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :answer, null: false
      t.string :question, null: false
      t.references :deck

      t.timestamps
    end
  end
end
