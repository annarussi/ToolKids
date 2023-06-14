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

    # azul
    fileblue = URI.open("https://res.cloudinary.com/dhku8hlz9/image/upload/v1686224730/ci66vxhb0wpbexursb6m.png")
    game_colors.photos.attach(io: fileblue, filename: "blue.png", content_type: "image/png")

    # audio azul ana
    fileblue = URI.open("https://res.cloudinary.com/dhku8hlz9/video/upload/v1686732030/A-Azul_usvjzh.mp3")
    game_colors.videos.attach(io: fileblue, filename: "a-azul.mp3", content_type: "audio/mpeg")

    # audio azul francisco
    fileblue = URI.open("https://res.cloudinary.com/dhku8hlz9/video/upload/v1686732145/F-Azul_i32pfy.mp3")
    game_colors.videos.attach(io: fileblue, filename: "f-azul.mp3", content_type: "audio/mpeg")


    # amarelo
    fileyellow = URI.open("https://res.cloudinary.com/dhku8hlz9/image/upload/v1686224762/vs3k9plgsh2cclepgze8.png")
    game_colors.photos.attach(io: fileyellow, filename: "yellow.png", content_type: "image/png")

    # audio amarelo ana
    fileyellow = URI.open("https://res.cloudinary.com/dhku8hlz9/video/upload/v1686731976/A-Amarelo_bvrqmp.mp3")
    game_colors.videos.attach(io: fileyellow, filename: "a-amarelo.mp3", content_type: "audio/mpeg")

    # audio amarelo francisco
    fileyellow = URI.open("https://res.cloudinary.com/dhku8hlz9/video/upload/v1686732145/F-Amarelo_yerefj.mp3")
    game_colors.videos.attach(io: fileyellow, filename: "f-amarelo.mp3", content_type: "audio/mpeg")


    # verde
    filegreen = URI.open("https://res.cloudinary.com/dhku8hlz9/image/upload/v1686224779/pusmec8ipokomlwmmxqc.png")
    game_colors.photos.attach(io: filegreen, filename: "green.png", content_type: "image/png")

    # audio verde ana
    filegreen = URI.open("https://res.cloudinary.com/dhku8hlz9/video/upload/v1686732076/A-Verde_cxxqzm.mp3")
    game_colors.videos.attach(io: filegreen, filename: "a-verde.mp3", content_type: "audio/mpeg")

    # audio verde francisco
    filegreen = URI.open("https://res.cloudinary.com/dhku8hlz9/video/upload/v1686732146/F-Verde_bpcqk3.mp3")
    game_colors.videos.attach(io: filegreen, filename: "f-verde.mp3", content_type: "audio/mpeg")


    # vermelho
    filered = URI.open("https://res.cloudinary.com/dhku8hlz9/image/upload/v1686224795/y7dxvwjwh6j1xfsks1iw.png")
    game_colors.photos.attach(io: filered, filename: "red.png", content_type: "image/png")

    # audio vermelho ana
    filered = URI.open("https://res.cloudinary.com/dhku8hlz9/video/upload/v1686732076/A-Vermelho-parabens_qpevrw.mp3")
    game_colors.videos.attach(io: filered, filename: "a-vermelho.mp3", content_type: "audio/mpeg")

    # audio vermelho francisco
    filered = URI.open("https://res.cloudinary.com/dhku8hlz9/video/upload/v1686732146/F-Vermelho-parabens_tuzsyq.mp3")
    game_colors.videos.attach(io: filered, filename: "f-vermelho.mp3", content_type: "audio/mpeg")


    # audios exercise
    # audio ana
    fileexercise = URI.open("https://res.cloudinary.com/dhku8hlz9/video/upload/v1686732076/A-Vermelho_laxf08.mp3")
    game_colors.videos.attach(io: fileexercise, filename: "a-exercise.mp3", content_type: "audio/mpeg")

    # audio francisco
    fileexercise = URI.open("https://res.cloudinary.com/dhku8hlz9/video/upload/v1686732146/F-Vermelho_wsulbl.mp3")
    game_colors.videos.attach(io: fileexercise, filename: "f-exercise.mp3", content_type: "audio/mpeg")


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
