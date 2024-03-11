height = 10.78;
roof = 4;
diameter = 11.98;
bitDiameter = 4.7;

// make outer (largere diameter by... 2-3 mm?
// translate it z- by 4 mm to make a roof
difference() {
    cylinder(height+roof, d=diameter+3, $fn=200);

    // inner cylinder
    cylinder(height, d=diameter, $fn=200);
    
    // hole in middle for 4.7mm drill bit
    cylinder(height+roof, d=bitDiameter, $fn=200);
}