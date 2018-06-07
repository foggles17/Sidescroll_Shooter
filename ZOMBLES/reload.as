class reload extends MovieClip
{
	function onLoad()
	{
		_x = 10
		_y = 10
		_width = 0
	}
	function onEnterFrame()
	{
		if(_root.man.reload == 10)
		{
			_width = _root.man.wait*50/30
		}
		else
		{
			_width = 0
		}
	}
}