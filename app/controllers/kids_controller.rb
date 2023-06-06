class KidsController < ApplicationController
  before_action :set_kids, only: %i[destroy]

  def destroy
    @kid = Kid.destroy
    redirect_to kids_path
  end

  private

  def set_kids
    @kid = Kid.find(params[id])
  end

end
