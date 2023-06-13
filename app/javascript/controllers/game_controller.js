import { Controller } from "@hotwired/stimulus"
import { Turbo } from "@hotwired/turbo-rails";



// Connects to data-controller="game"
export default class extends Controller {
  static targets = ["gameId", "kidId", "vermelho", "win", "azul", "amarelo", "verde", "azulCard", "amareloCard", "verdeCard"]

  connect() {
    console.log("game is here")
  }

    // Audios para o game

  playSound() {
    this.vermelhoTarget.play()
  }

  playWin() {

    const kidId = this.kidIdTarget.innerText.trim();
    const gameId = this.gameIdTarget.innerText.trim();

    this.winTarget.play()

    setTimeout(() =>
      fetch(`/kids/${kidId}/games/${gameId}/completed`, {
        method: "PATCH",
        headers: {"Content-Type": "application/json"}
      }).then(response => {
        if (response.ok) {
        // Redirecionamento para outra view
        Turbo.visit(`/kids/${kidId}/games`);
      }}), 3000);
  }

  playAzul() {
    this.azulTarget.play()
    this.azulCardTarget.classList.add('game-card')
  }

  playAmarelo() {
    this.amareloTarget.play()
    this.amareloCardTarget.classList.add('game-card')
  }

  playVerde() {
    this.verdeTarget.play()
    this.verdeCardTarget.classList.add('game-card')
  }

}
