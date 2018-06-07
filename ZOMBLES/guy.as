class guy extends MovieClip
{
	var ySpd
	var xSpd
	var shootTimer
	var level
	var reload
	var wait
	var health
	function onLoad()
	{
		ySpd = 5
		xSpd = 5
		shootTimer = 0
		level = 1
		reload = 0
		wait = 0
		health = 100
		_x = 50
		_y = 200
	}
	function onEnterFrame()
	{
		if(level > 0)
		{
			if(Key.isDown(87))
			{
				_y -= ySpd
			}
			else if(Key.isDown(83))
			{
				_y += ySpd
			}
			if(Key.isDown(68))
			{
				_x += xSpd
			}
			else if(Key.isDown(65))
			{
				_x -= xSpd
			}
			
			shootTimer += 1
			
			if(reload == 10)
			{
				wait += 1
			}
			if(wait >= 30)
			{
				wait = 0
				reload = 0
			}
			if(Key.isDown(1))
			{
				if(shootTimer > 5 && wait == 0)
				{
					shootTimer = 0
					var missile = _root.attachMovie("shot","shot" + _root.getNextHighestDepth(), _root.getNextHighestDepth())
					missile._x = _x + 25
					missile._y = _y + 12.5
					reload += 1
				}
			}
		}
	}
}