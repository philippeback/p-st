private
includesKey: key
	| bucket |
	buckets size = 1
		ifTrue: [ ^ (buckets at: 1) includesKey: key ].	"TODO properly change the hash to be positive!"
	bucket := buckets at: key identityHash \\ buckets size + 1.
	bucket ifNil: [ ^ false ].
	^ bucket includesKey: key