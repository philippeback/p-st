matching
memoizeMatch: parser
	| result bucket |
	bucket := self bucket.
	result := bucket at: parser ifAbsent: [ |old|
		old := position.
		(parser parseOn: self)
			ifTrue: [ bucket at: parser put: position@(stack peek). ^ true ]
			ifFalse: [ position := old. bucket at: parser put: old@nil. ^ false ].
		].
	
	position := result x.
	result y ifNil: [ ^ false ].
	stack push: result y.
	^ true
	