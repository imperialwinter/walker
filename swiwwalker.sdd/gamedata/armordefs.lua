local armorDefs = {

flag = {
	"a_p_flag",
	"imp_p_flag",
	"reb_p_flag",
},

no_armor = {
	"imp_b_airplant",
	"imp_b_airplantadv",
	"imp_b_barracks",
	"imp_b_droidplant",
	"imp_b_vehicleplant",
	"imp_b_walkerplant",
	"reb_b_airplant",
	"reb_b_airplantadv",
	"reb_b_barracks",
	"reb_b_barracksadv",
	"reb_b_repulsorliftplant",
	"reb_b_heavyweaponslab",

	"imp_c_protocon",

	"imp_d_fence",
	"reb_d_sandbags",

	"imp_i_eweb",
	"imp_i_flametrooper",
	"imp_i_reptrooper",
	"imp_i_rockettrooper",
	"imp_i_royalguard",
	"imp_i_scouttrooper",
	"imp_i_stormtrooper",
	"reb_i_avrocket",
	"reb_i_bothan",
	"reb_i_mrb",
	"reb_i_rockettrooper",
	"reb_i_sniper",
	"reb_i_trooper",
	"reb_i_veterantrooper",
	"reb_i_wookiee",

	"imp_p_estore",
	"imp_p_flagecon1",
	"imp_p_flagmil1",
	"imp_p_fusion",
	"imp_p_solar",
	"imp_p_tibanna",
	"reb_p_estore",
	"reb_p_flagecon1",
	"reb_p_flagmil1",
	"reb_p_fusion",
	"reb_p_tibanna",
	"reb_p_varenergy",

	"imp_sp_sensor",
	"reb_sp_sensor",
	"reb_sp_spotter",
},

light_armor = {
	"imp_a_cloudcar",
	"imp_a_gunboat",
	"imp_a_laat",
	"imp_a_laatc",
	"imp_a_scimitar",
	"imp_a_tiebomber",
	"imp_a_tiedefender",
	"imp_a_tiedroid",
	"imp_a_tiefighter",
	"imp_a_tieinterceptor",
	"imp_a_tiephantom",
	"reb_a_airspeeder",
	"reb_a_awing",
	"reb_a_bwing",
	"reb_a_ewing",
	"reb_a_shuttle",
	"reb_a_transport",
	"reb_a_twing",
	"reb_a_vwing",
	"reb_a_xwing",
	"reb_a_ywing",
	"reb_a_z95",

	"imp_sc_speederbike",
	"reb_sc_speederbike",

	"imp_w_atrt",
	"imp_w_atar",
	"reb_v_ulav",
	"reb_w_espo",
},

medium_armor = {
	"imp_c_condroid",
	"imp_c_walker",
	"reb_c_condroid",

	"imp_v_groundtransport",
	"imp_v_hailfire",
	"imp_v_mobileartillery",
	"imp_w_atxt",

	"reb_v_groundtransport",
	"reb_v_t1b",
	"reb_v_t2b",
	"reb_w_atpt",
},

heavy_armor = {
	"imp_commander",
	"imp_com_eweb",
	"imp_com_garrison1",
	"imp_com_l1aa",
	"imp_com_radar",
	"imp_com_res1",
	"imp_com_wall",
	"reb_commander",
	"reb_com_armor1",
	"reb_com_builder1",

	"imp_d_antiair",
	"imp_d_ioncannon",
	"imp_d_turbolaser",
	"reb_d_antiair",
	"reb_d_atgar",
	"reb_d_golan",

	"imp_v_tiecrawler",
	"imp_v_tx130",
	"imp_w_ataa",
	"imp_w_atmd",
	"imp_w_atst",
	"imp_w_atstas",
},

ion_damage = {
	"imp_i_battledroid",
	"imp_i_droideka",
	"imp_i_superbattledroid",
	"imp_sc_probedroid",
	"imp_sc_stap",
	"imp_w_crabdroid",
},

}

for categoryName, categoryTable in pairs(armorDefs) do --function shamelessly stolen from CA
	local t = {}
	for _, unitName in pairs(categoryTable) do
		t[unitName] = 99
	end
	armorDefs[categoryName] = t
end

return armorDefs