class RemovePlayerStatsFromPlayersAndAddPlayerId < ActiveRecord::Migration[5.2]
  def change
    remove_column :players, :player_stats_id
    add_column :players, :player_stat_id, :integer
  end
end
