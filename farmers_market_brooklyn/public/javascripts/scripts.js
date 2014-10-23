console.log(":)")


$(function(){

  $('.miniuser').on('mouseenter', function(e){
    $(this).find('img').animate({width: '8em'})
  })

  $('.miniuser').on('mouseleave', function(e){
    $(this).find('img').animate({width: '7em'})
  })

})