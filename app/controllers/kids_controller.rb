class KidsController < ApplicationController

  def new
    @kid = Kid.new
  end

  def create
    @kid = Kid.new(kid_params)
    @kid.user = current_user
    # We have to update the avatar for the real one
    @kid.avatar = Avatar.new(name: "moana")

    if @kid.save
      redirect_to kids_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def kid_params
    params.require(:kid).permit(:nickname, :age)
  end
end
