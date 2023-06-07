import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="game"
export default class extends Controller {
  static targets = ["vermelho", "win", "azul", "amarelo", "verde", "colorVermelho", "colorAmarelo", "colorVerde", "colorAzul"]

  connect() {
    console.log("game is here")
  }

    // Audios para o game

  playSound() {
    this.vermelhoTarget.play()
  }

  playWin(){
    this.winTarget.play()
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
