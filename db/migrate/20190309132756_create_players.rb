class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.integer :player_stats_id
      t.timestamps
    end
  end
end
