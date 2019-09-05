extends Area2D

export var to = ""

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Area2D_body_entered(body):
	if body.is_in_group("Players"):
		print ("Warp: Player has entered. changing scene to level 3.")
		var change_scene = get_tree().change_scene("res://Levels/Level" + str(to) + ".tscn")
