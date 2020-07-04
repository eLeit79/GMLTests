function testVectors() {
	testVector2();
	
	out("");
}

function testVector2() {
	var v1 = new Vector2(1, 2);
	var v2 = new Vector2(2, 1);
	
	var actual = v1.x;
	var expected = 1;
	out("[TEST:Vector2:x] " + assertEquals(expected, actual).message);
	
	actual = v1.y;
	expected = 2;
	out("[TEST:Vector2:y] " + assertEquals(expected, actual).message);
	
	var v3 = v1.addVector(v2);
	
	actual = v3.x;
	expected = 3;
	out("[TEST:Vector2:addVector:x] " + assertEquals(expected, actual).message);

	actual = v3.y;
	out("[TEST:Vector2:addVector:y] " + assertEquals(expected, actual).message);
	
	v3 = v1.add(2, 1);
	
	actual = v3.x;
	out("[TEST:Vector2:add:x] " + assertEquals(expected, actual).message);

	actual = v3.y;
	out("[TEST:Vector2:add:y] " + assertEquals(expected, actual).message);
}
