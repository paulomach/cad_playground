$fn=50;
module oneside(arm) {
    union() {
        {
            difference() {
                linear_extrude(height = arm) {
                    difference() {
                        square(size=[10,8]);
                        translate([1,0,0])
                        square(size=[8,6]);
                    }
                }
                translate([0,0,-5*sqrt(2)])
                rotate([45,0,0])
                cube(10);
                translate([0,3,8])
                rotate([0,90,0])
                cylinder(10,1.5,1.5,false);
                translate([0,0,arm-5*sqrt(2)])
                rotate([45,0,0])
                cube(10);
            }
        }

        translate([-10,0,arm-5*sqrt(2)])
        rotate([45,0,0])
        difference() {
            cube([30,10,10]);
            translate([0,0,1])
            cube([30,9,9]);
        }
    }
}

color("SteelBlue")
    oneside(70);
//rotate([7,0,0])
//translate([1.2,6,0])
//mirror([0,1,0])
//oneside(70);

