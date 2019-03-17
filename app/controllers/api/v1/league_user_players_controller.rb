class Api::V1::LeagueUserPlayersController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:create, :destroy]
  before_action :set_player, only: [:create]

  def create
    if(!@player)
      @player = Player.create(player_stat_id: params[:player_id].to_i)
    end
    league_user = LeagueUser.find_by(league_id: params[:league_id].to_i, user_id: params[:user_id].to_i)
    league_user_player = LeagueUserPlayer.exists?(league_user_id: league_user.id, player_id: @player.id)
    if(!league_user_player)
      league_user_player = LeagueUserPlayer.create(league_user_id: league_user.id, player_id: @player.id)
      render json: {msg: "Player was successfully added to User"}
    else
      render json: {msg: "Player already Taken"}
    end
  end

  private

  def set_player
    @player = Player.find_by(player_stat_id: params[:player_id].to_i)
  end
end