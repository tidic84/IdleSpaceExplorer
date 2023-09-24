extends Control

var score = 0
var add = 1
var addpersec = 0
var combo = 0

var move_speed = 100
var direction = 0


func _on_Timer_timeout():
	score += addpersec #After the Timer resets, add the add per second to the score.

func _process(_delta):
	$Score/Score.text = str(score) #Change the text to the current score every frame.
	goToPlanet2(_delta)

func goToPlanet2(_delta):
	if direction == 0:
		$Spaceship.global_position = $Spaceship.global_position.move_toward($planet2.global_position, _delta*move_speed)
	if direction == 1:
		$Spaceship.global_position = $Spaceship.global_position.move_toward($Earth.global_position, _delta*move_speed)
	if $Spaceship.global_position == $planet2.global_position:
		direction = 1
		$Spaceship.scale *= -1
	if $Spaceship.global_position == $Earth.global_position:
		direction = 0
		$Spaceship.scale *= -1

var CPSRequirement = 20 #Clicks required to upgrade Clicks Per Second
var CPCRequirement = 20 #Clicks required to upgrade Clicks Per Click
var CPSRequirement2 = 150 #Clicks required to upgrade Clicks Per Second #2
var CPCRequirement2 = 150 #Clicks required to upgrade Clicks Per Click #2
var CPSRequirement3 = 1400 #Clicks required to upgrade Clicks Per Second #3
var CPCRequirement3 = 1400 #Clicks required to upgrade Clicks Per Click #3
var CPSRequirement4 = 12000 #Clicks required to upgrade Clicks Per Second #4
var CPCRequirement4 = 12000 #Clicks required to upgrade Clicks Per Click #4
var CPSRequirement5 = 200000 #Clicks required to upgrade Clicks Per Second #5
var CPCRequirement5 = 200000 #Clicks required to upgrade Clicks Per Click #5

func _on_CPC1_pressed():
	if score >= CPCRequirement:
		score -= CPCRequirement
		CPCRequirement = round(CPCRequirement * 1.4)
		add = add + 1 #Add CPC
		$VBoxContainer/CPC1.text = str("+1 CPC [", CPCRequirement, "]") #Combine multiple strings to show the required clicks.
		$Label3.text = str("CPC:", add)

func clicked():
	score += add
	pass

func _on_CPS1_pressed():
	if score >= CPSRequirement:
		score -= CPSRequirement
		CPSRequirement = round(CPSRequirement * 1.4)
		addpersec = addpersec + 1 #Add CPS.
		$VBoxContainer/CPS1.text = str("+1 CPS [", CPSRequirement, "]") #Combine multiple strings to show the required clicks.
		$Label2.text = str("CPS:", addpersec)


func _on_CPS2_pressed():
	if score >= CPSRequirement2:
		score -= CPSRequirement2
		CPSRequirement2 = round(CPSRequirement2 * 1.3)
		addpersec = addpersec + 5 #Add CPS.
		$VBoxContainer/CPS2.text = str("+5 CPS [", CPSRequirement2, "]") #Combine multiple strings to show the required clicks.
		$Label2.text = str("CPS:", addpersec)


func _on_CPC2_pressed():
	if score >= CPCRequirement2:
		score -= CPCRequirement2
		CPCRequirement2 = round(CPCRequirement2 * 1.3)
		add = add + 5 #Add CPC
		$VBoxContainer/CPC2.text = str("+5 CPC [", CPCRequirement2, "]") #Combine multiple strings to show the required clicks.
		$Label3.text = str("CPC:", add)


func _on_CPS3_pressed():
	if score >= CPSRequirement3:
		score -= CPSRequirement3
		CPSRequirement3 = round(CPSRequirement3 * 1.2)
		addpersec = addpersec + 20 #Add CPS.
		$VBoxContainer/CPS3.text = str("+20 CPS [", CPSRequirement3, "]") #Combine multiple strings to show the required clicks.
		$Label2.text = str("CPS:", addpersec)


func _on_CPC3_pressed():
	if score >= CPCRequirement3:
		score -= CPCRequirement3
		CPCRequirement3 = round(CPCRequirement3 * 1.2)
		add = add + 20 #Add CPC
		$VBoxContainer/CPC3.text = str("+20 CPC [", CPCRequirement3, "]") #Combine multiple strings to show the required clicks.
		$Label3.text = str("CPC:", add)


func _on_CPS4_pressed():
	if score >= CPSRequirement4:
		score -= CPSRequirement4
		CPSRequirement4 = round(CPSRequirement4 * 1.1)
		addpersec = addpersec + 125 #Add CPS.
		$VBoxContainer/CPS4.text = str("+125 CPS [", CPSRequirement4, "]") #Combine multiple strings to show the required clicks.
		$Label2.text = str("CPS:", addpersec)


func _on_CPC4_pressed():
	if score >= CPCRequirement4:
		score -= CPCRequirement4
		CPCRequirement4 = round(CPCRequirement4 * 1.1)
		add = add + 125 #Add CPC
		$VBoxContainer/CPC4.text = str("+125 CPC [", CPCRequirement4, "]") #Combine multiple strings to show the required clicks.
		$Label3.text = str("CPC:", add)


func _on_CPS5_pressed():
	if score >= CPSRequirement5:
		score -= CPSRequirement5
		CPSRequirement5 = CPSRequirement5
		addpersec = addpersec + 500 #Add CPS.
		$VBoxContainer/CPS5.text = str("+500 CPS [", CPSRequirement5, "]") #Combine multiple strings to show the required clicks.
		$Label2.text = str("CPS:", addpersec)


func _on_CPC5_pressed():
	if score >= CPCRequirement5:
		score -= CPCRequirement5
		CPCRequirement5 = CPCRequirement5
		add = add + 500 #Add CPC
		$VBoxContainer/CPC5.text = str("+500 CPC [", CPCRequirement5, "]") #Combine multiple strings to show the required clicks.
		$Label3.text = str("CPC:", add)
