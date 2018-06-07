class shot extends MovieClip
{
	function onLoad()
	{
	}
	function onEnterFrame()
	{
		_x += 10
		if(_x > Stage.width)
		{
			this.removeMovieClip()
		}
	}
}