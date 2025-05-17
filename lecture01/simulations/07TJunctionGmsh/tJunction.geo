// Gmsh project created on Thu May 15 12:57:22 2025
SetFactory("OpenCASCADE");

L = 0.1;
D = 0.01;
dx = 0.001;    // Size of the mesh cell.

//+
Point(1) = {0, 0, 0, 1.0};
//+
Point(2) = {L, 0, 0, 1.0};
//+
Point(3) = {L+D, 0, 0, 1.0};
//+
Point(4) = {L+D+L, 0, 0, 1.0};
//+
Point(5) = {0, D, 0, 1.0};
//+
Point(6) = {L, D, 0, 1.0};
//+
Point(7) = {L+D, D, 0, 1.0};
//+
Point(8) = {L+D+L, D, 0, 1.0};
//+
Point(9) = {L, D+L, 0, 1.0};
//+
Point(10) = {L+D, D+L, 0, 1.0};
//+
Line(1) = {1, 2};
//+
Line(2) = {2, 3};
//+
Line(3) = {3, 4};
//+
Line(4) = {5, 6};
//+
Line(5) = {6, 7};
//+
Line(6) = {7, 8};
//+
Line(7) = {9, 10};
//+
Line(8) = {1, 5};
//+
Line(9) = {2, 6};
//+
Line(10) = {6, 9};
//+
Line(11) = {3, 7};
//+
Line(12) = {7, 10};
//+
Line(13) = {4, 8};
//+
Curve Loop(1) = {1, 9, -4, -8};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {9, 5, -11, -2};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {3, 13, -6, -11};
//+
Plane Surface(3) = {3};
//+
Curve Loop(4) = {5, 12, -7, -10};
//+
Plane Surface(4) = {4};
//+
Recombine Surface {1, 2, 3, 4};
//+
Transfinite Surface {1};
//+
Transfinite Surface {2};
//+
Transfinite Surface {3};
//+
Transfinite Surface {4};
//+
Transfinite Curve {1, 4} = L/dx Using Progression 1;
//+
Transfinite Curve {6, 3} = L/dx Using Progression 1;
//+
Transfinite Curve {12, 10} = L/dx Using Progression 1;
//+
Transfinite Curve {8, 9, 11, 13} = D/dx Using Progression 1;
//+
Transfinite Curve {2, 5, 7} = D/dx Using Progression 1;
//+
Extrude {0, 0, D} {
  Surface{1}; Surface{2}; Surface{3}; Surface{4}; Layers{1}; Recombine;
}
//+
Physical Surface("inlet") = {8};
//+
Physical Surface("outlet1") = {15};
//+
Physical Surface("outlet2") = {19};
//+
Physical Surface("frontAndBack") = {17, 3, 13, 2, 9, 1, 21, 4};
//+
Physical Surface("walls") = {16, 14, 12, 5, 7, 20, 18};
//+
Physical Volume("internal") = {1, 2, 3, 4};
