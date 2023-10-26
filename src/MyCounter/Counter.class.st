"
`Counter` is a simple concrete class which supports increamenting and decreamenting.

Its API is
- `decrement` and `increament`
- `count`
Its creation message is `startAt:`
"
Class {
	#name : #Counter,
	#superclass : #Object,
	#instVars : [
		'count'
	],
	#category : #MyCounter
}

{ #category : #accessing }
Counter >> count [
	"count value"
	"scope: instance-variables"

	^ count
]
