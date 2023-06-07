import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="game"
export default class extends Controller {
  static targets = ["vermelho", "win", "azul", "amarelo", "verde"]

  connect() {
    console.log("game is here")
    this.vermelhoTarget.load();
    this.winTarget.load();
    this.azulTarget.load();
  }

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
}
