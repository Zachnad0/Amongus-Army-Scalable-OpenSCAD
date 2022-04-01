//amogus
legRadius = 10;

for (a=[1:2]) {
	for (b=[1:5]) {
translate([a*legRadius*6,b*legRadius*6,0]) union() {
//legs
legHeight = legRadius*2;
color("red") {
translate([legRadius*-1.5,0,0]) cylinder(legHeight,legRadius,legRadius); //left
translate([legRadius*1.5,0,0]) cylinder(legHeight,legRadius,legRadius); //right
}
//body
/*bodyHeight = 10;*/
bodyWidth = legRadius*2.5;
bodyHeight = bodyWidth*2;
color("red") scale([1,0.75,1]) translate([0,0,legHeight]) cylinder(bodyHeight,bodyWidth,bodyWidth, false);

color("red") translate([0,0,-(bodyHeight/16)]) scale([1,1,1.25]) difference() {//diff of diffed thing???
//backpack
//base cube
	/*color("red")*/ scale([2/3,0.5,3/4]) translate([0,bodyWidth*1.5,legHeight+(bodyHeight*0.6)]) cube(bodyWidth*2,true);

//sphere cutout
	difference() {
	translate([0,bodyWidth*0.75,legHeight+(bodyHeight*0.4)]) sphere(bodyWidth*1.25);
		
	translate([0,bodyWidth*0.75,(legHeight+(bodyHeight*0.4))]) sphere(bodyWidth*0.75);
	}
}
//top part
color("red") scale([1,0.75,0.75]) translate([0,0,bodyHeight+legHeight*2]) sphere(bodyWidth);

//visor
visorWidth = bodyWidth*0.75;
//visorHeight = bodyHeight/3;
visorShift = bodyWidth*0.75*-1;
color("lightblue") scale([1,2/3,2/3]) translate([0,visorShift,legHeight+(bodyHeight*1.5)]) sphere(visorWidth);
		}
	}
}