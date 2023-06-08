import { Controller } from "@hotwired/stimulus"


// Connects to data-controller="game"
export default class extends Controller {
  static targets = ["gameId", "kidId", "vermelho", "win", "azul", "amarelo", "verde", "colorVermelho", "colorAmarelo", "colorVerde", "colorAzul"]

  connect() {
    console.log("game is here")
  }

    // Audios para o game

  playSound() {
    this.vermelhoTarget.play()
  }

  playWin(){
    this.winTarget.play()
    const kidId = this.kidIdTarget.innerText.trim();
    const gameId = this.gameIdTarget.innerText.trim();
    fetch(`/kids/${kidId}/games/${gameId}/completed`, {
      method: "PATCH",
      headers: {"Content-Type": "application/json"}
    })
    // console.log(this.gameIdTarget.innerText)
    // console.log(this.kidIdTarget.innerText)
    // Rails.ajax({
    //     type: 'PATCH',
    //     url: `/kids/${this.kidIdTarget.innerText}/games/${this.gameIdTarget.innerText}`,
    //     data: { game: { completed: true } },
    //     dataType: 'json',
    //     success: function () {
    //       console.log('Objeto game atualizado com sucesso.');
    //     },
    //     error: function (xhr, status, error) {
    //       console.error(error);
    //     }
    //  })
  }

  playAzul() {
    this.azulTarget.play()
  }

  playAmarelo() {
    this.amareloTarget.play()
  }

  playVerde() {
    this.verdeTarget.play()
  }

  // Audios para Lecture
  // Trocar os audios para os somente da cor e linkar no manifest.js

  playColorAzul() {
    this.colorAzulTarget.play()
  }

  playColorAmarelo() {
    this.colorAmareloTarget.play()
  }

  playColorVerde() {
    this.colorVerdeTarget.play()
  }
  playColorVermelho() {
    this.colorVermelhoTarget.play()
  }

}
