public
addItem: anItem
	(anItem = 'EMPTY') ifTrue: [ ^ self ].
	itemNames add: anItem 