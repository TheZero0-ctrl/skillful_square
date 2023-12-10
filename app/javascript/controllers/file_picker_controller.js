import { Controller } from "@hotwired/stimulus"
import axios from "axios"

// Connects to data-controller="file-picker"
export default class extends Controller {
  static targets = ['button'] 
  connect() {
  }

  uploadFiles(e) {
    axios.post(
      '/api/contents',
      {
        name: e.target.files[0].name,
        file_type: e.target.files[0].type,
        file_size: e.target.files[0].size,
      },
      {headers: {
        'ACCEPT': 'text/vnd.turbo-stream.html',
      }}
    )
    .then(response => {
      Turbo.renderStreamMessage(response.data)
    })
  }
}
