extends Node2D

@export var battleSet: PackedScene
# Called when the node enters the scene tree for the first time.
func _ready():
	var enemies := load("res://enemy_resources/bruh_enemy.tres") as enemy
	var enemyBody = battleSet.instantiate() as enemy_scene
	enemyBody.setEnemy(enemies)	
	add_child(enemyBody)
	
	enemies = load("res://enemy_resources/Bean.tres")
	enemyBody = battleSet.instantiate() as enemy_scene
	enemyBody.setEnemy(enemies)	
	add_child(enemyBody)
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
