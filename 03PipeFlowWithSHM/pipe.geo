// Gmsh project created on Tue May 20 13:04:01 2025
SetFactory("OpenCASCADE");
//+
Cylinder(1) = {0, 0, 0, 0.1, 0, 0, 0.005, 2*Pi};
//+
Physical Volume("internal") = {1};
//+
Physical Surface("inlet") = {3};
//+
Physical Surface("wall") = {1};
//+
Physical Surface("outlet") = {2};
//+
Mesh.Algorithm = 6;
//+
Mesh 5;
//+
RefineMesh;
RefineMesh;
RefineMesh;
