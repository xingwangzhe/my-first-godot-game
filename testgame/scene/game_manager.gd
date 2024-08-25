extends Node
@onready var scorelabel: Label = $scorelabel

var score=0;
# Called when the node enters the scene tree for the first time.
func add_point():
	score+=1
	scorelabel.text="you have get "+str(score)+" coins."
	
	
	
