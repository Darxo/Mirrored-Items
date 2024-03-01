::mods_hookExactClass("items/weapons/ancient/khopesh", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.FlipIconX = true;
		this.m.FlipIconLargeX = true;
	}
});
