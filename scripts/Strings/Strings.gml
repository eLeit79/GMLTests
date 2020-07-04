/// @func string_split(delimiter, target)
/// @desc Split a target string by a delimiter string.
/// @arg {string} delimiter
/// @arg {string} target
/// @return {array} Array of strings
function string_split(delimiter, target) {
	var dLength = string_length(delimiter);
	var tLength = string_length(target);
	var currentWord = "";
	var words = [];
	var count = 0;

	// If delimiter is empty, split into individual chars.
	if (delimiter == "") {
		for (var i = 1; i <= tLength; i++) {
			words[count++] = string_char_at(target, i);
		}
		
		return words;
	}
	
	// Split string into words by delimiter
	var i = 1;
	while (i <= tLength) {
		var c = string_char_at(target, i);
		var d = "";
		if (i < tLength - dLength) {
			d = string_copy(target, i, dLength);
		}
		if (d == delimiter) {
			words[count++] = currentWord;
			currentWord = "";
			
			i += dLength;
		} else {
			currentWord += c;
			words[count] = currentWord;
	
			i++;
		}
	}
	
	return words;
}

/// @func string_join(delimiter, strArray)
function string_join(delimiter, strArray) {
	var len = array_length(strArray);
	var str = "";
	
	for (var i = 0; i < len; i++) {
		if (i > 0) {
			str += delimiter;
		}
		
		str += strArray[i];
	}
	
	return str;
}
