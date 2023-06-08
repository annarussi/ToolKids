import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="avatar"
export default class extends Controller {
  static targets = ["avatarId"]
  connect() {

    console.log("avatar controller here");

  }
}
