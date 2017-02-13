$(document).ready ->
  return unless $('#new_call_log').length > 0
  $('.create_appointment').on 'click', (e) ->
    e.preventDefault()
    date_of_visit = {'date_of_visit': $('#appointment_date_of_visit').val()}
    $.post('/appointments/create_appointment', date_of_visit)
$(document).on 'click','.remove_this_appointment', ->
  $(this).parent().remove()