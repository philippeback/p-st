tests
testKeywordsArguments
	| parser string result |
	parser := pparser keywordsArguments.
	string := PEGStringScanner on: 'test: ab'.
	result := parser match: string.
	result class should = ASTKeywordMessageDefinition.
	result selectorSymbol should = #test:.
	result parameters size should = 1.
	result parameters first should = (ASTVariable new name: 'ab').
	string position should = 8.
	string := PEGStringScanner on: 'bla a'.
	[ parser match: string ] should signal: PEGParsingFailure.
	string := PEGStringScanner on: 'test: d bla: c boe'.
	result := parser match: string.
	result class should = ASTKeywordMessageDefinition.
	result selectorSymbol should = #test:bla:.
	result parameters size should = 2.
	result parameters first should = (ASTVariable new name: 'd').
	result parameters second should = (ASTVariable new name: 'c').
	string position should = 15