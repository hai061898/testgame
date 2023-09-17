extends Node

var player_current_attack = false

var current_scene = "world"

var transition_scene = false

var player_exit_cliffside_posx = 376
var player_exit_cliffside_posy = 128
var player_start_posx = 232
var player_start_posy = 136

var game_first_loadin = true

func finish_changescenes():
	if transition_scene == true :
		transition_scene = false
		if current_scene == "world" :
			current_scene = "cliff_side"
		else :
			current_scene = "world"
