public
visualizeCycle

	| c m |
	c := self getCycle.
	m := UDAModel new.
	m addAll: c.
	m inspect