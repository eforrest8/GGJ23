extends Node2D
class_name Toybox

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

signal grabbed(node)
signal dropped(node)
signal store(node)

var currently_grabbed_child = null

# Called when the node enters the scene tree for the first time.
func _process(delta):
	if Input.is_action_just_pressed("ui_select") and currently_grabbed_child != null:
		remove_child(currently_grabbed_child)
		emit_signal("store", currently_grabbed_child)
		currently_grabbed_child = null

func _on_child_grabbed(node):
	if currently_grabbed_child == null:
		currently_grabbed_child = node
		emit_signal("grabbed", node)

func _on_child_dropped(node):
	if currently_grabbed_child == node:
		currently_grabbed_child = null
		emit_signal("dropped", node)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_item_retrieve(node):
	add_child(node)

func _on_Toybox_child_entered_tree(node):
	if node is Toy:
		node.connect("grabbed", self, "_on_child_grabbed")
		node.connect("dropped", self, "_on_child_dropped")
		self.connect("grabbed", node, "_on_Toy_grabbed")
		self.connect("dropped", node, "_on_Toy_dropped")
	
func _on_Toybox_child_exiting_tree(node):
	if node is Toy:
		node.disconnect("grabbed", self, "_on_child_grabbed")
		node.disconnect("dropped", self, "_on_child_dropped")
		self.disconnect("grabbed", node, "_on_Toy_grabbed")
		self.disconnect("dropped", node, "_on_Toy_dropped")

