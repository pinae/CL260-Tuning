module y_endstop_holder() {
    difference() {
        union() {
            cube([19.9, 23, 5]);
            translate([0, 0, -30]) cube([19.9, 5, 35]);
            translate([0, 0, -36.5]) cube([19.9/2, 5, 10]);
            translate([19.9/2, 0, -30]) rotate([-90, 0, 0]) cylinder(d=19.9, h=5, $fn=64);
        }
        for(i=[0, 1]) {
           translate([i*9.6+4.9, 23-7.5, -1]) cylinder(d=3.3, h=12, $fn=32);
           translate([i*9.6+4.9, 23-7.5, 2.5]) rotate([0, 0, 30]) cylinder(d=6.3, h=9, $fn=6);
           rotate([-90, 0, 0]) translate([10, i*20+10, -1]) cylinder(d=3.3, h=7, $fn=32); 
        }
    }
}

rotate([0, -90, 0]) y_endstop_holder();