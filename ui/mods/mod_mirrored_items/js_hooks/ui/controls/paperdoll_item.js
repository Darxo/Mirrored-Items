MirroredItems.Hooks.jQuery_assignPaperdollItemImage = $.fn.assignPaperdollItemImage;
$.fn.assignPaperdollItemImage = function(_imagePath, _imageIsSmall, _isBlocked)
{
	var scaleString = MirroredItems.Assets.generateScaleCommand(_imagePath);

	MirroredItems.Hooks.jQuery_assignPaperdollItemImage.call(this, _imagePath, _imageIsSmall, _isBlocked);

	var imageLayer = this.find('.image-layer:first');
	var image = imageLayer.find('img:first');
	image.css("transform", scaleString);
};
