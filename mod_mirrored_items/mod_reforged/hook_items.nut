// Reforged Items
{
	local path = "";

	// Default
	path = "scripts/items/weapons/";
	::MirroredItems.Utility.mirrorItemIcon(path + "rf_battle_axe", true, false, false, false);
	::MirroredItems.Utility.mirrorItemIcon(path + "rf_estoc", false, true);
	::MirroredItems.Utility.mirrorItemIcon(path + "rf_great_khopesh", true, false, false, false);	// Small Icon needed flipping, Large icon was correct
	::MirroredItems.Utility.mirrorItemIcon(path + "rf_greatsword", false, true);
	::MirroredItems.Utility.mirrorItemIcon(path + "rf_kriegsmesser", true, false);
	::MirroredItems.Utility.mirrorItemIcon(path + "rf_poleflail", true, false);
	::MirroredItems.Utility.mirrorItemIcon(path + "rf_reinforced_wooden_poleflail", true, false);
	::MirroredItems.Utility.mirrorItemIcon(path + "rf_swordstaff", true, false);
	::MirroredItems.Utility.mirrorItemIcon(path + "rf_poleaxe", true, false);
	::MirroredItems.Utility.mirrorItemIcon(path + "rf_halberd", true, false);
	::MirroredItems.Utility.mirrorItemIcon(path + "rf_voulge", true, false);

	{	// Draugr
		path = "scripts/items/weapons/rf_draugr/";
		::MirroredItems.Utility.mirrorItemIcon(path + "rf_draugr_battle_axe", true, false);
		::MirroredItems.Utility.mirrorItemIcon(path + "rf_draugr_greataxe", true, false);
		::MirroredItems.Utility.mirrorItemIcon(path + "rf_draugr_shaman_staff", true, false, false, false);
		::MirroredItems.Utility.mirrorItemIcon(path + "rf_draugr_sword", true, true);
		::MirroredItems.Utility.mirrorItemIcon(path + "rf_draugr_voulge", true, false);
		::MirroredItems.Utility.mirrorItemIcon(path + "rf_draugr_voulge", true, false);

		// This Reforged Draugr Item does not use a BaseItemScript, so we manually adjust it
		::MirroredItems.Utility.mirrorItemIcon("scripts/items/weapons/named/named_rf_draugr_greatsword", false, true);
	}
}
