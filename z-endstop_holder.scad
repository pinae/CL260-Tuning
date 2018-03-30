module lever() {
    difference() {
        union() {
            cylinder(d=25, h=5, $fn=64);
            translate([-50+6.4/2, -5, 0]) cube([75-6.4/2, 10, 5]);
            translate([25, 0, 0]) cylinder(d=10, h=5, $fn=32);
            translate([-50+6.4/2, -19.9/2, -20]) cube([4.5, 19.9, 25]);
        }
        translate([0, 0, -1]) cylinder(d=12, h=7, $fn=64);
        for(i=[0, 1]) {
            translate([25-i*50, 0, -1]) cylinder(d=3, h=7, $fn=32);
            translate([-50+6.4/2-1, -9.6/2+i*9.6, 7.5-20]) rotate([0, 90, 0]) cylinder(d=3.2, h=10, $fn=32);
            translate([-50+6.4/2+2, -9.6/2+i*9.6, 7.5-20]) rotate([0, 90, 0]) cylinder(d=6.4, h=5.5, $fn=6);
        }
        //#translate([-50, 0, 0]) cylinder(d=3, h=10, $fn=16);
    }
}

module spacer() {
    difference() {
        union() {
            translate([-25, -10, 0]) cube([50, 20, 5]);
            translate([-25, -10, 55]) cube([50, 20, 5]);
            translate([-32, 0, 0]) cube([64, 10, 5]);
            translate([-32, 0, 55]) cube([64, 10, 5]);
            for(i=[-1, 1]) {
                translate([-2.5+i*19.7, -10, 0]) cube([5, 20, 60]);
                translate([i*25, 0, 0]) cylinder(d=20, h=5, $fn=64);
                translate([i*25, 0, 55]) cylinder(d=20, h=5, $fn=64);
            }
        }
        translate([0, 0, -1]) cylinder(d=12, h=70, $fn=64);
        for(i=[-1, 1]) {
            translate([i*25, 0, -1]) cylinder(d=3.2, h=70, $fn=32);
            translate([i*25, 0, 2.5]) rotate([0, 0, 30]) cylinder(d=6.4, h=10, $fn=6);
        }
    }
}

translate([10, -13.5, 5]) rotate([180, 0, 0]) lever();
translate([0, 0, 10]) rotate([-90, 0, 0]) spacer();