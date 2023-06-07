import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="game"
export default class extends Controller {
  static targets = ["vermelho"]

  connect() {
    console.log("game is here")
    this.vermelhoTarget.load();
  }

  playSound() {
    this.vermelhoTarget.play()
  }

  playSound(){

  }
}
