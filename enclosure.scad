sys_width = 450;
screw_width = 465;

unit_height = 44.45;

sys_height = unit_height * 2;

sys_depth = 381;

big_hdd_width = 101.6;
big_hdd_depth = 146;
big_hdd_height = 26.1;

difference(){
    cube([sys_width, sys_depth, sys_height]);

    // first slot
    translate([10, -0.01, 10]){
        cube([big_hdd_width, big_hdd_depth, big_hdd_height]);
    }
    
    for(x = [7:10+big_hdd_width:450]){
        translate([x, -0.01, 10]){
        cube([big_hdd_width, big_hdd_depth, big_hdd_height]);
    }
    }
    
    for(x = [7:10+big_hdd_width:450]){
        translate([x, -0.01, 50]){
        cube([big_hdd_width, big_hdd_depth, big_hdd_height]);
    }
    }
}