::mods_registerJS("mod_mirrored_items/setup.js");

local prefixLen = "ui/mods/".len();
foreach(file in ::IO.enumerateFiles("ui/mods/mod_mirrored_items/js_hooks"))
{
	::mods_registerJS(file.slice(prefixLen) + ".js");
}
