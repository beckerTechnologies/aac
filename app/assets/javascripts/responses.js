$(function(){
/*
<div class="file-input-wrapper">
  <button class="btn-file-input">Custom Upload</button>
  <input type="file" name="file" />
</div>
*/
  var count = parseInt($('#count').val());
  var pic = document.getElementById('pictures');
  for (var i = 0; i < count; i++ ){
    var d1 = document.createElement("div");
    $(d1).addClass("file-input-wrapper");
    var b1 = document.createElement("button");
    $(b1).addClass("btn-file-input");
    $(b1).html("Upload attachment");
    //var p1 = document.createElement("p");
    //var p2 = document.createElement("p");
    var pn = document.createElement("input");
    $(pn).attr({
      type:'file',
      id:'medium_o'+i+'',
      name:'medium_o'+i+''
    });
    d1.appendChild(pn);
    d1.appendChild(b1);
    pic.appendChild(d1);
    
    //pic.appendChild(p1);
    //pic.appendChild(pn);
    //pic.appendChild(p2);

  }
  $(pic).show();

  $("#add").click(function(){
    var count = $('#count').val();
    $('#count').val(parseInt(count) + 1);
    var pic = document.getElementById('pictures');
    var d1 = document.createElement("div");
    $(d1).addClass("file-input-wrapper");
    var b1 = document.createElement("button");
    $(b1).addClass("btn-file-input");
    $(b1).html("Upload attachment");
    var pn = document.createElement("input");
    $(pn).attr({
      type:'file',
      id:'medium_o'+i+'',
      name:'medium_o'+i+''
    });
    d1.appendChild(b1);
    d1.appendChild(pn);
    pic.appendChild(d1);
  });
}); 
