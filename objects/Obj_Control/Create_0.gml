if instance_number(Obj_Control) > 1 {
	show_message("heya boss, just taking out da trash")
	instance_destroy()
}

global.debug = false

rowNum = 5
columnNum = 5
blockArray = noone

global.colors = [make_colour_rgb(0,0,0), #FFFFFF, #7F7F7F, #C3C3C3, 
				 #880015, #B97A57, #ED1C24, #FFAEC9,
				 #FF7F27, #FFC90E, #FFF200, #EFE4B0,
				 #22B14C, #B5E61D, #00A2E8, #99D9EA,
				 #3F48CC, #7092BE, #A349A4, #C8BFE7]

global.base_twenty = "0123456789ABCDEFGHIJ"