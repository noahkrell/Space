$( document ).ready(function() {

  (function ($) {

    $("#day-schedule").dayScheduleSelector({  
      days: [0, 1, 2, 3, 4, 5, 6],
      interval: 60,
      startTime: '09:00',
      endTime: '20:00'  
    });

    $("#day-schedule").on('selected.artsy.dayScheduleSelector', function (e, selected) {
      var day = $(".schedule-header th")[selected.data().day+1].innerHTML
      var start_time = selected.data().time
      var end_time = selected[selected.length-1].dataset.time
      var today = moment(new Date());
      var weekday = today.add(selected.data().day, 'days').format("MMM Do YYYY")
      $.ajax({
        url: window.location.pathname + "/book",
        type: "POST",
        data: { booking: {day: day, date: weekday, start_time: start_time, end_time: end_time} },
        dataType: 'json'
      }).done(function(resp) {
        alert(resp.alert);
      });
    })

    $("#day-schedule").data('artsy.dayScheduleSelector').deserialize({
      '0': [['09:30', '11:00'], ['13:00', '16:30']]
    });

  })($);

});


// var today = moment(new Date());
//     var weekday = today.add(i, 'days').format('ddd');
//     return weekday;