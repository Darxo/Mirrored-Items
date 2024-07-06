// This is hooking Reforged code which was marked as "to be moved into MSU"
::MirroredItems.HooksMod.hook("scripts/items/weapons/named/named_weapon", function(q) {
// Reforged Functions
	q.getValuesForRandomize = @(__original) function()
	{
		local ret = __original();
		if (this.m.BaseWeaponScript == null) return ret;

		local baseWeapon = ::new(this.m.BaseWeaponScript);
		if (this.m.MirrorSettingIcon == null) ret.MirrorSettingIcon <- baseWeapon.m.MirrorSettingIcon;
		if (this.m.MirrorSettingIconLarge == null) ret.MirrorSettingIconLarge <- baseWeapon.m.MirrorSettingIconLarge;

		return ret;
	}
});

