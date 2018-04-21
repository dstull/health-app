$(document).on 'turbolinks:load cocoon:after-insert', ->
  $('select').material_select()
  $('.datepicker').pickadate
    selectMonths: true
    selectYears: 5
    format: 'yyyy-mm-dd'
  $(".button-collapse").sideNav()
  $('.collapsible').collapsible()