$(document).on "page:change", ->
    $('#nav-trigger, #nav-back').click ->
        $('.nav').slideToggle()
        
        