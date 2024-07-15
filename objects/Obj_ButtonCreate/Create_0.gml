event_inherited()

roomID = 2
buttonText = "Create\nGrid"
rowSize = 5
columnSize = 5

button_do = function() {
	SetGrid(rowSize, columnSize)
	room_goto(roomID)
}

for(var i = 0; i < 2; i++)
	with instance_create_layer(x+50*i, y+100, "Instances", Obj_ButtonCreateGridSize)
	{
		rowOrColumn = i
		creator = Obj_ButtonCreate
	}