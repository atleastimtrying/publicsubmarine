$ ->
  $('.tabs nav a').click ->
    $('.tabs pre').hide()
    $('.tabs nav a.active').removeClass('active')
    $(@).addClass('active')
    $("pre.#{$(@).attr('href').substring(1)}").show()
    false

  # navigateTo = (event)->
  #   $el = $ @
  #   target = $ "[name=#{$el.attr('href').substring(1)}]"
  #   int = target.position().top
  #   if int < scrollY 
  #     speed = -1
  #   else
  #     speed = 1
  #   scrollTo()
  #   false

  $('nav a').click ->
    $.scrollTo "[name=#{$(@).attr('href').substring(1)}]"
    false