require "open-uri"

class CreateGames
  include Interactor

  def call
    game_colors
    game_animals
    game_objects
    game_verbs
  end

  private

  def game_colors
    game_colors = Game.new(name: "Colors", level: 1, kid: context.kid)
    game_colors.save
    fileblue = URI.open("https://res.cloudinary.com/dhku8hlz9/image/upload/v1686224730/ci66vxhb0wpbexursb6m.png")
    game_colors.photos.attach(io: fileblue, filename: "blue.png", content_type: "image/png")

    fileyellow = URI.open("https://res.cloudinary.com/dhku8hlz9/image/upload/v1686224762/vs3k9plgsh2cclepgze8.png")
    game_colors.photos.attach(io: fileyellow, filename: "yellow.png", content_type: "image/png")

    filegreen = URI.open("https://res.cloudinary.com/dhku8hlz9/image/upload/v1686224779/pusmec8ipokomlwmmxqc.png")
    game_colors.photos.attach(io: filegreen, filename: "green.png", content_type: "image/png")

    filered = URI.open("https://res.cloudinary.com/dhku8hlz9/image/upload/v1686224795/y7dxvwjwh6j1xfsks1iw.png")
    game_colors.photos.attach(io: filered, filename: "red.png", content_type: "image/png")
  end

  def game_animals
    game_animals = Game.new(name: "Animals", level: 2, kid: context.kid)
    game_animals.save
    file1 = URI.open("https://res.cloudinary.com/dhku8hlz9/image/upload/v1686585049/elefante2_afq3ya.png")
    game_animals.photos.attach(io: file1, filename: "elefante.png", content_type: "image/png")

    file2 = URI.open("https://res.cloudinary.com/dhku8hlz9/image/upload/v1686585049/girafa2_pjcal8.png")
    game_animals.photos.attach(io: file2, filename: "girafa.png", content_type: "image/png")

    file3 = URI.open("https://res.cloudinary.com/dhku8hlz9/image/upload/v1686585049/tigre2_zzgxo1.png")
    game_animals.photos.attach(io: file3, filename: "tigre.png", content_type: "image/png")

    file4 = URI.open("https://res.cloudinary.com/dhku8hlz9/image/upload/v1686585049/leao2_r6qafz.png")
    game_animals.photos.attach(io: file4, filename: "leao.png", content_type: "image/png")
  end

  def game_objects
    game_objects = Game.new(name: "Objects", level: 3, kid: context.kid)
    game_objects.save
  end

  def game_verbs
    game_verbs = Game.new(name: "Verbs", level: 4, kid: context.kid)
    game_verbs.save
  end
end
