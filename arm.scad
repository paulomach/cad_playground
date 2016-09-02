$fn=100;
module seat_tube() {
    rotate([0,90,0])
    difference() {
        cylinder(375,30.9/2,30.9/2,false);
        cylinder(375,30/2,30/2,false);
    }
}
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
                cylinder(profile,3.05,3.05,false);
                translate([0,0,arm-profile/sqrt(2)])
                rotate([45,0,0])
                cube(profile);
                for (i=[0:2])
                    translate([profile/2,profile,(arm/4)*(i+1)])
                    rotate([90,0,0])
                    cylinder(4,2.05,2.05,false);
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
oneside(150,20);


translate([2,22.3,7.2])
rotate([18,0,0])
mirror([0,1,0])
oneside(145,16);

color("White")
translate([-70,-10,150])
seat_tube();

