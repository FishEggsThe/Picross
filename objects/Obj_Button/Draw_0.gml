draw_sprite_ext(buttonSprite, image_index, x, y, 
				image_xscale, image_yscale, image_angle, 
				image_blend, image_alpha)
				
draw_set_color(c_red)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_text(x+buttonSpriteSize*image_xscale/2, y+buttonSpriteSize*image_xscale/2, buttonText)