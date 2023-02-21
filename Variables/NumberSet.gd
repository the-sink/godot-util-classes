class_name NumberSet
extends Variable

var sources = {}

func _update():
	var new_value = 0
	for num in sources.values():
		new_value += num
	value = new_value

func has(name: String):
	return sources.has(name)

func set_value(name: String, value):
	sources[name] = value
	_update()
	
func remove(name: String):
	if name in sources:
		sources.erase(name)
	_update()

func _init(starting_value = 0):
	value = starting_value
