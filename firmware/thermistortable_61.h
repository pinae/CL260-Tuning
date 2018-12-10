/**
 * Marlin 3D Printer Firmware
 * Copyright (C) 2016 MarlinFirmware [https://github.com/MarlinFirmware/Marlin]
 *
 * Based on Sprinter and grbl.
 * Copyright (C) 2011 Camiel Gubbels / Erik van der Zalm
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 *
 */

// 100k Epcos thermistor - CL260 Hotend (mk measured)
const short temptable_61[][2] PROGMEM = {
  { OV(   1), 350 },
  { OV(  18), 271 },
  { OV(  20), 263 },
  { OV(  23), 256 },
  { OV(  25), 251 },
  { OV(  28), 244 },
  { OV(  32), 240 },
  { OV(  37), 237 }, 
  { OV(  43), 224 },
  { OV(  62), 211 },
  { OV(  78), 201 },
  { OV(  88), 192 },
  { OV( 102), 184 },
  { OV( 121), 177 },
  { OV( 227), 149 },
  { OV( 272), 138 },
  { OV( 384), 120 },
  { OV( 550), 100 },
  { OV( 714),  79 },
  { OV( 849),  59 },
  { OV( 936),  39 },
  { OV( 966),  24 },
  { OV( 989),  18 },
  { OV(1008),   3 },
  { OV(1023),   0 } // to allow internal 0 degrees C
};
