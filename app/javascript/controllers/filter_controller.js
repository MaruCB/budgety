import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="filter"
export default class extends Controller {
  static targets = ["filterForm", "selected"]

  filterData(event) {
    // console.log("test")
    this.filterFormTarget.submit()
  }
}
