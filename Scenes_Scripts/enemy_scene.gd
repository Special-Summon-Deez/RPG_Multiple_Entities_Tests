class_name enemy_scene
extends Node2D

var enemy_stats:enemy = null

@onready var current_health = enemy_stats.health
# Called when the node enters the scene tree for the first time.

func setEnemy(enemyInfo:enemy):
	enemy_stats = enemyInfo

func _ready():
	print(enemy_stats.name)
	print(enemy_stats.health)
	$Enemy_Texture.texture = enemy_stats.texture

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
