import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="filter"
export default class extends Controller {
  static targets = ["filterForm", "selected"]
  
  connect() {
    console.log(this.filterFormTarget)
    console.log(this.selectedTarget)
  }
}
