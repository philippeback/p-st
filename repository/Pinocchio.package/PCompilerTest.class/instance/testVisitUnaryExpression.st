running
testVisitUnaryExpression
	| ast |
	parser := pparser unaryExpression.
	ast := self ast: 'true not'.
	ast message asSymbol should = #not.
	ast size = 0.
	ast receiver should beKindOf: PConstant