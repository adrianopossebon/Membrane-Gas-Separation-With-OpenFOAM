// Gmsh project created on Wed May 14 13:50:49 2025
SetFactory("OpenCASCADE");
//+
Point(1) = {0, 0, 0, 1.0};
//+
Point(2) = {0.05, 0, 0, 1.0};
//+
Point(3) = {0.1, 0, 0, 1.0};
//+
Point(4) = {0, 0.005, 0, 1.0};
//+
Point(5) = {0.05, 0.005, 0, 1.0};
//+
Point(6) = {0.1, 0.005, 0, 1.0};
//+
Point(7) = {0, 0.01, 0, 1.0};
//+
Point(8) = {0.05, 0.01, 0, 1.0};
//+
Point(9) = {0.1, 0.01, 0, 1.0};
//+
Line(1) = {1, 2};
//+
Line(2) = {2, 3};
//+
Line(3) = {4, 5};
//+
Line(4) = {5, 6};
//+
Line(5) = {7, 8};
//+
Line(6) = {8, 9};
//+
Line(7) = {1, 4};
//+
Line(8) = {4, 7};
//+
Line(9) = {2, 5};
//+
Line(10) = {5, 8};
//+
Line(11) = {3, 6};
//+
Line(12) = {6, 9};
//+
Curve Loop(1) = {1, 9, -3, -7};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {3, 10, -5, -8};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {9, 4, -11, -2};
//+
Plane Surface(3) = {3};
//+
Curve Loop(4) = {10, 6, -12, -4};
//+
Plane Surface(4) = {4};
//+
Recombine Surface {1, 2, 3, 4};
//+
Transfinite Surface {1};
//+
Transfinite Surface {2};
//+
Transfinite Surface {4};
//+
Transfinite Surface {3};
//+
Transfinite Curve {7, 9, 11} = 12 Using Progression 1;
//+
Transfinite Curve {8, 10, 12} = 12 Using Progression 1;
//+
Transfinite Curve {1, 3, 5} = 102 Using Progression 1;
//+
Transfinite Curve {2, 4, 6} = 102 Using Progression 1;
//+
Extrude {0, 0, 0.01} {
  Surface{1}; Surface{3}; Surface{4}; Surface{2}; Layers{1}; Recombine;
}
//+
Physical Volume("internal") = {1, 4, 2, 3};
//+
Physical Surface("inlet") = {8, 19};
//+
Physical Surface("outlet") = {11, 16};
//+
Physical Surface("frontAndBack") = {9, 20, 2, 1, 13, 17, 4, 3};
//+
Physical Surface("topWall") = {15, 18};
//+
Physical Surface("bottomWall") = {5, 12};
//+
Physical Surface("internalWall") = {6};
