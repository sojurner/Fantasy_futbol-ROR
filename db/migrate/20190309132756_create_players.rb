class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.integer :player_id
      t.integer :league_id
      t.integer :user_id

      t.timestamps
    end
  end
end
