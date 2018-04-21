$(document).on 'turbolinks:load', ->
  $('.dropdown-toggle').dropdown()
# not including this until i need it, and then i'll need to use tether
#  $("a[rel~=popover], .has-popover").popover()
#  $("a[rel~=tooltip], .has-tooltip").tooltip()
