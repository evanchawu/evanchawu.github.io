//=require jquery
//=require jquery_ujs

$ ->
  $('.tabs .tab').click ()->
    if $(this).hasClass('signin')
      $('.tabs .tab').removeClass('active')
      $(this).addClass('active')
      $('.cont').hide()
      $('.signin-cont').show()
    
    if $(this).hasClass('signup')
      $('.tabs .tab').removeClass('active')
      $(this).addClass('active')
      $('.cont').hide()
      $('.signup-cont').show()

  $('.container .bg').mousemove (e)->
    amountMovedX = (e.pageX * -1 / 30)
    amountMovedY = (e.pageY * -1 / 9)
    $(this).css('background-position', amountMovedX + 'px ' + amountMovedY + 'px')

