extends Node2D


var machineGunTurret = preload("res://Towers/machineGunTower.tscn")
var isBuying =  false
var tower
# Called when the node enters the scene tree for the first time.
func _ready():
	$Timer.start()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$HUD/timelabel.text = "TIME: " + str(floor($Timer.time_left))
	
	
	if Input.is_action_just_pressed("buy_tower1") and not isBuying:
		tower = machineGunTurret.instance()
		add_child(tower)
		isBuying=true
	
	if Input.is_action_just_pressed("finalize"):
		tower.hasBought = true
		isBuying = false
