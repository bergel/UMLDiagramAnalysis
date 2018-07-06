public
printOn: str
	super printOn: str.
	str nextPut: $<.
	str nextPutAll: self id asString.
	str nextPut: $,.
	str nextPutAll: self itemNames size asString.
	str nextPutAll: ' items'.
	str nextPut: $>.