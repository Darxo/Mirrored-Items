::MirroredItems.HooksMod.hookTree("scripts/items/weapons/weapon", function(q) {
	// After everything else has had their hands on this class, we overwrite the Icons.
	// This should come after any potential updateVariant() call
	q.create = @(__original) function()
	{
		__original();

		if (this.m.MirrorSettingIcon != null) this.m.Icon = this.m.MirrorSettingIcon + this.m.Icon;
		if (this.m.MirrorSettingIconLarge != null) this.m.IconLarge = this.m.MirrorSettingIconLarge + this.m.IconLarge;
	}

	// Adjust variants after the deserialization process, because this is not covered by the create hook above
	q.onDeserialize = @(__original) function( _in )
	{
		// We only do changes if the icon has changed during this process. Otherwise we would revert our initial mirroring
		local oldIcon = this.m.Icon;
		local oldIconLarge = this.m.IconLarge;

		__original(_in);

		if (this.m.MirrorSettingIcon != null && oldIcon != this.m.Icon) this.m.Icon = this.m.MirrorSettingIcon + this.m.Icon;
		if (this.m.MirrorSettingIconLarge != null && oldIconLarge != this.m.IconLarge) this.m.IconLarge = this.m.MirrorSettingIconLarge + this.m.IconLarge;
	}
});
