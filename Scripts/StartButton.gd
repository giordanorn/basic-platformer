extends Button

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_start_button_up():
	GameController.score = 0
	GameController.score_on_level = 0
	GameController.lives = 3
	var change_scene = get_tree().change_scene("res://Levels/Level1.tscn")
