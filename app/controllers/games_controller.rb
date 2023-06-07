class GamesController < ApplicationController
  before_action :set_game, only: %i[show lecture]
  before_action :set_kid, only: %i[lecture]

  def index
    @games = Game.all
  end

  def show
    @games = Game.all
  end

  def lecture
  end

  private

  def set_game
    @game = Game.find(params[:id])
  end

  def set_kid
    @kid = Kid.find(params[:kid_id])
  end

end
