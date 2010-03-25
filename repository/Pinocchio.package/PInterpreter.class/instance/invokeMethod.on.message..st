sending
invokeMethod: closure on: receiver message: aMessage
	| method result pc |
	method := closure code.
	PFile stderr lf.
	self assert: method params size = aMessage size.
	method size = 0
		ifTrue: [ ^ receiver ].
	self
		methodContextFor: closure
		receiver: receiver
		class: closure host
		message: aMessage.
	[ (pc := context nextPc) < method size ] whileTrue: [ (method at: pc) accept: self ].
	result := (method at: pc) accept: self.
	context := context returnContext.
	^ result