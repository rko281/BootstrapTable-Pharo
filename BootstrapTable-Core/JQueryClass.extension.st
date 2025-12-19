Extension { #name : 'JQueryClass' }

{ #category : '*BootstrapTable-Core' }
JQueryClass >> bootstrapTable: aString [

	^(self id: aString) as: JQueryBootstrapTable
]
