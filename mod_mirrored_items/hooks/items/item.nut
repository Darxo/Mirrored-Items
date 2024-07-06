::MirroredItems.HooksMod.hook("scripts/items/item", function(q) {
	// Null means that no adjustement should be made. A famed item which has null here, will use the values from its base item
	q.m.MirrorSettingIcon <- null;			// Will be prefixed to Icon of named items that are based off of this item
	q.m.MirrorSettingIconLarge <- null;		// Will be prefixed to IconLarrge of named items that are based off of this item
});
