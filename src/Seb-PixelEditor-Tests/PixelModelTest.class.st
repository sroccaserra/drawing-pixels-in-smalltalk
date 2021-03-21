"
I test the pixel model.
"
Class {
	#name : #PixelModelTest,
	#superclass : #TestCase,
	#category : #'Seb-PixelEditor-Tests'
}

{ #category : #tests }
PixelModelTest >> testAModelOfTwoByTwoPixelsHasAllZeros [
	| model pixelValue |
	"Given"
	model := SebPixelModel extent: 2 @ 2.
	"When"
	pixelValue := model getColorAt: 1 @ 1.
	"Then"
	self assert: pixelValue equals: 0
]

{ #category : #tests }
PixelModelTest >> testSetColor [
	| pixelModel actualColor |
	"Given"
	pixelModel := SebPixelModel extent: 100 @ 100.
	"When"
	pixelModel setColor: 1 at: 10 @ 10.
	"Then"
	actualColor := pixelModel getColorAt: 10 @ 10.
	self assert: actualColor equals: 1
]
