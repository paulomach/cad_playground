color("SteelBlue"){
linear_extrude(height = 50){
    difference(){
        square(size=[10,8]);
        translate([1,0,0])
            square(size=[8,6]);
    }
}}


rotate([0,0,180]){
translate([-8,-5,0]){
linear_extrude(height = 50){
    difference(){
        square(size=[10,8]);
        translate([1,0,0])
            square(size=[8,6]);
    }
}}}