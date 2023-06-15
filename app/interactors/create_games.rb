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


    # lecture video
    filelecture = URI.open("https://res.cloudinary.com/dhku8hlz9/video/upload/v1686751369/lecture_iydned.mp4")
    game_colors.videos.attach(io: filelecture, filename: "color-lecture.mp4", content_type: "video/webm")


  end

  def game_animals
    game_animals = Game.new(name: "Animals", level: 2, kid: context.kid)
    game_animals.save

    # elefante
    file1 = URI.open("https://res.cloudinary.com/dhku8hlz9/image/upload/v1686585049/elefante2_afq3ya.png")
    game_animals.photos.attach(io: file1, filename: "elefante.png", content_type: "image/png")

    # audio elefante ana
    file1 = URI.open("https://res.cloudinary.com/dhku8hlz9/video/upload/v1686732030/A-Elefante_dbzcng.mp3")
    game_animals.videos.attach(io: file1, filename: "a-elefante.mp3", content_type: "audio/mpeg")

    # audio elefante francisco
    file1 = URI.open("https://res.cloudinary.com/dhku8hlz9/video/upload/v1686732145/F-Elefante_ygzqbp.mp3")
    game_animals.videos.attach(io: file1, filename: "f-elefante.mp3", content_type: "audio/mpeg")


    # girafa
    file2 = URI.open("https://res.cloudinary.com/dhku8hlz9/image/upload/v1686585049/girafa2_pjcal8.png")
    game_animals.photos.attach(io: file2, filename: "girafa.png", content_type: "image/png")

    # audio girafa ana
    file2 = URI.open("https://res.cloudinary.com/dhku8hlz9/video/upload/v1686732030/A-Girafa_cpkxtf.mp3")
    game_animals.videos.attach(io: file2, filename: "a-girafa.mp3", content_type: "audio/mpeg")

    # audio girafa francisco
    file2 = URI.open("https://res.cloudinary.com/dhku8hlz9/video/upload/v1686732145/F-Girafa_sfpiyi.mp3")
    game_animals.videos.attach(io: file2, filename: "f-girafa.mp3", content_type: "audio/mpeg")


    # tigre
    file3 = URI.open("https://res.cloudinary.com/dhku8hlz9/image/upload/v1686585049/tigre2_zzgxo1.png")
    game_animals.photos.attach(io: file3, filename: "tigre.png", content_type: "image/png")

    # audio tigre ana
    file3 = URI.open("https://res.cloudinary.com/dhku8hlz9/video/upload/v1686732077/A-Tigre_ic4ixd.mp3")
    game_animals.videos.attach(io: file3, filename: "a-tigre.mp3", content_type: "audio/mpeg")

    # audio tigre francisco
    file3 = URI.open("https://res.cloudinary.com/dhku8hlz9/video/upload/v1686732145/F-Tigre_a5jepg.mp3")
    game_animals.videos.attach(io: file3, filename: "f-tigre.mp3", content_type: "audio/mpeg")


    # leao
    file4 = URI.open("https://res.cloudinary.com/dhku8hlz9/image/upload/v1686585049/leao2_r6qafz.png")
    game_animals.photos.attach(io: file4, filename: "leao.png", content_type: "image/png")

    # audio leao ana
    file4 = URI.open("https://res.cloudinary.com/dhku8hlz9/video/upload/v1686732076/A-Leao-Parabens_wq6hqa.mp3")
    game_animals.videos.attach(io: file4, filename: "a-leao.mp3", content_type: "audio/mpeg")

    # audio leao francisco
    file4 = URI.open("https://res.cloudinary.com/dhku8hlz9/video/upload/v1686732145/F-Leao-parabens_dhum6p.mp3")
    game_animals.videos.attach(io: file4, filename: "f-leao.mp3", content_type: "audio/mpeg")


    # audios exercise
    # audio ana
    file5 = URI.open("https://res.cloudinary.com/dhku8hlz9/video/upload/v1686732029/A-Leao_qz9li9.mp3")
    game_animals.videos.attach(io: file5, filename: "a-exercise.mp3", content_type: "audio/mpeg")

    # audio francisco
    file5 = URI.open("https://res.cloudinary.com/dhku8hlz9/video/upload/v1686732145/F-Leao_onmohy.mp3")
    game_animals.videos.attach(io: file5, filename: "f-exercise.mp3", content_type: "audio/mpeg")


    file6 = URI.open("https://res.cloudinary.com/dhku8hlz9/video/upload/v1686831527/ee964167c883afed556efaa902e232c38f89026184d9688ce963a15b8c78ccab_mmye80.mp4")
    game_animals.videos.attach(io: file6, filename: "animal-lecture.mp4", content_type: "video/webm")

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
