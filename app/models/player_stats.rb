class PlayerStats < ApplicationRecord
  belongs_to :country

  validates_presence_of :Name, 
                        :Age, 
                        :Photo, 
                        :Club_Logo, 
                        :Nationality, 
                        :Positions, 
                        :Club, 
                        :Overall, 
                        :Potential, 
                        :Value, 
                        :Wage, 
                        :Acceleration, 
                        :Aggression, 
                        :Agility, 
                        :Balance, 
                        :Ball_control,
                        :Composure,
                        :Crossing,
                        :Curve,
                        :Dribbling,
                        :Finishing,
                        :Free_kick_accuracy,
                        :GK_diving,
                        :GK_handling,
                        :GK_kicking,
                        :GK_positioning,
                        :GK_reflexes,
                        :Heading_accuracy,
                        :Interceptions,
                        :Jumping,
                        :Long_passing,
                        :Long_shots,
                        :Marking,
                        :Penalties,
                        :Positioning,
                        :Reactions,
                        :Short_passing,
                        :Shot_power,
                        :Sliding_tackle,
                        :Sprint_speed,
                        :Stamina,
                        :Standing_tackle,
                        :Strength,
                        :Vision,
                        :Volleys,
                        :country_id
end 