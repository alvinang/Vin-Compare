$(document).ready(function(){
  var table = $('table');
  var progress = $('.progress');
  table.hide();
  progress.addClass("loading").delay(6500).queue(function(){$(this).removeClass("loading")})
  table.show(6000);

});