visualizations
visualizeWorldCloud
	| b |
	b := RTNameCloud new.
	self diagrams do: [ :d | d itemNames do: [ :w | b addWord: w ] ].
	^ b