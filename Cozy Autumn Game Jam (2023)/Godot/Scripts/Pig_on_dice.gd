extends Node
var Dice_num
var Status_game

var Pig_status
var Player_status

var Pig_score
var Player_score

var Turn
var Turn_score


#Pig Brain
var Rolls
var Round


func _ready():
	Status_game = "Starting"
	Round = 1
	Status_game = ""
	Pig_status = "Roll"
	Player_status = "Roll"
	Pig_score = 0
	Player_score = 0
	Turn_score = 0
	
func Dice_roll():
	Dice_num = randi() % (6 - 1 + 1) + 1
	if(Dice_num != 1):
		Turn_score += Dice_num
		Round += 1
	else:
		Turn_score = 0
		Round = 1
	
	
func Turn_sum():
	if(Turn == "Player"):
		Player_score+=Turn_score
	else:
		Pig_score+=Turn_score
	Round = 1
	Turn_score = 0
	
	
func Pig_brain():
	if Round <= 2:
		Pig_status = "Roll"
	elif Round == 3 && Turn_score < 7:
		Pig_status = "Roll"
	else:
		Pig_status = "Pass"

