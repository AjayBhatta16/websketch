function setup() {
	createCanvas(windowWidth, windowHeight);
	background(0);
}
var r = 255,g = 0,b = 0,x,y,pThick=5,eThick=15;
var eraserOn = false;
function mousePressed() {
	if(eraserOn){
		stroke(0);
		strokeWeight(eThick);
	} else {
		stroke(r,g,b);
		strokeWeight(pThick);
	}
	line(mouseX,mouseY,pmouseX,pmouseY);
}
function mouseDragged() {
	mousePressed();
}
function keyPressed() {
	if (key=="s" || key=="S"){saveCanvas("MyWebSketch" + day() + "_" + month() + "_" + hour() + "_" + minute() + "_" + second() + ".png");}
	if (key=="c" || key=="C"){newColor();}
	if (key=="e" || key=="E"){toggleEraser();}
	if(keyCode==38){
		changeThick(5);
	}
	if(keyCode==40){
		changeThick(-5);
	}
}
function newColor(){
	if(r==255 && g==0 && b==0){
		g=255;
	} else if(r==255 && g==255 && b==0){
		r=0;
	} else if(r==0 && g==255 && b==0){
		b=255;
	} else if(r==0 && g==255 && b==255){
		g=0;
	} else if(r==0 && g==0 && b==255){
		r=255;
	} else if(r==255 && g==0 && b==255){
		g=255;
	} else if(r==255 && g==255 && b==255){
		g=0;
		b=0;
	}
	stroke(r,g,b);
}					
function toggleEraser() {
	if(eraserOn) {
		eraserOn = false;
	} else {
		eraserOn = true;
	}
}
function changeThick(n){
	if(eraserOn){
		eThick += n;
	} else {
		pThick += n;
	}
}
