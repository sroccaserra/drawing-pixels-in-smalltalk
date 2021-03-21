"
I represent a pixel editor.

(SebPixelEditor withModel: (SebPixelModel extent: 10@10)) clickAt: 10@10; clickAt: 1@1 ; display.
"
Class {
	#name : #SebPixelEditor,
	#superclass : #Form,
	#instVars : [
		'pixelModel'
	],
	#classInstVars : [
		'pixelModel'
	],
	#category : #'Seb-PixelEditor'
}

{ #category : #'instance creation' }
SebPixelEditor class >> withModel: aPixelModel [
	^ self new pixelModel: aPixelModel
	
]

{ #category : #accessing }
SebPixelEditor >> clickAt: position [
	pixelModel setColor: 2 at: position
]

{ #category : #'displaying-display' }
SebPixelEditor >> display [
	| form pixels |
	form := Form extent: pixelModel dimensions depth: 4.
	pixels := pixelModel pixels.
	pixels
		indicesDo:
			[ :row :column | form pixelValueAt: (row-1) @ (column-1) put: (pixels at: row at: column) ].
	form display
]

{ #category : #accessing }
SebPixelEditor >> pixelModel: aPixelModel [
	pixelModel := aPixelModel.
]
