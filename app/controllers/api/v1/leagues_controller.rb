class Api::V1::LeaguesController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:create, :update, :destroy]
  before_action :set_league, only: [:update, :show]

  def index
    @leagues = League.all
  end

  def new
    @league = League.new
  end

  def show
    render json: {league: new_user_list}
  end

  def create
    @league = League.new(league_params)
    if @league.save
      LeagueUser.create(league_id: @league.id, user_id: params[:id].to_i)
      render json: {msg: "#{@league.name} successfully Created"}
    else 
      render json: {msg: "League name already exists"}
    end
  end

  def update
    if @league.update(league_params)
      if params[:add]
        JSON.parse(params[:add]).each do |user_id|
          LeagueUser.create(league_id: params[:id], user_id: user_id)
        end
          render json: {msg: "Users have been Added", league: new_user_list}
      else
        user_ids_to_remove = JSON.parse(params[:remove])
        user_ids_to_remove.each do |user_id|
          matching_id = LeagueUser.find_by(league_id: params[:id], user_id: user_id)
          LeagueUser.destroy(matching_id.id)
        end
        render json: {msg: "User has been removed", league: new_user_list}
      end
    end
  end

  def destroy 
    league_user = LeagueUser.find_by(league_id: params[:id].to_i)
    league_user.destroy
    League.destroy(params[:id])
    render json: {msg: "League was successfully deleted"}
  end

  private

  def set_league
    @league  = League.find(params[:id])
  end

  def new_user_list 
    @league.users.map do |user| 
      {
        user_id: user.id,
        user_name: user.user_name,
        email: user.email,
        full_name: user.full_name
      }
    end
  end

  def league_params
    params.require(:league).permit(:name)
  end

end



