class GamesController < ApplicationController
  before_action :set_game, only: %i[show lecture completed]
  before_action :set_kid, only: %i[lecture completed]
  protect_from_forgery with: :null_session

  def index
    @games = Game.all
  end

  def show
  end

  def lecture
  end

  def completed
    @game.completed = true
    @game.save
    redirect_to kid_games_path(@kid)
  end

  private

  def set_game
    @game = Game.find(params[:id])
  end

  def set_kid
    @kid = Kid.find(params[:kid_id])
  end

end
