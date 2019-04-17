import { Controller } from "stimulus"

export default class extends Controller {
  display() {
    const target = document.getElementById(this.element.id + '-target')
    const active = document.querySelector('.display .active')
    active.classList.remove('active')
    active.classList.add('d-none')
    target.classList.remove('d-none')
    target.classList.add('active')
    console.log(this)
  }
}
