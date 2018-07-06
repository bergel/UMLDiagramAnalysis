visualizations
commonItemNames
	commonItemNames ifNotNil: [ ^ commonItemNames ].
	commonItemNames := self itemNames intersection: (self connectedDiagrams flatCollect: #itemNames).
	^ commonItemNames