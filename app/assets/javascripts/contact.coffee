$ ->
  $("form#contact").on "ajax:success", (e, data, status, xhr) ->
    if data.success
      $('.email-success').delay(500).fadeIn(1000).fadeOut(3000)
      $('.email-failed').fadeOut(500)
    else
      $('.email-failed').delay(500).fadeIn(1000)
      $('.email-success').fadeOut(500)
  .on "ajax:error", (e, xhr, status, error) ->
    console.log error