extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("move_left"):
		var _ignore = move_and_collide(Vector2.LEFT * 5)
	if Input.is_action_pressed("move_right"):
		var _ignore = move_and_collide(Vector2.RIGHT* 5)
	if Input.is_action_pressed("move_up"):
		var _ignore = move_and_collide(Vector2.UP* 5)
	if Input.is_action_pressed("move_down"):
		var _ignore = move_and_collide(Vector2.DOWN* 5)
