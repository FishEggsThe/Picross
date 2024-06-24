event_inherited()

buttonText = "Create\nCode"
button_do = function()
{
	with Obj_Grid
		show_message("Copy this code:\n" + CreateGridCode(rows, columns, grid))
}