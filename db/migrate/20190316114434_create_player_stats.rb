class CreatePlayerStats < ActiveRecord::Migration[5.2]
  def change
    create_table :player_stats do |t|
      t.string :Name
      t.string :Age
      t.string :Photo
      t.string :Club_Logo
      t.string :Nationality
      t.string :Positions
      t.string :Club
      t.string :Overall
      t.string :Potential
      t.string :Value
      t.string :Wage
      t.string :Acceleration
      t.string :Aggression
      t.string :Agility
      t.string :Balance
      t.string :Ball_control
      t.string :Composure
      t.string :Crossing
      t.string :Curve
      t.string :Dribbling
      t.string :Finishing
      t.string :Free_kick_accuracy
      t.string :GK_diving
      t.string :GK_handling
      t.string :GK_kicking
      t.string :GK_positioning
      t.string :GK_reflexes
      t.string :Heading_accuracy
      t.string :Interceptions
      t.string :Jumping
      t.string :Long_passing
      t.string :Long_shots
      t.string :Marking
      t.string :Penalties
      t.string :Positioning
      t.string :Reactions
      t.string :Short_passing
      t.string :Shot_power
      t.string :Sliding_tackle
      t.string :Sprint_speed
      t.string :Stamina
      t.string :Standing_tackle
      t.string :Strength
      t.string :Vision
      t.string :Volleys
      t.integer :country_id

      t.timestamps
    end
  end
end
