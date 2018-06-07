class zombieGen extends MovieClip
{
	var generate
	function onLoad()
	{
		generate = 0
	}
	function onEnterFrame()
	{
		generate += 1
		if(generate >= 60)
		{
			var zomble = _root.attachMovie("zombie","zombie" + _root.getNextHighestDepth(), _root.getNextHighestDepth())
			zomble._x = 560
			zomble._y = Math.round(Math.random()*265) + 60
			generate = 0
		}
	}
}