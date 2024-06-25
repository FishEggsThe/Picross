event_inherited()

buttonText = "Create\nCode"
button_do = function()
{
	with Obj_Grid {
		var code = CreateGridCode(rows, columns, grid)
		clipboard_set_text(code);
		show_message("Code copied to clipboard!:\n\n" + code)
	}
}