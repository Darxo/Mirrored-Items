::mods_hookExactClass("items/weapons/greatsword", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.FlipIconY = true;
		this.m.FlipIconLargeY = true;
	}
});
