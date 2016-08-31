$fn=50;
module oneside(arm,profile) {
    union() {
        {
            difference() {
                linear_extrude(height = arm) {
                    difference() {
                        square(size=[profile,profile]);
                        translate([1,-1,0])
                        square(size=[profile-2,profile]);
                    }
                }
                translate([0,-profile*0.75,-profile*sqrt(2)])
                rotate([30,0,0])
                cube(profile*2);
                translate([0,profile/2,profile])
                rotate([0,90,0])
                cylinder(profile,2.5,2.5,false);
                translate([0,0,arm-profile/sqrt(2)])
                rotate([45,0,0])
                cube(profile);
            }
        }

        translate([-profile/2,0,arm-profile/sqrt(2)])
        rotate([45,0,0])
        difference() {
            cube([2*profile,profile,profile]);
            translate([0,-1,1])
            cube([2*profile,profile,profile]);
        }
    }
}

color("SteelBlue")
oneside(150,30);
//rotate([7,0,0])
//translate([1.2,6,0])
//mirror([0,1,0])
//oneside(70);

