extends Node2D
class_name Toy

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

var dragging = false
var click_radius = 32 # Size of the sprite.


func _input(event):
	if event is InputEventMouseButton and event.button_index == BUTTON_LEFT:
		if (event.position - position).length() < click_radius:
			# Start dragging if the click is on the sprite.
			if not dragging and event.pressed:
				dragging = true
		# Stop dragging if the button is released.
		if dragging and not event.pressed:
			dragging = false
	
	if event is InputEventMouseButton and event.button_index == BUTTON_RIGHT and event.is_pressed():
		if (event.position - position).length() < click_radius:
			spin(PI/2)

	if event is InputEventMouseMotion and dragging:
		# While dragging, move the sprite with the mouse.
		position = event.position

func shift(dx, dy):
	position = Vector2(position.x + dx, position.y + dy)

func spin(dt):
	rotate(dt)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
