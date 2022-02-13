extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$Label.text = "Max Height: " + String($saltimbanqui.max_height) + "\n Base Height: " + String($saltimbanqui.base_height) + "\n Difference: " + String($saltimbanqui.base_height - $saltimbanqui.max_height) + "\n Jump time: " + String($saltimbanqui.base_height)
	pass
# 
