"
LOCell is the cell presentation for lights out game.

Public API and Key Messages

- message one
- message two
- (for bonus points) how to create instances.

   One simple example is simply gorgeous.

Internal Representation and Key Implementation Points.

    Instance Variables
	mouseAction:		<Object>


    Implementation Points
"
Class {
	#name : #LOCell,
	#superclass : #SimpleSwitchMorph,
	#instVars : [
		'mouseAction'
	],
	#category : #'PBE-LightsOut'
}

{ #category : #initialization }
LOCell >> initialize [ 
	"initialize cell and default turn it into yellow"
	"scope: class-instance-variables"

	super initialize .
	self label: ''.
	self borderWidth: 2.
	bounds := 0 @ 0 corner: 16 @ 16.
	offColor := Color paleYellow .
	onColor := Color paleBlue darker .
	self useSquareCorners .
	self turnOff .
]

{ #category : #printing }
LOCell >> printOn: aStream [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"

	super printOn: aStream .
	aStream 
		nextPutAll: ' for Lights Out game cell.'.
]
