maxColumns = 3

levels = [
// The og one
["Abstract", "5&5&GKQbKGQbbKbGbbGbQKbKbQQGb"],
// Boat
["Boat", "5&5&ooFBoooFBBooFooFFFFFqFFFq"],
// Funny yellow thing
["A Swell Day", "10&10&bbboooJoobbbooooJobboooJJoJJooooooJJJJooooooAJAJoooooJJJJJoooJJJAAJJJoooJJJoooooooJoJooooommJmJmmmmm",]]

var iTwo = 0
for(var i = 0; i < array_length(levels); i++) {
	if iTwo > maxColumns
		iTwo -= maxColumns
	show_debug_message(string(50+(150*i%maxColumns)) + ", " + string(50+(150*iTwo)))
	with instance_create_layer(50+(150*iTwo), 50+(150*i%maxColumns), "Instances", Obj_ButtonGameGrid) {
		buttonText = Obj_LevelButtons.levels[i][0]
		code = Obj_LevelButtons.levels[i][1]
	}
	iTwo++
}