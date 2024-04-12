import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle"
export default class extends Controller {
  static targets = [ "togglableElement" ];

  initialize() {
    this.togglableElementTarget.style.height = "0";
    this.isVisible = false;
  }

  toggle() {
    const element = this.togglableElementTarget;

    if (this.isVisible) {
      element.style.height = "0";
    } else {
      const height = element.scrollHeight + "px";
      element.style.height = height;
    }

    this.isVisible = !this.isVisible;
  }
}
