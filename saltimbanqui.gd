extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


export var h = 3
export var t = 0.5
var g
var v
var speed = 0

var tic = OS.get_system_time_msecs()
var jumping = false
var max_height = 0
var base_height = 0
var jumptime = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	g = 2*h/t
	v = -h/pow(t,2)
	max_height = position.y
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _physics_process(delta):
	
	if Input.is_action_just_pressed("ui_accept") and !jumping:
		speed = g
		tic = OS.get_system_time_msecs()
		jumping = true
		max_height = position.y
		base_height = position.y
		pass
	
	speed += v*delta*2
	max_height = min(position.y, max_height)
	
	var coll = move_and_collide(Vector2(0,-speed))
	
	if jumping:
		jumptime = OS.get_system_time_msecs() - tic
	
	if coll != null and jumping == true:
		print(OS.get_system_time_msecs() - tic)
		print(base_height - max_height)
		jumping = false
	pass
