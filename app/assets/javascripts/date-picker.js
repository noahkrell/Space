$( document ).ready(function() {
  (function ($) {
    $("#payment-modal").hide()
    $("#confirmation-spinner").hide()

    $("#day-schedule").dayScheduleSelector({  
      days: [0, 1, 2, 3, 4, 5, 6],
      interval: 60,
      startTime: '09:00',
      endTime: '20:00'  
    });

    // function unsed to standardize the calendar dates. 
    // we can find the actual dates of each subsequent day on the calendar relative to the initial sunday date (week start)
    function getSunday(d) {
      d = new Date(d);
      var day = d.getDay(),
          diff = d.getDate() - day;
      return new Date(d.setDate(diff));
    }

    // write string function to replace value at a given index
    // use this for the incrementHour function below
    String.prototype.replaceAt=function(index, replacement) {
    return this.substr(0, index) + replacement+ this.substr(index + replacement.length);
    }

    // increments the hour by one hour 
    // this is necessary when setting the 'end_time' in the function below
    function incrementHour(h) {
      if (h.substring(0,2) == "19") { // accounting for booking edge case
        var plusOneHour = parseInt(h.substring(0,2)) + 1
        var newHour = plusOneHour.toString()
        return h.replaceAt(0, newHour)
      } else if (h.substring(0,2) == "09") { // accounting for booking edge case
        var plusOneHour = parseInt(h.substring(0,2)) + 1
        var newHour = plusOneHour.toString()
        return h.replaceAt(0, newHour)
      } else {
        var plusOneHour = parseInt(h[1]) + 1
        var newHour = plusOneHour.toString()
        return h.replaceAt(1, newHour)
      };
    };

    function getTimeBlocks(startTime, endTime) {
      var start = new Date(startTime)
      var end = new Date(endTime)
      return (end.getHours() - start.getHours())
    };

    function getTotalPrice(timeBlocks, hourlyPrice) {
      return (timeBlocks * hourlyPrice)
    }

    // function showSpinner() {
    //   document.getElementById("confirmation-spinner").style.display="block";
    //   setTimeout(function(){ $("#confirmation-spinner").hide() }, 2000);
    // }


    // function to pass booking data to controller to save to the db
    $("#day-schedule").on('selected.artsy.dayScheduleSelector', function (e, selected) {
      var day = $(".schedule-header th")[selected.data().day+1].innerHTML
      var start_time = selected.data().time
      var end_time = incrementHour(selected[selected.length-1].dataset.time)
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
        var timeBlocks = getTimeBlocks(resp.booking.start_time, resp.booking.end_time)
        var startString = start.toLocaleDateString() + " @ " + String(start.getHours()) + ":00";
        var endString = end.toLocaleDateString() + " @ " + String(end.getHours()) + ":00";
        var totalPrice = getTotalPrice(timeBlocks, resp.space.price)
        $("#day-schedule").hide()
        // showSpinner()
        document.getElementById("confirmation-spinner").style.display="none";
        $("#booking-confirmation").show().prepend("<strong>Starts:</strong> " + startString + "<br>" + "<strong>Ends:</strong> " + endString + "<br>" + "Hourly Price ($" + String(resp.space.price) + ") X Hours (" + String(timeBlocks) + ") = $" + String(totalPrice) + "<br>");
        // $(".stripe_form").hide()
        $("#payment-modal").show()
      });

    })
  })($);

});
