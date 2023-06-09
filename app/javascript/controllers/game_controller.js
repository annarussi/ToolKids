import { Controller } from "@hotwired/stimulus"
import { Turbo } from "@hotwired/turbo-rails";
import { SingleEntryPlugin } from "webpack";


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

  playWin() {

    const kidId = this.kidIdTarget.innerText.trim();
    const gameId = this.gameIdTarget.innerText.trim();

    this.winTarget.play()

      fetch(`/kids/${kidId}/games/${gameId}/completed`, {
        method: "PATCH",
        headers: {"Content-Type": "application/json"}
      }).then(response => {
        if (response.ok) {
        // Redirecionamento para outra view
        Turbo.visit(`/kids/${kidId}/games`);
      }})

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
