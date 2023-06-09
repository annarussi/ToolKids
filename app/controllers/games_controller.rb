class GamesController < ApplicationController
  before_action :set_game, only: %i[show lecture completed]
  before_action :set_kid, only: %i[lecture completed index show]
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
    @kid.total_score += 1
    @kid.save
    @game.save

    sleep(4)
    respond_to do |format|
      format.json { head :ok }
      format.html { head :ok }
    end

  end

  private

  def set_game
    @game = Game.find(params[:id])
  end

  def set_kid
    @kid = Kid.find(params[:kid_id])
  end

end
