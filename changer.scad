$fn=50;

module haste() {
    linear_extrude(5)
    difference() {
        union() {
            polygon(points=[[0,0],[50,0],[50,10],[0,10]]);
            translate([0,5,0]) circle(d=10);
            translate([50,5,0]) circle(d=10);
        }
        translate([0,5,0]) circle(d=8);
        translate([50,5,0]) circle(d=8);
    }
}

module rod() {
    color("yellow")
    translate([0,5,0]) cylinder(r=3.8,h=45);
}

module arm() {
    haste();
    translate([0,0,40]) haste();
    rod();
    translate([50,0,0]) rod();
}

module platform() {
    translate([0,0,5.5])
    color("darkcyan")
    linear_extrude(34)
    difference() {
        polygon(points=[[-5,0],[5,0],[5,40],[-5,40]]);
        translate([0,5]) circle(d=8);
        translate([0,35]) circle(d=8);
    }
}


module cage() {
    arm();
    translate([0,30,0]) arm();
    platform();
    translate([50,0,0]) platform();
}

//rotate([90,90,0])


use <servo.scad>;

cage();

translate([-25,20,30]) 
rotate([0,0,180]) servo();

