// function drawTextAlongArc(context, str, centerX, centerY, radius, angle){
//   context.save();
//   context.translate(centerX, centerY);
//   context.rotate(-1 * angle / 2);
//   context.rotate(-1 * (angle / str.length) / 2);
//   for (var n = 0; n < str.length; n++) {
//       context.rotate(angle / str.length);
//       context.save();
//       context.translate(0, -1 * radius);
//       var char = str[n];
//       context.fillText(char, 0, 0);
//       context.restore();
//   }
//   context.restore();
// }

// var address = gon.address;
            
// window.onload = function(){
//   var canvas = document.getElementById("myCanvas");
//   var context = canvas.getContext("2d");

//   context.font = "20pt Arial";
//   context.textAlign = "left";

  
//   var centerX = canvas.width / 2;
//   var centerY = canvas.height - 30;
//   var angle = Math.PI * 0.8; // radius
//   var radius = 180;
//   drawTextAlongArc(context, address, centerX, centerY, radius, angle);
// };