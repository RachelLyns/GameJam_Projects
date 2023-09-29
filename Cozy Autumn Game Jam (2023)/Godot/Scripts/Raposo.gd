extends Node3D
var Move_Speed
var Move
var Space_Limit = 1.5


func _ready():
	Move_Speed = Convergence.Player_Move_Speed
	Move = false

func _process(delta):
	if(Move):
		if(Convergence.Player_Position >= position.x):
			if((Convergence.Player_Position - Space_Limit) >= position.x):
				Move_Speed = Convergence.Player_Move_Speed
			else:
				Move_Speed = 0.8
			position.x += delta * Move_Speed
		elif(Convergence.Player_Position <= position.x):
			if((Convergence.Player_Position + Space_Limit) <= position.x):
				Move_Speed = Convergence.Player_Move_Speed
			else:
				Move_Speed = 0.8
			position.x -= delta * Move_Speed
			


func _on_area_de_movimento_area_exited(_area):
	Move = true


func _on_area_de_movimento_area_entered(_area):
	Move = false
