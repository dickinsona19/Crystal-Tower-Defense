extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var wizardSprite = preload("res://Enemies/enemysprites/tile_0084.png")
var sprite2 = preload("res://Enemies/enemysprites/tile_0085.png")
var sprite3 = preload("res://Enemies/enemysprites/tile_0087.png")
var sprite4 = preload("res://Enemies/enemysprites/tile_0086.png")
var sprite5 = preload("res://Enemies/enemysprites/tile_0088.png")
var sprite6 = preload("res://Enemies/enemysprites/tile_0096.png")
var sprite7 = preload("res://Enemies/enemysprites/tile_0097.png")
var sprite8 = preload("res://Enemies/enemysprites/tile_0098.png")
var sprite9 = preload("res://Enemies/enemysprites/tile_0099.png")
var sprite10 = preload("res://Enemies/enemysprites/tile_0100.png")
var sprite11 = preload("res://Enemies/enemysprites/tile_0108.png")
var sprite12 = preload("res://Enemies/enemysprites/tile_0109.png")
var sprite13 = preload("res://Enemies/enemysprites/tile_0110.png")
var sprite14 = preload("res://Enemies/enemysprites/tile_0111.png")
var sprite15 = preload("res://Enemies/enemysprites/tile_0121.png")
var sprite16 = preload("res://Enemies/enemysprites/tile_0122.png")
var sprite17 = preload("res://Enemies/enemysprites/tile_0123.png")
var sprite18 = preload("res://Enemies/enemysprites/tile_0124.png")
var enemySprites =[wizardSprite, sprite2, sprite3 , sprite4, sprite5, sprite6, sprite7, sprite8 ,sprite9, sprite8, sprite10, sprite11, sprite12,sprite13,sprite14,sprite15,sprite16,sprite17,sprite18]

# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	var randInt = randi() % enemySprites.size()
	$Sprite.texture = enemySprites[randInt]


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var Center = get_parent().get_node("Center")
	look_at(Center.position)
	var vector = (Center.position - global_position).normalized()
	translate(vector*1)
