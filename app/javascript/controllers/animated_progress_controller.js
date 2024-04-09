import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="animated-progress"
export default class extends Controller {
  connect() {
    this.intersectionObserver = new IntersectionObserver((entries, observer) => {
      entries.forEach(entry => {
        if (entry.isIntersecting) {
          const progressAttribute = this.element.getAttribute("data-progress");
          const progressValue = parseInt(progressAttribute);
          if (!isNaN(progressValue)) {
            this.element.style.width = `${progressValue}%`;
            observer.unobserve(this.element);
          }
        }
      });
    });

    this.intersectionObserver.observe(this.element);
  }

  disconnect() {
    this.intersectionObserver.unobserve(this.element);
    this.intersectionObserver = null;
  }
}
