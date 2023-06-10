class KidsController < ApplicationController
  before_action :set_kids, only: %i[show destroy edit moana_avatar pocahontas_avatar mogli_avatar tarzan_avatar]
  protect_from_forgery with: :null_session

  def index
    @kids = current_user.kids
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
    @kid.avatar = Avatar.last

    if @kid.save
      redirect_to edit_kid_path(@kid)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @avatars = Avatar.all
  end

  def moana_avatar
    avatar = Avatar.find_by(name: "moana")
    @kid.avatar = avatar
    @kid.save

    respond_to do |format|
      format.json { head :ok }
      format.html { head :ok }
    end
  end

  def pocahontas_avatar
    avatar = Avatar.find_by(name: "pocahontas")
    @kid.avatar = avatar
    @kid.save

    respond_to do |format|
      format.json { head :ok }
      format.html { head :ok }
    end
  end

  def mogli_avatar
    avatar = Avatar.find_by(name: "mogli")
    @kid.avatar = avatar
    @kid.save

    respond_to do |format|
      format.json { head :ok }
      format.html { head :ok }
    end
  end

  def tarzan_avatar
    avatar = Avatar.find_by(name: "tarzan")
    @kid.avatar = avatar
    @kid.save

    respond_to do |format|
      format.json { head :ok }
      format.html { head :ok }
    end
  end

  def update
    @kid.update(kid_params)
    redirect_to kid_path(@kid)
  end

  def destroy
    @kid.destroy
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
