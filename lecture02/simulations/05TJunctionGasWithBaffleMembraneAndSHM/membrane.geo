// Gmsh project created on Wed May 21 17:34:40 2025
SetFactory("OpenCASCADE");
//+
Cylinder(1) = {0.11, 0.005, 0.005, 0.1, 0, 0, 0.005, 2*Pi};

//+
Physical Surface("membrane") = {3};
//+
Hide "*";
//+
Show {
Point{2};
Curve{3};
Surface{3};
}

