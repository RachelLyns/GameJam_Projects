extends Label


func _process(_delta):
	var turn_score_text = "Turn Score: " + str(PigOnDice.Turn_score)
	var player_score_text = "Player Score: " + str(PigOnDice.Player_score)
	var pig_score_text = "Pig Score: " + str(PigOnDice.Pig_score)
	
	text = turn_score_text + "\n" + player_score_text + "\n" + pig_score_text
