extends Node2D

onready var TropeLabel = $UI/BasePanel/TropeTitlePanel/TropeLabel
onready var TropeDescLabel = $UI/BasePanel/TropeDescPanel/TropeDescLabel
var tropeNum = 0
var randNumGen = RandomNumberGenerator.new()

func _ready():
	roll_trope()

func _process(delta):
	pass

func _on_Button_pressed():
	roll_trope()

func roll_trope():
	var getDict = TropeLibrary.TropeDict
	var getNumber = randNumGen.randi_range(0, getDict.size()-1)
	
	while(getNumber == tropeNum):
		getNumber = randNumGen.randi_range(0, getDict.size()-1)
	
	tropeNum = getNumber
	TropeLabel.text = getDict.keys()[tropeNum]
	TropeDescLabel.text = getDict.values()[tropeNum]
