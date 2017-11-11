$( document ).ready(function() {
  (function ($) {
    $("#day-schedule").dayScheduleSelector({
      
      days: [1, 2, 3, 5, 6],
      interval: 15,
      startTime: '09:50',
      endTime: '21:06'
      
    });
    $("#day-schedule").on('selected.artsy.dayScheduleSelector', function (e, selected) {
      console.log(selected);
    })
    $("#day-schedule").data('artsy.dayScheduleSelector').deserialize({
      '0': [['09:30', '11:00'], ['13:00', '16:30']]
    });
  })($);

});
