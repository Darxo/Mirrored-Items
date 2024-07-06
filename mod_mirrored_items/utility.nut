::MirroredItems.Utility <- {
// Public
	function mirrorItemIcon( _scriptPath, _flipHorizontal, _flipVertical, _extra1 = null, _extra2 = null )
	{
		if ( _extra1 == null )	// normally both types of icons will flipped the same way. in that case we dont evaluate the extra parameter
		{
			this.__mirrorItemIcon(_scriptPath, _flipHorizontal, _flipVertical, _flipHorizontal _flipVertical);
		}
		else
		{
			this.__mirrorItemIcon(_scriptPath, _flipHorizontal, _flipVertical, _extra1, _extra2);
		}
	}

// Private
	function __mirrorItemIcon( _scriptPath, _flipHorizontal, _flipVertical, _flipHorizontalLarge, _flipVerticalLarge )
	{
		::MirroredItems.HooksMod.hook(_scriptPath, function(q) {
			q.create = @(__original) function()
			{
				__original();

				// We save the setting to automatically apply them to named items (with reforged)
				this.m.MirrorSettingIcon = ::MirroredItems.Utility.__serializeMirrorSetting(this.m.Icon, _flipHorizontal, _flipVertical);
				this.m.MirrorSettingIconLarge = ::MirroredItems.Utility.__serializeMirrorSetting(this.m.IconLarge, _flipHorizontalLarge, _flipVerticalLarge);
			}
		});
	}

	function __serializeMirrorSetting( _path, _flipHorizontal, _flipVertical )
	{
		local prefix = "";
		local firstFolder = _path.slice(0, _path.find("/"));

		local codeCount = (2 * _flipHorizontal.tointeger()) + _flipVertical.tointeger();
		for (local i = 1; i <= codeCount; i++)
		{
			prefix += firstFolder + "/../";
		}

		return prefix;
	}
}
