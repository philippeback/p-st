exporting
restrictExportOn: inputSet
	| aSet |
	aSet := inputSet.
	aSet isCollection
		ifFalse: [ 
			restrictionSet := Set new.
			restrictionSet add: inputSet ]
		ifTrue: [ restrictionSet := PSet newFrom: aSet ]