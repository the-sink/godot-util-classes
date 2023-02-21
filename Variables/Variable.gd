class_name Variable
extends Object

var constraint
var custom_data: Dictionary = {}

signal changed
var value:
	set(new_value):
		if new_value == value: return
		if constraint:
			value = constraint.call(new_value)
		else:
			value = new_value
		changed.emit(value)

func exec_connect(cb):
	changed.connect(cb)
	cb.call(value)

func _init(value, constraint = null):
	self.value = value
	self.constraint = constraint
