// This is hooking Reforged code which was marked as "to be moved into MSU"
::MirroredItems.HooksMod.hook("scripts/items/weapons/named/named_weapon", function(q) {
	q.randomizeValues = @(__original) function()
	{
		__original();
		if (this.m.BaseItemScript != null)
		{
			local baseItem = ::new(this.m.BaseItemScript);

			// We fetch the MirrorSettingIcon configuration from the BaseItem, as we assume that any named graphics will point in the exact same direction
			// This must happen BEFORE the create hooks from weapon.nut ends
			if (this.m.MirrorSettingIcon == null) this.m.MirrorSettingIcon <- baseItem.m.MirrorSettingIcon;
			if (this.m.MirrorSettingIconLarge == null) this.m.MirrorSettingIconLarge <- baseItem.m.MirrorSettingIconLarge;
		}
	}
});

