class AddPlayersToLeagues < ActiveRecord::Migration[5.2]
  def change
    add_column :leagues, :player_id, :integer
  end
end
