event_inherited()

roomID = 1
buttonText = "Start\nGame"
//rowSize = 10
//columnSize = 10

// The og one
code = "5&5&GKQbKGQbbKbGbbGbQKbKbQQGb"
// Boat
//code = "5&5&ooFBoooFBBooFooFFFFFqFFFq"
// Funny yellow thing
//code = "10&10&bbboooJoobbbooooJobboooJJoJJooooooJJJJooooooAJAJoooooJJJJJoooJJJAAJJJoooJJJoooooooJoJooooommJmJmmmmm"

button_do = function() {
	if TranslateGridCode(code) == 1
		room_goto(roomID)
}