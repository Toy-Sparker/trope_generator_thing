extends Node2D

onready var TropeLabel = $UI/BasePanel/TropeTitlePanel/TropeLabel
onready var TropeDescLabel = $UI/BasePanel/TropeDescPanel/TropeDescLabel
onready var RollButton = $UI/BasePanel/Button
onready var TropeBox = $UI/BasePanel/SpinBox
onready var TropeTypeMenu = $UI/BasePanel/TropeTypeMenu
onready var TropeTypeLabel = $UI/BasePanel/TropeTypeLabel
var tropeArray = TropeLibrary.TropeArray
var tropeType = 0
var tropeNum = 0
var randNumGen = RandomNumberGenerator.new()

func _ready():
	TropeTypeMenu.get_popup().connect("index_pressed", self, "_on_TropeTypeMenu_index_pressed")
	
	for i in TropeLibrary.tropeTypes:
		TropeTypeMenu.get_popup().add_check_item(i, TropeLibrary.tropeTypes[i])
	
	TropeBox.max_value = tropeArray[tropeType].size()-1
	
	TropeTypeLabel.text = TropeTypeMenu.get_popup().get_item_text(tropeType)
	TropeTypeMenu.get_popup().set_item_checked(tropeType, true)
	
	roll_trope()

func _on_Button_pressed():
	roll_trope()

func roll_trope():
	var getNumber = randNumGen.randi_range(0, tropeArray[tropeType].size()-1)
	
	# Put this if statement to prevent crashes/freezes
	if tropeArray[tropeType].size() > 1:
		while(getNumber == tropeNum):
			getNumber = randNumGen.randi_range(0, tropeArray[tropeType].size()-1)
	
	tropeNum = getNumber
	TropeBox.value = tropeNum
	
	# Commented out because I realized that the because the value of
	# -- the trope box is being changed, it triggers the signal anyway.
	#TropeLabel.text = tropeDict.keys()[tropeNum]
	#TropeDescLabel.text = tropeDict.values()[tropeNum]

func _on_SpinBox_value_changed(value):
	tropeNum = value
	SetTrope()

func SetTrope():
	TropeLabel.text = tropeArray[tropeType].keys()[tropeNum]
	TropeDescLabel.text = tropeArray[tropeType].values()[tropeNum]

func _on_TropeTypeMenu_index_pressed(index):
	tropeType = index
	print(tropeType)
	
	if tropeNum > tropeArray[tropeType].size()-1:
		var getDiff = tropeNum - tropeArray[tropeType].size()
		tropeNum -= getDiff
	else:
		SetTrope()
	
	TropeBox.max_value = tropeArray[tropeType].size()-1
	
	for i in TropeTypeMenu.get_popup().get_item_count():
		TropeTypeMenu.get_popup().set_item_checked(i, false)
	
	TropeTypeMenu.get_popup().set_current_index(index)
	TropeTypeMenu.get_popup().set_item_checked(index, true)
	TropeTypeLabel.text = TropeTypeMenu.get_popup().get_item_text(index)
	TropeBox.value = tropeNum
