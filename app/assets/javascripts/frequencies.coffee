# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


jQuery ->

  $('#frequency_person_id').on "change" , ->
    callForFrequencies(this.value)

  $('#btn_search').on "click" , ->
    findByCPF($('#edit_search').val())


  findByCPF = (cpf) ->
    $.ajax "/frequencies/findbycpf/#{cpf}",
      type: 'GET'
      success: (data) ->
        $('#table_content').empty()
        $('#table_content').append "#{data}"
      error: (throwable) ->
        console.log(throwable)


  callForFrequencies = (id) ->
    $.ajax "/frequencies/#{id}/myfrequencies" ,
      type: 'GET'
      success: (data) ->
        $('#table_content').empty()
        $('#table_content').append "#{data}"
      error: (throwable) ->
        console.log(throwable)

