class Api::V1::PlayerStatsController < ApplicationController
  def index
    if !params[:page]
      starting_index = 25
      players = PlayerStat.limit(starting_index)
    else
      range =  params[:page].to_i * 25
      starting_index = range - 25
      players = PlayerStat.limit(25).offset(starting_index)
    end
    render json: {players: players, count: PlayerStat.count}
  end
end