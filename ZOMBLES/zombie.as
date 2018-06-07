class zombie extends MovieClip
{
	var spd
	var hlth
	function onLoad()
	{
		spd = 3
		hlth = 3
	}
	function onEnterFrame()
	{
		_x -= spd
		if(_x < -30)
		{
			this.removeMovieClip()
		}
		if(_root.shot.hitTest(_x,_y,true))
		{
			
		}
	}
}