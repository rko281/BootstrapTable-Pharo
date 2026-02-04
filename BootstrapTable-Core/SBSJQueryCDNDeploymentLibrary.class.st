Class {
	#name : 'SBSJQueryCDNDeploymentLibrary',
	#superclass : 'SBSCDNDeploymentLibrary',
	#category : 'BootstrapTable-Core',
	#package : 'BootstrapTable-Core'
}

{ #category : 'accessing - defaults' }
SBSJQueryCDNDeploymentLibrary class >> cdnJSLocation [

	^'https://cdn.jsdelivr.net/npm/jquery@4.0.0/dist/jquery.min.js'
]

{ #category : 'accessing - defaults' }
SBSJQueryCDNDeploymentLibrary class >> cdnJSLocationIntegrity [
	"Calculated via https://www.srihash.org"

	^ 'sha384-fgGyf7Mo7DURSOMnOy7ed+dkq5Job205Gnzu6QIg0BOHKaqt4D76Dt8VlDCzcMHV'
]
