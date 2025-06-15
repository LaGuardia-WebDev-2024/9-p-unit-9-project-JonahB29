var arrowX, arrowY;
var arrowSpeedX, arrowSpeedY;

setup = function() {
size(600, 600);
background (255);

arrowX = random(50,350);
arrowY = random(50,350);

arrowSpeedX = random(-60,60);
arrowSpeedY = random(-60,60);

arrowX += arrowSpeedX;
arrowY += arrowSpeedY;

};

draw = function(){
background(255);

drawTarget();

arrowX += arrowSpeedX;
arrowY += arrowSpeedY;

if (arrowX < 50 || arrowX > 550) {
  arrowSpeedX *= -1;
}
if (arrowY < 50 || arrowY > 550) {
  arrowSpeedY *= -1;
};

drawArrow();

};

mouseClicked = function() {
  arrowSpeedX = 0;
  arrowSpeedY = 0;
};


var drawTarget = function(){

noStroke()
fill(253,3,3)
ellipse(300,300,375,375)
fill(255,255,255)
ellipse(300,300,300,300)
fill(253,3,3)
ellipse(300,300,225,225)
fill(255,255,255)
ellipse(300,300,150,150)
fill(253,3,3)
ellipse(300,300,75,75)

};

var drawArrow = function(){

fill(0,0,0);
textSize(50);
text("⇧",arrowX,arrowY);

};

