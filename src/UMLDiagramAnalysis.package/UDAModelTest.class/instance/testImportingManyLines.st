tests
testImportingManyLines

	| d |
	self assert: m numberOfDiagrams equals: 0.
	m importString: '5,"FLASH MEMORY ARRAYPAGE 5121528 BYTES"
6,"RASH MEMORY ARRAYPAGE 5121528 BYTES"
14,ParamSet
14,"GraphNode 1"
14,Element
14,Circuit
14,Model
14,Xsubckt
14,Terminal
14,SubCircuit
14,OutRequest
14,InternalTerminal
14,ParamError
14,CircuitError'.
	self assert: m numberOfDiagrams equals: 3.
	
	d := m diagrams last.
	self assert: d id equals: 14.
	self assert: d numberOfItems equals: 12.
	self assert: d itemNames last equals: 'CircuitError'.
	
	m buildConnections