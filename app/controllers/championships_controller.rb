class ChampionshipsController < ApplicationController
  def index
    @championships = Championship.all
  end

  def new
    @championship = Championship.new
  end

  def create
    @championship = Championship.new(championship_params)
    if @championship.save
      redirect_to @championship, notice: 'Championship created successfully.'
    else
      render :new
    end
  end

  def show
    @championship = Championship.find(params[:id])
    @matches = @championship.matches
  end

  def leaderboard
    @championship = Championship.find(params[:championship_id])
    @players = @championship.users.includes(:points).order('points.total DESC')
  end

  private

  def championship_params
    params.require(:championship).permit(:name, :team_count, :round_type)
  end
end
