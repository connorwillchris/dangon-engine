extends Node

@export var _debug_ = false
@export var fullscreen = false

func _ready():
	if _debug_:
		print("--DEBUG IS ON--")

func _process(_delta):
	if _debug_:
		if not fullscreen:
			DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)
		else:
			DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)

func _input(event):
	if event.is_action_pressed("_debug_fullscreen"):
		fullscreen = !fullscreen
