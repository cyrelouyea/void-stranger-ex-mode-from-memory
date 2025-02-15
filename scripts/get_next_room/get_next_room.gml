// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
function get_next_room(){
	switch (global.level.level_string) {
		case global.room_e000: return global.room_e001;
		case global.room_e000_alt: return global.room_e001;
		case global.room_e001: return global.room_e002;
		case global.room_e002: return global.room_e003_final;
		case global.room_e003_final: return global.room_e004_final;
		case global.room_e004_final: return global.room_e005_final;
		case global.room_e005_final: return global.room_e006_final;
		case global.room_e006_final: return global.room_e007_final;
		case global.room_e007_final: return global.room_e008_final;
		case global.room_e008_final: return global.room_e009_final;
		case global.room_e009_final: return global.room_e010_final;
		case global.room_e010_final: return global.room_e011_final;
		case global.room_e011_final: return global.room_e012_final;
		case global.room_e012_final: return global.room_e013_final;
		case global.room_e013_final: return global.room_e014_final;
		case global.room_e014_final: return global.room_e015_final;
		case global.room_e015_final: return global.room_e016_final;
		case global.room_e016_final: return global.room_exxx_escort_1;
		case global.room_e017_sword: return global.room_e018_sword;
		case global.room_e018_sword: return global.room_e019_sword;
		case global.room_e019_sword: return global.room_e020_sword;
		case global.room_e020_sword: return global.room_e021_sword;
		case global.room_e021_sword: return global.room_e022_sword;
		case global.room_e022_sword: return global.room_e023_sword;
		case global.room_e023_sword: return global.room_e024_sword;
		case global.room_e024_sword: return global.room_e025_sword;
		case global.room_e025_sword: return global.room_e026_sword;
		case global.room_e026_sword: return global.room_e027_sword;
		case global.room_e027_sword: return global.room_e028_sword;
		case global.room_e028_sword: return global.room_e029_sword;
		case global.room_e029_sword: return global.room_e030_sword;
		case global.room_e030_sword: return global.room_e031_sword;
		case global.room_e031_sword: return global.room_e032_wings;
		case global.room_e032_wings: return global.room_e033_wings;
		case global.room_e033_wings: return global.room_e034_wings;
		case global.room_e034_wings: return global.room_e035_wings;
		case global.room_e035_wings: return global.room_e036_wings;
		case global.room_e036_wings: return global.room_e037_wings;
		case global.room_e037_wings: return global.room_e038_wings;
		case global.room_e038_wings: return global.room_e039_wings;
		case global.room_e039_wings: return global.room_e040_wings;
		case global.room_e040_wings: return global.room_e041_wings;
		case global.room_e041_wings: return global.room_e042_wings;
		case global.room_e042_wings: return global.room_e043_wings;
		case global.room_e043_wings: return global.room_e044_wings;
		case global.room_e044_wings: return global.room_e045_wings;
		case global.room_e045_wings: return global.room_e046_wings;
		case global.room_e046_wings: return global.room_e047_memory;
		case global.room_e047_memory: return global.room_e048_memory;
		case global.room_e048_memory: return global.room_e049_memory;
		case global.room_e049_memory: return global.room_e050_memory;
		case global.room_e050_memory: return global.room_e051_memory;
		case global.room_e051_memory: return global.room_e052_memory;
		case global.room_e052_memory: return global.room_e053_memory;
		case global.room_e053_memory: return global.room_e054_memory;
		case global.room_e054_memory: return global.room_e055_memory;
		case global.room_e055_memory: return global.room_e056_memory;
		case global.room_e056_memory: return global.room_e057_memory;
		case global.room_e057_memory: return global.room_e058_memory;
		case global.room_e058_memory: return global.room_e059_memory;
		case global.room_e059_memory: return global.room_e060_memory;
		case global.room_e060_memory: return global.room_e061_memory;
		case global.room_e061_memory: return global.room_e000;
		case global.room_e098: return global.room_e099;
		case global.room_e099: return global.room_e100;
		case global.room_e100: return global.room_e101_extra_sword;
		case global.room_e101_extra_sword: return global.room_e102_extra_sword;
		case global.room_e102_extra_sword: return global.room_e103_extra_sword;
		case global.room_e103_extra_sword: return global.room_e104_extra_wings;
		case global.room_e104_extra_wings: return global.room_e105_extra_wings;
		case global.room_e105_extra_wings: return global.room_e106_extra_wings;
		case global.room_e106_extra_wings: return global.room_e107_extra_memory;
		case global.room_e107_extra_memory: return global.room_e108_extra_memory;
		case global.room_e108_extra_memory: return global.room_e109_extra_memory;
		case global.room_e109_extra_memory: return global.room_e110_extra_final;
		case global.room_e110_extra_final: return global.room_e111_extra_final;
		case global.room_e111_extra_final: return global.room_e112_extra_final;
		case global.room_e112_extra_final: return global.room_e113;
		case global.room_e113: return global.room_e114;
		case global.room_exxx_escort_1: return global.room_exxx_escort_2;
		case global.room_exxx_escort_2: return global.room_exxx_escort_3;
		case global.room_exxx_escort_3: return global.room_exxx_escort_4;
		case global.room_exxx_escort_4: return global.room_exxx_escort_5;
		case global.room_exxx_escort_5: return global.room_exxx_escort_6;
		case global.room_exxx_escort_6: return global.room_exxx_escort_7;
		case global.room_exxx_escort_7: 
			if global.fake_ending
				return global.room_exxx_birch_alt;
			else
				return global.room_exxx_birch;
		case global.room_exxx_birch: return global.room_exxx_birch; // THE END?!
		case global.room_exxx_extra_beginning: return global.room_e098;
		case global.room_exxx_memory: return global.room_e047_memory;
		case global.room_exxx_sword: return global.room_e017_sword;
		case global.room_exxx_wings: return global.room_e032_wings;
		case global.room_cif_room: return global.room_e000;
		case global.room_lev_room: return global.room_e000;
		default: return global.room_e000;
	}
}