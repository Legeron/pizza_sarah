import { Controller } from "stimulus"

export default class extends Controller {
   static targets = [ "hp", 'restart']
  kick() {
    const hp = this.hpTarget.textContent
    if ( hp > 0) {
      const kick = Math.trunc((Math.random() * 20))
      const newHp = hp - kick
      if (newHp <= 0 ){
        this.hpTarget.classList.remove('text-success')
        this.hpTarget.classList.add('text-danger')
        this.hpTarget.innerHTML = 0
        this.restartTarget.classList.remove('d-none')
        setTimeout(function(){ alert("You win !"); }, 0)
      } else {
        this.hpTarget.innerHTML = newHp
      }
    }
  }
  restart() {
    const hp = this.hpTarget
    hp.innerHTML = 100
    this.restartTarget.classList.add('d-none')
    this.hpTarget.classList.remove('text-danger')
    this.hpTarget.classList.add('text-success')

  }
}

