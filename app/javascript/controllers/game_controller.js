import { Controller } from "@hotwired/stimulus"
import { Turbo } from "@hotwired/turbo-rails";



// Connects to data-controller="game"
export default class extends Controller {
  static targets = ["gameId", "kidId", "avatar", "exercise", "win", "wrongAnswer1", "wrongAnswer2", "wrongAnswer3", "wrongAnswer1Card", "wrongAnswer2Card", "wrongAnswer3Card"]

  connect() {
    console.log("game is here")
  }

    // Audios para o game

  playSound() {
    this.exerciseTarget.play()
  }

  playWin() {

    const kidId = this.kidIdTarget.innerText.trim();
    const gameId = this.gameIdTarget.innerText.trim();

    this.avatarTarget.classList.remove('d-none')

    this.winTarget.play()

    setTimeout(() =>
      fetch(`/kids/${kidId}/games/${gameId}/completed`, {
        method: "PATCH",
        headers: {"Content-Type": "application/json"}
      }).then(response => {
        if (response.ok) {
        // Redirecionamento para outra view
        Turbo.visit(`/kids/${kidId}/games`);
      }}), 10000);
  }


  playWrongAnswer1() {
    this.wrongAnswer1Target.play()
    this.wrongAnswer1CardTarget.classList.add('game-card')

    setTimeout(() =>
    this.wrongAnswer1CardTarget.classList.remove('game-card'), 1000);
  }

  playWrongAnswer2() {
    this.wrongAnswer2Target.play()
    this.wrongAnswer2CardTarget.classList.add('game-card')

    setTimeout(() =>
    this.wrongAnswer2CardTarget.classList.remove('game-card'), 1000);
  }

  playWrongAnswer3() {
    this.wrongAnswer3Target.play()
    this.wrongAnswer3CardTarget.classList.add('game-card')

    setTimeout(() =>
    this.wrongAnswer3CardTarget.classList.remove('game-card'), 1000);

  }

}
