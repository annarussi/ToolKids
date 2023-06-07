class KidsController < ApplicationController
  before_action :set_kids, only: %i[show destroy]

  def index
    @kids = Kid.all
  end

  def show
  end

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

  def edit
  end

  def update
    @kid.update(kid_params)
    redirect_to kid_path(@kid)
  end

  def destroy
    @kid = Kid.destroy
    redirect_to kids_path
  end


  private

  def kid_params
    params.require(:kid).permit(:nickname, :age)
  end

  def set_kids
    @kid = Kid.find(params[:id])
  end

end
