// This is hooking Reforged code which was marked as "to be moved into MSU"
::MirroredItems.HooksMod.hook("scripts/items/weapons/named/named_weapon", function(q) {
	// Named weapons have a
	q.randomizeValues = @(__original) function()
	{
		__original();
		if (this.m.BaseItemScript != null)
		{
			local baseItem = ::new(this.m.BaseItemScript);
			if (this.m.MirrorSettingIcon == null) this.m.MirrorSettingIcon <- baseItem.m.MirrorSettingIcon;
			if (this.m.MirrorSettingIconLarge == null) this.m.MirrorSettingIconLarge <- baseItem.m.MirrorSettingIconLarge
		}
	}
});

