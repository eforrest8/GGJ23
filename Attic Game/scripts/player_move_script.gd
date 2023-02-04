extends KinematicBody2D

onready var _player_animated_sprite = $player_anime #the animation tree is called
onready var _player = self
var velocity = Vector2.ZERO
const PLAYER_SPEED = 40


func _physics_process(_delta):
	#moving right
	if Input.is_action_pressed("ui_right"):
		_player_animated_sprite.play("walking_right")
		velocity.x += PLAYER_SPEED
		
	#Moving left
	elif Input.is_action_pressed("ui_left"):
		_player_animated_sprite.play("walking_left")
		velocity.x -= PLAYER_SPEED
		
	#Moving back/up
	elif Input.is_action_pressed("ui_up"):
		_player_animated_sprite.play("walking_back")
		velocity.y -= PLAYER_SPEED
	
	#moving forward/down
	elif Input.is_action_pressed("ui_down"):
		_player_animated_sprite.play("walking_forward")
		velocity.y += PLAYER_SPEED
	
	#if none of the above then the character will be idle
	else:
		_player_animated_sprite.play("idle_forward")
	
	
	#For moving and slide
	#lerp is to make sure the character does not continue to slide
	velocity = move_and_slide(velocity, Vector2.UP)
	velocity.x = lerp(velocity.x,0,0.15)
	velocity.y = lerp(velocity.y,0,0.15)
