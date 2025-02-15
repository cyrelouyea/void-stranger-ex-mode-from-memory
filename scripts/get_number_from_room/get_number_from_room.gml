// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
function get_number_from_room(level_string){
switch level_string {
	case global.room_e000: return 0;
case global.room_e000_alt: return 0;
case global.room_e001: return 1;
case global.room_e002: return 2;
case global.room_e003_final: return 3;
case global.room_e004_final: return 4;
case global.room_e005_final: return 5;
case global.room_e006_final: return 6;
case global.room_e007_final: return 7;
case global.room_e008_final: return 8;
case global.room_e009_final: return 9;
case global.room_e010_final: return 10;
case global.room_e011_final: return 11;
case global.room_e012_final: return 12;
case global.room_e013_final: return 13;
case global.room_e014_final: return 14;
case global.room_e015_final: return 15;
case global.room_e016_final: return 16;
case global.room_e017_sword: return 17;
case global.room_e018_sword: return 18;
case global.room_e019_sword: return 19;
case global.room_e020_sword: return 20;
case global.room_e021_sword: return 21;
case global.room_e022_sword: return 22;
case global.room_e023_sword: return 23;
case global.room_e024_sword: return 24;
case global.room_e025_sword: return 25;
case global.room_e026_sword: return 26;
case global.room_e027_sword: return 27;
case global.room_e028_sword: return 28;
case global.room_e029_sword: return 29;
case global.room_e030_sword: return 30;
case global.room_e031_sword: return 31;
case global.room_e032_wings: return 32;
case global.room_e033_wings: return 33;
case global.room_e034_wings: return 34;
case global.room_e035_wings: return 35;
case global.room_e036_wings: return 36;
case global.room_e037_wings: return 37;
case global.room_e038_wings: return 38;
case global.room_e039_wings: return 39;
case global.room_e040_wings: return 40;
case global.room_e041_wings: return 41;
case global.room_e042_wings: return 42;
case global.room_e043_wings: return 43;
case global.room_e044_wings: return 44;
case global.room_e045_wings: return 45;
case global.room_e046_wings: return 46;
case global.room_e047_memory: return 47;
case global.room_e048_memory: return 48;
case global.room_e049_memory: return 49;
case global.room_e050_memory: return 50;
case global.room_e051_memory: return 51;
case global.room_e052_memory: return 52;
case global.room_e053_memory: return 53;
case global.room_e054_memory: return 54;
case global.room_e055_memory: return 55;
case global.room_e056_memory: return 56;
case global.room_e057_memory: return 57;
case global.room_e058_memory: return 58;
case global.room_e059_memory: return 59;
case global.room_e060_memory: return 60;
case global.room_e061_memory: return 61;
case global.room_e098: return 98;
case global.room_e099: return 99;
case global.room_e100: return 100;
case global.room_e101_extra_sword: return 101;
case global.room_e102_extra_sword: return 102;
case global.room_e103_extra_sword: return 103;
case global.room_e104_extra_wings: return 104;
case global.room_e105_extra_wings: return 105;
case global.room_e106_extra_wings: return 106;
case global.room_e107_extra_memory: return 107;
case global.room_e108_extra_memory: return 108;
case global.room_e109_extra_memory: return 109;
case global.room_e110_extra_final: return 110;
case global.room_e111_extra_final: return 111;
case global.room_e112_extra_final: return 112;
case global.room_e113: return 113;
case global.room_e114: return 114;
case global.room_e115: return 115;
case global.room_e118: return 118;
case global.room_e126: return 126;
case global.room_e131: return 131;
case global.room_e134: return 134;
case global.room_e135: return 135;
case global.room_e136: return 136;
case global.room_e143: return 143;
case global.room_e146: return 146;
case global.room_e147: return 147;
case global.room_e157: return 157;
case global.room_e161: return 161;
case global.room_e198: return 198;
case global.room_e199: return 199;

default: return -1;
}
}