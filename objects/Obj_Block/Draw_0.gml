draw_set_valign(fa_middle)
draw_sprite(blockData.sprite, image_index, x, y)
draw_set_color(c_red)

if global.debug
	draw_text(x+sprite_width/2, y+sprite_width/2, blockData.desiredState)