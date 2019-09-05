extends Node

var score = 0
var player_node = 0

onready var player = get_children()[0]
# Called when the node enters the scene tree for the first time.
func _ready():
	player.connect("coin_taken", self, "_on_coin_taken")

func _on_coin_taken():
	score += 1
	print ("Game: a coin has been taken from the Player. Total of " + str(score))	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
