extends Node2D


signal next_line
signal gameInitialized

onready var fullGameScript : Dictionary = {}
onready var languages : Dictionary = {}
onready var scriptDict : Dictionary = {}
onready var funcRefDict : Dictionary = {}
onready var nodePaths : Dictionary = {}

onready var camera : Camera2D = Camera2D.new()
onready var tween : Tween = Tween.new()
onready var expression : Expression = Expression.new()


func _ready():
	initializeGameSystem()
	yield(self, "gameInitialized")
	print("game initialized")


func initializeGameSystem():
	# nodes that are part of the main scene at runtime will not be used
	for child in get_children():
		child.queue_free()
	
	# load all game script files
	var scriptLoader : Node = Node.new()
	scriptLoader.set_script(load("res://system/scripts/ScriptLoader.gd"))
	add_child(scriptLoader)
	yield(scriptLoader, "all_scripts_loaded")
	scriptLoader.queue_free()
	print("scripts loaded")
	
	
	
	emit_signal("gameInitialized")
	
	

















