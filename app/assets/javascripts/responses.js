$(function(){
  var count = parseInt($('#count').val());
  var pic = document.getElementById('pictures');
  for (var i = 0; i < count; i++ ){
    var p1 = document.createElement("p");
    var p2 = document.createElement("p");
    var pn = document.createElement("input");
    $(pn).attr({
      type:'file',
      id:'medium_o'+i+'',
      name:'medium_o'+i+''
    });
    pic.appendChild(p1);
    pic.appendChild(pn);
    pic.appendChild(p2);

  }
  $(pic).show();

  $("#add").click(function(){
    var count = $('#count').val();
    $('#count').val(parseInt(count) + 1);
    var pic = document.getElementById('pictures');
    var p1 = document.createElement("p");
    var p2 = document.createElement("p");
    var pn = document.createElement("input");
    $(pn).attr({
      type:'file',
      id:'medium_o'+count+'',
      name:'medium_o'+count+''
    });
    pic.appendChild(p1);
    pic.appendChild(pn);
    pic.appendChild(p2); 
  });
}); 
