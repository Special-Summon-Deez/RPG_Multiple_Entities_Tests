extends Node2D

@export var battleSet: PackedScene

@export var enemyArray: Array[enemy]

# Called when the node enters the scene tree for the first time.
func _ready():
	enemyArray = [
	load("res://enemy_resources/bruh_enemy.tres"), 
	load("res://enemy_resources/Up_Enemy.tres"),
	load("res://enemy_resources/Down_enemy.tres"),
	load("res://enemy_resources/Left_enemy.tres"),
	load("res://enemy_resources/Right_enemy.tres"),
	load("res://enemy_resources/Bean.tres")]
#	var enemies := load("res://enemy_resources/bruh_enemy.tres") as enemy
#	var enemyBody = battleSet.instantiate() as enemy_scene
#	enemyBody.setEnemy(enemies)	
#	add_child(enemyBody)
#
#	enemies = load("res://enemy_resources/Bean.tres")
#	enemyBody = battleSet.instantiate() as enemy_scene
#	enemyBody.setEnemy(enemies)	
#	add_child(enemyBody)
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func generateEnemy(index):
	var enemyToSpawn := enemyArray[index] as enemy
	var enemyscene = battleSet.instantiate() as enemy_scene
	
	enemyscene.name = enemyToSpawn.name
	enemyscene.setEnemy(enemyToSpawn)
	$EnemyUI/Enemies.add_child(enemyscene)


func _on_button_pressed():
	var rng = RandomNumberGenerator.new()
	generateEnemy(rng.randi_range(0,5))
