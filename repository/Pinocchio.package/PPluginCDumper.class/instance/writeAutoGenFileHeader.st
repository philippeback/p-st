sourceCreation
writeAutoGenFileHeader
	stream << self autoGenHeader; lf.
	self include: 'plugin/Plugin.h'.
	(FileDirectory default fileExists: pluginSourcePath, 'Helper.h') ifTrue: [
		self include: pluginName, 'Helper.c'
	].