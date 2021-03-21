"
I define a pixel model.
"
Class {
	#name : #SebPixelModel,
	#superclass : #Object,
	#instVars : [
		'dimensions',
		'pixels'
	],
	#category : #'Seb-PixelEditor'
}

{ #category : #'instance creation' }
SebPixelModel class >> extent: dimensions [
	| array pixels |
	array := (Array new: dimensions x * dimensions y) atAllPut: 0.
	pixels := Array2D
		rows: dimensions x
		columns: dimensions y
		contents: array.
	^ self new
		dimensions: dimensions;
		pixels: pixels;
		yourself
]

{ #category : #accessing }
SebPixelModel >> dimensions [
	^ dimensions
]

{ #category : #accessing }
SebPixelModel >> dimensions: aPoint [
	dimensions := aPoint
]

{ #category : #accessing }
SebPixelModel >> getColorAt: position [
	^ pixels at: position x at: position y
]

{ #category : #accessing }
SebPixelModel >> pixels [
	^ pixels
]

{ #category : #'changing pixels' }
SebPixelModel >> pixels: anArray2D [
	pixels := anArray2D
]

{ #category : #'changing pixels' }
SebPixelModel >> setColor: colorIndex at: position [
	pixels at: position x at: position y put: colorIndex
	
	
]
