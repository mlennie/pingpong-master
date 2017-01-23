class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.date :date_played
      t.integer :oponent_id
      t.integer :user_score
      t.integer :oponent_score

      t.timestamps null: false
    end
    add_index :games, :oponent_id
  end
end
