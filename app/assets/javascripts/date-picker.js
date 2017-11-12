$( document ).ready(function() {

  (function ($) {

    $("#day-schedule").dayScheduleSelector({  
      days: [0, 1, 2, 3, 4, 5, 6],
      interval: 60,
      startTime: '09:00',
      endTime: '20:00'  
    });

    $("#day-schedule").on('selected.artsy.dayScheduleSelector', function (e, selected) {
      console.log(selected);
      debugger
      $.ajax({
        url: "/book",
        type: "POST",
        data: { data: "hello" }
      });
    })

    $("#day-schedule").data('artsy.dayScheduleSelector').deserialize({
      '0': [['09:30', '11:00'], ['13:00', '16:30']]
    });

  })($);

});

var d = new Date();
var weekday = new Array(7);
weekday[0] =  "Sunday";
weekday[1] = "Monday";
weekday[2] = "Tuesday";
weekday[3] = "Wednesday";
weekday[4] = "Thursday";
weekday[5] = "Friday";
weekday[6] = "Saturday";

var n = weekday[d.getDay()];