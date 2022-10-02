extends KinematicBody2D


var hasBought
var bullet := preload("res://Towers/bullets/machineGunBullets.tscn")


# Called when the node enters the scene tree for the first time.
func _ready():
	modulate.a8 = 75
	hasBought = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if not hasBought:
		position = get_global_mouse_position()
		
	if hasBought:
		modulate.a8 = 500
		position = position
		look_at(get_parent().get_node("PLayer").position)




func _on_fireTimer_timeout():
	var instacedBullet = bullet.instance()
	instacedBullet.position = position
	get_parent().add_child(instacedBullet)
