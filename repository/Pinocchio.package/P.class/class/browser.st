as yet unclassified
browser
	| packageNames env |
	packageNames := Array with: #Pinocchio with: #PEG with: #PBenchmark.
	env := PackageEnvironment onEnvironment: BrowserEnvironment new packageNames: packageNames.
	env label: #Pinocchio.
	env browserInstance open