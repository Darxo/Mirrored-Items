::MirroredItems <- {
	ID = "mod_mirrored_items",
	Name = "Mirrored Items",
	Version = "0.1.4",
	GitHubURL = "https://github.com/Darxo/Mirrored-Items",
}

::MirroredItems.HooksMod <- ::Hooks.register(::MirroredItems.ID, ::MirroredItems.Version, ::MirroredItems.Name);
::MirroredItems.HooksMod.require(["mod_modular_vanilla"]);

::MirroredItems.HooksMod.queue(">mod_modular_vanilla, >mod_msu", function() {
	::MirroredItems.Mod <- ::MSU.Class.Mod(::MirroredItems.ID, ::MirroredItems.Version, ::MirroredItems.Name);

	::MirroredItems.Mod.Registry.addModSource(::MSU.System.Registry.ModSourceDomain.GitHub, ::MirroredItems.GitHubURL);
	::MirroredItems.Mod.Registry.setUpdateSource(::MSU.System.Registry.ModSourceDomain.GitHub);

	::include("mod_mirrored_items/ui/load.nut");
	::include("mod_mirrored_items/load");		// Load MirroredItems-Adjustments and other hooks
});

::MirroredItems.HooksMod.queue(">mod_reforged, >mod_modular_vanilla, >mod_msu", function() {
	::includeFiles(::IO.enumerateFiles("mod_mirrored_items/hooks_verylate"));
}, ::Hooks.QueueBucket.VeryLate);
