extracting
transformSuperClassOf: aPinocchioClass
	aPinocchioClass sclass = Object
		ifTrue: [ aPinocchioClass superclass: PNil nil ]
		ifFalse: [ aPinocchioClass superclass: (self transformClass: aPinocchioClass methodProvider superclass) ].	
	"Could be that we got ProtoObject. In this case transformClass returns nil!"
	aPinocchioClass superclass ifNil: [ aPinocchioClass superclass: PNil nil ].
	self haltIf: aPinocchioClass superclass class = UndefinedObject