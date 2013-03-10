# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready ->
  $('.idea').each (index, idea) ->
    $idea = $(idea)

    x  = $idea.data('x')
    y  = $idea.data('y')
    id = $idea.data('id')

    if x?
      $idea.css('left', x + 'px')
    if y?
      $idea.css('top',  y + 'px')

    drop_handler = (event, ui) ->
      $.ajax(
        type: 'PUT'
        url:  '/ideas/' + id + '.json'
        data:
          'idea[x]': ui.position.left
          'idea[y]': ui.position.top
      )

    $idea.draggable(stop: drop_handler)
