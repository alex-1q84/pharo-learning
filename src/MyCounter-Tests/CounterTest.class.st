Class {
	#name : #CounterTest,
	#superclass : #TestCase,
	#category : #'MyCounter-Tests'
}

{ #category : #tests }
CounterTest >> testAlternateCreationMethod [
	"comment stating purpose of instance-side method"
	"scope: instance-variables"

	self assert: ((Counter startingAt: 19) increament; count) equals: 20.
]

{ #category : #tests }
CounterTest >> testCounterIsSetAndRead [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"

	| c |
	c := Counter new.
	c count: 7.
	self assert: c count equals: 7.
]

{ #category : #tests }
CounterTest >> testCounterStartingAt5 [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"

	self assert: (Counter startingAt: 5) count equals: 5.
]

{ #category : #tests }
CounterTest >> testDecreament [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"

	| c |
	c := Counter new.
	c count: 2; decreament; decreament.
	self assert: c count equals: 0.
]

{ #category : #tests }
CounterTest >> testIncreament [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"

	| c |
	c := Counter new.
	c count: 0; increament; increament.
	self assert: c count equals: 2
]

{ #category : #tests }
CounterTest >> testIncrement [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"

	| c |
	c := Counter new.
	c count: 0; increament; increament.
	self assert: c count equals: 2
]

{ #category : #tests }
CounterTest >> testInitialize [ 
	"scope: instance-variables"

	| c |
	c := Counter new.
	self assert: c count equals: 0.
]
