extends KinematicBody2D

const UP = Vector2(0,-1)
var move = Vector2()

export var speedX = 100
export var jumpForce = 200
export var gravity = 300


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	move.y += gravity * delta
	
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
		if Input.is_action_pressed("ui_accept"):
			move.y = 0
			move.y = -jumpForce
			
	move_and_slide(move, UP)