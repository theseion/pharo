*System-CommandLineHandler
evaluate
	" stripped down version of evaluateDeclarations"
	| value |
	self codeDeclarations do: [ :declaration |
		requestor ifNotNil: [
			requestor contents: declaration contents ].
		value := declaration importFor: requestor ].
	self flushChangesFile.
	
	^value