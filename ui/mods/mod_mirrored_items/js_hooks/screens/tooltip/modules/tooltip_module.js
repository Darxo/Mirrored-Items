MirroredItems.Hooks.TooltipModule_addAtmosphericImageDiv = TooltipModule.prototype.addAtmosphericImageDiv;
TooltipModule.prototype.addAtmosphericImageDiv = function(_parentDIV, _data)
{
	if (!('image' in _data) || typeof(_data.image) !== 'string' || _data.image.length === 0) return null;	// Copied from Vanilla

	var scaleString = MirroredItems.Assets.generateScaleCommand(_data.image);

	var ret = MirroredItems.Hooks.TooltipModule_addAtmosphericImageDiv.call(this, _parentDIV, _data);

	var image = ret.find('img:first');
	image.css("transform", scaleString);

	return ret;
};
