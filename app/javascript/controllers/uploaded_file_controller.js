import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="uploaded-file"
export default class extends Controller {
  static targets = ['form', 'open', 'close']

  connect() {
  }

  close(e) {
    e.preventDefault();
    this.closeTarget.classList.add('hidden')
    this.openTarget.classList.remove('hidden')
    this.formTarget.classList.add('hidden')
  }

  open(e) {
    e.preventDefault();
    this.closeTarget.classList.remove('hidden')
    this.openTarget.classList.add('hidden')
    this.formTarget.classList.remove('hidden')
  }

  delete(e) {
    e.preventDefault();
    this.element.remove();
  }
}
