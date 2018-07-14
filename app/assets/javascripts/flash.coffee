$(document).on 'turbolinks:load', ->
  $('.alert').delay(10000).slideUp 500, ->
    $('.alert').alert 'close'
