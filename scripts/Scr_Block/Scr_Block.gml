function Block(ds, c) constructor
{
    desiredState = ds;
	blockColorI = c
	state = 0
	sprite = Spr_BlockTest
	size = sprite_get_width(sprite)
	setColor = 1
	

    static ChangeState = function(changeState, revert)
    {
        if (state == changeState && revert)
			state = 0
		else if state != changeState
			state = changeState
		
		switch (state){
			case 0:
				sprite = Spr_BlockTest
				//show_debug_message("Normal!")
				break
			case 1:
				sprite = Spr_BlockSmashedTest
				//show_debug_message("Smashed!")
				break
			case 2:
				if room == Rm_GridCreate
					break
				sprite = Spr_BlockMarkedTest
				//show_debug_message("Marked!")
				break
		}
    }
	static ChangeColorState = function(set)
	{
		setColor = set
	}
	static DrawBlock = function(bX, bY)
	{
		draw_set_valign(fa_middle)
		var blockColor = global.colors[1]
		var blockAlpha = 1
		if setColor {
			blockColor = global.colors[blockColorI]
			blockAlpha = 0.5 * (room == Rm_GridCreate)
			gpu_set_fog(true, blockColor, 0, 1000)
		}
		draw_sprite_ext(sprite, 0, bX, bY, 1, 1, 0, 
						blockColor, 1)
		gpu_set_fog(false, blockColor, 0, 1000)
		draw_sprite_ext(sprite, 0, bX, bY, 1, 1, 0, 
						blockColor, blockAlpha)
				
		draw_set_color(c_red)
		if global.debug
			draw_text(bX+size/2, bY+size/2, desiredState)
	}
}

function CreateBlock(bX, bY, ds, c)
{
	var block = instance_create_layer(bX, bY, "Instances", Obj_Block)
	block.blockData = new Block(ds, c)
	return block;
}