import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="transactions"
export default class extends Controller {
  static targets = ["date", "notes", "category", "amount"]
  connect() {
  }
}

