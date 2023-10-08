import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="navbar"
export default class extends Controller {
  static targets = [ "menu", "ham", "content", "hamContainer" ]
  connect() {
  }

  toggle() {
    this.menuTarget.classList.toggle("hidden")
    this.hamTarget.classList.toggle("hidden")
    this.contentTarget.classList.toggle("hidden")
    this.toggleHamContainer()
  }

  close() {
    if (window.innerWidth > 1024 && !this.menuTarget.classList.contains("hidden")) {
      this.menuTarget.classList.toggle("hidden")
      this.contentTarget.classList.toggle("hidden")
      this.toggleHamContainer()
    }
  }
  toggleHamContainer() {
    if (this.hasHamContainerTarget) {
      this.hamContainerTarget.classList.toggle("hidden")
    }
  }
}
