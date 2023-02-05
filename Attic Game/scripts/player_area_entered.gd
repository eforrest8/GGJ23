extends Area2D
class_name player_area_popup

signal popup(visible)

#Connect the event to themselves
func _ready():
	self.connect("body_entered", self, "_on_player_entered")
	self.connect("body_exited", self, "_on_player_exited")
	

#when player enters the areaemit the entered signal to show the dialogue
func _on_player_entered(body):
	emit_signal("popup", true)
	

func _on_player_exited(body):
	emit_signal("popup", false)
	
