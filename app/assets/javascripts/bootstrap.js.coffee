$(document).on 'turbolinks:load ready', ->
  $('.dropdown-toggle').dropdown()
# not including this until i need it, and then i'll need to use tether
#  $("a[rel~=popover], .has-popover").popover()
#  $("a[rel~=tooltip], .has-tooltip").tooltip()
