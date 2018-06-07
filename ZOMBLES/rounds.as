class rounds extends MovieClip
{
	function onLoad()
	{
		_x = 10
		_y = 10
	}
	function onEnterFrame()
	{
		_width = (10 - _root.man.reload) * 5
	}
}