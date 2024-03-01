::mods_hookExactClass("items/weapons/rf_battle_axe", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.FlipIconX = true;
	}
});
