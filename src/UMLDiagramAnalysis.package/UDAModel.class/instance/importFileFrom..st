public - importing
importFileFrom: aStream
	aStream contents lines allButFirst do: [ :l | self importLine: l ]