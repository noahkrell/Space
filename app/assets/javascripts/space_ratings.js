function setRatyStars(){

  $('.star').raty('reload')

  var info = $('.space-ratings').data()

  
  $('.star').raty({
    readOnly: true,
    half: true,
    halfShow: true,
    starHalf: info.starHalf,
    starOff: info.starOff,
    starOn: info.starOn,
    score: $(this).data('score'),
  });

  $('.average-star').raty({
    readOnly: true,
    half: true,
    halfShow: true,
    starHalf: info.starHalf,
    starOff: info.starOff,
    starOn: info.starOn,
    score: $(this).data('score'),

  });

  $('.user_star').raty({
    half: true,
    halfShow: true,
    starHalf: info.starHalf,
    starOff: info.starOff,
    starOn: info.starOn,
    score: $(this).data('score'),

    click: function(score, evt) {
      $.ajax({
        url: '/spaces/',
        type: 'PATCH',
        data: { score: score }
      }).done(function (data){});
    }
  });
}


$(document).ready(function() {
  

  $(".show-content").on('submit','form.review-form', function(event) {
    event.preventDefault()
    var form = $(this)
    var input = form.serialize()
    console.log(input)
    debugger
    $.ajax({
      url: form.attr('action'),
      type: form.attr('method'),
      data: input
    })
    .done(function(responseData) {
      $('.space-ratings').append(responseData)
      $('.review-card').hide()
      $('#no-reviews-text').hide()
      setRatyStars()
    });
  });
})
