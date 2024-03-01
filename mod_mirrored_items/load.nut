::include("mod_mirrored_items/utility");

::includeFiles(::IO.enumerateFiles("mod_mirrored_items/hooks"));		// This will load and execute all hooks that you created

if (::mods_getRegisteredMod("mod_reforged"))
{
	::includeFiles(::IO.enumerateFiles("mod_mirrored_items/mod_reforged"));		// This will load and execute all reforged related hooks
}
