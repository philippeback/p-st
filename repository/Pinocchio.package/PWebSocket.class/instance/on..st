initialize
on: aStream
	"Create a new WebSocket instance using the given SocketStream"

	stream := aStream.
"	name := PString streamContents:[:s| 
		stream socket remoteAddress 
			do:[:b| s print: b] 
			separatedBy:[s nextPut: $.]]."
	name := stream socket remoteAddress asString, ':', stream socket remotePort.