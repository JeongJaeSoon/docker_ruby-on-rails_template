import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  saveChanges() {
    alert("Saving changes...");
  }
}
