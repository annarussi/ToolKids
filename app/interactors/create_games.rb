require "open-uri"

class CreateGames
  include Interactor

  def call
    game_colors
    game_animals
    game_fruits
    game_rooms
  end

  private

  def game_colors
    game_colors = Game.new(name: "Colors", level: 1, kid: context.kid)
    game_colors.save

    # azul image
    fileblue = URI.open("https://res.cloudinary.com/dhku8hlz9/image/upload/v1686224730/ci66vxhb0wpbexursb6m.png")
    game_colors.photos.attach(io: fileblue, filename: "blue.png", content_type: "image/png")

    # amarelo image
    fileyellow = URI.open("https://res.cloudinary.com/dhku8hlz9/image/upload/v1686224762/vs3k9plgsh2cclepgze8.png")
    game_colors.photos.attach(io: fileyellow, filename: "yellow.png", content_type: "image/png")

    # verde image
    filegreen = URI.open("https://res.cloudinary.com/dhku8hlz9/image/upload/v1686224779/pusmec8ipokomlwmmxqc.png")
    game_colors.photos.attach(io: filegreen, filename: "green.png", content_type: "image/png")

    # vermelho image
    filered = URI.open("https://res.cloudinary.com/dhku8hlz9/image/upload/v1686224795/y7dxvwjwh6j1xfsks1iw.png")
    game_colors.photos.attach(io: filered, filename: "red.png", content_type: "image/png")

    # colors lecture
    filelecture = URI.open("https://res.cloudinary.com/dhku8hlz9/video/upload/v1686751369/lecture_iydned.mp4")
    game_colors.videos.attach(io: filelecture, filename: "color-lecture.mp4", content_type: "video/webm")


  end

  def game_animals
    game_animals = Game.new(name: "Animals", level: 2, kid: context.kid)
    game_animals.save

    # elefante image
    file1 = URI.open("https://res.cloudinary.com/dhku8hlz9/image/upload/v1686585049/elefante2_afq3ya.png")
    game_animals.photos.attach(io: file1, filename: "elefante.png", content_type: "image/png")

    # girafa image
    file2 = URI.open("https://res.cloudinary.com/dhku8hlz9/image/upload/v1686585049/girafa2_pjcal8.png")
    game_animals.photos.attach(io: file2, filename: "girafa.png", content_type: "image/png")

    # tigre image
    file3 = URI.open("https://res.cloudinary.com/dhku8hlz9/image/upload/v1686585049/tigre2_zzgxo1.png")
    game_animals.photos.attach(io: file3, filename: "tigre.png", content_type: "image/png")

    # leao image
    file4 = URI.open("https://res.cloudinary.com/dhku8hlz9/image/upload/v1686585049/leao2_r6qafz.png")
    game_animals.photos.attach(io: file4, filename: "leao.png", content_type: "image/png")

    # animal lecture
    file6 = URI.open("https://res.cloudinary.com/dhku8hlz9/video/upload/v1686831527/ee964167c883afed556efaa902e232c38f89026184d9688ce963a15b8c78ccab_mmye80.mp4")
    game_animals.videos.attach(io: file6, filename: "animal-lecture.mp4", content_type: "video/webm")

  end

  def game_fruits
    game_fruits = Game.new(name: "Fruits", level: 3, kid: context.kid)
    game_fruits.save

    # melancia image
    filemelancia = URI.open("https://res.cloudinary.com/dhku8hlz9/image/upload/v1688577181/melancia_slv3dz.png")
    game_fruits.photos.attach(io: filemelancia, filename: "melancia.png", content_type: "image/png")

    # abacaxi image
    fileabacaxi = URI.open("https://res.cloudinary.com/dhku8hlz9/image/upload/v1688577181/63b2542a-3096-474a-ab60-71248df33e0a_kewxaw.png")
    game_fruits.photos.attach(io: fileabacaxi, filename: "abacaxi.png", content_type: "image/png")

    # uva image
    fileuva = URI.open("https://res.cloudinary.com/dhku8hlz9/image/upload/v1688577181/b402a927-e27f-4988-bc02-1477a424e3fb_rpuues.png")
    game_fruits.photos.attach(io: fileuva, filename: "uva.png", content_type: "image/png")

    # morango image
    filemorango = URI.open("https://res.cloudinary.com/dhku8hlz9/image/upload/v1688577181/6452a1c9-8b3d-4890-9c98-3ad043898c9b_wdjnl0.png")
    game_fruits.photos.attach(io: filemorango, filename: "morango.png", content_type: "image/png")

    # fruits lecture (ainda está animal lecture)
    filelecture = URI.open("https://res.cloudinary.com/dhku8hlz9/video/upload/v1686831527/ee964167c883afed556efaa902e232c38f89026184d9688ce963a15b8c78ccab_mmye80.mp4")
    game_fruits.videos.attach(io: filelecture, filename: "fruits-lecture.mp4", content_type: "video/webm")

  end

  def game_rooms
    game_rooms = Game.new(name: "Rooms", level: 4, kid: context.kid)
    game_rooms.save

    # quarto image
    filequarto = URI.open("https://res.cloudinary.com/dhku8hlz9/image/upload/v1688579511/243a954f75350d0b690e4d5388957599_xkal7o.jpg")
    game_rooms.photos.attach(io: filequarto, filename: "quarto.png", content_type: "image/png")

    # cozinha image
    filecozinha = URI.open("https://res.cloudinary.com/dhku8hlz9/image/upload/v1688579511/pngtree-cooking-kitchen-cabinets-image_2239055_fvyhay.jpg")
    game_rooms.photos.attach(io: filecozinha, filename: "cozinha.png", content_type: "image/png")

    # sala image
    filesala = URI.open("https://res.cloudinary.com/dhku8hlz9/image/upload/v1688580773/istockphoto-1184329667-170667a_da5quk.jpg")
    game_rooms.photos.attach(io: filesala, filename: "sala.png", content_type: "image/png")

    # banheiro image
    filebanheiro = URI.open("https://res.cloudinary.com/dhku8hlz9/image/upload/v1688579511/istockphoto-1135317474-170667a_ara7pn.jpg")
    game_rooms.photos.attach(io: filebanheiro, filename: "banheiro.png", content_type: "image/png")

    # objects lecture (ainda está animal lecture)
    filelecture = URI.open("https://res.cloudinary.com/dhku8hlz9/video/upload/v1686831527/ee964167c883afed556efaa902e232c38f89026184d9688ce963a15b8c78ccab_mmye80.mp4")
    game_rooms.videos.attach(io: filelecture, filename: "fruits-lecture.mp4", content_type: "video/webm")

  end
end
