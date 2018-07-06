public - adding
buildConnections
	self diagrams copy do: [ :d1 | 
		self diagrams do: [ :d2 | d1 similarityWith: d2 ] ]