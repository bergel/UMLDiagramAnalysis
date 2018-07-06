public
getCycle: visitedDiagrams
	(visitedDiagrams includes: self) ifTrue: [ ^ self ].
	visitedDiagrams add: self.
	self connectedDiagrams do: [ :d | d getCycle: visitedDiagrams ]