class KidsController < ApplicationController
  before_action :set_kids, only: %i[destroy]

  def index
    @kids = Kid.all
  end

  def destroy
    @kid = Kid.destroy
    redirect_to kids_path
  end

  private

  def set_kids
    @kid = Kid.find(params[id])
  end

end
