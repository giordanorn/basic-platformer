extends Area2D

export var to = ""

func _on_Area2D_body_entered(body):
	if body.is_in_group("Players"):
		print ("Warp: Player has entered. changing scene to level " + to)
		GameController.score_on_level = GameController.score
		var change_scene = get_tree().change_scene("res://Levels/Level" + to + ".tscn")
