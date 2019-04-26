import { Controller } from "stimulus"

export default class extends Controller {
   static targets = [ "score", 'restart', 'bank']
  pick() {
    const score = parseInt(this.scoreTarget.textContent, 10)

    if ( score < 21) {
      const card = Math.trunc((Math.random() * 20) + 1 )
      console.log(card)
      const newScore = score + card
      this.scoreTarget.innerHTML = newScore
      if (newScore > 21 ){
        setTimeout(function(){ alert("You loose !"); }, 0)
        this.restartTarget.classList.remove('d-none')
      }
    }
  }
  result() {
    let bankHand = 0
    const score = parseInt(this.scoreTarget.textContent, 10)
    const bank = this.bankTarget
    while (bankHand < score && bankHand < 21) {
      bankHand +=  Math.trunc((Math.random() * 20) + 1 )
    }
    bank.innerHTML = bankHand
    if (bankHand <= 21 && bankHand > score ) {
      setTimeout(function(){ alert("You loose !"); }, 0)
    } else if (bankHand === score) {
      setTimeout(function(){ alert("Draw !"); }, 0)
    } else {
      setTimeout(function(){ alert("You win !"); }, 0)
    }
    this.restartTarget.classList.remove('d-none')
  }

  restart() {
    const score = this.scoreTarget
    const bank = this.bankTarget
    score.innerHTML = 0
    bank.innerHTML = 0
    this.restartTarget.classList.add('d-none')
  }
}

