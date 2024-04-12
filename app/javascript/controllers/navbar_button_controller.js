import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="navbar-button"
export default class extends Controller {
  static targets = [ "menuIcon", "button" ];

  animate() {
    this.menuIconTarget.classList.toggle('open');
    this.buttonTarget.classList.toggle('move-left');
  }
}
