$(document).ready(function() {

  $(".our-photos").mouseover(function(){
    $(this).addClass("fa-spin");
    });
    $(".our-photos").mouseout(function(){
        $(this).removeClass("fa-spin");
    });

    $(".social-icon").mouseover(function(){
    $(this).css("color", "#F05F40");
    });
    $(".social-icon").mouseout(function(){
        $(this).css("color", "black");
    });

})
