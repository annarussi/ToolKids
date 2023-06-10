require "open-uri"

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

    # Give a parent for the kid
    @kid.user = current_user

    # Give an avatar for the kid
    @kid.avatar = Avatar.last

    if @kid.save

      # Create the Color game for the kid
      game_colors = Game.new(name: "colors", level: 1, kid: @kid)
      game_colors.save
      file = URI.open("https://res.cloudinary.com/dhku8hlz9/image/upload/v1686224730/ci66vxhb0wpbexursb6m.png")
      game_colors.photos.attach(io: file, filename: "blue.png", content_type: "image/png")

      file = URI.open("https://res.cloudinary.com/dhku8hlz9/image/upload/v1686224762/vs3k9plgsh2cclepgze8.png")
      game_colors.photos.attach(io: file, filename: "yellow.png", content_type: "image/png")

      file = URI.open("https://res.cloudinary.com/dhku8hlz9/image/upload/v1686224779/pusmec8ipokomlwmmxqc.png")
      game_colors.photos.attach(io: file, filename: "green.png", content_type: "image/png")

      file = URI.open("https://res.cloudinary.com/dhku8hlz9/image/upload/v1686224795/y7dxvwjwh6j1xfsks1iw.png")
      game_colors.photos.attach(io: file, filename: "red.png", content_type: "image/png")

      # Create the Animal game for the kid
      game_animals = Game.new(name: "animals", level: 2, kid: @kid)
      game_animals.save

      # Create the Objects game for the kid
      game_objects = Game.new(name: "objects", level: 3, kid: @kid)
      game_objects.save

      # Create the Verbs game for the kid
      game_verbs = Game.new(name: "verbs", level: 4, kid: @kid)
      game_verbs.save

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
