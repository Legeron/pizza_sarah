import { Controller } from "stimulus"

export default class extends Controller {
   static targets = [ "hp" ]
  kick() {
    const hp = this.hpTarget.textContent
    if ( hp > 0) {
      const kick = Math.trunc((Math.random() * 20))
      const newHp = hp - kick
      if (newHp <= 0 ){
        this.hpTarget.classList.remove('text-success')
        this.hpTarget.classList.add('text-danger')
        this.hpTarget.innerHTML = 0
        setTimeout(function(){ alert("You win !"); }, 0)
      } else {
        this.hpTarget.innerHTML = newHp
      }
    }
  }
}

