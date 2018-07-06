public - importing
importLine: aLine
	| ss id itemName d |
	ss := aLine substrings: ','.
	id := ss first asInteger.
	itemName := ss second.
	
	(self hasDiagrams and: [ self lastDiagram id = id ])
		ifTrue: [ d := self lastDiagram ]
		ifFalse: [ d := UDADiagram new id: id; yourself. diagrams add: d ].
		
	d addItem: itemName