//
// NopSCADlib Copyright Chris Palmer 2018
// nop.head@gmail.com
// hydraraptor.blogspot.com
//
// This file is part of NopSCADlib.
//
// NopSCADlib is free software: you can redistribute it and/or modify it under the terms of the
// GNU General Public License as published by the Free Software Foundation, either version 3 of
// the License, or (at your option) any later version.
//
// NopSCADlib is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY;
// without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
// See the GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License along with NopSCADlib.
// If not, see <https://www.gnu.org/licenses/>.
//
include <../global_defs.scad>
use <../utils/dogbones.scad>

module dogbones() {
    #linear_extrude(eps)
        dogbone_square([10, 20]);

    #translate([15, 0])
        dogbone_rectangle([10, 20, 5], center = false);

    #translate([30, 0])
        dogbone_rectangle_x([10, 20, 5], center = false);

    #translate([45, 0])
        dogbone_rectangle_y([10, 20, 5], center = false);

    sq = 3;
    translate([-5 + sq / 2 + eps, -10 + sq / 2 + eps])
        %cube([sq, sq, 1], center = true);
}

dogbones();
