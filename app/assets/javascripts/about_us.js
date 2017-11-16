$(document).ready(function() {

  $(".our-photos").mouseover(function(){
    $(this).css("transform", "rotate(180deg)");
    });
    $(".our-photos").mouseout(function(){
        $(this).css("transform", "none");
    });

    $(".social-icon").mouseover(function(){
    $(this).css("color", "#F05F40");
    });
    $(".social-icon").mouseout(function(){
        $(this).css("color", "black");
    });

})
