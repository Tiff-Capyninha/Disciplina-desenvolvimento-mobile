extends Node2D

@export var coin_scene : PackedScene
@export var playtime = 30
var level = 1
var score = 0 
var time_left = 0
var screensize = Vector2.ZERO
var playing = false

func ready():
	screensize = get_viewport().get_visible_rect().size
	$Player.screensize = screensize
	$Player.hide()
func new_game():
	playing = true
	level = 1
	score = 0
	time_left = playtime
	$Player.start()
	$Player.show()
	$Gametimer.start()
	## spawn_coins()
