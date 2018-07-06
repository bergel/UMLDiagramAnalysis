public
similarityWith: aDiagram
	| v |
	v := (itemNames intersection: aDiagram itemNames) size.
	v > 0
		ifTrue: [ connectedDiagrams add: aDiagram ]