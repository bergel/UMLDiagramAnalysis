public
getCycle
	"Return the cycle among diagrams that include me"
	| result |
	result := OrderedCollection new.
	self getCycle: result.
	^ result