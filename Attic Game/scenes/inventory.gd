extends Control


onready var itemList = $MarginContainer/ItemList

var currentBox = null
var boxes: Dictionary

func openBox(name):
	if not boxes.has(name):
		boxes[name] = load(str("res://scenes/", name, ".tscn")).instance()
	if currentBox == null:
		currentBox = boxes[name]
		add_child(currentBox)

func closeBox():
	remove_child(currentBox)
	currentBox = null

func _on_Control_child_entered_tree(node):
	if node is Toybox:
		node.connect("store", itemList, "_on_item_store")
		itemList.connect("retrieve", node, "_on_item_retrieve")


func _on_Control_child_exiting_tree(node):
	if node is Toybox:
		node.disconnect("store", itemList, "_on_item_store")
		itemList.disconnect("retrieve", node, "_on_item_retrieve")



