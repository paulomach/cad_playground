union() {

    rotate([0,90,0]) difference() {
        cylinder(r1=2,r2=2,h=40,center=false,$fn=100);
        cylinder(r1=1.8,r2=1.8,h=40,center=false,$fn=100);
    }

    difference() {
        cylinder(r1=2,r2=2,h=30,center=false,$fn=100);
        cylinder(r1=1.8,r2=1.8,h=30,center=false,$fn=100);
    }

    difference() {
        cylinder(r1=2,r2=2,h=30,center=false,$fn=100);
        cylinder(r1=1.8,r2=1.8,h=30,center=false,$fn=100);
    }

    translate([-50,0,-3]) rotate([0,15,0]) difference() {
        cylinder(r1=2,r2=2,h=35,center=false,$fn=100);
        cylinder(r1=1.8,r2=1.8,h=35,center=false,$fn=100);
    }

    translate([-49,0,30]) rotate([0,90,0]) difference() {
        cylinder(r1=2,r2=2,h=10,center=false,$fn=100);
        cylinder(r1=1.8,r2=1.8,h=10,center=false,$fn=100);
    }

    translate([-47,15,30]) rotate([90,0,0]) difference() {
        cylinder(r1=2,r2=2,h=30,center=false,$fn=100);
        cylinder(r1=1.8,r2=1.8,h=30,center=false,$fn=100);
    }

    translate([40,0,0]) rotate([0,-60,0]) difference() {
        cylinder(r1=2,r2=2,h=50,center=false,$fn=100);
        cylinder(r1=1.8,r2=1.8,h=50,center=false,$fn=100);
    }

    translate([0,0,0]) rotate([0,-60,0]) difference() {
        cylinder(r1=2,r2=2,h=50,center=false,$fn=100);
        cylinder(r1=1.8,r2=1.8,h=50,center=false,$fn=100);
    }

    translate([-40,0,24]) rotate([0,90,0]) difference() {
        cylinder(r1=2,r2=2,h=40,center=false,$fn=100);
        cylinder(r1=1.8,r2=1.8,h=40,center=false,$fn=100);
    }

    $fn=200;
    color("darkslategrey") translate([35,0,0]) rotate([90,0,0])
    rotate_extrude(convexity = 10) translate([20,0,0]) circle(r=1.5);

    color("darkslategrey") translate([-50,0,0]) rotate([90,0,0])
    rotate_extrude(convexity = 10) translate([20,0,0]) circle(r=1.5);
}