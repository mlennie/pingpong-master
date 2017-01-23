class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.date :date_played
      t.integer :oponent_id
      t.integer :user_score
      t.integer :oponent_score
      t.integer :user_id

      t.timestamps null: false
    end
    add_index :games, :oponent_id
    add_index :games, :user_id
  end
end
