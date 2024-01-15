import { Controller } from "@hotwired/stimulus"
import { DirectUpload } from "@rails/activestorage";
import { post } from "@rails/request.js";
import axios from "axios";

// Connects to data-controller="file-picker"
export default class extends Controller {
  static targets = ['fileInput'] 
  connect() {
    this.element.addEventListener("dragover", this.preventDragDefaults);
    this.element.addEventListener("dragenter", this.preventDragDefaults);
  }

  disconnect() {
    this.element.removeEventListener("dragover", this.preventDragDefaults);
    this.element.removeEventListener("dragenter", this.preventDragDefaults);
  }

  trigger() {
    this.fileInputTarget.click();
  }

  preventDragDefaults(e) {
    e.preventDefault();
    e.stopPropagation();
  }

  acceptFiles(event) {
    event.preventDefault();
    const files = event.dataTransfer ? event.dataTransfer.files : event.target.files;
    [...files].forEach((f) => {
      this.uploadFile(f);
    });
  }

  uploadFile(file) {
    // axios.post(
    //   '/api/contents',
    //   {
    //     name: e.target.files[0].name,
    //     file_type: e.target.files[0].type,
    //     file_size: e.target.files[0].size,
    //   },
    //   {headers: {
    //     'ACCEPT': 'text/vnd.turbo-stream.html',
    //   }}
    // )
    // .then(response => {
    //   Turbo.renderStreamMessage(response.data)
    // })
    const upload = new DirectUpload(file, '/rails/active_storage/direct_uploads');
    this.insertUpload(upload);
  }

  insertUpload(upload) {
    const contentData = {
      content: {
        name: upload.file.name,
        file_type: upload.file.type,
        file_size: upload.file.size 
      },
    };

    axios.post(
      '/api/contents',
      {
        name: upload.file.name,
        file_type: upload.file.type,
        file_size: upload.file.size 
      },
      {
        headers: {
          'ACCEPT': 'text/vnd.turbo-stream.html',
        }
      }
    )
    .then(response => {
      Turbo.renderStreamMessage(response.data)
    })
  }
}
