::MirroredItems <- {
	ID = "mod_mirrored_items",
	Name = "Mirrored Items",
	Version = "0.1.1"
}

::mods_registerMod(::MirroredItems.ID, ::MirroredItems.Version, ::MirroredItems.Name);

::mods_queue(::MirroredItems.ID, "mod_msu, >mod_reforged", function()
{
	::MirroredItems.Mod <- ::MSU.Class.Mod(::MirroredItems.ID, ::MirroredItems.Version, ::MirroredItems.Name);

	::include("mod_mirrored_items/ui/load.nut");

	foreach (file in ::IO.enumerateFiles("mod_mirrored_items/hooks"))
	{
		::include(file);
	}

	if (::mods_getRegisteredMod("mod_reforged"))
	{
		foreach (file in ::IO.enumerateFiles("mod_mirrored_items/mod_reforged"))
		{
			::include(file);
		}
	}
});
