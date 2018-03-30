module x_endstop_holder() {
    difference() {
        union() {
            translate([0, 0, -13.5]) cube([10.5, 19.9, 13.5]);
            translate([0, 0, -5]) cube([35, 19.9, 5]);
            translate([35, 19.9/2, -5]) rotate([0, 0, 0]) cylinder(d=19.9, h=5, $fn=64);
        }
        for(i=[0, 1]) {
           translate([10.5-7.5, i*9.6+4.9, -14]) cylinder(d=3.3, h=15, $fn=32);
           translate([10.5-7.5, i*9.6+4.9, -13.5+3]) rotate([0, 0, 30]) cylinder(d=6.3, h=19, $fn=6);
           translate([i*20+15, 19.9/2, -6]) cylinder(d=3.3, h=7, $fn=32); 
        }
        //translate([-1, 0, -30]) cube([4, 15, 30]);
    }
}

rotate([0, 180, 0]) x_endstop_holder();
for(i=[0, 1]) {
    translate([-10.5+7.5, i*9.6+4.9, 0]) cylinder(d=3.1, h=10.5, $fn=32);
}