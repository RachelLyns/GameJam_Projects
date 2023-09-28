extends Node3D
var Move_Speed = 1
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	
	#Dialog
	if(Convergence.Dialog != ""):
		DialogueManager.show_example_dialogue_balloon(load(Convergence.Dialog), "start")
		Convergence.Dialog = ""
		
	Convergence.Player_Move_Speed = Move_Speed
	
	if(Convergence.Player_Move == true):
		if (Input.is_action_pressed("Move_Left")):
			position.x -= delta * Move_Speed
			Convergence.Player_Input = "Left"
		elif (Input.is_action_pressed("Move_Right")):
			position.x += delta * Move_Speed
			Convergence.Player_Input = "Right"
		else:
			Convergence.Player_Input = ""
	else:
		Convergence.Player_Input = ""
	Convergence.Player_Position = position.x
