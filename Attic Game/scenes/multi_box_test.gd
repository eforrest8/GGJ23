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
	

onready var show_inventory = $show_inventory
func _on_CheckBox_toggled(button_pressed):
	if button_pressed == true:
		inventory.visible = false
		show_inventory.set_text("Show Inventory")
	else:
		inventory.visible = true
		show_inventory.set_text("Hide Inventory")
		
