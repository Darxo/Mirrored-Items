::MirroredItems <- {
	ID = "mod_mirrored_items",
	Name = "Mirrored Items",
	Version = "0.1.4"
}

::MirroredItems.HooksMod <- ::Hooks.register(::MirroredItems.ID, ::MirroredItems.Version, ::MirroredItems.Name);
::MirroredItems.HooksMod.require(["mod_modular_vanilla"]);

::MirroredItems.HooksMod.queue(">mod_modular_vanilla, >mod_msu", function() {
	::MirroredItems.Mod <- ::MSU.Class.Mod(::MirroredItems.ID, ::MirroredItems.Version, ::MirroredItems.Name);

	::include("mod_mirrored_items/ui/load.nut");
	::include("mod_mirrored_items/load");		// Load MirroredItems-Adjustments and other hooks
});
