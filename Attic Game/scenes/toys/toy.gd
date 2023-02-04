extends Node2D
class_name Toy

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

signal grabbed(node)
signal dropped(node)
var dragging = false


func _input(event):
	if event is InputEventMouseButton and event.button_index == BUTTON_LEFT:
		if $Sprite.get_rect().has_point(to_local(event.position)):
			# Start dragging if the click is on the sprite.
			if not dragging and event.pressed:
				emit_signal("grabbed", self)
		# Stop dragging if the button is released.
		if dragging and not event.pressed:
			emit_signal("dropped", self)

	if event is InputEventMouseButton and event.button_index == BUTTON_RIGHT and event.is_pressed():
		if dragging:
			rotate(PI/2)

	if event is InputEventMouseMotion and dragging:
		# While dragging, move the sprite with the mouse.
		position = event.position

func _on_Toy_dropped(node):
	if node == self:
		dragging = false

func _on_Toy_grabbed(node):
	if node == self:
		dragging = true
	else:
		dragging = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
