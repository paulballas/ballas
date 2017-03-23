$ ->
  elem = document.querySelector('.main-carousel')
  flkty = new Flickity(elem,
    cellAlign: 'left'
    contain: true)
  # element argument can be a selector string
  #   for an individual element
  flkty = new Flickity('.main-carousel', {})

  elem = document.querySelector('.second-carousel')
  flkty = new Flickity(elem,
    cellAlign: 'left'
    contain: true)
  # element argument can be a selector string
  #   for an individual element
  flkty = new Flickity('.second-carousel', {})
