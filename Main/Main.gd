extends Node2D

var machineGunTower := preload("res://Towers/machineGunTower.tscn")
var tower
var enemy = preload("res://Enemies/Enemies.tscn")

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$Timer.start()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$HUD/timelabel.text = "TIME: " + str(floor($Timer.time_left))
	if Input.is_action_just_pressed("buy_tower1"):
		tower = machineGunTower.instance()
		tower.hasBought = false
		add_child(tower)
	if Input.is_action_just_pressed("finalize"):
		tower.hasBought=true


func _on_Timer_timeout():
	for i in 10:
		var instancedEnemy = enemy.instance()
		var j = rand_range(1,12)
		instancedEnemy.position =get_node("Spawnpoint"+str(ceil(j))).position
		add_child(instancedEnemy)
