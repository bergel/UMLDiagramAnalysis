example
exampleFull
	<script: 'self new exampleFull'>
	| m filename |
	filename := '/Users/alexandrebergel/Desktop/lindholmen_mini_class_names.csv'.
	m := UDAModel new.
	m importFileFrom: filename asFileReference readStream.
	m buildConnections.
	m inspect