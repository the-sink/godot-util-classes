class_name BooleanSet
extends Variable

var sources = {}

func _update():
	value = len(sources.keys()) > 0

func has(name: String):
	return sources.has(name)

func add(name: String):
	sources[name] = true
	_update()
	
func remove(name: String):
	if name in sources:
		sources.erase(name)
	_update()

func _init():
	value = false
