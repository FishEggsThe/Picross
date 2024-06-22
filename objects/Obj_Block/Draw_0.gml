draw_set_valign(fa_middle)
draw_sprite_ext(blockData.sprite, image_index, x, y, 
				image_xscale, image_yscale, image_angle, 
				image_blend, image_alpha)
				
draw_set_color(c_red)
if global.debug
	draw_text(x+sprite_width/2, y+sprite_width/2, blockData.desiredState)