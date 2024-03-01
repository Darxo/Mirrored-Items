::mods_hookExactClass("items/weapons/named/named_weapon", function(o) {

	local oldGetValuesForRandomize = o.getValuesForRandomize;
	o.getValuesForRandomize <- function()
	{
		if (this.m.BaseWeaponScript == null) return {};

		local ret = oldGetValuesForRandomize();

		local baseWeapon = ::new(this.m.BaseWeaponScript);
		ret.FlipIconX <- baseWeapon.FlipIconX;
		ret.FlipIconY <- baseWeapon.FlipIconY;
		ret.FlipIconLargeX <- baseWeapon.FlipIconLargeX;
		ret.FlipIconLargeY <- baseWeapon.FlipIconLargeY;

		return ret;
	}
});
