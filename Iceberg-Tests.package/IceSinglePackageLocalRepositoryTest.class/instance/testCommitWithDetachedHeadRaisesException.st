tests-commit
testCommitWithDetachedHeadRaisesException

	| message |
	repository branch commit checkout.
	self assert: repository head isDetached.
	
	message := 'Added IceGeneratedClassForTesting'.
	"This is a Ring working copy"
	repository workingCopy
		createClass: 'IceGeneratedClassForTesting' 
		inPackage: self packageName1 asSymbol.
			
	self should: [repository commitWithMessage: message] raise: IceWorkingCopyDesyncronized.