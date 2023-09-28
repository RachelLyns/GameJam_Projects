extends Node3D
var Player_Position
var Raposo_Position
var Move_Speed
var Margin_Error
var Space_Limit


func _ready():
	Move_Speed = Convergence.Player_Move_Speed

func _process(delta):
	Margin_Error = 500 * delta
	
	if(((Convergence.Player_Position + Margin_Error) < position.x) || ((Convergence.Player_Position - Margin_Error) > position.x)):
		#Movimentação do Raposo
		if((Convergence.Player_Position - Margin_Error) >= position.x):
			position.x += delta * Move_Speed
		elif((Convergence.Player_Position + Margin_Error) <= position.x):
			position.x -= delta * Move_Speed
