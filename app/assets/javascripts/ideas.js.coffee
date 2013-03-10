# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready ->
  $('.idea').each (index, idea) ->
    $idea = $(idea)

    x  = $idea.data('x')
    y  = $idea.data('y')

    if x?
      $idea.css('left', x + 'px')
    if y?
      $idea.css('top',  y + 'px')
