class_name WaitTimer
extends Node

func _init(parent):
	parent.add_child(self)

func wait(duration: float):
	var timer = Timer.new()
	add_child(timer)
	timer.wait_time = duration
	timer.start()
	await timer.timeout

func wait_rand(min: float, max: float):
	await wait(randf_range(min, max))
