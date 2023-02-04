extends Sprite
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
var rotating = false
var grabbed_node = null


func _input(event):
	if event is InputEventMouseButton:
		if event.button_index == BUTTON_LEFT:
			if get_rect().has_point(to_local(event.position)):
				# Start dragging if the click is on the sprite.
				if not dragging and event.pressed:
					emit_signal("grabbed", self)
					dragging = true
			# Stop dragging if the button is released.
			if dragging and not event.pressed:
				emit_signal("dropped", self)
				dragging = false
		if event.button_index == BUTTON_RIGHT:
			if get_rect().has_point(to_local(event.position)):
				if not rotating and event.pressed:
					emit_signal("grabbed", self)
					rotating = true
			if rotating and not event.pressed:
				emit_signal("dropped", self)
				rotating = false

	if event is InputEventMouseMotion and rotating and grabbed_node == self:
			look_at(get_global_mouse_position())

	if event is InputEventMouseMotion and dragging and grabbed_node == self:
		# While dragging, move the sprite with the mouse.
		position = Vector2(
			clamp(event.position.x, 0, get_viewport().size.x),
			clamp(event.position.y, 0, get_viewport().size.y)
			)

func _on_Toy_dropped(node):
	grabbed_node = null

func _on_Toy_grabbed(node):
	grabbed_node = node

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
