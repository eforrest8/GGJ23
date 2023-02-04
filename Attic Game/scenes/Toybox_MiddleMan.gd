extends Container


signal store(node)
signal retrieve(node)

onready var itemList = $Control/MarginContainer/ItemList

func _on_store(node):
	emit_signal("store", node)

func _on_retrieve(node):
	emit_signal("retrieve", node)


func _on_Toybox_child_entered_tree(node):
	node.connect("store", itemList, "_on_item_store")
	itemList.connect("retrieve", )
	
func _on_Toybox_child_exiting_tree(node):
	node.disconnect("store", itemList, "_on_item_store")
