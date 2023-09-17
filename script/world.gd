extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	if global.game_first_loadin == true :
		$Player.position.x = global.player_start_posx
		$Player.position.y = global.player_start_posy
	else :
		$Player.position.x = global.player_exit_cliffside_posx 
		$Player.position.y = global.player_exit_cliffside_posy


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	change_scene()



func _on_cliff_transtion_point_body_entered(body):
	if body.has_method("player"):
		global.transition_scene = true


func _on_cliff_transtion_point_body_exited(body):
	if body.has_method("player"):
		global.transition_scene = false

func change_scene():
	if global.transition_scene == true:
		get_tree().change_scene_to_file("res://Scenes/cliff_side.tscn")
		global.game_first_loadin = false
		global.finish_changescenes()
