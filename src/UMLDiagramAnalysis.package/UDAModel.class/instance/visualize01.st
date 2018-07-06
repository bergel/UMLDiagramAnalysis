visualizations
visualize01
	| b |
	b := RTMondrian new.
	b interaction highlightNeighbors: #connectedDiagrams.
	b interaction item: 'Focus on cycle' action: #visualizeCycle.
	b shape circle.
	b nodes: self diagrams.
	
	b shape line color: Color gray trans.
	b edges connectToAll: #connectedDiagrams.
	b normalizer
		normalizeSize: #numberOfItems;
		normalizeColor: #numberOfItems;
		alphaColor: 0.5.
	b layout force.
	^ b