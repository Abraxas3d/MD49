width = 66.04;
length = 109.22;
hole_diameter = 3.81;
width_hole_spacing = 55.88;
length_hole_spacing = 99.06;
wall_thickness = 3;
$fn = 50;
engrave_depth = 0.5;

difference()
{
cube(size = [width,length,wall_thickness], center = false);

translate(v = [width/2 - width_hole_spacing/2, (length/2 - length_hole_spacing/2), 0]) 
{
    cylinder(h=wall_thickness, r1=hole_diameter/2, r2=hole_diameter/2, center=false);
}

translate(v = [width/2 - width_hole_spacing/2, length - (length/2 - length_hole_spacing/2), 0])
{
    cylinder(h=wall_thickness, r1=hole_diameter/2, r2=hole_diameter/2, center=false);
}

translate(v = [width - (width/2 - width_hole_spacing/2), length - (length/2 - length_hole_spacing/2), 0])
{
    cylinder(h=wall_thickness, r1=hole_diameter/2, r2=hole_diameter/2, center=false);
}

translate(v = [width - (width/2 - width_hole_spacing/2), (length/2 - length_hole_spacing/2), 0])
{
    cylinder(h=wall_thickness, r1=hole_diameter/2, r2=hole_diameter/2, center=false);
}

translate([6, length/2, wall_thickness - engrave_depth])
{
    linear_extrude(engrave_depth)
        text("MD49 Motor Drive", size = 5);
}

}



