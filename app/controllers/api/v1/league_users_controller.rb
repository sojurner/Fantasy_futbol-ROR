class Api::V1::LeagueUsersController < ApplicationController
  before_action :users_in_league, only: [:index]
  
  def index
    render json: league_users_json
  end

  private

  def users_in_league
    @league_users = LeagueUser.where(league_id: params[:league_id].to_i)
  end

  def league_users_json
    @league_users.map do |league_user|
      user = User.find(league_user.user_id)
      {
        user_id: user.id,
        user_name: user.user_name,
        email: user.email,
        full_name: user.full_name
      }
    end
  end
end