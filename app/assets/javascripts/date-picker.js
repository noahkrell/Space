$( document ).ready(function() {
  (function ($) {

    $("#day-schedule").dayScheduleSelector({  
      days: [0, 1, 2, 3, 4, 5, 6],
      interval: 60,
      startTime: '09:00',
      endTime: '20:00'  
    });


    function getSunday(d) {
      d = new Date(d);
      var day = d.getDay(),
          diff = d.getDate() - day; // adjust when day is sunday
      return new Date(d.setDate(diff));
    }

    $("#day-schedule").on('selected.artsy.dayScheduleSelector', function (e, selected) {
      var day = $(".schedule-header th")[selected.data().day+1].innerHTML
      var start_time = selected.data().time
      var end_time = selected[selected.length-1].dataset.time
      var sunday = getSunday(new Date());
      var date = new Date();
      date.setDate(sunday.getDate() + selected.data().day)
      weekday = date.toDateString()
      $.ajax({
        url: window.location.pathname + "/book",
        type: "POST",
        data: { booking: {day: day, date: weekday, start_time: start_time, end_time: end_time} },
        dataType: 'json'
      }).done(function(resp) {
        // debugger
        var start = new Date(resp.booking.start_time);
        var end = new Date(resp.booking.end_time)
        end.setHours(end.getHours() + 1);
        $("#day-schedule").hide()
        $("#booking-confirmation").show().append("Starts " + start + "<br>" + "Ends " + end);
      });

    })

    
    // $("#day-schedule").data('artsy.dayScheduleSelector').deserialize({
    //   '1': [['10:00', '12:00']]
    // });
    // iterate through every time slot
      // iterate through every booking
        // if the time slot is equal to the start or end time of the booking, OR BETWEEN the start and end time of the booking
  


  })($);

});
