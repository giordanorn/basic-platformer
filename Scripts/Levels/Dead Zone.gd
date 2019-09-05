extends Area2D

func _on_Area2D_body_entered(body):
	# improvement needed
	if (body.name == "Player"):
		print ("Player fell out of bounds")
		var change_scene = get_tree().change_scene("res://Levels/Level1.tscn")
