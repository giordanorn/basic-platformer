extends Area2D

export var resetTo = ""

func _on_Area2D_body_entered(body):
	if (body.name == "Player"):
		print ("Death Zone: Player entered.")
		GameController.score = GameController.score_on_level
		var change_scene = get_tree().change_scene("res://Levels/Level" + resetTo + ".tscn")
