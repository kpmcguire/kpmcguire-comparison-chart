// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

const expanders = document.querySelectorAll('.expander-trigger')

if(expanders.length) {
  expanders.forEach((el)=>{
    let target = document.getElementById(el.getAttribute('aria-controls'))

    if (el.getAttribute('aria-expanded') === "true") {
      target.classList.remove('hidden')
    }
    
    function handle_click(el) {
      let self = el.target
      
      let do_event = false
      
      if (el.type === 'keydown') {
        if (el.keyCode === 13 || el.keyCode === 32) {
          do_event = true
        }
      } else if (el.type === 'click') {
        do_event = true
      }

      if (do_event) {
        if (self.getAttribute('aria-expanded') === 'true') {
          self.setAttribute('aria-expanded', false)
          target.classList.add('hidden')
        } else {
          self.setAttribute('aria-expanded', true)
          target.classList.remove('hidden')
        }
      }
    }

    el.addEventListener('click', handle_click)
    el.addEventListener('keydown', handle_click)
  })
}