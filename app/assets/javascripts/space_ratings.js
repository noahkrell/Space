$(document).ready(function() {

  $(".show-content").on('submit','form.review-form', function(event) {
    event.preventDefault()
    var form = $(this)
    var input = form.serialize()
    console.log(input)
    // debugger
    $.ajax({
      url: form.attr('action'),
      type: form.attr('method'),
      data: input
    })
    .done(function(responseData) {
      console.log(responseData)
      $('.space-ratings').append(responseData)
    })
  });
});

