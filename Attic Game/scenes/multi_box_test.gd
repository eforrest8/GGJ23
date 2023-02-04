extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var openBox = null
var boxes: Array = [
	load("res://scenes/toybox.tscn").instance()
]
onready var inventory = $inventory


func _on_Button_box1_pressed():
	inventory.openBox("toybox")


func _on_Button2_pressed():
	pass # Replace with function body.

#close
func _on_Button3_pressed():
	inventory.closeBox()
	
