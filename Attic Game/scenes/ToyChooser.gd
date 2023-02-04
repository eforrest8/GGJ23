extends ItemList


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
signal retrieve(node)


func _on_ItemList_item_selected(index):
	var selected_child = get_node(items[index*3])
	remove_child(selected_child)
	emit_signal("retrieve", selected_child)

func _on_item_store(node):
	add_child(node)

func _on_ItemList_child_entered_tree(node):
	if node is Toy:
		add_item(node.name, node.texture, true)
		node.visible = false


func _on_ItemList_child_exiting_tree(node):
	var found_index = items.find(node.name)
	if found_index == -1:
		return
	remove_item(found_index/3)
	node.visible = true
