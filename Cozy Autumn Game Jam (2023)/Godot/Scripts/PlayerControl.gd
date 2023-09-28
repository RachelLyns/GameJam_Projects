extends Node3D
var Move_Speed = 1
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	
	Convergence.Player_Move_Speed = Move_Speed
	if (Input.is_action_pressed("Move_Left")):
		position.x += delta * Move_Speed
		Convergence.Player_Input = "Left"
	elif (Input.is_action_pressed("Move_Right")):
		position.x -= delta * Move_Speed
		Convergence.Player_Input = "Right"
	else:
		Convergence.Player_Input = ""
	Convergence.Player_Position = position.x
