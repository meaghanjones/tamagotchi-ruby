$(function(){
  $("#food").click(function(e){
    $(location).attr('href', '/create/add_food')
  });
  $("#sleep").click(function(e){
    $(location).attr('href', '/create/add_sleep')
  });
  $("#activity").click(function(e){
    $(location).attr("href", "/create/add_activity")
  });
});
