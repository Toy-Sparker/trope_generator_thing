extends Node2D

onready var TropeLabel = $UI/BasePanel/TropeTitlePanel/TropeLabel
onready var TropeDescLabel = $UI/BasePanel/TropeDescPanel/TropeDescLabel
onready var RollButton = $UI/BasePanel/Button
onready var TropeBox = $UI/BasePanel/SpinBox
var tropeDict = TropeLibrary.TropeDict
var tropeNum = 0
var randNumGen = RandomNumberGenerator.new()

func _ready():
	print(tropeDict.size())
	TropeBox.max_value = tropeDict.size()-1
	
	roll_trope()

func _on_Button_pressed():
	roll_trope()

func roll_trope():
	var getNumber = randNumGen.randi_range(0, tropeDict.size()-1)
	
	while(getNumber == tropeNum):
		getNumber = randNumGen.randi_range(0, tropeDict.size()-1)
	
	tropeNum = getNumber
	TropeBox.value = tropeNum
	
	# Commented out because I realized that the because the value of
	# -- the trope box is being changed, it triggers the signal anyway.
	#TropeLabel.text = tropeDict.keys()[tropeNum]
	#TropeDescLabel.text = tropeDict.values()[tropeNum]

func _on_SpinBox_value_changed(value):
	tropeNum = value
	TropeLabel.text = tropeDict.keys()[tropeNum]
	TropeDescLabel.text = tropeDict.values()[tropeNum]
