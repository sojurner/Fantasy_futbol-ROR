class CreateLeagueUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :league_users do |t|
      t.integer :user_id
      t.integer :league_id

      t.timestamps
    end
  end
end
