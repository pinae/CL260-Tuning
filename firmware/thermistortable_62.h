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

// 100k Epcos thermistor - CL260 Bed (mk measured)
const short temptable_62[][2] PROGMEM = {
  { OV(   1), 350 },
  { OV( 426), 117 },
  { OV( 430), 116 },
  { OV( 454), 113 },
  { OV( 473), 108 },
  { OV( 500), 106 },
  { OV( 516), 105 },
  { OV( 544), 100 },
  { OV( 568),  97 },
  { OV( 588),  95 },
  { OV( 610),  93 },
  { OV( 653),  88 },
  { OV( 690),  82 },
  { OV( 757),  69 },
  { OV( 815),  62 },
  { OV( 895),  48 },
  { OV( 959),  32 },
  { OV(1008),   3 },
  { OV(1023),   0 } // to allow internal 0 degrees C
};
