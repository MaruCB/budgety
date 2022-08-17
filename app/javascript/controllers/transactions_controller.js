import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="transactions"
export default class extends Controller {
  static targets = ["date", "notes", "category", "amount"]
  connect() {
    console.log(this.dateTarget)
    console.log(this.notesTarget)
    console.log(this.categoryTarget)
    console.log(this.amountTarget)
  }
}

