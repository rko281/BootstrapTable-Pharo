Extension { #name : 'JQueryClass' }

{ #category : '*BootstrapTable-JQuery' }
JQueryClass >> bootstrapTable: aString [

	^(self id: aString) as: JQueryBootstrapTable
]
