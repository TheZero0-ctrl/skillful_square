import { Controller } from "@hotwired/stimulus"
import {enter, leave, toggle} from 'el-transition'

export default class extends Controller {
  connect() {
    console.log("Hello from StimulusJS!")
    enter(this.element)

    setTimeout(() => {
      this.close();
    }, 1000)
  }

  close() {
    leave(this.element)
  }
}