example
example
	<script: 'self new example'>
	| m |
	m := UDAModel new.
	m importFileFrom: self code readStream.
	m buildConnections.
	m inspect