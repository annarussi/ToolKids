import { Controller } from "@hotwired/stimulus"
import { Turbo } from "@hotwired/turbo-rails";


// Connects to data-controller="avatar"
export default class extends Controller {
  static targets = [ "kidId", "moana"]

  connect() {

    console.log("avatar controller here");
  }

  moanaAvatar() {

    const kidId = this.kidIdTarget.innerText.trim();

    fetch(`/kids/${kidId}/moana_avatar`, {
      method: "PATCH",
      headers: {"Content-Type": "application/json"}
    }).then(response => {
      if (response.ok) {
      // Redirecionamento para outra view
      Turbo.visit(`/kids/${kidId}/edit`);
    }})
  }

  pocahontasAvatar() {

    const kidId = this.kidIdTarget.innerText.trim();

    fetch(`/kids/${kidId}/pocahontas_avatar`, {
      method: "PATCH",
      headers: {"Content-Type": "application/json"}
    }).then(response => {
      if (response.ok) {
      // Redirecionamento para outra view
      Turbo.visit(`/kids/${kidId}/edit`);
    }})
  }

  mogliAvatar() {

    const kidId = this.kidIdTarget.innerText.trim();

    fetch(`/kids/${kidId}/mogli_avatar`, {
      method: "PATCH",
      headers: {"Content-Type": "application/json"}
    }).then(response => {
      if (response.ok) {
      // Redirecionamento para outra view
      Turbo.visit(`/kids/${kidId}/edit`);
    }})
  }

  tarzanAvatar() {

    const kidId = this.kidIdTarget.innerText.trim();

    fetch(`/kids/${kidId}/tarzan_avatar`, {
      method: "PATCH",
      headers: {"Content-Type": "application/json"}
    }).then(response => {
      if (response.ok) {
      // Redirecionamento para outra view
      Turbo.visit(`/kids/${kidId}/edit`);
    }})
  }
}
