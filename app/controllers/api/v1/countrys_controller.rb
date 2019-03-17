class Api::V1::CountrysController < ApplicationController

  def index 
    countries = Country.all.map do |country|
      {
        country_id: country.id,
        name: country.name,
        flag: country.flag
      }
    end
    render json: countries
  end

  def show
    players_by_country = PlayerStat.where(country_id: params[:id].to_i)
    json_country_players = players_by_country.map do |player|
      player.attributes
    end
    render json: json_country_players
  end
end
