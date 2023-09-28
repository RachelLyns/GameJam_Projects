extends Node3D
var Player_Position
var Player_Move_Speed
var Player_Move
var Player_Input
var Dialog = ["",""]

func _ready():
	Player_Move = true
	Player_Position = 0
	Player_Move_Speed = 1
	Player_Input = ""
	Dialog = ["",""]
