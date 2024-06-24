if instance_number(Obj_Control) > 1 {
	show_message("heya boss, just taking out da trash")
	instance_destroy()
}

global.debug = false

rowNum = 5
columnNum = 5
blockArray = noone