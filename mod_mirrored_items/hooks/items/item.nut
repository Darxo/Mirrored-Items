::MirroredItems.HooksMod.hook("scripts/items/item", function(q) {
	// These are only used to automatically adjust famed items
	q.m.MirrorSettingIcon <- "";			// Will be prefixed to Icon of named items that are based off of this item
	q.m.MirrorSettingIconLarge <- "";		// Will be prefixed to IconLarrge of named items that are based off of this item
});
