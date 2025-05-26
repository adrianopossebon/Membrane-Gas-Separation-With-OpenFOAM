// Gmsh project created on Wed May 21 17:34:40 2025
SetFactory("OpenCASCADE");
//+
Cylinder(1) = {0, 0.005, 0.005, 0.1, 0, 0, 0.005, 2*Pi};
//+
Cylinder(2) = {0.1, 0.005, 0.005, 0.01, 0, 0, 0.005, 2*Pi};
//+
Cylinder(3) = {0.11, 0.005, 0.005, 0.1, 0, 0, 0.005, 2*Pi};
//+
Cylinder(4) = {0.105, 0.005, 0.005, 0.0, 0.105, 0.0, 0.0049, 2*Pi};
//+
BooleanUnion (5) = { Volume {1,2,3}; Delete ; }{ Volume {4}; Delete ; };
//+
Physical Surface("walls") = {5, 4, 2, 1};
//+
Physical Surface("inlet") = {3};
//+
Physical Surface("outlet1") = {6};
//+
Physical Surface("outlet2") = {7};
//+
Physical Volume("internal") = {5};
