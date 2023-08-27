import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="navbar"
export default class extends Controller {
  static targets = [ "menu", "ham", "content" ]
  connect() {
  }

  toggle() {
    this.menuTarget.classList.toggle("hidden")
    this.hamTarget.classList.toggle("hidden")
    this.contentTarget.classList.toggle("hidden")
  }

  close() {
    if (window.innerWidth > 1024 && !this.menuTarget.classList.contains("hidden")) {
      console.log(this.menuTarget)
      this.menuTarget.classList.toggle("hidden")
      this.contentTarget.classList.toggle("hidden")
    }
  }
}
