public - importing
importString: manyLinesAsString
	manyLinesAsString lines do: [ :l | self importLine: l ]