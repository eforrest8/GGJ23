extends PopupDialog
class_name popup

#when recieving the view signal from the player_area_entered.gd script set visibility appropriatly
func _on_player_entered(visible):
	self.visible = visible
	

	

