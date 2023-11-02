"
Lights Out game board.

Public API and Key Messages

- message one
- message two
- (for bonus points) how to create instances.

   One simple example is simply gorgeous.

Internal Representation and Key Implementation Points.


    Implementation Points
"
Class {
	#name : #LOGame,
	#superclass : #BorderedMorph,
	#instVars : [
		'cells'
	],
	#category : #'PBE-LightsOut'
}

{ #category : #accessing }
LOGame >> cellsPerSide [
	"The number of cells along each side of the game."
	^10.
]

{ #category : #initialization }
LOGame >> initialize [ 
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"

	| sampleCell width height n |
	super initialize .
	n := self cellsPerSide.
	sampleCell := LOCell new.
	width := sampleCell width.
	height := sampleCell height.
	self bounds: (5 @ 5 extent: (width * n) @ (height * n) + (2 * self borderWidth )).
	cells := Array2D 
		new: n
		tabulate: [ :i :j | self newCellAt: i at: j ]
]

{ #category : #initialization }
LOGame >> newCellAt: i at: j [
	"Create a cell for position (i, j) and add it to my on-screen
	representation at the appropriate screen position. Answer the new cell"
	"scope: class-variables  &  instance-variables"

	| c origin |
	c := LOCell new .
	origin := self innerBounds origin.
	self addMorph: c.
	c position: ((i - 1) *  c width) @ ((j - 1) * c height) + origin .
	c mouseDown: [ self toggleNeighboursOfCellAt: i at: j ]
]

{ #category : #setter }
LOGame >> toggleNeighboursOfCellAt: i at: j [

	"scope: instance-variables"

	i > 1
		ifTrue: [ (cells at: i - 1 at: j) toggleState ].
	i < self cellsPerSide 
		ifTrue: [ (cells at: i + 1 at: j) toggleState ].
	j > 1
		ifTrue: [ (cells at: i at: j - 1) toggleState ].
	j < self cellsPerSide
		ifTrue: [ (cells at: i at: j + 1) toggleState ].
]
