event_inherited()

buttonText = "Swap to\n"+(Obj_Grid.colorMode ? "Tiles" : "Colors")
button_do = function() {
	Obj_Grid.colorMode = !Obj_Grid.colorMode
	if Obj_Grid.colorMode
		buttonText = "Swap to\nTiles"
	else
		buttonText = "Swap to\nColors"
}