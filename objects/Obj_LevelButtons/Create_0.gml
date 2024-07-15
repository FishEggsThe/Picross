maxColumns = 3

levels = [
// Dog
["Level 1", "5&5&tFtttFAtttFFttttFFFFtFtFt"],
// Boat
["Level 2", "5&5&ooFBoooFBBooFooFFFFFqFFFq"],
// The og one
["Level 3", "5&5&GKQbKGQbbKbGbbGbQKbKbQQGb"],
// Funny yellow thing
["Level 4", "10&10&bbboooJoobbbooooJobboooJJoJJooooooJJJJooooooAJAJoooooJJJJJoooJJJAAJJJoooJJJoooooooJoJooooommJmJmmmmm"],
// That Guy
["Level 5", "10&15&tAAAAAAAAAAAAAtAbbbbbbbbbbbbbAAbbAbbAbAbbAbbAAbAbbbbbbbbbAbAAAbAAAAAAAAAbAAtAAAAAAAAAAAAAtttttAAtttAAtttttttttAAAAAttttttttttAtttAtttttttttAAtttAAtttt"],
// THE FISH
["Level 6", "15&15&kkkkkkkkkkkkkkkkkkAAAAAAAAkkkkkkkAAjAjAjAAkkkkkAAAAAAAAjAkkkkAAjjjjjjjAAkkAkAjjAAjjjjjAAAAAjAjjAAAjjjjAjAAjjjjAjAjjjjjjAAAjAjAjAjjjjjAAAjjjjAAAjjjjAjAAAjjAAjjjjjAAAAkAAjjjjjjjAAAjAkkAAAAAAAAjAkAAkkkAjAjAjAAAkkkkkkkAAAAAAAkkkk"]]

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