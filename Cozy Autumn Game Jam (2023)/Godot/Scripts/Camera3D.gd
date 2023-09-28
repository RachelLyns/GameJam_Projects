extends Camera3D
var Player_Position
var Camera_Position
var Margin_Error
var Move_Speed
var Camera_Limit


func _ready():
	Move_Speed = 0.5


func _physics_process(delta):
	Player_Position = Convergence.Player_Position
	Camera_Position = position.x
	Camera_Limit = 20 * delta
	Margin_Error = 2 * delta
	
		
	if(Player_Position != Camera_Position):
		#Definir Move_Speed
		if(((Player_Position - Camera_Position) > Camera_Limit) || ((Player_Position - Camera_Position) < -Camera_Limit)):
			Move_Speed = Convergence.Player_Move_Speed
		elif(Convergence.Player_Input == ""):
			Move_Speed = 0.5
			
		#Movimentação da camera
		if((Player_Position - Margin_Error) > Camera_Position):
			position.x += delta * Move_Speed
		elif((Player_Position + Margin_Error) < Camera_Position):
			position.x -= delta * Move_Speed
