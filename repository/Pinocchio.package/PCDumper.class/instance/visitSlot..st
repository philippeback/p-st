visitor
visitSlot: aPInstanceVariable
	aPInstanceVariable uid
		ifNil:
			[ aPInstanceVariable uid: 'instvar_' , currentClass name asString , '_' , aPInstanceVariable name.
			globals add: aPInstanceVariable ].
	self
		putRaw: aPInstanceVariable
		with: 'new_AST_Slot(' , aPInstanceVariable index asString , ', L"' , aPInstanceVariable name , '")'