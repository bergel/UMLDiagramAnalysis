visualizations
gtInspectorGraph01In: composite
	<gtInspectorPresentationOrder: 30> 

	| g d |
	^ composite list 
		title: 'Graph';
		display: [g := RTGrapher new.
d := RTData new.
d points: (self diagrams reverseSortedAs: #numberOfItems).
d y: #numberOfItems.
g add: d.
g axisX noDecimal; title: 'Diagrams'.
g axisY noDecimal; title: 'Number of items'.
g]