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

{ #category : #accessing }
Counter >> count: c [
	"setup count value"
	"scope: instance-variables"

	count := c
]

{ #category : #'accumulator ops' }
Counter >> decreament [
	"comment stating purpose of instance-side method"
	"scope: instance-variables"

	count := count - 1
]

{ #category : #'accumulator ops' }
Counter >> increament [
	"increament"
	"scope: instance-variables"

	count := count + 1.
]
