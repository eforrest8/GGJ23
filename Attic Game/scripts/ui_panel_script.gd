extends Control

onready var search_button = get_node("text_panel/dialogue_intro")
onready var text = get_node("dialogue_panel/GridContainer/entry")
onready var determine = get_node("dialogue_panel/GridContainer/determine_placeholder")


#Checks for the input in the entry
func _on_LineEdit_text_entered(new_text):
	if text.get_text() == "521861":
		determine.modulate = Color(0,239,0)
		determine.set_text("You Cracked the Code!!!")
	else:
		determine.modulate = Color(239,0,0)	
		determine.set_text("No read over it agian")
		text.clear()
		
	#makes intro messegae disappear
func _on_search_button_intro_pressed():
	search_button.visible = false
