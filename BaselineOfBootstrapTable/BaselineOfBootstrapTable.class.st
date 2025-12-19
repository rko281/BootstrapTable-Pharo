Class {
	#name : 'BaselineOfBootstrapTable',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfBootstrapTable',
	#package : 'BaselineOfBootstrapTable'
}

{ #category : 'baselines' }
BaselineOfBootstrapTable >> baseline: spec [
	<baseline>

	spec for: #'common' do: [
		self 
			bootstrap5: spec;
			seasideExtras: spec.

		spec
			package: 'BootstrapTable-Core' with: [ spec requires: #('Bootstrap5-Core' 'SeasideExtras-JQuery') ];
			package: 'BootstrapTable-Examples' with: [ spec requires: #('BootstrapTable-Core' 'Bootstrap5-default') ].

		spec
			group: 'Core' with: #('BootstrapTable-Core');
			group: 'Examples' with: #('BootstrapTable-Examples' 'BootstrapTable-Core');
			group: 'default' with: #('Examples').
	]
]

{ #category : 'baselines' }
BaselineOfBootstrapTable >> bootstrap5: spec [

	spec
		baseline: 'Bootstrap5' with: [ spec repository: 'github://astares/Seaside-Bootstrap5:master/src' ];
		project: 'Bootstrap5-Core' copyFrom: 'Bootstrap5' with: [ spec loads: #( 'Core' ) ];
		project: 'Bootstrap5-default' copyFrom: 'Bootstrap5' with: [ spec loads: #( 'default' ) ]
]

{ #category : 'baselines' }
BaselineOfBootstrapTable >> seasideExtras: spec [

	spec
		baseline: 'SeasideExtras' with: [ spec repository: 'github://rko281/SeasideExtras-Pharo:main' ];
		project: 'SeasideExtras-Bootstrap5' copyFrom: 'SeasideExtras' with: [ spec loads: #( 'Bootstrap5' ) ];
		project: 'SeasideExtras-JQuery' copyFrom: 'SeasideExtras' with: [ spec loads: #( 'JQuery' ) ]
]
