class CreateLeaguePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :league_players do |t|
      t.integer :league_id
      t.integer :player_id
    end
  end
end
