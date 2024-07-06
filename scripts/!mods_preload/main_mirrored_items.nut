::MirroredItems <- {
	ID = "mod_mirrored_items",
	Name = "Mirrored Items",
	Version = "0.1.3"
}

::MirroredItems.HooksMod <- ::Hooks.register(::MirroredItems.ID, ::MirroredItems.Version, ::MirroredItems.Name);
::MirroredItems.HooksMod.require([]);

::MirroredItems.HooksMod.queue(">mod_reforged", function() {
	::MirroredItems.Mod <- ::MSU.Class.Mod(::MirroredItems.ID, ::MirroredItems.Version, ::MirroredItems.Name);

	::include("mod_mirrored_items/ui/load.nut");
	::include("mod_mirrored_items/load");		// Load MirroredItems-Adjustments and other hooks
});
