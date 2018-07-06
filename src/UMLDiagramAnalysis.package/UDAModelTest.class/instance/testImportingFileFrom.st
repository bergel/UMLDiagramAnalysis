tests
testImportingFileFrom

	| d |
	self assert: m numberOfDiagrams equals: 0.
	m importFileFrom: 'xmi_id,cls_name
5,"FLASH MEMORY ARRAYPAGE 5121528 BYTES"
6,"RASH MEMORY ARRAYPAGE 5121528 BYTES"
14,ParamSet
14,"GraphNode 1"
14,Element
14,Circuit' readStream.
	self assert: m numberOfDiagrams equals: 3.
	
	d := m diagrams last.
	self assert: d id equals: 14.
	self assert: d numberOfItems equals: 4.
	self assert: d itemNames last equals: 'Circuit'