class CreateLeagueUserPlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :league_user_players do |t|
      t.integer :league_user_id
      t.integer :player_id
    end
  end
end
