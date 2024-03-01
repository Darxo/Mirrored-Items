::mods_hookExactClass("items/weapons/ancient/ancient_sword", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.FlipIconX = true;
		this.m.FlipIconY = true;
		this.m.FlipIconLargeX = true;
		this.m.FlipIconLargeY = true;
	}
});
