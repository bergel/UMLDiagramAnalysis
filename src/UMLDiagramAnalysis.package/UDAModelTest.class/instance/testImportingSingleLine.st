tests
testImportingSingleLine

	| d |
	self assert: m numberOfDiagrams equals: 0.
	m importLine: '14,Element'.
	self assert: m numberOfDiagrams equals: 1.
	
	d := m diagrams first.
	self assert: d id equals: 14.
	self assert: d numberOfItems equals: 1.
	self assert: d itemNames first equals: 'Element'