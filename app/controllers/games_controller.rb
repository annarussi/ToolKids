class GamesController < ApplicationController
  before_action :set_game, only: [:show, :lecture]
  before_action :set_kid, only: [:lecture]

  def index
    @games = Game.all
  end

  def show
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
