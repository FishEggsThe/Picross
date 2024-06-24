event_inherited()

buttonText = ""
oX = x
colorIndex = 0

button_do = function() {
	Obj_Grid.colorMode = !Obj_Grid.colorMode
	if Obj_Grid.colorMode
		buttonText = "Swap to\nTiles"
	else
		buttonText = "Swap to\nColors"
}