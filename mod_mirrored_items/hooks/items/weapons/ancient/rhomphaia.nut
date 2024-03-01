::mods_hookExactClass("items/weapons/ancient/rhomphaia", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.FlipIconX = true;
	}
});
