image_xscale = 2
image_yscale = 2
mask_index = Msk_Block
roomID = 0
buttonText = "Button"
buttonSprite = Spr_BlockTest
buttonSpriteSize = sprite_get_width(buttonSprite)

button_do = function() {
	room_goto(roomID)
}