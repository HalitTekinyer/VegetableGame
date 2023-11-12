extends Control

var countToWin = 0
var disableAction = [false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false]
var vegetableOfElements = []
var waitForTimeout = false
var firstSelectedItemIndex = 0
var firstItemSelected = false
var secondSelectedItemIndex = 0
var secondItemSelected = true
var BroccoliTexture = preload("res://Assets/Vegetables/Broccoli.png")
var TomatoTexture = preload("res://Assets/Vegetables/Tomato.png")
var SpinachTexture = preload("res://Assets/Vegetables/Spinach.png")
var PumpkinTexture = preload("res://Assets/Vegetables/Pumpkin.png")
var MushroomTexture = preload("res://Assets/Vegetables/Mushroom.png")
var EggplantTexture = preload("res://Assets/Vegetables/Eggplant.png")
var OnionTexture = preload("res://Assets/Vegetables/Onion.png")
var RadishTexture = preload("res://Assets/Vegetables/Radish.png")

func _ready():
	randomize()
	var vegetables = ["Broccoli","Tomato","Spinach","Pumpkin","Mushroom","Eggplant","Onion","Radish","Broccoli","Tomato","Spinach","Pumpkin","Mushroom","Eggplant","Onion","Radish"]
	var numbers = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]
	for i in range(16):
		var randomNumber = randi() % vegetables.size()
		var vegetable = vegetables[randomNumber]
		vegetables.remove(randomNumber)
		vegetableOfElements.append(vegetable)
	print(vegetableOfElements)

func itemSelected(number):
	if(firstItemSelected == false):
		firstItemSelected = true
		changeToVegetable(number)
		firstSelectedItemIndex = number
	else:
		if(firstSelectedItemIndex != number):
			secondItemSelected = true
			changeToVegetable(number)
			secondSelectedItemIndex = number
			checkItemsMatch()

func checkItemsMatch():
	firstItemSelected = false
	secondItemSelected = false
	if(vegetableOfElements[firstSelectedItemIndex] == vegetableOfElements[secondSelectedItemIndex]):
		waitForTimeout = true
		yield(get_tree().create_timer(1.0), "timeout")
		waitForTimeout = false
		hideNode(firstSelectedItemIndex)
		hideNode(secondSelectedItemIndex)
		countToWin += 1
		if(countToWin == 8):
			$GameEndContainer.show()
	else:
		waitForTimeout = true
		yield(get_tree().create_timer(1.0), "timeout")
		waitForTimeout = false
		changeToDefault(firstSelectedItemIndex)
		changeToDefault(secondSelectedItemIndex)

func changeToVegetable(number):
	if(number == 0):
		$GridContainer/Vegetable1.set_normal_texture(load("res://Assets/Vegetables/%s.png" % vegetableOfElements[number]))
		$GridContainer/Vegetable1.set_pressed_texture(load("res://Assets/Vegetables/%s.png" % vegetableOfElements[number]))
	elif(number == 1):
		$GridContainer/Vegetable2.set_normal_texture(load("res://Assets/Vegetables/%s.png" % vegetableOfElements[number]))
		$GridContainer/Vegetable2.set_pressed_texture(load("res://Assets/Vegetables/%s.png" % vegetableOfElements[number]))
	elif(number == 2):
		$GridContainer/Vegetable3.set_normal_texture(load("res://Assets/Vegetables/%s.png" % vegetableOfElements[number]))
		$GridContainer/Vegetable3.set_pressed_texture(load("res://Assets/Vegetables/%s.png" % vegetableOfElements[number]))
	elif(number == 3):
		$GridContainer/Vegetable4.set_normal_texture(load("res://Assets/Vegetables/%s.png" % vegetableOfElements[number]))
		$GridContainer/Vegetable4.set_pressed_texture(load("res://Assets/Vegetables/%s.png" % vegetableOfElements[number]))
	elif(number == 4):
		$GridContainer/Vegetable5.set_normal_texture(load("res://Assets/Vegetables/%s.png" % vegetableOfElements[number]))
		$GridContainer/Vegetable5.set_pressed_texture(load("res://Assets/Vegetables/%s.png" % vegetableOfElements[number]))
	elif(number == 5):
		$GridContainer/Vegetable6.set_normal_texture(load("res://Assets/Vegetables/%s.png" % vegetableOfElements[number]))
		$GridContainer/Vegetable6.set_pressed_texture(load("res://Assets/Vegetables/%s.png" % vegetableOfElements[number]))
	elif(number == 6):
		$GridContainer/Vegetable7.set_normal_texture(load("res://Assets/Vegetables/%s.png" % vegetableOfElements[number]))
		$GridContainer/Vegetable7.set_pressed_texture(load("res://Assets/Vegetables/%s.png" % vegetableOfElements[number]))
	elif(number == 7):
		$GridContainer/Vegetable8.set_normal_texture(load("res://Assets/Vegetables/%s.png" % vegetableOfElements[number]))
		$GridContainer/Vegetable8.set_pressed_texture(load("res://Assets/Vegetables/%s.png" % vegetableOfElements[number]))
	elif(number == 8):
		$GridContainer/Vegetable9.set_normal_texture(load("res://Assets/Vegetables/%s.png" % vegetableOfElements[number]))
		$GridContainer/Vegetable9.set_pressed_texture(load("res://Assets/Vegetables/%s.png" % vegetableOfElements[number]))
	elif(number == 9):
		$GridContainer/Vegetable10.set_normal_texture(load("res://Assets/Vegetables/%s.png" % vegetableOfElements[number]))
		$GridContainer/Vegetable10.set_pressed_texture(load("res://Assets/Vegetables/%s.png" % vegetableOfElements[number]))
	elif(number == 10):
		$GridContainer/Vegetable11.set_normal_texture(load("res://Assets/Vegetables/%s.png" % vegetableOfElements[number]))
		$GridContainer/Vegetable11.set_pressed_texture(load("res://Assets/Vegetables/%s.png" % vegetableOfElements[number]))
	elif(number == 11):
		$GridContainer/Vegetable12.set_normal_texture(load("res://Assets/Vegetables/%s.png" % vegetableOfElements[number]))
		$GridContainer/Vegetable12.set_pressed_texture(load("res://Assets/Vegetables/%s.png" % vegetableOfElements[number]))
	elif(number == 12):
		$GridContainer/Vegetable13.set_normal_texture(load("res://Assets/Vegetables/%s.png" % vegetableOfElements[number]))
		$GridContainer/Vegetable13.set_pressed_texture(load("res://Assets/Vegetables/%s.png" % vegetableOfElements[number]))
	elif(number == 13):
		$GridContainer/Vegetable14.set_normal_texture(load("res://Assets/Vegetables/%s.png" % vegetableOfElements[number]))
		$GridContainer/Vegetable14.set_pressed_texture(load("res://Assets/Vegetables/%s.png" % vegetableOfElements[number]))
	elif(number == 14):
		$GridContainer/Vegetable15.set_normal_texture(load("res://Assets/Vegetables/%s.png" % vegetableOfElements[number]))
		$GridContainer/Vegetable15.set_pressed_texture(load("res://Assets/Vegetables/%s.png" % vegetableOfElements[number]))
	elif(number == 15):
		$GridContainer/Vegetable16.set_normal_texture(load("res://Assets/Vegetables/%s.png" % vegetableOfElements[number]))
		$GridContainer/Vegetable16.set_pressed_texture(load("res://Assets/Vegetables/%s.png" % vegetableOfElements[number]))

func changeToDefault(number):
	if(number == 0):
		$GridContainer/Vegetable1.set_normal_texture(load("res://Assets/Vegetables/Default.png"))
		$GridContainer/Vegetable1.set_pressed_texture(load("res://Assets/Vegetables/Default.png"))
	elif(number == 1):
		$GridContainer/Vegetable2.set_normal_texture(load("res://Assets/Vegetables/Default.png"))
		$GridContainer/Vegetable2.set_pressed_texture(load("res://Assets/Vegetables/Default.png"))
	elif(number == 2):
		$GridContainer/Vegetable3.set_normal_texture(load("res://Assets/Vegetables/Default.png"))
		$GridContainer/Vegetable3.set_pressed_texture(load("res://Assets/Vegetables/Default.png"))
	elif(number == 3):
		$GridContainer/Vegetable4.set_normal_texture(load("res://Assets/Vegetables/Default.png"))
		$GridContainer/Vegetable4.set_pressed_texture(load("res://Assets/Vegetables/Default.png"))
	elif(number == 4):
		$GridContainer/Vegetable5.set_normal_texture(load("res://Assets/Vegetables/Default.png"))
		$GridContainer/Vegetable5.set_pressed_texture(load("res://Assets/Vegetables/Default.png"))
	elif(number == 5):
		$GridContainer/Vegetable6.set_normal_texture(load("res://Assets/Vegetables/Default.png"))
		$GridContainer/Vegetable6.set_pressed_texture(load("res://Assets/Vegetables/Default.png"))
	elif(number == 6):
		$GridContainer/Vegetable7.set_normal_texture(load("res://Assets/Vegetables/Default.png"))
		$GridContainer/Vegetable7.set_pressed_texture(load("res://Assets/Vegetables/Default.png"))
	elif(number == 7):
		$GridContainer/Vegetable8.set_normal_texture(load("res://Assets/Vegetables/Default.png"))
		$GridContainer/Vegetable8.set_pressed_texture(load("res://Assets/Vegetables/Default.png"))
	elif(number == 8):
		$GridContainer/Vegetable9.set_normal_texture(load("res://Assets/Vegetables/Default.png"))
		$GridContainer/Vegetable9.set_pressed_texture(load("res://Assets/Vegetables/Default.png"))
	elif(number == 9):
		$GridContainer/Vegetable10.set_normal_texture(load("res://Assets/Vegetables/Default.png"))
		$GridContainer/Vegetable10.set_pressed_texture(load("res://Assets/Vegetables/Default.png"))
	elif(number == 10):
		$GridContainer/Vegetable11.set_normal_texture(load("res://Assets/Vegetables/Default.png"))
		$GridContainer/Vegetable11.set_pressed_texture(load("res://Assets/Vegetables/Default.png"))
	elif(number == 11):
		$GridContainer/Vegetable12.set_normal_texture(load("res://Assets/Vegetables/Default.png"))
		$GridContainer/Vegetable12.set_pressed_texture(load("res://Assets/Vegetables/Default.png"))
	elif(number == 12):
		$GridContainer/Vegetable13.set_normal_texture(load("res://Assets/Vegetables/Default.png"))
		$GridContainer/Vegetable13.set_pressed_texture(load("res://Assets/Vegetables/Default.png"))
	elif(number == 13):
		$GridContainer/Vegetable14.set_normal_texture(load("res://Assets/Vegetables/Default.png"))
		$GridContainer/Vegetable14.set_pressed_texture(load("res://Assets/Vegetables/Default.png"))
	elif(number == 14):
		$GridContainer/Vegetable15.set_normal_texture(load("res://Assets/Vegetables/Default.png"))
		$GridContainer/Vegetable15.set_pressed_texture(load("res://Assets/Vegetables/Default.png"))
	elif(number == 15):
		$GridContainer/Vegetable16.set_normal_texture(load("res://Assets/Vegetables/Default.png"))
		$GridContainer/Vegetable16.set_pressed_texture(load("res://Assets/Vegetables/Default.png"))

func hideNode(number):
	if(number == 0):
		disableAction[number] = true
		$GridContainer/Vegetable1.set_normal_texture(load("res://Assets/Vegetables/Transparent.png"))
		$GridContainer/Vegetable1.set_pressed_texture(load("res://Assets/Vegetables/Transparent.png"))
	elif(number == 1):
		disableAction[number] = true
		$GridContainer/Vegetable2.set_normal_texture(load("res://Assets/Vegetables/Transparent.png"))
		$GridContainer/Vegetable2.set_pressed_texture(load("res://Assets/Vegetables/Transparent.png"))
	elif(number == 2):
		disableAction[number] = true
		$GridContainer/Vegetable3.set_normal_texture(load("res://Assets/Vegetables/Transparent.png"))
		$GridContainer/Vegetable3.set_pressed_texture(load("res://Assets/Vegetables/Transparent.png"))
	elif(number == 3):
		disableAction[number] = true
		$GridContainer/Vegetable4.set_normal_texture(load("res://Assets/Vegetables/Transparent.png"))
		$GridContainer/Vegetable4.set_pressed_texture(load("res://Assets/Vegetables/Transparent.png"))
	elif(number == 4):
		disableAction[number] = true
		$GridContainer/Vegetable5.set_normal_texture(load("res://Assets/Vegetables/Transparent.png"))
		$GridContainer/Vegetable5.set_pressed_texture(load("res://Assets/Vegetables/Transparent.png"))
	elif(number == 5):
		disableAction[number] = true
		$GridContainer/Vegetable6.set_normal_texture(load("res://Assets/Vegetables/Transparent.png"))
		$GridContainer/Vegetable6.set_pressed_texture(load("res://Assets/Vegetables/Transparent.png"))
	elif(number == 6):
		disableAction[number] = true
		$GridContainer/Vegetable7.set_normal_texture(load("res://Assets/Vegetables/Transparent.png"))
		$GridContainer/Vegetable7.set_pressed_texture(load("res://Assets/Vegetables/Transparent.png"))
	elif(number == 7):
		disableAction[number] = true
		$GridContainer/Vegetable8.set_normal_texture(load("res://Assets/Vegetables/Transparent.png"))
		$GridContainer/Vegetable8.set_pressed_texture(load("res://Assets/Vegetables/Transparent.png"))
	elif(number == 8):
		disableAction[number] = true
		$GridContainer/Vegetable9.set_normal_texture(load("res://Assets/Vegetables/Transparent.png"))
		$GridContainer/Vegetable9.set_pressed_texture(load("res://Assets/Vegetables/Transparent.png"))
	elif(number == 9):
		disableAction[number] = true
		$GridContainer/Vegetable10.set_normal_texture(load("res://Assets/Vegetables/Transparent.png"))
		$GridContainer/Vegetable10.set_pressed_texture(load("res://Assets/Vegetables/Transparent.png"))
	elif(number == 10):
		disableAction[number] = true
		$GridContainer/Vegetable11.set_normal_texture(load("res://Assets/Vegetables/Transparent.png"))
		$GridContainer/Vegetable11.set_pressed_texture(load("res://Assets/Vegetables/Transparent.png"))
	elif(number == 11):
		disableAction[number] = true
		$GridContainer/Vegetable12.set_normal_texture(load("res://Assets/Vegetables/Transparent.png"))
		$GridContainer/Vegetable12.set_pressed_texture(load("res://Assets/Vegetables/Transparent.png"))
	elif(number == 12):
		disableAction[number] = true
		$GridContainer/Vegetable13.set_normal_texture(load("res://Assets/Vegetables/Transparent.png"))
		$GridContainer/Vegetable13.set_pressed_texture(load("res://Assets/Vegetables/Transparent.png"))
	elif(number == 13):
		disableAction[number] = true
		$GridContainer/Vegetable14.set_normal_texture(load("res://Assets/Vegetables/Transparent.png"))
		$GridContainer/Vegetable14.set_pressed_texture(load("res://Assets/VegetablesTransparent.png"))
	elif(number == 14):
		disableAction[number] = true
		$GridContainer/Vegetable15.set_normal_texture(load("res://Assets/Vegetables/Transparent.png"))
		$GridContainer/Vegetable15.set_pressed_texture(load("res://Assets/Vegetables/Transparent.png"))
	elif(number == 15):
		disableAction[number] = true
		$GridContainer/Vegetable16.set_normal_texture(load("res://Assets/Vegetables/Transparent.png"))
		$GridContainer/Vegetable16.set_pressed_texture(load("res://Assets/Vegetables/Transparent.png"))

func _on_Vegetable1_pressed():
	if(waitForTimeout == false && disableAction[0] == false):
		itemSelected(0)

func _on_Vegetable2_pressed():
	if(waitForTimeout == false && disableAction[1] == false):
		itemSelected(1)


func _on_Vegetable3_pressed():
	if(waitForTimeout == false && disableAction[2] == false):
		itemSelected(2)


func _on_Vegetable4_pressed():
	if(waitForTimeout == false && disableAction[3] == false):
		itemSelected(3)


func _on_Vegetable5_pressed():
	if(waitForTimeout == false && disableAction[4] == false):
		itemSelected(4)


func _on_Vegetable6_pressed():
	if(waitForTimeout == false && disableAction[5] == false):
		itemSelected(5)


func _on_Vegetable7_pressed():
	if(waitForTimeout == false && disableAction[6] == false):
		itemSelected(6)


func _on_Vegetable8_pressed():
	if(waitForTimeout == false && disableAction[7] == false):
		itemSelected(7)


func _on_Vegetable9_pressed():
	if(waitForTimeout == false && disableAction[8] == false):
		itemSelected(8)


func _on_Vegetable10_pressed():
	if(waitForTimeout == false && disableAction[9] == false):
		itemSelected(9)


func _on_Vegetable11_pressed():
	if(waitForTimeout == false && disableAction[10] == false):
		itemSelected(10)


func _on_Vegetable12_pressed():
	if(waitForTimeout == false && disableAction[11] == false):
		itemSelected(11)


func _on_Vegetable13_pressed():
	if(waitForTimeout == false && disableAction[12] == false):
		itemSelected(12)


func _on_Vegetable14_pressed():
	if(waitForTimeout == false && disableAction[13] == false):
		itemSelected(13)


func _on_Vegetable15_pressed():
	if(waitForTimeout == false && disableAction[14] == false):
		itemSelected(14)


func _on_Vegetable16_pressed():
	if(waitForTimeout == false && disableAction[15] == false):
		itemSelected(15)


func _on_No_pressed():
	$ExitContainer.hide()


func _on_ExitButton_pressed():
	$ExitContainer.show()
