# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ->

  $('#frequency_person_id').on "change" , ->
    callForFrequencies(this.value)

  callForFrequencies = (id) ->
    $.ajax
      url: "/frequencies/#{id}/myfrequencies"
      success: (data) ->
        $('#table_content').empty()
        $('#table_content').append "#{data}"
