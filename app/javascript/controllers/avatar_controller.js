import { Controller } from "@hotwired/stimulus"
import { Turbo } from "@hotwired/turbo-rails";


// Connects to data-controller="avatar"
export default class extends Controller {
  static targets = [ "kidId", "simba", "ariel", "moana", "pocahontas", "mogli", "tarzan", "capitao", "frozen"]

  connect() {

    console.log("avatar controller here");
  }

  moanaAvatar() {

    const kidId = this.kidIdTarget.innerText.trim();
    this.moanaTarget.play()

    setTimeout(() =>
    fetch(`/kids/${kidId}/moana_avatar`, {
      method: "PATCH",
      headers: {"Content-Type": "application/json"}
    }).then(response => {
      if (response.ok) {
      // Redirecionamento para outra view
      Turbo.visit(`/kids/${kidId}/edit`);
    }}), 3000);
  }

  pocahontasAvatar() {

    const kidId = this.kidIdTarget.innerText.trim();
    this.pocahontasTarget.play()

    setTimeout(() =>
    fetch(`/kids/${kidId}/pocahontas_avatar`, {
      method: "PATCH",
      headers: {"Content-Type": "application/json"}
    }).then(response => {
      if (response.ok) {
      // Redirecionamento para outra view
      Turbo.visit(`/kids/${kidId}/edit`);
    }}), 3000);
  }

  mogliAvatar() {

    const kidId = this.kidIdTarget.innerText.trim();
    this.mogliTarget.play()

    setTimeout(() =>
    fetch(`/kids/${kidId}/mogli_avatar`, {
      method: "PATCH",
      headers: {"Content-Type": "application/json"}
    }).then(response => {
      if (response.ok) {
      // Redirecionamento para outra view
      Turbo.visit(`/kids/${kidId}/edit`);
    }}), 3000);
  }

  tarzanAvatar() {

    const kidId = this.kidIdTarget.innerText.trim();
    this.tarzanTarget.play()

    setTimeout(() =>
    fetch(`/kids/${kidId}/tarzan_avatar`, {
      method: "PATCH",
      headers: {"Content-Type": "application/json"}
    }).then(response => {
      if (response.ok) {
      // Redirecionamento para outra view
      Turbo.visit(`/kids/${kidId}/edit`);
    }}), 3000);
  }

  simbaAvatar() {

    const kidId = this.kidIdTarget.innerText.trim();
    this.simbaTarget.play()

    setTimeout(() =>
    fetch(`/kids/${kidId}/simba_avatar`, {
      method: "PATCH",
      headers: {"Content-Type": "application/json"}
    }).then(response => {
      if (response.ok) {
      // Redirecionamento para outra view
      Turbo.visit(`/kids/${kidId}/edit`);
    }}), 3000);
  }

  arielAvatar() {

    const kidId = this.kidIdTarget.innerText.trim();
    this.arielTarget.play()

    setTimeout(() =>
    fetch(`/kids/${kidId}/ariel_avatar`, {
      method: "PATCH",
      headers: {"Content-Type": "application/json"}
    }).then(response => {
      if (response.ok) {
      // Redirecionamento para outra view
      Turbo.visit(`/kids/${kidId}/edit`);
    }}), 3000);
  }

  capitaoAvatar() {

    const kidId = this.kidIdTarget.innerText.trim();
    this.capitaoTarget.play()

    setTimeout(() =>
    fetch(`/kids/${kidId}/capitao_avatar`, {
      method: "PATCH",
      headers: {"Content-Type": "application/json"}
    }).then(response => {
      if (response.ok) {
      // Redirecionamento para outra view
      Turbo.visit(`/kids/${kidId}/edit`);
    }}), 3000);
  }

  frozenAvatar() {

    const kidId = this.kidIdTarget.innerText.trim();
    this.frozenTarget.play()

    setTimeout(() =>
    fetch(`/kids/${kidId}/frozen_avatar`, {
      method: "PATCH",
      headers: {"Content-Type": "application/json"}
    }).then(response => {
      if (response.ok) {
      // Redirecionamento para outra view
      Turbo.visit(`/kids/${kidId}/edit`);
    }}), 3000);
  }
}
