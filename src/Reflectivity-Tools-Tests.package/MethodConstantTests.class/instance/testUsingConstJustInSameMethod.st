tests
testUsingConstJustInSameMethod

	| values |
	<expectedFailure>
	values := OrderedCollection new.
	2 timesRepeat: [ values add: DateAndTime now asMethodConstant ].
	
	self assert: values first == values last