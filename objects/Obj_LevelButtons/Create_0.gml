maxColumns = 3

levels = [
// The og one
["Abstract", "5&5&GKQbKGQbbKbGbbGbQKbKbQQGb"],
// Boat
["Boat", "5&5&ooFBoooFBBooFooFFFFFqFFFq"],
// Boat
["Boat", "5&5&ooFBoooFBBooFooFFFFFqFFFq"],
// Funny yellow thing
["A Swell Day", "10&10&bbboooJoobbbooooJobboooJJoJJooooooJJJJooooooAJAJoooooJJJJJoooJJJAAJJJoooJJJoooooooJoJooooommJmJmmmmm",]]

//var iTwo = 0
for(var i = 0; i < array_length(levels); i++) {
	var levelX = 50+(150*(i%maxColumns))
	var levelY = 50+(150*floor(i/maxColumns))
	
	show_debug_message(string(levelX) + ", " + string(levelY))
	with instance_create_layer(levelX, levelY, "Instances", Obj_ButtonGameGrid) {
		buttonText = Obj_LevelButtons.levels[i][0]
		code = Obj_LevelButtons.levels[i][1]
	}
}