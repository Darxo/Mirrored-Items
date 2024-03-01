::mods_hookExactClass("items/weapons/two_handed_hammer", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.FlipIconX = true;
		this.m.FlipIconLargeX = true;
	}
});
