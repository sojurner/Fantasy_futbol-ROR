class AddCountryToPlayers < ActiveRecord::Migration[5.2]
  def change
    add_column :players, :country_id, :integer
  end
end
