printing
warnOn: aStream
	input atEnd ifTrue: [
		aStream << 'Parsing failure. Expected more input at end: '.
		input printOn: aStream.
		^ self ].
	aStream << 'Parsing failure at '.
	aStream << input position.
	aStream << ': '.
	aStream << input sample