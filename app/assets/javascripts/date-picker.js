$( document ).ready(function() {

  (function ($) {
    $("#day-schedule").dayScheduleSelector({
      
      days: [1, 2, 3, 5, 4, 5, 6],
      interval: 60,
      startTime: '09:00',
      endTime: '20:00'
      
    });
    $("#day-schedule").on('selected.artsy.dayScheduleSelector', function (e, selected) {
      console.log(selected);
    })
    $("#day-schedule").data('artsy.dayScheduleSelector').deserialize({
      '0': [['09:30', '11:00'], ['13:00', '16:30']]
    });
  })($);

});
