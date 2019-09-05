extends KinematicBody2D

const UP = Vector2(0,-1)
var move = Vector2()

export var speedX = 100
export var jumpForce = 200
export var gravity = 300

signal coin_taken

func _ready():
	pass

func _process(delta):
	if Input.is_action_pressed("ui_left"):
		move.x = -speedX
		$AnimatedSprite.animation = "walking"
		$AnimatedSprite.flip_h = true
	elif Input.is_action_pressed("ui_right"):
		move.x = speedX
		$AnimatedSprite.animation = "walking"
		$AnimatedSprite.flip_h = false
	else:
		move.x = 0
		$AnimatedSprite.animation = "idle"
		
	if is_on_floor():
		move.y = 0
		if Input.is_action_pressed("ui_accept"):
			move.y = -jumpForce
			
	move.y += gravity * delta
	move_and_slide(move, UP)

func _on_Coin_body_entered(body):
	emit_signal("coin_taken")
	print ("Player: Took a coin.")
