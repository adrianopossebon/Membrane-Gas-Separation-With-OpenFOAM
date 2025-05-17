// Gmsh project created on Wed May 14 16:11:07 2025
SetFactory("OpenCASCADE");
//+
Point(1) = {0, 0, 0, 1.0};
//+
Point(2) = {0.01, 0, 0, 1.0};
//+
Point(3) = {0.01, 0.01, 0, 1.0};
//+
Point(4) = {0.0, 0.01, 0, 1.0};
//+
Line(1) = {1, 2};
//+
Line(2) = {2, 3};
//+
Line(3) = {1, 4};
//+
Line(4) = {4, 3};
//+
Curve Loop(1) = {3, 4, -2, -1};
//+
Plane Surface(1) = {1};
//+
Extrude {0, 0, 0.01} {
  Surface{1}; Layers{1}; Recombine;
}
//+
Physical Surface("fixedWalls") = {2, 4, 5};
//+
Physical Surface("movingWall") = {3};
//+
Physical Surface("frontAndBack") = {6, 1};
//+
Physical Volume("internal") = {1};
