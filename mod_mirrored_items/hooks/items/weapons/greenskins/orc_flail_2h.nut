::mods_hookExactClass("items/weapons/greenskins/orc_flail_2h", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.FlipIconX = true;
		this.m.FlipIconLargeY = true;
	}
});
