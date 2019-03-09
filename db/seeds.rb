# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require "json"
countries = File.read("./seed_data/countries_all.json")
JSON.parse(countries).each do |country|
  Country.create(name: country["name"], flag: country["flag"])
end

players = File.read('./seed_data/scrapedPlayers_all.json')

JSON.parse(players).each do |player|
  Player.create(
    Name: player["Name"],
    Age: player["Age"],
    Photo: player["Photo"],
    Club_Logo: player["Club_Logo"],
    Nationality: player["Nationality"],
    Positions: player["Positions"],
    Club: player["Club"],
    Overall: player["Overall"],
    Potential: player["Potential"],
    Value: player["Value"],
    Wage: player["Wage"],
    Acceleration: player["Acceleration"],
    Aggression: player["Aggression"],
    Agility: player["Agility"],
    Balance: player["Balance"],
    Ball_control: player["Ball_control"],
    Composure: player["Composure"],
    Crossing: player["Crossing"],
    Curve: player["Curve"],
    Dribbling: player["Dribbling"],
    Finishing: player["Finishing"],
    Free_kick_accuracy: player["Free_kick_accuracy"],
    GK_diving: player["GK_diving"],
    GK_handling: player["GK_handling"],
    GK_kicking: player["GK_kicking"],
    GK_positioning: player["GK_positioning"],
    GK_reflexes: player["GK_reflexes"],
    Heading_accuracy: player["Heading_accuracy"],
    Interceptions: player["Interceptions"],
    Jumping: player["Jumping"],
    Long_passing: player["Long_passing"],
    Long_shots: player["Long_shots"],
    Marking: player["Marking"],
    Penalties: player["Penalties"],
    Positioning: player["Positioning"],
    Reactions: player["Reactions"],
    Short_passing: player["Short_passing"],
    Shot_power: player["Shot_power"],
    Sliding_tackle: player["Sliding_tackle"],
    Sprint_speed: player["Sprint_speed"],
    Stamina: player["Stamina"],
    Standing_tackle: player["Standing_tackle"],
    Strength: player["Strength"],
    Vision: player["Vision"],
    Volleys: player["Volleys"]
  )
end