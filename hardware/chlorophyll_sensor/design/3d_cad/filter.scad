
color("black", 1)
difference()
{
    cylinder(d=28, h=4, $fn=100);
    translate([0,0,-0.1])
    cylinder(d=24, h=4.5, $fn=100);
}

translate([0, 0, 2.7])
color("red", 0.3)
cylinder(d=25,h=1, $fn=100);