function Vector2(_x, _y) constructor {
	x = _x;
	y = _y;
	
	add = function(_x, _y) {
		return new Vector2(x + _x, y + _y);
	}
	
	addVector = function(v) {
		return new Vector2(x + v.x, y + v.y);
	}
}
