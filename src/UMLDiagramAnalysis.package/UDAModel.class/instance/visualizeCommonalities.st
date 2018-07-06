visualizations
visualizeCommonalities
	"an UDAModel"
| g d |
g := RTGrapher new.
d := RTData new.
d points: (self diagrams reverseSortedAs: #numberOfItems).
d y: #numberOfCommonItemNames.
d x: #numberOfItems.
g add: d.
g axisX noDecimal; title: 'Number of items'.
g axisY noDecimal; title: 'Number of common items'.
^ g